welcome to the 900MHz Explorer port of the rfcat project

This is a fork of atlas0fd00m's project: https://bitbucket.org/atlas0fd00m/rfcat

# TOC
* Goals
* Requirements
* Installing Hardware
* Installing Client
* Using RfCat
* Epiloque

# GOALS

the goals of the project are to reduce the time for security researchers to create needed tools for analyzing unknown targets, to aid in reverse-engineering of hardware, and to satiate my rf lust.

# REQUIREMENTS
RfCat currently requires Python 2.x.  the only suspected incompatabilities with Python 3.x are minimal, mostly print("stuff") versus print "stuff".

Other requirements:

* spi_serial python library - https://github.com/EnhancedRadioDevices/915MHzEdisonExplorer_SW

Build Requirements:

* Make
* SDCC (code is kept up-to-date with the current Ubuntu release, as of this writing: 3.4.0+dfsg-2ubuntu1)

# DEVELOPMENT
new development efforts should copy the "application.c" file to "appWhateverMyToolIs.c" and attempt to avoid making changes to other files in the repo if at all possible.  that is only a recommendation, because future bug-fixes in other libraries/headers will go much more smoothely for you.

a couple gotchas to keep in mind while developing for the cc1111:

* the memory model includes both "RAM" and "XDATA" concepts, and standard RAM variables and XDATA variables have different assembly instructions that are used to access them.  this means that you may find oddities when using a function written for XDATA on a standard RAM variable, and vice-versa.
* variables should be defined in a single .c file, and then "externs" declared in a .h file that can be included in other modules.  this is pretty standard for c programs, but both this and the previous point caused me difficulties at some points, and i found myself unsure what was causing my troubles.
* RAM memory is not cheap.  use it sparingly.
* you need to set the radio into IDLE mode before reconfiguring it
* you need to set the radio into TX mode *before* writing to the RFD register (firmware) as it is a 1-byte FIFO.


# INSTALLING HARDWARE

installing and getting up to speed with rfcat...

this tool is created, maintained, and used primarily on linux.  make and sdcc must be installed for creating new firmware and some of the helper functions we provide through make.

Start by connecting your Intel Edison to your Explorer board. Get the spi_serial library installed (see Requirements above).

## Building the CC1110 Firmware

It should be possible to build the CC1110 firmware on the Edison itself, but I haven't gotten SDCC to build correctly. For now, the easiest thing to do is cross-compile on a linux machine and then copy the hex file over the Edison with SCP or something.

* install sdcc

    apt-get install sdcc

* cd into the "rfcat/firmware/" directory
* "make explorerfw" will build the firmware for the Explorer board

## Installing CC1110 firmware onto the Explorer board

* use scp or something similar to copy the firmware image onto your Edison
* use ccprog to flash the ExplorerCat.hex firmware onto the CC1110

    ./ccprog -p 19,7,36 erase
    ./ccprog -p 19,7,36 write ExplorerCat.hex

# INSTALLING - EDISON-SIDE

Dependencies:  spi_serial (https://github.com/EnhancedRadioDevices/915MHzEdisonExplorer_SW)

install rfcat onto your system.  on most linux systems, this will place rfcat and rfcat_server in /usr/local/bin/ and rflib into /usr/*/lib/python2.x/dist-packages
installation is simple:

* cd into the rfcat directory (created by unpacking the tarball or by hg clone)
* sudo python setup.py install
* i highly recommend installing "ipython" (for deb/ubuntu folk: apt-get install ipython)

# USING RFCAT

* type "rfcat -r"   (if your system is not configured to allow non-root use, prepend "sudo" or you must run as root)
    you should have now entered an interactive python shell, where tab-completion and other aids should make a very powerful experience
    i love the raw-byte handling and introspection of it all.

* try things like:
    * d.ping()
    * d.discover()
    * d.debug()
    * d.RFxmit('blahblahblah')
    * d.RFrecv()
    * print d.reprRadioConfig()
    * d.setMdmDRate(19200)      # this sets the modem baud rate (or DataRate)
    * d.setPktPQT(0)            # this sets the preamble quality threshold to 0
    * d.setEnableMdmFEC(True)   # enables the convolutional Forward Error Correction built into the radio


while the toolset was created to make communicating with <ghz much easier, you will find the cc1111 manual from ti a great value.  the better you understand the radio, the better your experience will be.
play with the radio settings, but i recommend playing in small amounts and watch for the effects.  several things in the radio configuration settings are mandatory to get right in order to receive or transmit anything (one of those odd requirements is the TEST2/1/0 registers!)

if you watched any of my talks on rfcat, you will likely remember that you need to put the radio in IDLE state before configuring. (i said it three times, in a row, in different inflections).
however, you will find that i've done that for you in the client for most things.  the only time you need to do this yourself are:
    * if you are doing the changes in firmware
    * if you are using the "d.poke()" functionality
        * if you use "d.setRFRegister()", this is handled for you
** use d.setRFRegister() **

# EPILOGUE

other than that, hack fun, and feel free to share any details you can about successes and questions about failures you are able!

@ and the rest of the development team.

