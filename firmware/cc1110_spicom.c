/*
 * CC1110_spicom SPI communications driver for Explorer Board
 *
 * Adapted from rfcat code by atlas0fd00m (c) 2016
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
 */

#include "cc1110_spicom.h"

#define SPI_BUF_LEN 220 

volatile uint8_t __xdata spi_input_buf[SPI_BUF_LEN];
volatile uint8_t input_size = 0;
volatile uint8_t input_head_idx = 0;
volatile uint8_t input_tail_idx = 0;

volatile uint8_t __xdata spi_output_buf[SPI_BUF_LEN];
volatile uint8_t output_size = 0;
volatile uint8_t output_head_idx = 0;
volatile uint8_t output_tail_idx = 0;

volatile uint8_t serial_data_available;

#define SPI_MODE_WAIT 0
#define SPI_MODE_SIZE 1
#define SPI_MODE_XFER 2
volatile uint8_t spi_mode;

volatile uint8_t master_send_size = 0;
volatile uint8_t slave_send_size = 0;

// USB simulation stuff
__xdata u8  usb_ep5_OUTbuf[EP5OUT_BUFFER_SIZE];                   // these get pointed to by the above structure
__xdata USB_EP_IO_BUF     ep5;


// TODO: in rx1_isr, parse packets and put them into ep5 
// (see chipcon_usb.c handleOUTEP5 fcn for ideas)

// get len and put it into ep5.OUTlen
// get data and put it into ep5.OUTbuf (first two bytes should be \x40\xe0)
// also set ep5.OUTapp (how?)
// also set ep5.OUTcmd (how?)
// set and check flags


// todo: implement txdatai() (see appFHSSNIC for details)

/***************************************************************************
 * 
 * SPI encoding: 
 *
 * Master sends a 0x99 byte, followed by number of bytes that will be sent.
 * Before second byte xfer, slave loads up buffer with number of bytes
 * available. 
 * 
 */

void rx1_isr(void) __interrupt URX1_VECTOR {
  uint8_t value;
  value = U1DBUF;

  if (spi_mode == SPI_MODE_WAIT && value == 0x99) {
    slave_send_size = output_size;
    
    spi_mode = SPI_MODE_SIZE;
    U1DBUF = slave_send_size;
    return;
  }

  if (spi_mode == SPI_MODE_SIZE) {
    master_send_size = value;
    if (master_send_size > 0 || slave_send_size > 0) {
      spi_mode = SPI_MODE_XFER;
    } else {
      spi_mode = SPI_MODE_WAIT;
    }
    return;
  }

  if (spi_mode == SPI_MODE_XFER && input_size < master_send_size) {
    if (input_size < SPI_BUF_LEN) {
      spi_input_buf[input_head_idx] = value;
      input_head_idx++;
      if (input_head_idx >= SPI_BUF_LEN) {
        input_head_idx = 0;
      }
      input_size++;
      if (input_size == master_send_size) {
        master_send_size = 0;
        serial_data_available = 1;
        
        if (cb_ep5)
        {
            // TODO: construct EP5 struct from data and send it
            if(!cb_ep5()) {
                // TODO: non-zero return may be needed later
            }
            
        }
      }
    }
    if (slave_send_size == 0 && master_send_size == 0) {
      spi_mode = SPI_MODE_WAIT;
    }
  }
  
  // TODO: call callback if necessary
  if (cb_ep5 != NULL) {
      // do nothing for now, as we still need to populate ep5
      // cp_ep5();
  }
}

void tx1_isr(void) __interrupt UTX1_VECTOR {
  IRCON2 &= ~BIT2; // Clear UTX1IF
  if (spi_mode == SPI_MODE_SIZE || spi_mode == SPI_MODE_XFER) {
    if (slave_send_size > 0 && output_size > 0) {
      slave_send_size--;
      if (slave_send_size == 0 && master_send_size == 0) {
        spi_mode = SPI_MODE_WAIT;
      }
      U1DBUF = spi_output_buf[output_tail_idx];
      output_size--;
      output_tail_idx++;
      if (output_tail_idx >= SPI_BUF_LEN) {
        output_tail_idx = 0;
      }
    } else {
      U1DBUF = 0x99;
    }
  } else {
    U1DBUF = 0x99;
  }
}

void vcom_flush()
{
  // dummy fcn
  return;
}

void vcom_putchar(char c)
{
  if (output_size >= SPI_BUF_LEN) {
    // drop oldest byte
    output_size--;
    output_tail_idx++;
    if (output_tail_idx >= SPI_BUF_LEN) {
      output_tail_idx = 0;
    }
  }
  spi_output_buf[output_head_idx] = c;
  
  output_head_idx++;
  if (output_head_idx >= SPI_BUF_LEN) {
    output_head_idx = 0;
  }
  output_size++;
}

char vcom_pollchar()
{
  if (serial_data_available == 0) {
    return USB_READ_AGAIN;
  }
  return spi_input_buf[input_tail_idx];
}

char vcom_getchar()
{
  uint8_t s_data;
  
  if (serial_data_available == 0) {
    return USB_READ_AGAIN;
  }
  
  s_data = spi_input_buf[input_tail_idx];
  input_tail_idx++;
  if (input_tail_idx >= SPI_BUF_LEN) {
    input_tail_idx = 0;
  }
  input_size--;
  if (input_size == 0) {
    serial_data_available = 0;
  }
  return s_data;
}

void vcom_enable()
{
  TCON &= ~BIT3; // Clear URX1IF
  URX1IE = 1;    // Enable URX1IE interrupt

  IRCON2 &= ~BIT2; // Clear UTX1IF
  IEN2 |= BIT3;    // Enable UTX1IE interrupt
}

void vcom_disable()
{
  TCON &= ~BIT3; // Clear URX1IF
  URX1IE = 0;    // Disable URX1IE interrupt

  IRCON2 &= ~BIT2; // Clear UTX1IF
  IEN2 &= ~BIT3;    // Disable UTX1IE interrupt
}

void initUSB()
{
  /***************************************************************************
   * Setup slave SPI on USART1, Alt 2
   *
   * (SS): P1_4
   *  (C): P1_5
   * (MO): P1_6
   * (MI): P1_7
   */

  // configure USART1 for Alternative 2 => Port P1 (PERCFG.U1CFG = 1)
  // To avoid potential I/O conflict with USART0:
  // Configure USART0 for Alternative 1 => Port P0 (PERCFG.U0CFG = 0)
  PERCFG = (PERCFG & ~PERCFG_U0CFG) | PERCFG_U1CFG;

  // Set pins 2, 3 and 5 as peripheral I/O and pin 4 as GPIO output
  P1SEL = P1SEL | BIT4 | BIT5 | BIT6 | BIT7;
  P1DIR = P1DIR & ~(BIT4 | BIT5 | BIT6 | BIT7);

  /***************************************************************************
   * Configure SPI
   */

  // Set USART to SPI mode and Slave mode
  U1CSR = (U1CSR & ~U1CSR_MODE) | U1CSR_SLAVE;

  // Set:
  // - mantissa value
  // - exponent value
  // - clock phase to be centered on first edge of SCK period
  // - negative clock polarity (SCK low when idle)
  // - bit order for transfers to LSB first

// These values will give a baud rate of approx. 62.5kbps for 26 MHz clock
#define SPI_BAUD_M 59
#define SPI_BAUD_E 11

  U1BAUD = SPI_BAUD_M;
  U1GCR = (U1GCR & ~(U1GCR_BAUD_E | U1GCR_CPOL | U1GCR_CPHA | U1GCR_ORDER))
        | SPI_BAUD_E;

  TCON &= ~BIT3; // Clear URX1IF
  URX1IE = 1;    // Enable URX1IE interrupt

  IRCON2 &= ~BIT2; // Clear UTX1IF
  IEN2 |= BIT3;    // Enable UTX1IE interrupt

}

void usbProcessEvents()
{    
    return; /* dummy function */
}

void vcom_readline(char* buff) {
  char c;
  while ((c = vcom_getchar()) != '\n') {
    *buff++ = c;
  }
  *buff = 0;
}

void vcom_putstr(char* __xdata buff) {
  while (*buff) {
      vcom_putchar(*buff++);
  }
  vcom_flush();
}

void usb_up() {
  // dummy fcn
  vcom_enable();
}

void vcom_down() {
  // dummy fcn
  vcom_disable();
}

int txdata(u8 app, u8 cmd, u16 len, __xdata u8* dataptr)
{
    u16 test = 0;

    /*removes warning */    
    test = app = cmd = len;

    /* function from usb thing, only need data ptr */    
    while (*dataptr) 
    {
          vcom_putchar(*dataptr++);
    }
    vcom_flush();
    
    // TODO: may want to handle ep5.flags EP_INBUF_WRITTEN
    
    return 0;
}

// This interrupt is shared with port 2,
// so when we hook that up, fix this
void usbIntHandler(void) __interrupt P2INT_VECTOR
{
  return;
}

void p0IntHandler(void) __interrupt P0INT_VECTOR
{
    return;
}

void waitForUSBsetup()
{
    return;
}

void registerCb_ep5(int (*callback)(void))
{
    cb_ep5 = callback2;
}