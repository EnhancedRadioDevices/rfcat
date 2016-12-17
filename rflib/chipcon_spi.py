#!/usr/bin/env ipython
import sys, threading, time, struct, select
#import usb

import bits
from chipcondefs import *
#from rflib_defs import *
#from rflib_version import *

import spi_serial

DEFAULT_USB_TIMEOUT = 1000

USB_RX_WAIT         = 1000
USB_TX_WAIT         = 10000

APP_GENERIC                     = 0x01
APP_DEBUG                       = 0xfe
APP_SYSTEM                      = 0xff


SYS_CMD_PEEK                    = 0x80
SYS_CMD_POKE                    = 0x81
SYS_CMD_PING                    = 0x82
SYS_CMD_STATUS                  = 0x83
SYS_CMD_POKE_REG                = 0x84
SYS_CMD_GET_CLOCK               = 0x85
SYS_CMD_BUILDTYPE               = 0x86
SYS_CMD_BOOTLOADER              = 0x87
SYS_CMD_RFMODE                  = 0x88
SYS_CMD_COMPILER                = 0x89
SYS_CMD_PARTNUM                 = 0x8e
SYS_CMD_RESET                   = 0x8f
SYS_CMD_CLEAR_CODES             = 0x90

DEBUG_CMD_STRING                = 0xf0
DEBUG_CMD_HEX                   = 0xf1
DEBUG_CMD_HEX16                 = 0xf2
DEBUG_CMD_HEX32                 = 0xf3
DEBUG_CMD_INT                   = 0xf4

LCE_RF_RXOVF                          = 0x10
LCE_RF_TXUNF                          = 0x11

RCS = {}
LCS = {}
LCES = {}
lcls = locals()
for lcl in lcls.keys():
    if lcl.startswith("LCE_"):
        LCES[lcl] = lcls[lcl]
        LCES[lcls[lcl]] = lcl
    if lcl.startswith("LC_"):
        LCS[lcl] = lcls[lcl]
        LCS[lcls[lcl]] = lcl
    if lcl.startswith("RC_"):
        RCS[lcl] = lcls[lcl]
        RCS[lcls[lcl]] = lcl

CHIPS = {
    0x91: "CC2511",
    0x81: "CC2510",
    0x11: "CC1111",
    0x01: "CC1110",
    }


def keystop(delay=0):
    return len(select.select([sys.stdin],[],[],delay)[0])

class ChipconUsbTimeoutException(Exception):
    def __str__(self):
        return "Timeout waiting for USB response."

direct=False

class USBDongle:
    ######## INITIALIZATION ########
    def __init__(self, idx=0, debug=False, copyDongle=None, RfMode=RFST_SRX):
        self.rsema = None
        self.xsema = None
        self._bootloader = False
        self._init_on_reconnect = True
        self._do = None
        self.idx = idx
        self.cleanup()
        self._debug = debug
        self._quiet = False
        self._recv_time = 0
        self.radiocfg = RadioConfig()
        self._rfmode = RfMode
        self._radio_configured = False

        self.ctrl_thread = threading.Thread(target=self.run_ctrl)
        self.ctrl_thread.setDaemon(True)
        self.ctrl_thread.start()

        self.resetup(copyDongle=copyDongle)
        self.max_packet_size = 100 #USB_MAX_BLOCK_SIZE

    def cleanup(self):
        self._usberrorcnt = 0;
        self.recv_queue = ''
        self.recv_mbox  = {}
        self.recv_event = threading.Event()
        self.xmit_event = threading.Event()
        self.reset_event = threading.Event()
        self.xmit_queue = []
        self.xmit_event.clear()
        self.reset_event.clear()
        self.trash = []
   
    def setRFparameters(self):
        pass

    def run_ctrl(self):
        '''
        we wait for reset events and run resetup
        '''
        while True:
            self.reset_event.wait()
            self.resetup(False)
            self.reset_event.clear()
            time.sleep(4)

    def setup(self, console=True, copyDongle=None):
        # setup spi_serial
        self.recv_mbox = {}
        self.SpiSerial = spi_serial.SpiSerial()
        self.SpiSerial.reset()

        self.getRadioConfig()
        chip = self.getPartNum()
        chipstr = CHIPS.get(chip)

        self.chipnum = chip
        self.chipstr = chipstr

        if chip == None:
            print "Older firmware, consider upgrading."
        else:
            self.chipstr = "unrecognized dongle: %s" % chip
            self._do = chip

        if self._init_on_reconnect:
            if self._radio_configured:
                self.recv_mbox = {}
                self.setRadioConfig()
            else:
                self.setRFparameters()
                self._radio_configured = True

    def resetup(self, console=True, copyDongle=None):
        self._do=None
        if self._bootloader: 
            return
        #self._threadGo = True
        if self._debug: print >>sys.stderr,("waiting (resetup) %x" % self.idx)
        while (self._do==None):
            try:
                self.setup(console, copyDongle)
                if copyDongle is None:
                    self.recv_mbox = {}
                self.ping(3, wait=10, silent=True)
                self.setRfMode(self._rfmode)
            except Exception, e:
                #if console: sys.stderr.write('.')
                if not self._quiet:
                    print >>sys.stderr,("Error in resetup():" + repr(e))
                #if console or self._debug: print >>sys.stderr,("Error in resetup():" + repr(e))
                time.sleep(1)


    ######## APPLICATION API ########
    def get_spi_dat(self):
        self.SpiSerial.inWaiting()
        spi_dat = self.SpiSerial.read()

        #if len(spi_dat) > 0:
        #    print("spi_dat: " + str(spi_dat))

        if (len(spi_dat) > 0 and spi_dat[-1] == 0):
            del(spi_dat[-1])
        mode = 'app'
        cmd_str = ''
        dat_len = 0
        for d in spi_dat:
            if mode == 'app':
                if d != 0 and d != 153:
                    app = d
                    mode = 'cmd'
            elif mode == 'cmd':
                cmd = d
                mode = 'len1'
            elif mode == 'len1':
                dat_len = d
                mode = 'len2'
            elif mode == 'len2':
                dat_len += (d<<8)
                mode = 'data'
            elif mode == 'data':
                cmd_str += chr(d)
                if len(cmd_str) == dat_len: #d == 0:
                    # self.recv_mbox is a dictionary{apps -> cmds}
                    # each cmd is a dictionary {cmd -> data list}
                    # each data list is a queue of strings?
                    if app in self.recv_mbox:
                        if cmd in self.recv_mbox[app]:
                            self.recv_mbox[app][cmd].insert(0, cmd_str)
                        else:
                            self.recv_mbox[app][cmd] = [cmd_str]
                    else:
                        self.recv_mbox[app] = {cmd: [cmd_str]}
            
                    mode = 'app'
                    cmd_str = ''
                    dat_len = 0
        
        if len(cmd_str) != dat_len:
            #print(" cmd_str short, trying to get more")
            time.sleep(0.01)
            self.SpiSerial.inWaiting()
            spi_dat = self.SpiSerial.read(dat_len - len(cmd_str))

            if (len(spi_dat) == dat_len - len(cmd_str)):
                for d in spi_dat:
                    cmd_str += chr(d)

            if app in self.recv_mbox:
                if cmd in self.recv_mbox[app]:
                    self.recv_mbox[app][cmd].insert(0, cmd_str)
                else:
                    self.recv_mbox[app][cmd] = [cmd_str]
            else:
                self.recv_mbox[app] = {cmd: [cmd_str]}
                
        return len(spi_dat)
        
    def spi_ping(self):
        return 0
        # TODO: check a reg on the cc1110 or something
    
    def recv(self, app, cmd=None, wait=USB_RX_WAIT):
        '''
        high-level USB EP5 receive.  
        checks the mbox for app "app" and command "cmd" and returns the next one in the queue
        if any of this does not exist yet, wait for a RECV event until "wait" times out.
        RECV events are generated by the low-level recv thread "runEP5_recv()"
        '''
        startTime = time.time()

        while (time.time() - startTime)*1000 < wait:
            try:
                self.get_spi_dat()
                
                b = self.recv_mbox.get(app)
                if b:
                    if self._debug: print>>sys.stderr, "Recv msg",app,b,cmd
                    if cmd is None:
                        keys = b.keys()
                        if len(keys):
                            cmd = b.keys()[-1] # just grab one.   no guarantees on the order

                if b is not None and cmd is not None:
                    q = b.get(cmd)
                    if self._debug: print >>sys.stderr,"debug(recv) q='%s'"%repr(q)

                    if q is not None:
                        try:
                            #resp, rt = q.pop(0)
                            resp = q.pop(0)

                            # bring it on home...  this is the way out.
                            #return resp[4:], rt
                            return resp, 0

                        except IndexError:
                            pass

                        except AttributeError:
                            sys.excepthook(*sys.exc_info())
                            pass
                else:
                    time.sleep(0.01)


            except KeyboardInterrupt:
                sys.excepthook(*sys.exc_info())
                break
            except:
                sys.excepthook(*sys.exc_info())

        raise(ChipconUsbTimeoutException())

    def recvAll(self, app, cmd=None):
        self.get_spi_dat()
        retval = self.recv_mbox.get(app,None)
        if retval is not None:
            if cmd is not None:
                b = retval
                try:
                    retval = b.get(cmd)
                    b[cmd]=[]
                    if len(retval):
                        retval = [ (d[4:],t) for d,t in retval ] 
                except:
                    sys.excepthook(*sys.exc_info())
            else:
                self.recv_mbox[app]={}
            return retval

    def send(self, app, cmd, buf, wait=USB_TX_WAIT):
        msg = "%c%c%s%s"%(app,cmd, struct.pack("<H",len(buf)),buf)
        msg += '\0'
        #print ("msg: " + str([int(m.encode('hex'),16) for m in msg]))
        self.SpiSerial.write(msg)
        if self._debug: print "Sent Msg",msg.encode("hex")
        time.sleep(0.004)
        return self.recv(app, cmd, wait)

    def reprDebugCodes(self, timeout=100):
        return None

    def getDebugCodes(self, timeout=100):
        return None

    def clearDebugCodes(self):
        return None

    def ep0GetAddr(self):
        return ''
    def ep0Reset(self):
        return True

    def ep0Peek(self, addr, length, timeout=100):
        return 0

    def ep0Poke(self, addr, buf='\x00', timeout=100):
        return 0

    def debug(self, delay=1):
        while True:
            """
            try:
                print >>sys.stderr, ("DONGLE RESPONDING:  mode :%x, last error# %d"%(self.getDebugCodes()))
            except:
                pass
            print >>sys.stderr,('recv_queue:\t\t (%d bytes) "%s"'%(len(self.recv_queue),repr(self.recv_queue)[:len(self.recv_queue)%39+20]))
            print >>sys.stderr,('trash:     \t\t (%d bytes) "%s"'%(len(self.trash),repr(self.trash)[:len(self.trash)%39+20]))
            print >>sys.stderr,('recv_mbox  \t\t (%d keys)  "%s"'%(len(self.recv_mbox),repr(self.recv_mbox)[:len(repr(self.recv_mbox))%79]))
            for x in self.recv_mbox.keys():
                print >>sys.stderr,('    recv_mbox   %d\t (%d records)  "%s"'%(x,len(self.recv_mbox[x]),repr(self.recv_mbox[x])[:len(repr(self.recv_mbox[x]))%79]))
                """
            print self.reprRadioState()
            print self.reprClientState()

            x,y,z = select.select([sys.stdin],[],[], delay)
            if sys.stdin in x:
                sys.stdin.read(1)
                break

    def getPartNum(self):
        try:
            r = self.send(APP_SYSTEM, SYS_CMD_PARTNUM, "", 10000)
            r,rt = r
        except ChipconUsbTimeoutException, e:
            r = None
            print "SETUP Failed.",e

        return ord(r)


    def ping(self, count=10, buf="ABCDEFGHIJKLMNOPQRSTUVWXYZ", wait=DEFAULT_USB_TIMEOUT, silent=False):
        good=0
        bad=0
        start = time.time()
        for x in range(count):
            istart = time.time()
            
            try:
                r = self.send(APP_SYSTEM, SYS_CMD_PING, buf, wait)
                r,rt = r
                istop = time.time()
                if not silent:
                    print "PING: %d bytes transmitted, received: %s (%f seconds)"%(len(buf), repr(r), istop-istart)
            except ChipconUsbTimeoutException, e:
                r = None
                if not silent:
                    print "Ping Failed.",e
            if r==None:
                bad+=1
            else:
                good+=1
        stop = time.time()
        return (good,bad,stop-start)

    def bootloader(self):
        pass
        
    def RESET(self):
        self.SpiSerial.reset()
        
    def peek(self, addr, bytecount=1):
        r, t = self.send(APP_SYSTEM, SYS_CMD_PEEK, struct.pack("<HH", bytecount, addr))
        return r

    def poke(self, addr, data):
        r, t = self.send(APP_SYSTEM, SYS_CMD_POKE, struct.pack("<H", addr) + data)
        return r
    
    def pokeReg(self, addr, data):
        r, t = self.send(APP_SYSTEM, SYS_CMD_POKE_REG, struct.pack("<H", addr) + data)
        return r

    def getBuildInfo(self):
        r, t = self.send(APP_SYSTEM, SYS_CMD_BUILDTYPE, '')
        return r
            
    def getCompilerInfo(self):
        r, t = self.send(APP_SYSTEM, SYS_CMD_COMPILER, '')
        return r
            
    def getInterruptRegisters(self):
        regs = {}
        # IEN0,1,2
        regs['IEN0'] = self.peek(IEN0,1)
        regs['IEN1'] = self.peek(IEN1,1)
        regs['IEN2'] = self.peek(IEN2,1)
        # TCON
        regs['TCON'] = self.peek(TCON,1)
        # S0CON
        regs['S0CON'] = self.peek(S0CON,1)
        # IRCON
        regs['IRCON'] = self.peek(IRCON,1)
        # IRCON2
        regs['IRCON2'] = self.peek(IRCON2,1)
        # S1CON
        regs['S1CON'] = self.peek(S1CON,1)
        # RFIF
        regs['RFIF'] = self.peek(RFIF,1)
        # DMAIE
        regs['DMAIE'] = self.peek(DMAIE,1)
        # DMAIF
        regs['DMAIF'] = self.peek(DMAIF,1)
        # DMAIRQ
        regs['DMAIRQ'] = self.peek(DMAIRQ,1)
        return regs

    def reprHardwareConfig(self):
        output= []

        hardware = self.getBuildInfo()
        output.append("Dongle:              %s" % hardware.split(' ')[0])
        try:
            output.append("Firmware rev:        %s" % hardware.split('r')[1])
        except:
            output.append("Firmware rev:        Not found! Update needed!")
        try:
            compiler = self.getCompilerInfo()
            output.append("Compiler:            %s" % compiler)
        except:
            output.append("Compiler:            Not found! Update needed!")
        # see if we have a bootloader by loooking for it's recognition semaphores
        # in SFR I2SCLKF0 & I2SCLKF1
        if(self.peek(0xDF46,1) == '\xF0' and self.peek(0xDF47,1) == '\x0D'):
            output.append("Bootloader:          CC-Bootloader")
        else:
            output.append("Bootloader:          Not installed")
        return "\n".join(output)

    def reprSoftwareConfig(self):
        output= []

        output.append("rflib rev:           %s" % RFLIB_VERSION)
        return "\n".join(output)

    def printClientState(self, width=120):
        print self.reprClientState(width)

    def reprClientState(self, width=120):
        output = ["="*width]
        output.append('     client thread cycles:      %d/%d' % (self.recv_threadcounter,self.send_threadcounter))
        output.append('     client errored cycles:     %d' % self._usberrorcnt)
        output.append('     recv_queue:                (%d bytes) %s'%(len(self.recv_queue),repr(self.recv_queue)[:width-42]))
        output.append('     trash:                     (%d blobs) "%s"'%(len(self.trash),repr(self.trash)[:width-44]))
        output.append('     recv_mbox                  (%d keys)  "%s"'%(len(self.recv_mbox),repr([hex(x) for x in self.recv_mbox.keys()])[:width-44]))
        for app in self.recv_mbox.keys():
            appbox = self.recv_mbox[app]
            output.append('       app 0x%x (%d records)'%(app,len(appbox)))
            for cmd in appbox.keys():
                output.append('             [0x%x]    (%d frames)  "%s"'%(cmd, len(appbox[cmd]), repr(appbox[cmd])[:width-36]))
            output.append('')
        return "\n".join(output)



def unittest(self, mhz=24):
    print "\nTesting SPI ping()"
    self.ping(3)
    
    print "\nTesting SPI poke/peek"
    data = "".join([chr(c) for c in xrange(120)])
    where = 0xf300
    self.poke(where, data)
    ndata = self.peek(where, len(data))
    if ndata != data:
        print " *FAILED*\n '%s'\n '%s'" % (data.encode("hex"), ndata.encode("hex"))
        raise(Exception(" *FAILED*\n '%s'\n '%s'" % (data.encode("hex"), ndata.encode("hex"))))
    else:
        print "  passed  '%s'" % (ndata.encode("hex"))


if __name__ == "__main__":
    idx = 0
    if len(sys.argv) > 1:
        idx = int(sys.argv.pop())
    d = USBDongle(idx=idx, debug=False)


