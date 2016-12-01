;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Wed Nov 30 16:38:13 2016
;--------------------------------------------------------
	.module cc1110_spicom
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vcom_down
	.globl _vcom_readline
	.globl _vcom_pollchar
	.globl _tx1_isr
	.globl _rx1_isr
	.globl _USBIF
	.globl _MODE
	.globl _RE
	.globl _SLAVE
	.globl _FE
	.globl _ERR
	.globl _RX_BYTE
	.globl _TX_BYTE
	.globl _ACTIVE
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _WDTIF
	.globl _P1IF
	.globl _UTX1IF
	.globl _UTX0IF
	.globl _P2IF
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _OVFIM
	.globl _T4CH1IF
	.globl _T4CH0IF
	.globl _T4OVFIF
	.globl _T3CH1IF
	.globl _T3CH0IF
	.globl _T3OVFIF
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _STIF
	.globl _P0IF
	.globl _T4IF
	.globl _T3IF
	.globl _T2IF
	.globl _T1IF
	.globl _DMAIF
	.globl _P0IE
	.globl _T4IE
	.globl _T3IE
	.globl _T2IE
	.globl _T1IE
	.globl _DMAIE
	.globl _EA
	.globl _STIE
	.globl _ENCIE
	.globl _URX1IE
	.globl _URX0IE
	.globl _ADCIE
	.globl _RFTXRXIE
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _ENCIF_1
	.globl _ENCIF_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _URX1IF
	.globl _ADCIF
	.globl _URX0IF
	.globl _IT1
	.globl _RFTXRXIF
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _ADCCFG
	.globl _PERCFG
	.globl _B
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _RFIF
	.globl _IRCON2
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _RFST
	.globl _ACC
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _RFD
	.globl _TIMIF
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _PSW
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _WDCTL
	.globl __SFRC8
	.globl _MEMCTR
	.globl _CLKCON
	.globl _U0GCR
	.globl _U0UCR
	.globl __SFRC3
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _IRCON
	.globl __SFRBF
	.globl _SLEEP
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _IP1
	.globl _IEN1
	.globl __SFRB7
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl __SFRB0
	.globl _FWDATA
	.globl _FCTL
	.globl _FADDRH
	.globl _FADDRL
	.globl _FWT
	.globl __SFRAA
	.globl _IP0
	.globl _IEN0
	.globl __SFRA7
	.globl _WORTIME1
	.globl _WORTIME0
	.globl _WOREVT1
	.globl _WOREVT0
	.globl _WORCTRL
	.globl _WORIRQ
	.globl _P2
	.globl __SFR9F
	.globl _T2CTL
	.globl _T2PR
	.globl _T2CT
	.globl _S1CON
	.globl _IEN2
	.globl __SFR99
	.globl _S0CON
	.globl __SFR97
	.globl __SFR96
	.globl __SFR95
	.globl __SFR94
	.globl __XPAGE
	.globl _MPAGE
	.globl _DPS
	.globl _RFIM
	.globl _P1
	.globl _P0INP
	.globl __SFR8E
	.globl _P1IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _TCON
	.globl _PCON
	.globl _U0CSR
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _appReturn_PARM_2
	.globl _ep5
	.globl _usb_ep5_OUTbuf
	.globl _spi_output_buf
	.globl _spi_input_buf
	.globl _USBF5
	.globl _USBF4
	.globl _USBF3
	.globl _USBF2
	.globl _USBF1
	.globl _USBF0
	.globl _USBCNTH
	.globl _USBCNTL
	.globl _USBCNT0
	.globl _USBCSOH
	.globl _USBCSOL
	.globl _USBMAXO
	.globl _USBCSIH
	.globl _USBCSIL
	.globl _USBCS0
	.globl _USBMAXI
	.globl _USBINDEX
	.globl _USBFRMH
	.globl _USBFRML
	.globl _USBCIE
	.globl _USBOIE
	.globl _USBIIE
	.globl _USBCIF
	.globl _USBOIF
	.globl _USBIIF
	.globl _USBPOW
	.globl _USBADDR
	.globl _X_P2DIR
	.globl _X_P1DIR
	.globl _X_P0DIR
	.globl _X_U1GCR
	.globl _X_U1UCR
	.globl _X_U1BAUD
	.globl _X_U1DBUF
	.globl _X_U1CSR
	.globl _X_P2INP
	.globl _X_P1INP
	.globl _X_P2SEL
	.globl _X_P1SEL
	.globl _X_P0SEL
	.globl _X_ADCCFG
	.globl _X_PERCFG
	.globl __NA_B
	.globl _X_T4CC1
	.globl _X_T4CCTL1
	.globl _X_T4CC0
	.globl _X_T4CCTL0
	.globl _X_T4CTL
	.globl _X_T4CNT
	.globl _X_RFIF
	.globl __NA_IRCON2
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _X_T1CTL
	.globl _X_T1CNTH
	.globl _X_T1CNTL
	.globl _X_RFST
	.globl __NA_ACC
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _X_RFD
	.globl _X_TIMIF
	.globl _X_DMAREQ
	.globl _X_DMAARM
	.globl _X_DMA0CFGH
	.globl _X_DMA0CFGL
	.globl _X_DMA1CFGH
	.globl _X_DMA1CFGL
	.globl _X_DMAIRQ
	.globl __NA_PSW
	.globl _X_T3CC1
	.globl _X_T3CCTL1
	.globl _X_T3CC0
	.globl _X_T3CCTL0
	.globl _X_T3CTL
	.globl _X_T3CNT
	.globl _X_WDCTL
	.globl __X_SFRC8
	.globl _X_MEMCTR
	.globl _X_CLKCON
	.globl _X_U0GCR
	.globl _X_U0UCR
	.globl __X_SFRC3
	.globl _X_U0BAUD
	.globl _X_U0DBUF
	.globl __NA_IRCON
	.globl __X_SFRBF
	.globl _X_SLEEP
	.globl _X_RNDH
	.globl _X_RNDL
	.globl _X_ADCH
	.globl _X_ADCL
	.globl __NA_IP1
	.globl __NA_IEN1
	.globl __X_SFRB7
	.globl _X_ADCCON3
	.globl _X_ADCCON2
	.globl _X_ADCCON1
	.globl _X_ENCCS
	.globl _X_ENCDO
	.globl _X_ENCDI
	.globl __X_SFRB0
	.globl _X_FWDATA
	.globl _X_FCTL
	.globl _X_FADDRH
	.globl _X_FADDRL
	.globl _X_FWT
	.globl __X_SFRAA
	.globl __NA_IP0
	.globl __NA_IEN0
	.globl __X_SFRA7
	.globl _X_WORTIME1
	.globl _X_WORTIME0
	.globl _X_WOREVT1
	.globl _X_WOREVT0
	.globl _X_WORCTRL
	.globl _X_WORIRQ
	.globl __NA_P2
	.globl __X_SFR9F
	.globl _X_T2CTL
	.globl _X_T2PR
	.globl _X_T2CT
	.globl __NA_S1CON
	.globl __NA_IEN2
	.globl __X_SFR99
	.globl __NA_S0CON
	.globl __X_SFR97
	.globl __X_SFR96
	.globl __X_SFR95
	.globl __X_SFR94
	.globl _X_MPAGE
	.globl __NA_DPS
	.globl _X_RFIM
	.globl __NA_P1
	.globl _X_P0INP
	.globl __X_SFR8E
	.globl _X_P1IEN
	.globl _X_PICTL
	.globl _X_P2IFG
	.globl _X_P1IFG
	.globl _X_P0IFG
	.globl __NA_TCON
	.globl __NA_PCON
	.globl _X_U0CSR
	.globl __NA_DPH1
	.globl __NA_DPL1
	.globl __NA_DPH0
	.globl __NA_DPL0
	.globl __NA_SP
	.globl __NA_P0
	.globl _I2SCLKF2
	.globl _I2SCLKF1
	.globl _I2SCLKF0
	.globl _I2SSTAT
	.globl _I2SWCNT
	.globl _I2SDATH
	.globl _I2SDATL
	.globl _I2SCFG1
	.globl _I2SCFG0
	.globl _VCO_VC_DAC
	.globl _PKTSTATUS
	.globl _MARCSTATE
	.globl _RSSI
	.globl _LQI
	.globl _FREQEST
	.globl _VERSION
	.globl _PARTNUM
	.globl __XREGDF35
	.globl __XREGDF34
	.globl __XREGDF33
	.globl __XREGDF32
	.globl _IOCFG0
	.globl _IOCFG1
	.globl _IOCFG2
	.globl _PA_TABLE0
	.globl _PA_TABLE1
	.globl _PA_TABLE2
	.globl _PA_TABLE3
	.globl _PA_TABLE4
	.globl _PA_TABLE5
	.globl _PA_TABLE6
	.globl _PA_TABLE7
	.globl __XREGDF26
	.globl _TEST0
	.globl _TEST1
	.globl _TEST2
	.globl __XREGDF22
	.globl __XREGDF21
	.globl __XREGDF20
	.globl _FSCAL0
	.globl _FSCAL1
	.globl _FSCAL2
	.globl _FSCAL3
	.globl _FREND0
	.globl _FREND1
	.globl _AGCCTRL0
	.globl _AGCCTRL1
	.globl _AGCCTRL2
	.globl _BSCFG
	.globl _FOCCFG
	.globl _MCSM0
	.globl _MCSM1
	.globl _MCSM2
	.globl _DEVIATN
	.globl _MDMCFG0
	.globl _MDMCFG1
	.globl _MDMCFG2
	.globl _MDMCFG3
	.globl _MDMCFG4
	.globl _FREQ0
	.globl _FREQ1
	.globl _FREQ2
	.globl _FSCTRL0
	.globl _FSCTRL1
	.globl _CHANNR
	.globl _ADDR
	.globl _PKTCTRL0
	.globl _PKTCTRL1
	.globl _PKTLEN
	.globl _SYNC0
	.globl _SYNC1
	.globl _MDMCTRL0H
	.globl _txdata_PARM_4
	.globl _txdata_PARM_3
	.globl _txdata_PARM_2
	.globl _cb_ep5
	.globl _slave_send_size
	.globl _master_send_size
	.globl _spi_mode
	.globl _serial_data_available
	.globl _output_tail_idx
	.globl _output_head_idx
	.globl _output_size
	.globl _input_tail_idx
	.globl _input_head_idx
	.globl _input_size
	.globl _vcom_flush
	.globl _vcom_putchar
	.globl _vcom_getchar
	.globl _vcom_enable
	.globl _vcom_disable
	.globl _initUSB
	.globl _usbProcessEvents
	.globl _vcom_putstr
	.globl _usb_up
	.globl _txdata
	.globl _usbIntHandler
	.globl _p0IntHandler
	.globl _waitForUSBsetup
	.globl _registerCb_ep5
	.globl _appReturn
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_U0CSR	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P1IEN	=	0x008d
__SFR8E	=	0x008e
_P0INP	=	0x008f
_P1	=	0x0090
_RFIM	=	0x0091
_DPS	=	0x0092
_MPAGE	=	0x0093
__XPAGE	=	0x0093
__SFR94	=	0x0094
__SFR95	=	0x0095
__SFR96	=	0x0096
__SFR97	=	0x0097
_S0CON	=	0x0098
__SFR99	=	0x0099
_IEN2	=	0x009a
_S1CON	=	0x009b
_T2CT	=	0x009c
_T2PR	=	0x009d
_T2CTL	=	0x009e
__SFR9F	=	0x009f
_P2	=	0x00a0
_WORIRQ	=	0x00a1
_WORCTRL	=	0x00a2
_WOREVT0	=	0x00a3
_WOREVT1	=	0x00a4
_WORTIME0	=	0x00a5
_WORTIME1	=	0x00a6
__SFRA7	=	0x00a7
_IEN0	=	0x00a8
_IP0	=	0x00a9
__SFRAA	=	0x00aa
_FWT	=	0x00ab
_FADDRL	=	0x00ac
_FADDRH	=	0x00ad
_FCTL	=	0x00ae
_FWDATA	=	0x00af
__SFRB0	=	0x00b0
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
__SFRB7	=	0x00b7
_IEN1	=	0x00b8
_IP1	=	0x00b9
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_SLEEP	=	0x00be
__SFRBF	=	0x00bf
_IRCON	=	0x00c0
_U0DBUF	=	0x00c1
_U0BAUD	=	0x00c2
__SFRC3	=	0x00c3
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_CLKCON	=	0x00c6
_MEMCTR	=	0x00c7
__SFRC8	=	0x00c8
_WDCTL	=	0x00c9
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_PSW	=	0x00d0
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_TIMIF	=	0x00d8
_RFD	=	0x00d9
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_ACC	=	0x00e0
_RFST	=	0x00e1
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_IRCON2	=	0x00e8
_RFIF	=	0x00e9
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_B	=	0x00f0
_PERCFG	=	0x00f1
_ADCCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_U1CSR	=	0x00f8
_U1DBUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_RFTXRXIF	=	0x0089
_IT1	=	0x008a
_URX0IF	=	0x008b
_ADCIF	=	0x008d
_URX1IF	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_ENCIF_0	=	0x0098
_ENCIF_1	=	0x0099
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_RFTXRXIE	=	0x00a8
_ADCIE	=	0x00a9
_URX0IE	=	0x00aa
_URX1IE	=	0x00ab
_ENCIE	=	0x00ac
_STIE	=	0x00ad
_EA	=	0x00af
_DMAIE	=	0x00b8
_T1IE	=	0x00b9
_T2IE	=	0x00ba
_T3IE	=	0x00bb
_T4IE	=	0x00bc
_P0IE	=	0x00bd
_DMAIF	=	0x00c0
_T1IF	=	0x00c1
_T2IF	=	0x00c2
_T3IF	=	0x00c3
_T4IF	=	0x00c4
_P0IF	=	0x00c5
_STIF	=	0x00c7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_T3OVFIF	=	0x00d8
_T3CH0IF	=	0x00d9
_T3CH1IF	=	0x00da
_T4OVFIF	=	0x00db
_T4CH0IF	=	0x00dc
_T4CH1IF	=	0x00dd
_OVFIM	=	0x00de
_ACC_0	=	0x00e0
_ACC_1	=	0x00e1
_ACC_2	=	0x00e2
_ACC_3	=	0x00e3
_ACC_4	=	0x00e4
_ACC_5	=	0x00e5
_ACC_6	=	0x00e6
_ACC_7	=	0x00e7
_P2IF	=	0x00e8
_UTX0IF	=	0x00e9
_UTX1IF	=	0x00ea
_P1IF	=	0x00eb
_WDTIF	=	0x00ec
_B_0	=	0x00f0
_B_1	=	0x00f1
_B_2	=	0x00f2
_B_3	=	0x00f3
_B_4	=	0x00f4
_B_5	=	0x00f5
_B_6	=	0x00f6
_B_7	=	0x00f7
_ACTIVE	=	0x00f8
_TX_BYTE	=	0x00f9
_RX_BYTE	=	0x00fa
_ERR	=	0x00fb
_FE	=	0x00fc
_SLAVE	=	0x00fd
_RE	=	0x00fe
_MODE	=	0x00ff
_USBIF	=	0x00e8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_input_size::
	.ds 1
_input_head_idx::
	.ds 1
_input_tail_idx::
	.ds 1
_output_size::
	.ds 1
_output_head_idx::
	.ds 1
_output_tail_idx::
	.ds 1
_serial_data_available::
	.ds 1
_spi_mode::
	.ds 1
_master_send_size::
	.ds 1
_slave_send_size::
	.ds 1
_cb_ep5::
	.ds 2
_txdata_PARM_2:
	.ds 1
_txdata_PARM_3:
	.ds 2
_txdata_PARM_4:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_MDMCTRL0H	=	0xdf02
_SYNC1	=	0xdf00
_SYNC0	=	0xdf01
_PKTLEN	=	0xdf02
_PKTCTRL1	=	0xdf03
_PKTCTRL0	=	0xdf04
_ADDR	=	0xdf05
_CHANNR	=	0xdf06
_FSCTRL1	=	0xdf07
_FSCTRL0	=	0xdf08
_FREQ2	=	0xdf09
_FREQ1	=	0xdf0a
_FREQ0	=	0xdf0b
_MDMCFG4	=	0xdf0c
_MDMCFG3	=	0xdf0d
_MDMCFG2	=	0xdf0e
_MDMCFG1	=	0xdf0f
_MDMCFG0	=	0xdf10
_DEVIATN	=	0xdf11
_MCSM2	=	0xdf12
_MCSM1	=	0xdf13
_MCSM0	=	0xdf14
_FOCCFG	=	0xdf15
_BSCFG	=	0xdf16
_AGCCTRL2	=	0xdf17
_AGCCTRL1	=	0xdf18
_AGCCTRL0	=	0xdf19
_FREND1	=	0xdf1a
_FREND0	=	0xdf1b
_FSCAL3	=	0xdf1c
_FSCAL2	=	0xdf1d
_FSCAL1	=	0xdf1e
_FSCAL0	=	0xdf1f
__XREGDF20	=	0xdf20
__XREGDF21	=	0xdf21
__XREGDF22	=	0xdf22
_TEST2	=	0xdf23
_TEST1	=	0xdf24
_TEST0	=	0xdf25
__XREGDF26	=	0xdf26
_PA_TABLE7	=	0xdf27
_PA_TABLE6	=	0xdf28
_PA_TABLE5	=	0xdf29
_PA_TABLE4	=	0xdf2a
_PA_TABLE3	=	0xdf2b
_PA_TABLE2	=	0xdf2c
_PA_TABLE1	=	0xdf2d
_PA_TABLE0	=	0xdf2e
_IOCFG2	=	0xdf2f
_IOCFG1	=	0xdf30
_IOCFG0	=	0xdf31
__XREGDF32	=	0xdf32
__XREGDF33	=	0xdf33
__XREGDF34	=	0xdf34
__XREGDF35	=	0xdf35
_PARTNUM	=	0xdf36
_VERSION	=	0xdf37
_FREQEST	=	0xdf38
_LQI	=	0xdf39
_RSSI	=	0xdf3a
_MARCSTATE	=	0xdf3b
_PKTSTATUS	=	0xdf3c
_VCO_VC_DAC	=	0xdf3d
_I2SCFG0	=	0xdf40
_I2SCFG1	=	0xdf41
_I2SDATL	=	0xdf42
_I2SDATH	=	0xdf43
_I2SWCNT	=	0xdf44
_I2SSTAT	=	0xdf45
_I2SCLKF0	=	0xdf46
_I2SCLKF1	=	0xdf47
_I2SCLKF2	=	0xdf48
__NA_P0	=	0xdf80
__NA_SP	=	0xdf81
__NA_DPL0	=	0xdf82
__NA_DPH0	=	0xdf83
__NA_DPL1	=	0xdf84
__NA_DPH1	=	0xdf85
_X_U0CSR	=	0xdf86
__NA_PCON	=	0xdf87
__NA_TCON	=	0xdf88
_X_P0IFG	=	0xdf89
_X_P1IFG	=	0xdf8a
_X_P2IFG	=	0xdf8b
_X_PICTL	=	0xdf8c
_X_P1IEN	=	0xdf8d
__X_SFR8E	=	0xdf8e
_X_P0INP	=	0xdf8f
__NA_P1	=	0xdf90
_X_RFIM	=	0xdf91
__NA_DPS	=	0xdf92
_X_MPAGE	=	0xdf93
__X_SFR94	=	0xdf94
__X_SFR95	=	0xdf95
__X_SFR96	=	0xdf96
__X_SFR97	=	0xdf97
__NA_S0CON	=	0xdf98
__X_SFR99	=	0xdf99
__NA_IEN2	=	0xdf9a
__NA_S1CON	=	0xdf9b
_X_T2CT	=	0xdf9c
_X_T2PR	=	0xdf9d
_X_T2CTL	=	0xdf9e
__X_SFR9F	=	0xdf9f
__NA_P2	=	0xdfa0
_X_WORIRQ	=	0xdfa1
_X_WORCTRL	=	0xdfa2
_X_WOREVT0	=	0xdfa3
_X_WOREVT1	=	0xdfa4
_X_WORTIME0	=	0xdfa5
_X_WORTIME1	=	0xdfa6
__X_SFRA7	=	0xdfa7
__NA_IEN0	=	0xdfa8
__NA_IP0	=	0xdfa9
__X_SFRAA	=	0xdfaa
_X_FWT	=	0xdfab
_X_FADDRL	=	0xdfac
_X_FADDRH	=	0xdfad
_X_FCTL	=	0xdfae
_X_FWDATA	=	0xdfaf
__X_SFRB0	=	0xdfb0
_X_ENCDI	=	0xdfb1
_X_ENCDO	=	0xdfb2
_X_ENCCS	=	0xdfb3
_X_ADCCON1	=	0xdfb4
_X_ADCCON2	=	0xdfb5
_X_ADCCON3	=	0xdfb6
__X_SFRB7	=	0xdfb7
__NA_IEN1	=	0xdfb8
__NA_IP1	=	0xdfb9
_X_ADCL	=	0xdfba
_X_ADCH	=	0xdfbb
_X_RNDL	=	0xdfbc
_X_RNDH	=	0xdfbd
_X_SLEEP	=	0xdfbe
__X_SFRBF	=	0xdfbf
__NA_IRCON	=	0xdfc0
_X_U0DBUF	=	0xdfc1
_X_U0BAUD	=	0xdfc2
__X_SFRC3	=	0xdfc3
_X_U0UCR	=	0xdfc4
_X_U0GCR	=	0xdfc5
_X_CLKCON	=	0xdfc6
_X_MEMCTR	=	0xdfc7
__X_SFRC8	=	0xdfc8
_X_WDCTL	=	0xdfc9
_X_T3CNT	=	0xdfca
_X_T3CTL	=	0xdfcb
_X_T3CCTL0	=	0xdfcc
_X_T3CC0	=	0xdfcd
_X_T3CCTL1	=	0xdfce
_X_T3CC1	=	0xdfcf
__NA_PSW	=	0xdfd0
_X_DMAIRQ	=	0xdfd1
_X_DMA1CFGL	=	0xdfd2
_X_DMA1CFGH	=	0xdfd3
_X_DMA0CFGL	=	0xdfd4
_X_DMA0CFGH	=	0xdfd5
_X_DMAARM	=	0xdfd6
_X_DMAREQ	=	0xdfd7
_X_TIMIF	=	0xdfd8
_X_RFD	=	0xdfd9
_X_T1CC0L	=	0xdfda
_X_T1CC0H	=	0xdfdb
_X_T1CC1L	=	0xdfdc
_X_T1CC1H	=	0xdfdd
_X_T1CC2L	=	0xdfde
_X_T1CC2H	=	0xdfdf
__NA_ACC	=	0xdfe0
_X_RFST	=	0xdfe1
_X_T1CNTL	=	0xdfe2
_X_T1CNTH	=	0xdfe3
_X_T1CTL	=	0xdfe4
_X_T1CCTL0	=	0xdfe5
_X_T1CCTL1	=	0xdfe6
_X_T1CCTL2	=	0xdfe7
__NA_IRCON2	=	0xdfe8
_X_RFIF	=	0xdfe9
_X_T4CNT	=	0xdfea
_X_T4CTL	=	0xdfeb
_X_T4CCTL0	=	0xdfec
_X_T4CC0	=	0xdfed
_X_T4CCTL1	=	0xdfee
_X_T4CC1	=	0xdfef
__NA_B	=	0xdff0
_X_PERCFG	=	0xdff1
_X_ADCCFG	=	0xdff2
_X_P0SEL	=	0xdff3
_X_P1SEL	=	0xdff4
_X_P2SEL	=	0xdff5
_X_P1INP	=	0xdff6
_X_P2INP	=	0xdff7
_X_U1CSR	=	0xdff8
_X_U1DBUF	=	0xdff9
_X_U1BAUD	=	0xdffa
_X_U1UCR	=	0xdffb
_X_U1GCR	=	0xdffc
_X_P0DIR	=	0xdffd
_X_P1DIR	=	0xdffe
_X_P2DIR	=	0xdfff
_USBADDR	=	0xde00
_USBPOW	=	0xde01
_USBIIF	=	0xde02
_USBOIF	=	0xde04
_USBCIF	=	0xde06
_USBIIE	=	0xde07
_USBOIE	=	0xde09
_USBCIE	=	0xde0b
_USBFRML	=	0xde0c
_USBFRMH	=	0xde0d
_USBINDEX	=	0xde0e
_USBMAXI	=	0xde10
_USBCS0	=	0xde11
_USBCSIL	=	0xde11
_USBCSIH	=	0xde12
_USBMAXO	=	0xde13
_USBCSOL	=	0xde14
_USBCSOH	=	0xde15
_USBCNT0	=	0xde16
_USBCNTL	=	0xde16
_USBCNTH	=	0xde17
_USBF0	=	0xde20
_USBF1	=	0xde22
_USBF2	=	0xde24
_USBF3	=	0xde26
_USBF4	=	0xde28
_USBF5	=	0xde2a
_spi_input_buf::
	.ds 220
_spi_output_buf::
	.ds 220
_usb_ep5_OUTbuf::
	.ds 516
_ep5::
	.ds 18
_vcom_putstr_buff_1_98:
	.ds 3
_appReturn_PARM_2:
	.ds 2
_appReturn_len_1_114:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	cc1110_spicom.c:24: volatile uint8_t input_size = 0;
	mov	_input_size,#0x00
;	cc1110_spicom.c:25: volatile uint8_t input_head_idx = 0;
	mov	_input_head_idx,#0x00
;	cc1110_spicom.c:26: volatile uint8_t input_tail_idx = 0;
	mov	_input_tail_idx,#0x00
;	cc1110_spicom.c:29: volatile uint8_t output_size = 0;
	mov	_output_size,#0x00
;	cc1110_spicom.c:30: volatile uint8_t output_head_idx = 0;
	mov	_output_head_idx,#0x00
;	cc1110_spicom.c:31: volatile uint8_t output_tail_idx = 0;
	mov	_output_tail_idx,#0x00
;	cc1110_spicom.c:40: volatile uint8_t master_send_size = 0;
	mov	_master_send_size,#0x00
;	cc1110_spicom.c:41: volatile uint8_t slave_send_size = 0;
	mov	_slave_send_size,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'rx1_isr'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	cc1110_spicom.c:73: void rx1_isr(void) __interrupt URX1_VECTOR {
;	-----------------------------------------
;	 function rx1_isr
;	-----------------------------------------
_rx1_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	cc1110_spicom.c:75: value = U1DBUF;
	mov	r7,_U1DBUF
;	cc1110_spicom.c:77: if (spi_mode == SPI_MODE_WAIT && value == 0x99) {
	mov	a,_spi_mode
	jnz	00102$
	cjne	r7,#0x99,00102$
;	cc1110_spicom.c:78: slave_send_size = output_size;
	mov	_slave_send_size,_output_size
;	cc1110_spicom.c:80: spi_mode = SPI_MODE_SIZE;
	mov	_spi_mode,#0x01
;	cc1110_spicom.c:81: U1DBUF = slave_send_size;
	mov	_U1DBUF,_slave_send_size
;	cc1110_spicom.c:82: return;
	ljmp	00128$
00102$:
;	cc1110_spicom.c:85: if (spi_mode == SPI_MODE_SIZE) {
	mov	a,#0x01
	cjne	a,_spi_mode,00109$
;	cc1110_spicom.c:86: master_send_size = value;
	mov	_master_send_size,r7
;	cc1110_spicom.c:87: ep5.OUTlen = value;
	mov	ar5,r7
	mov	r6,#0x00
	mov	dptr,#(_ep5 + 0x0008)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	cc1110_spicom.c:88: if (master_send_size > 0 || slave_send_size > 0) {
	mov	a,_master_send_size
	jnz	00104$
	mov	a,_slave_send_size
	jz	00105$
00104$:
;	cc1110_spicom.c:89: spi_mode = SPI_MODE_XFER;
	mov	_spi_mode,#0x02
	sjmp	00106$
00105$:
;	cc1110_spicom.c:91: spi_mode = SPI_MODE_WAIT;
	mov	_spi_mode,#0x00
00106$:
;	cc1110_spicom.c:93: return;
	ljmp	00128$
00109$:
;	cc1110_spicom.c:96: if (spi_mode == SPI_MODE_XFER && input_size < master_send_size) {
	mov	a,#0x02
	cjne	a,_spi_mode,00173$
	sjmp	00174$
00173$:
	ljmp	00128$
00174$:
	clr	c
	mov	a,_input_size
	subb	a,_master_send_size
	jc	00175$
	ljmp	00128$
00175$:
;	cc1110_spicom.c:97: if (input_size == 0) {
	mov	a,_input_size
	jnz	00114$
;	cc1110_spicom.c:99: ep5.OUTapp = value;
	mov	dptr,#(_ep5 + 0x000a)
	mov	a,r7
	movx	@dptr,a
;	cc1110_spicom.c:100: ep5.OUTbuf[0] = 0x40; // backwards compatibility
	mov	dptr,#(_ep5 + 0x0005)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x40
	lcall	__gptrput
	sjmp	00115$
00114$:
;	cc1110_spicom.c:101: } else if (input_size == 1) {
	mov	a,#0x01
	cjne	a,_input_size,00111$
;	cc1110_spicom.c:103: ep5.OUTcmd = value;
	mov	dptr,#(_ep5 + 0x000b)
	mov	a,r7
	movx	@dptr,a
;	cc1110_spicom.c:104: ep5.OUTbuf[1] = 0xe0; // backwards compatibility
	mov	dptr,#(_ep5 + 0x0005)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	r4
	cjne	r4,#0x00,00179$
	inc	r5
00179$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0xE0
	lcall	__gptrput
	sjmp	00115$
00111$:
;	cc1110_spicom.c:107: ep5.OUTbuf[input_size] = value;
	mov	dptr,#(_ep5 + 0x0005)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,_input_size
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
00115$:
;	cc1110_spicom.c:109: input_size++;
	inc	_input_size
;	cc1110_spicom.c:110: if (input_size == master_send_size) {
	mov	a,_master_send_size
	cjne	a,_input_size,00117$
;	cc1110_spicom.c:111: master_send_size = 0;
	mov	_master_send_size,#0x00
;	cc1110_spicom.c:112: serial_data_available = 1;
	mov	_serial_data_available,#0x01
00117$:
;	cc1110_spicom.c:114: if (slave_send_size == 0 && master_send_size == 0) {
	mov	a,_slave_send_size
	jnz	00128$
	mov	a,_master_send_size
;	cc1110_spicom.c:115: spi_mode = SPI_MODE_WAIT;
	jnz	00128$
	mov	_spi_mode,a
;	cc1110_spicom.c:116: if (cb_ep5)
	mov	a,_cb_ep5
	orl	a,(_cb_ep5 + 1)
	jz	00128$
;	cc1110_spicom.c:118: if(!cb_ep5()) {
	mov	dpl,_cb_ep5
	mov	dph,(_cb_ep5 + 1)
	lcall	__sdcc_call_dptr
00128$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'tx1_isr'
;------------------------------------------------------------
;	cc1110_spicom.c:126: void tx1_isr(void) __interrupt UTX1_VECTOR {
;	-----------------------------------------
;	 function tx1_isr
;	-----------------------------------------
_tx1_isr:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	cc1110_spicom.c:127: IRCON2 &= ~BIT2; // Clear UTX1IF
	mov	r7,_IRCON2
	mov	a,#0xFB
	anl	a,r7
	mov	_IRCON2,a
;	cc1110_spicom.c:128: if (spi_mode == SPI_MODE_SIZE || spi_mode == SPI_MODE_XFER) {
	mov	a,#0x01
	cjne	a,_spi_mode,00139$
	sjmp	00112$
00139$:
	mov	a,#0x02
	cjne	a,_spi_mode,00113$
00112$:
;	cc1110_spicom.c:129: if (slave_send_size > 0 && output_size > 0) {
	mov	a,_slave_send_size
	jz	00109$
	mov	a,_output_size
	jz	00109$
;	cc1110_spicom.c:130: slave_send_size--;
	dec	_slave_send_size
;	cc1110_spicom.c:131: if (slave_send_size == 0 && master_send_size == 0) {
	mov	a,_slave_send_size
	jnz	00102$
	mov	a,_master_send_size
;	cc1110_spicom.c:132: spi_mode = SPI_MODE_WAIT;
	jnz	00102$
	mov	_spi_mode,a
00102$:
;	cc1110_spicom.c:134: U1DBUF = spi_output_buf[output_tail_idx];
	mov	a,_output_tail_idx
	add	a,#_spi_output_buf
	mov	dpl,a
	clr	a
	addc	a,#(_spi_output_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_U1DBUF,a
;	cc1110_spicom.c:135: output_size--;
	dec	_output_size
;	cc1110_spicom.c:136: if (output_size == 0) {
	mov	a,_output_size
	jnz	00105$
;	cc1110_spicom.c:137: ep5.flags &= ~EP_INBUF_WRITTEN;
	mov	dptr,#(_ep5 + 0x000e)
	movx	a,@dptr
	anl	a,#0xFE
	mov	r7,a
	movx	@dptr,a
00105$:
;	cc1110_spicom.c:139: output_tail_idx++;
	inc	_output_tail_idx
;	cc1110_spicom.c:140: if (output_tail_idx >= SPI_BUF_LEN) {
	mov	a,#0x100 - 0xDC
	add	a,_output_tail_idx
	jnc	00116$
;	cc1110_spicom.c:141: output_tail_idx = 0;
	mov	_output_tail_idx,#0x00
	sjmp	00116$
00109$:
;	cc1110_spicom.c:144: U1DBUF = 0x99;
	mov	_U1DBUF,#0x99
	sjmp	00116$
00113$:
;	cc1110_spicom.c:147: U1DBUF = 0x99;
	mov	_U1DBUF,#0x99
00116$:
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_flush'
;------------------------------------------------------------
;	cc1110_spicom.c:151: void vcom_flush()
;	-----------------------------------------
;	 function vcom_flush
;	-----------------------------------------
_vcom_flush:
;	cc1110_spicom.c:154: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	cc1110_spicom.c:157: void vcom_putchar(char c)
;	-----------------------------------------
;	 function vcom_putchar
;	-----------------------------------------
_vcom_putchar:
	mov	r7,dpl
;	cc1110_spicom.c:159: if (output_size >= SPI_BUF_LEN) {
	mov	a,#0x100 - 0xDC
	add	a,_output_size
	jnc	00104$
;	cc1110_spicom.c:161: output_size--;
	dec	_output_size
;	cc1110_spicom.c:162: output_tail_idx++;
	inc	_output_tail_idx
;	cc1110_spicom.c:163: if (output_tail_idx >= SPI_BUF_LEN) {
	mov	a,#0x100 - 0xDC
	add	a,_output_tail_idx
	jnc	00104$
;	cc1110_spicom.c:164: output_tail_idx = 0;
	mov	_output_tail_idx,#0x00
00104$:
;	cc1110_spicom.c:167: spi_output_buf[output_head_idx] = c;
	mov	a,_output_head_idx
	add	a,#_spi_output_buf
	mov	dpl,a
	clr	a
	addc	a,#(_spi_output_buf >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	cc1110_spicom.c:169: output_head_idx++;
	inc	_output_head_idx
;	cc1110_spicom.c:170: if (output_head_idx >= SPI_BUF_LEN) {
	mov	a,#0x100 - 0xDC
	add	a,_output_head_idx
	jnc	00106$
;	cc1110_spicom.c:171: output_head_idx = 0;
	mov	_output_head_idx,#0x00
00106$:
;	cc1110_spicom.c:173: output_size++;
	inc	_output_size
;	cc1110_spicom.c:175: ep5.flags |= EP_INBUF_WRITTEN;
	mov	dptr,#(_ep5 + 0x000e)
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_pollchar'
;------------------------------------------------------------
;	cc1110_spicom.c:178: char vcom_pollchar()
;	-----------------------------------------
;	 function vcom_pollchar
;	-----------------------------------------
_vcom_pollchar:
;	cc1110_spicom.c:180: if (serial_data_available == 0) {
	mov	a,_serial_data_available
	jnz	00102$
;	cc1110_spicom.c:181: return USB_READ_AGAIN;
	mov	dpl,#0xFF
	ret
00102$:
;	cc1110_spicom.c:183: return spi_input_buf[input_tail_idx];
	mov	a,_input_tail_idx
	add	a,#_spi_input_buf
	mov	dpl,a
	clr	a
	addc	a,#(_spi_input_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_getchar'
;------------------------------------------------------------
;s_data                    Allocated to registers r7 
;------------------------------------------------------------
;	cc1110_spicom.c:186: char vcom_getchar()
;	-----------------------------------------
;	 function vcom_getchar
;	-----------------------------------------
_vcom_getchar:
;	cc1110_spicom.c:190: if (serial_data_available == 0) {
	mov	a,_serial_data_available
	jnz	00102$
;	cc1110_spicom.c:191: return USB_READ_AGAIN;
	mov	dpl,#0xFF
	ret
00102$:
;	cc1110_spicom.c:194: s_data = spi_input_buf[input_tail_idx];
	mov	a,_input_tail_idx
	add	a,#_spi_input_buf
	mov	dpl,a
	clr	a
	addc	a,#(_spi_input_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
;	cc1110_spicom.c:195: input_tail_idx++;
	inc	_input_tail_idx
;	cc1110_spicom.c:196: if (input_tail_idx >= SPI_BUF_LEN) {
	mov	a,#0x100 - 0xDC
	add	a,_input_tail_idx
	jnc	00104$
;	cc1110_spicom.c:197: input_tail_idx = 0;
	mov	_input_tail_idx,#0x00
00104$:
;	cc1110_spicom.c:199: input_size--;
	dec	_input_size
;	cc1110_spicom.c:200: if (input_size == 0) {
	mov	a,_input_size
;	cc1110_spicom.c:201: serial_data_available = 0;
	jnz	00106$
	mov	_serial_data_available,a
00106$:
;	cc1110_spicom.c:203: return s_data;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_enable'
;------------------------------------------------------------
;	cc1110_spicom.c:206: void vcom_enable()
;	-----------------------------------------
;	 function vcom_enable
;	-----------------------------------------
_vcom_enable:
;	cc1110_spicom.c:208: TCON &= ~BIT3; // Clear URX1IF
	mov	r7,_TCON
	mov	a,#0xF7
	anl	a,r7
	mov	_TCON,a
;	cc1110_spicom.c:209: URX1IE = 1;    // Enable URX1IE interrupt
	setb	_URX1IE
;	cc1110_spicom.c:211: IRCON2 &= ~BIT2; // Clear UTX1IF
	mov	r7,_IRCON2
	mov	a,#0xFB
	anl	a,r7
	mov	_IRCON2,a
;	cc1110_spicom.c:212: IEN2 |= BIT3;    // Enable UTX1IE interrupt
	orl	_IEN2,#0x08
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_disable'
;------------------------------------------------------------
;	cc1110_spicom.c:215: void vcom_disable()
;	-----------------------------------------
;	 function vcom_disable
;	-----------------------------------------
_vcom_disable:
;	cc1110_spicom.c:217: TCON &= ~BIT3; // Clear URX1IF
	mov	r7,_TCON
	mov	a,#0xF7
	anl	a,r7
	mov	_TCON,a
;	cc1110_spicom.c:218: URX1IE = 0;    // Disable URX1IE interrupt
	clr	_URX1IE
;	cc1110_spicom.c:220: IRCON2 &= ~BIT2; // Clear UTX1IF
	mov	r7,_IRCON2
	mov	a,#0xFB
	anl	a,r7
	mov	_IRCON2,a
;	cc1110_spicom.c:221: IEN2 &= ~BIT3;    // Disable UTX1IE interrupt
	mov	r7,_IEN2
	mov	a,#0xF7
	anl	a,r7
	mov	_IEN2,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initUSB'
;------------------------------------------------------------
;	cc1110_spicom.c:224: void initUSB()
;	-----------------------------------------
;	 function initUSB
;	-----------------------------------------
_initUSB:
;	cc1110_spicom.c:238: PERCFG = (PERCFG & ~PERCFG_U0CFG) | PERCFG_U1CFG;
	mov	r7,_PERCFG
	mov	a,#0xFE
	anl	a,r7
	orl	a,#0x02
	mov	_PERCFG,a
;	cc1110_spicom.c:241: P1SEL = P1SEL | BIT4 | BIT5 | BIT6 | BIT7;
	orl	_P1SEL,#0xF0
;	cc1110_spicom.c:242: P1DIR = P1DIR & ~(BIT4 | BIT5 | BIT6 | BIT7);
	mov	r7,_P1DIR
	mov	a,#0x0F
	anl	a,r7
	mov	_P1DIR,a
;	cc1110_spicom.c:249: U1CSR = (U1CSR & ~U1CSR_MODE) | U1CSR_SLAVE;
	mov	r7,_U1CSR
	mov	a,#0x7F
	anl	a,r7
	orl	a,#0x20
	mov	_U1CSR,a
;	cc1110_spicom.c:262: U1BAUD = SPI_BAUD_M;
	mov	_U1BAUD,#0x3B
;	cc1110_spicom.c:263: U1GCR = (U1GCR & ~(U1GCR_BAUD_E | U1GCR_CPOL | U1GCR_CPHA | U1GCR_ORDER))
	mov	a,_U1GCR
	mov	_U1GCR,#0x0B
;	cc1110_spicom.c:266: TCON &= ~BIT3; // Clear URX1IF
	mov	r7,_TCON
	mov	a,#0xF7
	anl	a,r7
	mov	_TCON,a
;	cc1110_spicom.c:267: URX1IE = 1;    // Enable URX1IE interrupt
	setb	_URX1IE
;	cc1110_spicom.c:269: IRCON2 &= ~BIT2; // Clear UTX1IF
	mov	r7,_IRCON2
	mov	a,#0xFB
	anl	a,r7
	mov	_IRCON2,a
;	cc1110_spicom.c:270: IEN2 |= BIT3;    // Enable UTX1IE interrupt
	orl	_IEN2,#0x08
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbProcessEvents'
;------------------------------------------------------------
;	cc1110_spicom.c:274: void usbProcessEvents()
;	-----------------------------------------
;	 function usbProcessEvents
;	-----------------------------------------
_usbProcessEvents:
;	cc1110_spicom.c:276: return; /* dummy function */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_readline'
;------------------------------------------------------------
;buff                      Allocated to registers 
;c                         Allocated to registers r3 
;------------------------------------------------------------
;	cc1110_spicom.c:279: void vcom_readline(char* buff) {
;	-----------------------------------------
;	 function vcom_readline
;	-----------------------------------------
_vcom_readline:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cc1110_spicom.c:281: while ((c = vcom_getchar()) != '\n') {
00101$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_vcom_getchar
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar3,r4
	cjne	r4,#0x0A,00113$
	sjmp	00103$
00113$:
;	cc1110_spicom.c:282: *buff++ = c;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00101$
00103$:
;	cc1110_spicom.c:284: *buff = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_putstr'
;------------------------------------------------------------
;buff                      Allocated with name '_vcom_putstr_buff_1_98'
;------------------------------------------------------------
;	cc1110_spicom.c:287: void vcom_putstr(char* __xdata buff) {
;	-----------------------------------------
;	 function vcom_putstr
;	-----------------------------------------
_vcom_putstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_vcom_putstr_buff_1_98
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1110_spicom.c:288: while (*buff) {
	mov	dptr,#_vcom_putstr_buff_1_98
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
;	cc1110_spicom.c:289: vcom_putchar(*buff++);
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
	mov	dptr,#_vcom_putstr_buff_1_98
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_vcom_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00108$:
	mov	dptr,#_vcom_putstr_buff_1_98
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1110_spicom.c:291: vcom_flush();
	ljmp	_vcom_flush
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_up'
;------------------------------------------------------------
;	cc1110_spicom.c:294: void usb_up() {
;	-----------------------------------------
;	 function usb_up
;	-----------------------------------------
_usb_up:
;	cc1110_spicom.c:296: vcom_enable();
	ljmp	_vcom_enable
;------------------------------------------------------------
;Allocation info for local variables in function 'vcom_down'
;------------------------------------------------------------
;	cc1110_spicom.c:299: void vcom_down() {
;	-----------------------------------------
;	 function vcom_down
;	-----------------------------------------
_vcom_down:
;	cc1110_spicom.c:301: vcom_disable();
	ljmp	_vcom_disable
;------------------------------------------------------------
;Allocation info for local variables in function 'txdata'
;------------------------------------------------------------
;cmd                       Allocated with name '_txdata_PARM_2'
;len                       Allocated with name '_txdata_PARM_3'
;dataptr                   Allocated with name '_txdata_PARM_4'
;app                       Allocated to registers 
;test                      Allocated to registers 
;------------------------------------------------------------
;	cc1110_spicom.c:304: int txdata(u8 app, u8 cmd, u16 len, __xdata u8* dataptr)
;	-----------------------------------------
;	 function txdata
;	-----------------------------------------
_txdata:
;	cc1110_spicom.c:310: vcom_putchar(app);
	lcall	_vcom_putchar
;	cc1110_spicom.c:311: vcom_putchar(cmd);
	mov	dpl,_txdata_PARM_2
	lcall	_vcom_putchar
;	cc1110_spicom.c:314: while (*dataptr) 
	mov	r6,_txdata_PARM_4
	mov	r7,(_txdata_PARM_4 + 1)
00101$:
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	jz	00103$
;	cc1110_spicom.c:316: vcom_putchar(*dataptr++);
	mov	dpl,r5
	inc	r6
	cjne	r6,#0x00,00114$
	inc	r7
00114$:
	push	ar7
	push	ar6
	lcall	_vcom_putchar
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	cc1110_spicom.c:318: vcom_putchar(0);
	mov	dpl,#0x00
	lcall	_vcom_putchar
;	cc1110_spicom.c:319: vcom_flush();
	lcall	_vcom_flush
;	cc1110_spicom.c:323: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbIntHandler'
;------------------------------------------------------------
;	cc1110_spicom.c:328: void usbIntHandler(void) __interrupt P2INT_VECTOR
;	-----------------------------------------
;	 function usbIntHandler
;	-----------------------------------------
_usbIntHandler:
;	cc1110_spicom.c:330: return;
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'p0IntHandler'
;------------------------------------------------------------
;	cc1110_spicom.c:333: void p0IntHandler(void) __interrupt P0INT_VECTOR
;	-----------------------------------------
;	 function p0IntHandler
;	-----------------------------------------
_p0IntHandler:
;	cc1110_spicom.c:335: return;
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'waitForUSBsetup'
;------------------------------------------------------------
;	cc1110_spicom.c:338: void waitForUSBsetup()
;	-----------------------------------------
;	 function waitForUSBsetup
;	-----------------------------------------
_waitForUSBsetup:
;	cc1110_spicom.c:340: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'registerCb_ep5'
;------------------------------------------------------------
;callback                  Allocated to registers 
;------------------------------------------------------------
;	cc1110_spicom.c:343: void registerCb_ep5(int (*callback)(void))
;	-----------------------------------------
;	 function registerCb_ep5
;	-----------------------------------------
_registerCb_ep5:
	mov	_cb_ep5,dpl
	mov	(_cb_ep5 + 1),dph
;	cc1110_spicom.c:345: cb_ep5 = callback;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'appReturn'
;------------------------------------------------------------
;response                  Allocated with name '_appReturn_PARM_2'
;len                       Allocated with name '_appReturn_len_1_114'
;------------------------------------------------------------
;	cc1110_spicom.c:348: void appReturn(__xdata u8 len, __xdata u8* __xdata  response)
;	-----------------------------------------
;	 function appReturn
;	-----------------------------------------
_appReturn:
	mov	a,dpl
	mov	dptr,#_appReturn_len_1_114
	movx	@dptr,a
;	cc1110_spicom.c:350: ep5.flags &= ~EP_OUTBUF_WRITTEN;                       // this should be superfluous... but could be causing problems?
	mov	dptr,#(_ep5 + 0x000e)
	movx	a,@dptr
	anl	a,#0xFD
	movx	@dptr,a
;	cc1110_spicom.c:351: txdata(ep5.OUTapp,ep5.OUTcmd, len, response);
	mov	dptr,#(_ep5 + 0x000a)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_ep5 + 0x000b)
	movx	a,@dptr
	mov	_txdata_PARM_2,a
	mov	dptr,#_appReturn_len_1_114
	movx	a,@dptr
	mov	r6,a
	mov	_txdata_PARM_3,r6
	mov	(_txdata_PARM_3 + 1),#0x00
	mov	dptr,#_appReturn_PARM_2
	movx	a,@dptr
	mov	_txdata_PARM_4,a
	inc	dptr
	movx	a,@dptr
	mov	(_txdata_PARM_4 + 1),a
	mov	dpl,r7
	ljmp	_txdata
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
