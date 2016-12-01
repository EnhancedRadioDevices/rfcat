;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Wed Nov 30 16:38:16 2016
;--------------------------------------------------------
	.module appFHSSNIC
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _initBoard
	.globl _appHandleEP0
	.globl _appHandleEP0OUT
	.globl _appHandleEP0OUTdone
	.globl _appMainLoop
	.globl _appMainInit
	.globl _init_MAC
	.globl _init_FHSS
	.globl _MAC_set_NIC_ID
	.globl _MAC_do_Master_scanny_thingy
	.globl _MAC_become_master
	.globl _MAC_stop_sync
	.globl _transmit_long
	.globl _registerCb_ep5
	.globl _usb_up
	.globl _usbProcessEvents
	.globl _waitForUSBsetup
	.globl _initUSB
	.globl _memcpy
	.globl _decAES
	.globl _encAES
	.globl _padAES
	.globl _setAES
	.globl _initAES
	.globl _resetRFSTATE
	.globl _init_RF
	.globl _transmit
	.globl _IdleMode
	.globl _RxMode
	.globl _initDMA
	.globl _appReturn
	.globl _txdata
	.globl _clock_init
	.globl _debughex16
	.globl _debughex
	.globl _debugx
	.globl _debug
	.globl _io_init
	.globl _sleepMillis
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
	.globl _chan_table
	.globl _processbuffer
	.globl _MAC_rx_handle_PARM_2
	.globl _MAC_tx_PARM_2
	.globl _transmit_long_PARM_3
	.globl _transmit_long_PARM_2
	.globl _g_txMsgQueue
	.globl _g_NIC_ID
	.globl _g_Channels
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
	.globl _PHY_set_channel
	.globl _MAC_initChannels
	.globl _begin_hopping
	.globl _stop_hopping
	.globl _MAC_tx
	.globl _MAC_sync
	.globl _MAC_set_chanidx
	.globl _MAC_rx_handle
	.globl _MAC_getNextChannel
	.globl _t2IntHandler
	.globl _t3IntHandler
	.globl _appHandleEP5
	.globl _appInitRf
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
_appHandleEP5_sloc0_1_0:
	.ds 2
_appHandleEP5_sloc1_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_appMainLoop_sloc0_1_0:
	.ds 1
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
_g_Channels::
	.ds 880
_g_NIC_ID::
	.ds 2
_g_txMsgQueue::
	.ds 482
_PHY_set_channel_chan_1_90:
	.ds 2
_begin_hopping_T2_offset_1_96:
	.ds 1
_transmit_long_PARM_2:
	.ds 2
_transmit_long_PARM_3:
	.ds 1
_transmit_long_buf_1_100:
	.ds 2
_MAC_tx_PARM_2:
	.ds 1
_MAC_tx_msg_1_111:
	.ds 2
_MAC_sync_CellID_1_121:
	.ds 2
_MAC_set_chanidx_chanidx_1_129:
	.ds 2
_MAC_set_NIC_ID_NIC_ID_1_131:
	.ds 2
_MAC_rx_handle_PARM_2:
	.ds 2
_t2IntHandler_packet_1_138:
	.ds 28
_processbuffer::
	.ds 1
_chan_table::
	.ds 2
_appHandleEP5_len_1_178:
	.ds 2
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_rfTxRxIntHandler
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_usbIntHandler
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_t1IntHandler
	.ds	5
	ljmp	_t2IntHandler
	.ds	5
	ljmp	_t3IntHandler
	.ds	5
	reti
	.ds	7
	ljmp	_p0IntHandler
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_rfIntHandler
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'PHY_set_channel'
;------------------------------------------------------------
;chan                      Allocated with name '_PHY_set_channel_chan_1_90'
;------------------------------------------------------------
;	appFHSSNIC.c:72: void PHY_set_channel(__xdata u16 chan)
;	-----------------------------------------
;	 function PHY_set_channel
;	-----------------------------------------
_PHY_set_channel:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_PHY_set_channel_chan_1_90
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:75: RFOFF;
	mov	_RFST,#0x04
00101$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00101$
;	appFHSSNIC.c:77: CHANNR = chan;
	mov	dptr,#_PHY_set_channel_chan_1_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_CHANNR
	mov	a,r6
	movx	@dptr,a
;	appFHSSNIC.c:79: RFRX;
	mov	_RFST,#0x02
00107$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0D,00107$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_initChannels'
;------------------------------------------------------------
;loop                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	appFHSSNIC.c:86: void MAC_initChannels()
;	-----------------------------------------
;	 function MAC_initChannels
;	-----------------------------------------
_MAC_initChannels:
;	appFHSSNIC.c:90: for (loop=0; loop<macdata.NumChannelHops; loop++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	dptr,#(_macdata + 0x0007)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jnc	00105$
;	appFHSSNIC.c:92: g_Channels[loop] = loop % macdata.NumChannels;
	mov	a,r6
	add	a,#_g_Channels
	mov	r4,a
	mov	a,r7
	addc	a,#(_g_Channels >> 8)
	mov	r5,a
	mov	dptr,#(_macdata + 0x0005)
	movx	a,@dptr
	mov	__moduint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__moduint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
;	appFHSSNIC.c:90: for (loop=0; loop<macdata.NumChannelHops; loop++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'begin_hopping'
;------------------------------------------------------------
;T2_offset                 Allocated with name '_begin_hopping_T2_offset_1_96'
;------------------------------------------------------------
;	appFHSSNIC.c:97: void begin_hopping(__xdata u8 T2_offset)
;	-----------------------------------------
;	 function begin_hopping
;	-----------------------------------------
_begin_hopping:
	mov	a,dpl
	mov	dptr,#_begin_hopping_T2_offset_1_96
	movx	@dptr,a
;	appFHSSNIC.c:100: T2CT -= T2_offset;
	movx	a,@dptr
	mov	r7,a
	mov	a,_T2CT
	clr	c
	subb	a,r7
	mov	_T2CT,a
;	appFHSSNIC.c:101: T2CT -= MAC_TIMER_STATIC_DIFF;
	mov	a,_T2CT
	add	a,#0xFA
	mov	_T2CT,a
;	appFHSSNIC.c:103: T2CTL |= T2CTL_INT;
	orl	_T2CTL,#0x10
;	appFHSSNIC.c:104: T2IE = 1;
	setb	_T2IE
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_hopping'
;------------------------------------------------------------
;	appFHSSNIC.c:108: void stop_hopping(void)
;	-----------------------------------------
;	 function stop_hopping
;	-----------------------------------------
_stop_hopping:
;	appFHSSNIC.c:111: T2CTL &= ~T2CTL_INT;
	mov	r7,_T2CTL
	mov	a,#0xEF
	anl	a,r7
	mov	_T2CTL,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_long'
;------------------------------------------------------------
;len                       Allocated with name '_transmit_long_PARM_2'
;blocks                    Allocated with name '_transmit_long_PARM_3'
;buf                       Allocated with name '_transmit_long_buf_1_100'
;countdown                 Allocated with name '_transmit_long_countdown_1_101'
;err                       Allocated with name '_transmit_long_err_1_101'
;------------------------------------------------------------
;	appFHSSNIC.c:116: __xdata u8 transmit_long(__xdata u8* __xdata buf, __xdata u16 len, __xdata u8 blocks)
;	-----------------------------------------
;	 function transmit_long
;	-----------------------------------------
_transmit_long:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_transmit_long_buf_1_100
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:124: if (macdata.mac_state != MAC_STATE_NONHOPPING)
	mov	dptr,#_macdata
	movx	a,@dptr
	jz	00102$
;	appFHSSNIC.c:126: debug("Cannot call transmit_long while FHSS Hopping or already processing transmit_long!");
	mov	dptr,#___str_0
	lcall	_debug
;	appFHSSNIC.c:127: debughex(macdata.mac_state);
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	dpl,a
	lcall	_debughex
;	appFHSSNIC.c:128: return RC_RF_MODE_INCOMPAT;
	mov	dpl,#0xEF
	ret
00102$:
;	appFHSSNIC.c:131: macdata.mac_state = MAC_STATE_LONG_XMIT;
	mov	dptr,#_macdata
	mov	a,#0x06
	movx	@dptr,a
;	appFHSSNIC.c:132: while (MARCSTATE == MARC_STATE_TX)
00103$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x13,00164$
	sjmp	00103$
00164$:
;	appFHSSNIC.c:137: LED = 0;
	clr	_P2_4
;	appFHSSNIC.c:140: rfTxTotalTXLen = len;
	mov	dptr,#_transmit_long_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rfTxTotalTXLen
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:142: rfTxBufferEnd = MAX_TX_MSGLEN + 1; // add 1 for length byte
	mov	dptr,#_rfTxBufferEnd
	mov	a,#0xF1
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:144: rftxbuf = (volatile __xdata u8*)&g_txMsgQueue[0][0];
	mov	dptr,#_rftxbuf
	mov	a,#_g_txMsgQueue
	movx	@dptr,a
	mov	a,#(_g_txMsgQueue >> 8)
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:145: rfTxRepeatCounter = 0;
	mov	dptr,#_rfTxRepeatCounter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:146: rfTxCurBufIdx = macdata.txMsgIdxDone = 0;
	mov	dptr,#(_macdata + 0x0012)
	movx	@dptr,a
	mov	dptr,#_rfTxCurBufIdx
	movx	@dptr,a
;	appFHSSNIC.c:147: macdata.txMsgIdx = 0;
	mov	dptr,#(_macdata + 0x0011)
	movx	@dptr,a
;	appFHSSNIC.c:148: rfTxCounter = 1; // don't transmit length byte
	mov	dptr,#_rfTxCounter
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:149: rfTxBufCount = MAX_TX_MSGS;
	mov	dptr,#_rfTxBufCount
	mov	a,#0x02
	movx	@dptr,a
;	appFHSSNIC.c:152: MAC_tx(NULL, 0);
	mov	dptr,#_MAC_tx_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_MAC_tx
;	appFHSSNIC.c:155: for(countdown = 0 ; countdown < blocks ; ++countdown)
	mov	dptr,#_transmit_long_buf_1_100
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_transmit_long_PARM_3
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	r4,#0x00
00122$:
	mov	ar1,r5
	mov	r2,#0x00
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	subb	a,r2
	jnc	00108$
;	appFHSSNIC.c:157: err = MAC_tx(buf + (u8) (countdown * MAX_TX_MSGLEN), (u8) MAX_TX_MSGLEN);
	mov	ar2,r3
	mov	a,r2
	mov	b,#0xF0
	mul	ab
	add	a,r6
	mov	r1,a
	clr	a
	addc	a,r7
	mov	r2,a
	mov	dptr,#_MAC_tx_PARM_2
	mov	a,#0xF0
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_MAC_tx
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:158: if(err)
	mov	a,r2
	jz	00123$
;	appFHSSNIC.c:160: debug("MAC_tx() returned error");
	mov	dptr,#___str_1
	push	ar2
	lcall	_debug
	pop	ar2
;	appFHSSNIC.c:161: macdata.mac_state = MAC_STATE_NONHOPPING;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:162: debughex(err);
	mov	dpl,r2
	push	ar2
	lcall	_debughex
	pop	ar2
;	appFHSSNIC.c:163: return err;
	mov	dpl,r2
	ret
00123$:
;	appFHSSNIC.c:155: for(countdown = 0 ; countdown < blocks ; ++countdown)
	inc	r3
	cjne	r3,#0x00,00122$
	inc	r4
	sjmp	00122$
00108$:
;	appFHSSNIC.c:168: if(rfAESMode & AES_CRYPTO_OUT_ENABLE && rfTxTotalTXLen % 16)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r7,a
	jnb	acc.3,00110$
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	anl	a,#0x0F
	jz	00110$
;	appFHSSNIC.c:171: rfTxTotalTXLen += 16 - (rfTxTotalTXLen % 16);
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	anl	ar6,#0x0F
	mov	r7,#0x00
	mov	a,#0x10
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_rfTxTotalTXLen
	mov	a,r6
	add	a,r4
	movx	@dptr,a
	mov	a,r7
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00110$:
;	appFHSSNIC.c:175: if(rfTxTotalTXLen > RF_MAX_TX_BLOCK)
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0xFF
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00113$
;	appFHSSNIC.c:177: PKTLEN = (u8) (rfTxTotalTXLen % 256);
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_PKTLEN
	mov	a,r6
	movx	@dptr,a
;	appFHSSNIC.c:178: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xFC
	anl	a,r7
	movx	@dptr,a
;	appFHSSNIC.c:179: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	orl	a,r7
	movx	@dptr,a
;	appFHSSNIC.c:180: rfTxInfMode = 1;
	mov	dptr,#_rfTxInfMode
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00114$
00113$:
;	appFHSSNIC.c:184: PKTLEN = (u8) rfTxTotalTXLen;
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_PKTLEN
	mov	a,r6
	movx	@dptr,a
;	appFHSSNIC.c:185: rfTxInfMode = 0;
	mov	dptr,#_rfTxInfMode
	clr	a
	movx	@dptr,a
00114$:
;	appFHSSNIC.c:192: RFST = RFST_STX;
	mov	_RFST,#0x03
;	appFHSSNIC.c:196: while (MARCSTATE != MARC_STATE_TX && --countdown)
	mov	r6,#0x60
	mov	r7,#0xEA
00116$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x13,00171$
	sjmp	00118$
00171$:
	dec	r6
	cjne	r6,#0xFF,00172$
	dec	r7
00172$:
	mov	a,r6
	orl	a,r7
	jnz	00116$
00118$:
;	appFHSSNIC.c:201: LED = 1;
	setb	_P2_4
;	appFHSSNIC.c:202: if (!countdown)
	mov	a,r6
	orl	a,r7
	jnz	00120$
;	appFHSSNIC.c:204: lastCode[1] = LCE_RFTX_NEVER_TX;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x13
	movx	@dptr,a
;	appFHSSNIC.c:205: debug("never entered TX");
	mov	dptr,#___str_2
	lcall	_debug
00120$:
;	appFHSSNIC.c:208: return RC_NO_ERROR;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_tx'
;------------------------------------------------------------
;len                       Allocated with name '_MAC_tx_PARM_2'
;msg                       Allocated with name '_MAC_tx_msg_1_111'
;------------------------------------------------------------
;	appFHSSNIC.c:211: __xdata u8 MAC_tx(__xdata u8* __xdata msg, __xdata u8 len)
;	-----------------------------------------
;	 function MAC_tx
;	-----------------------------------------
_MAC_tx:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_MAC_tx_msg_1_111
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:221: if (len > MAX_TX_MSGLEN)
	mov	dptr,#_MAC_tx_PARM_2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0xF0
	jnc	00102$
;	appFHSSNIC.c:223: debug("FHSSxmit message too long");
	mov	dptr,#___str_3
	lcall	_debug
;	appFHSSNIC.c:224: return RC_ERR_BUFFER_SIZE_EXCEEDED;
	mov	dpl,#0xFF
	ret
00102$:
;	appFHSSNIC.c:228: if(len == 0)
	mov	a,r7
	jnz	00105$
;	appFHSSNIC.c:231: for(macdata.txMsgIdx = 0 ; macdata.txMsgIdx < rfTxBufCount ; ++macdata.txMsgIdx)
	mov	dptr,#(_macdata + 0x0011)
	clr	a
	movx	@dptr,a
00122$:
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_rfTxBufCount
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00103$
;	appFHSSNIC.c:233: g_txMsgQueue[macdata.txMsgIdx][0] = BUFFER_AVAILABLE;
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	dpl,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:231: for(macdata.txMsgIdx = 0 ; macdata.txMsgIdx < rfTxBufCount ; ++macdata.txMsgIdx)
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#(_macdata + 0x0011)
	mov	a,r6
	movx	@dptr,a
	sjmp	00122$
00103$:
;	appFHSSNIC.c:235: macdata.txMsgIdx = 0;
	mov	dptr,#(_macdata + 0x0011)
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:236: return RC_NO_ERROR;
	mov	dpl,#0x00
	ret
00105$:
;	appFHSSNIC.c:239: switch (macdata.mac_state)
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	r6,a
	jz	00110$
	cjne	r6,#0x06,00111$
;	appFHSSNIC.c:242: if (macdata.txMsgIdx && MARCSTATE != MARC_STATE_TX)
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	jz	00111$
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x13,00169$
	sjmp	00111$
00169$:
;	appFHSSNIC.c:244: macdata.mac_state = MAC_STATE_LONG_XMIT_FAIL;
	mov	dptr,#_macdata
	mov	a,#0x07
	movx	@dptr,a
;	appFHSSNIC.c:245: return RC_TX_ERROR;
	mov	dpl,#0xED
	ret
;	appFHSSNIC.c:248: case MAC_STATE_NONHOPPING:
00110$:
;	appFHSSNIC.c:249: return RC_TX_ERROR;
	mov	dpl,#0xED
	ret
;	appFHSSNIC.c:250: }
00111$:
;	appFHSSNIC.c:251: if (g_txMsgQueue[macdata.txMsgIdx][0] != BUFFER_AVAILABLE)
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r5,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jz	00113$
;	appFHSSNIC.c:254: lastCode[1] = LCE_RF_MULTI_BUFFER_NOT_FREE;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x18
	movx	@dptr,a
;	appFHSSNIC.c:255: return RC_ERR_BUFFER_NOT_AVAILABLE;
	mov	dpl,#0xFE
	ret
00113$:
;	appFHSSNIC.c:259: g_txMsgQueue[macdata.txMsgIdx][0] = BUFFER_FILLING;
	mov	dpl,r5
	mov	dph,r6
	mov	a,#0xFF
	movx	@dptr,a
;	appFHSSNIC.c:261: memcpy(&g_txMsgQueue[macdata.txMsgIdx][1], msg, len);
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r5,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r6,a
	inc	r5
	cjne	r5,#0x00,00171$
	inc	r6
00171$:
	mov	r4,#0x00
	mov	dptr,#_MAC_tx_msg_1_111
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_memcpy_PARM_2,r2
	mov	(_memcpy_PARM_2 + 1),r3
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r4
	mov	ar3,r7
	mov	r7,#0x00
	mov	_memcpy_PARM_3,r3
	mov	(_memcpy_PARM_3 + 1),r7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	push	ar7
	push	ar3
	lcall	_memcpy
	pop	ar3
	pop	ar7
;	appFHSSNIC.c:266: if(rfAESMode & AES_CRYPTO_OUT_ENABLE)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r6,a
	jb	acc.3,00172$
	ljmp	00118$
00172$:
;	appFHSSNIC.c:268: len = padAES(&g_txMsgQueue[macdata.txMsgIdx][1], len);
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r5,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r6,a
	inc	r5
	cjne	r5,#0x00,00173$
	inc	r6
00173$:
	mov	dptr,#_padAES_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_padAES
	mov	r6,dpl
	mov	dptr,#_MAC_tx_PARM_2
	mov	a,r6
	movx	@dptr,a
;	appFHSSNIC.c:269: if((rfAESMode & AES_CRYPTO_OUT_TYPE) == AES_CRYPTO_OUT_ENCRYPT)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x04
	cjne	r7,#0x04,00115$
;	appFHSSNIC.c:270: encAES(&g_txMsgQueue[macdata.txMsgIdx][1], &g_txMsgQueue[macdata.txMsgIdx][1], len, (rfAESMode & AES_CRYPTO_MODE));
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r5,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00176$
	inc	r7
00176$:
	mov	ar3,r6
	mov	r4,#0x00
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0xF0
	mov	dptr,#_encAES_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_encAES_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_encAES_PARM_4
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	lcall	_encAES
	sjmp	00118$
00115$:
;	appFHSSNIC.c:272: decAES(&g_txMsgQueue[macdata.txMsgIdx][1], &g_txMsgQueue[macdata.txMsgIdx][1], len, (rfAESMode & AES_CRYPTO_MODE));
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r5,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00177$
	inc	r7
00177$:
	mov	r4,#0x00
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0xF0
	mov	dptr,#_decAES_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_decAES_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_decAES_PARM_4
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	lcall	_decAES
00118$:
;	appFHSSNIC.c:275: g_txMsgQueue[macdata.txMsgIdx][0] = len;
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r6,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_MAC_tx_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	appFHSSNIC.c:282: if (++macdata.txMsgIdx == rfTxBufCount)
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_macdata + 0x0011)
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_rfTxBufCount
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00120$
;	appFHSSNIC.c:284: macdata.txMsgIdx = 0;
	mov	dptr,#(_macdata + 0x0011)
	clr	a
	movx	@dptr,a
00120$:
;	appFHSSNIC.c:287: return RC_NO_ERROR;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_sync'
;------------------------------------------------------------
;CellID                    Allocated with name '_MAC_sync_CellID_1_121'
;------------------------------------------------------------
;	appFHSSNIC.c:290: void MAC_sync(__xdata u16 CellID)
;	-----------------------------------------
;	 function MAC_sync
;	-----------------------------------------
_MAC_sync:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_MAC_sync_CellID_1_121
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:298: if (macdata.mac_state != MAC_STATE_NONHOPPING && macdata.mac_state != MAC_STATE_DISCOVERY)
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	r7,a
	jz	00102$
	cjne	r7,#0x01,00133$
	sjmp	00102$
00133$:
;	appFHSSNIC.c:300: debug("FHSS state entering SYNCHING from wrong state");
	mov	dptr,#___str_4
	lcall	_debug
;	appFHSSNIC.c:301: debughex(macdata.mac_state);
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	dpl,a
	lcall	_debughex
00102$:
;	appFHSSNIC.c:305: stop_hopping();
	lcall	_stop_hopping
;	appFHSSNIC.c:308: macdata.curChanIdx = 0;
	mov	dptr,#(_macdata + 0x0009)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:309: while (1)
00110$:
;	appFHSSNIC.c:311: MAC_set_chanidx(macdata.curChanIdx);
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_MAC_set_chanidx
;	appFHSSNIC.c:312: while (MARCSTATE != MARC_STATE_RX)
00104$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0D,00104$
;	appFHSSNIC.c:314: if ((RSSI&0x7f) < 0x60)
	mov	dptr,#_RSSI
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x7F
	cjne	r7,#0x60,00136$
00136$:
	jc	00111$
;	appFHSSNIC.c:317: macdata.curChanIdx++;
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00138$
	inc	r7
00138$:
	mov	dptr,#(_macdata + 0x0009)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:318: blink(10,10);
	setb	_P2_4
	mov	dptr,#0x000A
	lcall	_sleepMillis
	clr	_P2_4
	mov	dptr,#0x000A
	lcall	_sleepMillis
	sjmp	00110$
00111$:
;	appFHSSNIC.c:322: macdata.mac_state = MAC_STATE_SYNCHING;
	mov	dptr,#_macdata
	mov	a,#0x02
	movx	@dptr,a
;	appFHSSNIC.c:325: macdata.tLastStateChange = clock;
	mov	dptr,#_clock
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_macdata + 0x000b)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:328: macdata.desperatelySeeking = CellID;
	mov	dptr,#_MAC_sync_CellID_1_121
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_macdata + 0x000f)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_stop_sync'
;------------------------------------------------------------
;	appFHSSNIC.c:333: void MAC_stop_sync()
;	-----------------------------------------
;	 function MAC_stop_sync
;	-----------------------------------------
_MAC_stop_sync:
;	appFHSSNIC.c:336: macdata.mac_state = MAC_STATE_NONHOPPING;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:337: macdata.tLastStateChange = clock;
	mov	dptr,#_clock
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_macdata + 0x000b)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_become_master'
;------------------------------------------------------------
;	appFHSSNIC.c:341: void MAC_become_master()
;	-----------------------------------------
;	 function MAC_become_master
;	-----------------------------------------
_MAC_become_master:
;	appFHSSNIC.c:344: macdata.mac_state = MAC_STATE_SYNC_MASTER;
	mov	dptr,#_macdata
	mov	a,#0x04
	movx	@dptr,a
;	appFHSSNIC.c:345: macdata.tLastStateChange = clock;
	mov	dptr,#_clock
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_macdata + 0x000b)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_do_Master_scanny_thingy'
;------------------------------------------------------------
;	appFHSSNIC.c:349: void MAC_do_Master_scanny_thingy()
;	-----------------------------------------
;	 function MAC_do_Master_scanny_thingy
;	-----------------------------------------
_MAC_do_Master_scanny_thingy:
;	appFHSSNIC.c:351: macdata.mac_state = MAC_STATE_SYNCINGMASTER;
	mov	dptr,#_macdata
	mov	a,#0x05
	movx	@dptr,a
;	appFHSSNIC.c:352: macdata.synched_chans = 0;
	mov	dptr,#(_macdata + 0x0013)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:353: macdata.tLastStateChange = clock;
	mov	dptr,#_clock
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_macdata + 0x000b)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:354: begin_hopping(0);
	mov	dpl,#0x00
	ljmp	_begin_hopping
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_set_chanidx'
;------------------------------------------------------------
;chanidx                   Allocated with name '_MAC_set_chanidx_chanidx_1_129'
;------------------------------------------------------------
;	appFHSSNIC.c:358: void MAC_set_chanidx(__xdata u16 chanidx)
;	-----------------------------------------
;	 function MAC_set_chanidx
;	-----------------------------------------
_MAC_set_chanidx:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_MAC_set_chanidx_chanidx_1_129
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:360: PHY_set_channel( g_Channels[ chanidx ] );
	mov	dptr,#_MAC_set_chanidx_chanidx_1_129
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_g_Channels
	mov	dpl,a
	mov	a,r7
	addc	a,#(_g_Channels >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ljmp	_PHY_set_channel
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_set_NIC_ID'
;------------------------------------------------------------
;NIC_ID                    Allocated with name '_MAC_set_NIC_ID_NIC_ID_1_131'
;------------------------------------------------------------
;	appFHSSNIC.c:364: void MAC_set_NIC_ID(__xdata u16 NIC_ID)
;	-----------------------------------------
;	 function MAC_set_NIC_ID
;	-----------------------------------------
_MAC_set_NIC_ID:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_MAC_set_NIC_ID_NIC_ID_1_131
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:367: g_NIC_ID = NIC_ID;
	mov	dptr,#_MAC_set_NIC_ID_NIC_ID_1_131
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_g_NIC_ID
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_rx_handle'
;------------------------------------------------------------
;message                   Allocated with name '_MAC_rx_handle_PARM_2'
;len                       Allocated with name '_MAC_rx_handle_len_1_133'
;------------------------------------------------------------
;	appFHSSNIC.c:370: void MAC_rx_handle(__xdata u8 len, __xdata u8* __xdata message)
;	-----------------------------------------
;	 function MAC_rx_handle
;	-----------------------------------------
_MAC_rx_handle:
;	appFHSSNIC.c:373: message;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAC_getNextChannel'
;------------------------------------------------------------
;	appFHSSNIC.c:379: __xdata u8 MAC_getNextChannel()
;	-----------------------------------------
;	 function MAC_getNextChannel
;	-----------------------------------------
_MAC_getNextChannel:
;	appFHSSNIC.c:381: macdata.curChanIdx++;
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00108$
	inc	r7
00108$:
	mov	dptr,#(_macdata + 0x0009)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:382: if (macdata.curChanIdx >= MAX_CHANNELS)
	clr	c
	mov	a,r6
	subb	a,#0x70
	mov	a,r7
	subb	a,#0x03
	jc	00102$
;	appFHSSNIC.c:384: macdata.curChanIdx = 0;
	mov	dptr,#(_macdata + 0x0009)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	appFHSSNIC.c:386: return g_Channels[macdata.curChanIdx];
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_g_Channels
	mov	dpl,a
	mov	a,r7
	addc	a,#(_g_Channels >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 't2IntHandler'
;------------------------------------------------------------
;packet                    Allocated with name '_t2IntHandler_packet_1_138'
;------------------------------------------------------------
;	appFHSSNIC.c:393: void t2IntHandler(void) __interrupt T2_VECTOR  // interrupt handler should trigger on T2 overflow
;	-----------------------------------------
;	 function t2IntHandler
;	-----------------------------------------
_t2IntHandler:
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
;	appFHSSNIC.c:402: if (++rf_MAC_timer == macdata.MAC_threshold)
	mov	dptr,#_rf_MAC_timer
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#(_macdata + 0x0001)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rf_MAC_timer
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	cjne	a,ar6,00102$
	mov	a,r5
	cjne	a,ar7,00102$
;	appFHSSNIC.c:403: rf_MAC_timer = 0;   // since we're 0-based, MAC_threshold is actually past the end of our state machine, which makes it 0 *right now*
	mov	dptr,#_rf_MAC_timer
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	appFHSSNIC.c:405: switch (rf_MAC_timer)
	mov	dptr,#_rf_MAC_timer
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x00,00160$
	cjne	r7,#0x00,00160$
	sjmp	00103$
00160$:
	cjne	r6,#0x01,00161$
	cjne	r7,#0x00,00161$
	sjmp	00108$
00161$:
	ljmp	00111$
;	appFHSSNIC.c:407: case 0:     // change channels
00103$:
;	appFHSSNIC.c:409: macdata.tLastHop = T2CT | (rf_MAC_timer<<8);        // should this be based on clock and T1?
	mov	dptr,#_rf_MAC_timer
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r6
	mov	r6,#0x00
	mov	r4,_T2CT
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	dptr,#(_macdata + 0x000d)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:412: if (++macdata.curChanIdx >= macdata.NumChannelHops)
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00162$
	inc	r7
00162$:
	mov	dptr,#(_macdata + 0x0009)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_macdata + 0x0007)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00105$
;	appFHSSNIC.c:414: macdata.curChanIdx = 0;
	mov	dptr,#(_macdata + 0x0009)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00105$:
;	appFHSSNIC.c:419: if (MARCSTATE == MARC_STATE_TX)
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x13,00107$
;	appFHSSNIC.c:420: return;
	ljmp	00123$
00107$:
;	appFHSSNIC.c:424: MAC_set_chanidx(macdata.curChanIdx);
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_MAC_set_chanidx
;	appFHSSNIC.c:435: break;
	ljmp	00123$
;	appFHSSNIC.c:437: case 1:
00108$:
;	appFHSSNIC.c:439: if (macdata.mac_state == MAC_STATE_SYNCINGMASTER)
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00166$
	sjmp	00167$
00166$:
	ljmp	00123$
00167$:
;	appFHSSNIC.c:441: sleepMillis(FHSS_TX_SLEEP_DELAY);
	mov	dptr,#0x0019
	lcall	_sleepMillis
;	appFHSSNIC.c:442: packet[0] = 28;
	mov	dptr,#_t2IntHandler_packet_1_138
	mov	a,#0x1C
	movx	@dptr,a
;	appFHSSNIC.c:443: packet[1] = macdata.curChanIdx & 0xff;
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	appFHSSNIC.c:444: packet[2] = macdata.curChanIdx >> 8;
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0002)
	movx	@dptr,a
;	appFHSSNIC.c:445: packet[3] =  'B';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0003)
	mov	a,#0x42
	movx	@dptr,a
;	appFHSSNIC.c:446: packet[4] =  'L';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0004)
	mov	a,#0x4C
	movx	@dptr,a
;	appFHSSNIC.c:447: packet[5] =  'A';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0005)
	mov	a,#0x41
	movx	@dptr,a
;	appFHSSNIC.c:448: packet[6] =  'H';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0006)
	mov	a,#0x48
	movx	@dptr,a
;	appFHSSNIC.c:449: packet[7] =  'B';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0007)
	mov	a,#0x42
	movx	@dptr,a
;	appFHSSNIC.c:450: packet[8] =  'L';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0008)
	mov	a,#0x4C
	movx	@dptr,a
;	appFHSSNIC.c:451: packet[9] =  'A';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0009)
	mov	a,#0x41
	movx	@dptr,a
;	appFHSSNIC.c:452: packet[10] = 'H';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000a)
	mov	a,#0x48
	movx	@dptr,a
;	appFHSSNIC.c:453: packet[11] = 'B';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000b)
	mov	a,#0x42
	movx	@dptr,a
;	appFHSSNIC.c:454: packet[12] = 'L';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000c)
	mov	a,#0x4C
	movx	@dptr,a
;	appFHSSNIC.c:455: packet[13] = 'A';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000d)
	mov	a,#0x41
	movx	@dptr,a
;	appFHSSNIC.c:456: packet[14] = 'H';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000e)
	mov	a,#0x48
	movx	@dptr,a
;	appFHSSNIC.c:457: packet[15] = 'B';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000f)
	mov	a,#0x42
	movx	@dptr,a
;	appFHSSNIC.c:458: packet[16] = 'L';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0010)
	mov	a,#0x4C
	movx	@dptr,a
;	appFHSSNIC.c:459: packet[17] = 'A';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0011)
	mov	a,#0x41
	movx	@dptr,a
;	appFHSSNIC.c:460: packet[18] = 'H';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0012)
	mov	a,#0x48
	movx	@dptr,a
;	appFHSSNIC.c:461: packet[19] = 'B';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0013)
	mov	a,#0x42
	movx	@dptr,a
;	appFHSSNIC.c:462: packet[20] = 'L';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0014)
	mov	a,#0x4C
	movx	@dptr,a
;	appFHSSNIC.c:463: packet[21] = 'A';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0015)
	mov	a,#0x41
	movx	@dptr,a
;	appFHSSNIC.c:464: packet[22] = 'H';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0016)
	mov	a,#0x48
	movx	@dptr,a
;	appFHSSNIC.c:465: packet[23] = 'B';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0017)
	mov	a,#0x42
	movx	@dptr,a
;	appFHSSNIC.c:466: packet[24] = 'L';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0018)
	mov	a,#0x4C
	movx	@dptr,a
;	appFHSSNIC.c:467: packet[25] = 'A';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0019)
	mov	a,#0x41
	movx	@dptr,a
;	appFHSSNIC.c:468: packet[26] = 'H';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x001a)
	mov	a,#0x48
	movx	@dptr,a
;	appFHSSNIC.c:469: packet[27] = ' ';
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x001b)
	mov	a,#0x20
	movx	@dptr,a
;	appFHSSNIC.c:471: transmit((__xdata u8*)&packet[1], 28, 0, 0);
	mov	dptr,#_transmit_PARM_2
	mov	a,#0x1C
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_transmit_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_transmit_PARM_4
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0001)
	lcall	_transmit
;	appFHSSNIC.c:472: macdata.synched_chans++;
	mov	dptr,#(_macdata + 0x0013)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00168$
	inc	r7
00168$:
	mov	dptr,#(_macdata + 0x0013)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:473: break;      // don't want to do anything else if we're in this state.
	ljmp	00123$
;	appFHSSNIC.c:477: default:    // all other ticks we can transmit
00111$:
;	appFHSSNIC.c:480: switch (macdata.mac_state)
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00169$
	sjmp	00116$
00169$:
	cjne	r7,#0x04,00170$
	sjmp	00113$
00170$:
	cjne	r7,#0x05,00171$
	sjmp	00172$
00171$:
	ljmp	00123$
00172$:
;	appFHSSNIC.c:483: case MAC_STATE_SYNC_MASTER:
00113$:
;	appFHSSNIC.c:484: if (100 < (clock - macdata.tLastStateChange))   // periodically shift back to beaconing
	mov	dptr,#(_macdata + 0x000b)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_clock
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar0,r6
	mov	ar1,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,r0
	mov	r2,a
	mov	a,r3
	subb	a,r1
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	mov	a,r5
	subb	a,r7
	mov	r5,a
	clr	c
	mov	a,#0x64
	subb	a,r2
	clr	a
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	00116$
;	appFHSSNIC.c:486: debug("SYNCH_MASTER -> SYNCINGMASTER");
	mov	dptr,#___str_5
	lcall	_debug
;	appFHSSNIC.c:487: macdata.mac_state = MAC_STATE_SYNCINGMASTER;
	mov	dptr,#_macdata
	mov	a,#0x05
	movx	@dptr,a
;	appFHSSNIC.c:488: macdata.tLastStateChange = clock;
	mov	dptr,#_clock
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_macdata + 0x000b)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:491: case MAC_STATE_SYNCHED:
00116$:
;	appFHSSNIC.c:501: if ( g_txMsgQueue[macdata.txMsgIdxDone][0])      // if length byte >0
	mov	dptr,#(_macdata + 0x0012)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r6,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00123$
;	appFHSSNIC.c:504: sleepMillis(FHSS_TX_SLEEP_DELAY);
	mov	dptr,#0x0019
	lcall	_sleepMillis
;	appFHSSNIC.c:505: transmit(&g_txMsgQueue[macdata.txMsgIdxDone][!(PKTCTRL0&1)], g_txMsgQueue[macdata.txMsgIdxDone][0], 0, 0);
	mov	dptr,#(_macdata + 0x0012)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r6,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	anl	a,#0x01
	mov	r5,a
	cjne	a,#0x01,00175$
00175$:
	clr	a
	rlc	a
	add	a,r6
	mov	r5,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	dptr,#_transmit_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_transmit_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_transmit_PARM_4
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r4
	lcall	_transmit
;	appFHSSNIC.c:507: g_txMsgQueue[macdata.txMsgIdxDone][0] = 0;
	mov	dptr,#(_macdata + 0x0012)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	dpl,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:509: if (++macdata.txMsgIdxDone >= MAX_TX_MSGS)
	mov	dptr,#(_macdata + 0x0012)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_macdata + 0x0012)
	mov	a,r7
	movx	@dptr,a
	cjne	r7,#0x02,00176$
00176$:
	jc	00118$
;	appFHSSNIC.c:511: macdata.txMsgIdxDone = 0;
	mov	dptr,#(_macdata + 0x0012)
	clr	a
	movx	@dptr,a
00118$:
;	appFHSSNIC.c:513: debug("FHSSxmit done");
	mov	dptr,#___str_6
	lcall	_debug
;	appFHSSNIC.c:516: }
00123$:
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
;Allocation info for local variables in function 't3IntHandler'
;------------------------------------------------------------
;	appFHSSNIC.c:519: void t3IntHandler(void) __interrupt T3_VECTOR
;	-----------------------------------------
;	 function t3IntHandler
;	-----------------------------------------
_t3IntHandler:
;	appFHSSNIC.c:523: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'init_FHSS'
;------------------------------------------------------------
;	appFHSSNIC.c:525: void init_FHSS(void)
;	-----------------------------------------
;	 function init_FHSS
;	-----------------------------------------
_init_FHSS:
;	appFHSSNIC.c:527: macdata.mac_state = 0;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:528: macdata.txMsgIdx = 0;
	mov	dptr,#(_macdata + 0x0011)
	movx	@dptr,a
;	appFHSSNIC.c:529: macdata.txMsgIdxDone = 0;
	mov	dptr,#(_macdata + 0x0012)
	movx	@dptr,a
;	appFHSSNIC.c:530: macdata.curChanIdx = 0;
	mov	dptr,#(_macdata + 0x0009)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:531: macdata.NumChannels = DEFAULT_NUM_CHANS;
	mov	dptr,#(_macdata + 0x0005)
	mov	a,#0x53
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:532: macdata.NumChannelHops = DEFAULT_NUM_CHANHOPS;
	mov	dptr,#(_macdata + 0x0007)
	mov	a,#0x53
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:533: macdata.tLastHop = 0;
	mov	dptr,#(_macdata + 0x000d)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:534: macdata.tLastStateChange = 0;
	mov	dptr,#(_macdata + 0x000b)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:535: macdata.MAC_threshold = 6;
	mov	dptr,#(_macdata + 0x0001)
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:536: macdata.MAC_timer = 0;
	mov	dptr,#(_macdata + 0x0003)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:537: macdata.desperatelySeeking = 0;
	mov	dptr,#(_macdata + 0x000f)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:538: macdata.synched_chans = 0;
	mov	dptr,#(_macdata + 0x0013)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:540: MAC_initChannels();
	lcall	_MAC_initChannels
;	appFHSSNIC.c:542: macdata.mac_state = MAC_STATE_NONHOPPING;   // this is basic NIC functionality
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:552: T2PR = 0xdc;        
	mov	_T2PR,#0xDC
;	appFHSSNIC.c:553: T2CTL |= T2CTL_TIP_64;  // 64, 128, 256, 1024
	mov	_T2CTL,_T2CTL
;	appFHSSNIC.c:587: T2CTL |= T2CTL_TIG;
	orl	_T2CTL,#0x04
;	appFHSSNIC.c:593: T3CTL |= T3CTL_START;
	orl	_T3CTL,#0x10
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_MAC'
;------------------------------------------------------------
;	appFHSSNIC.c:597: void init_MAC(void)
;	-----------------------------------------
;	 function init_MAC
;	-----------------------------------------
_init_MAC:
;	appFHSSNIC.c:599: init_FHSS();
	ljmp	_init_FHSS
;------------------------------------------------------------
;Allocation info for local variables in function 'appMainInit'
;------------------------------------------------------------
;	appFHSSNIC.c:610: void appMainInit(void)
;	-----------------------------------------
;	 function appMainInit
;	-----------------------------------------
_appMainInit:
;	appFHSSNIC.c:613: registerCb_ep5( appHandleEP5 );
	mov	dptr,#_appHandleEP5
	lcall	_registerCb_ep5
;	appFHSSNIC.c:615: clock = 0;
	mov	dptr,#_clock
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:617: init_MAC();
	lcall	_init_MAC
;	appFHSSNIC.c:619: processbuffer = 0;
	mov	dptr,#_processbuffer
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:620: chan_table = rfrxbuf[0];
	mov	dptr,#_chan_table
	mov	a,#_rfrxbuf
	movx	@dptr,a
	mov	a,#(_rfrxbuf >> 8)
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'appMainLoop'
;------------------------------------------------------------
;	appFHSSNIC.c:626: void appMainLoop(void)
;	-----------------------------------------
;	 function appMainLoop
;	-----------------------------------------
_appMainLoop:
;	appFHSSNIC.c:629: switch  (macdata.mac_state)
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x00,00271$
	ljmp	00154$
00271$:
	cjne	r7,#0x01,00272$
	ljmp	00139$
00272$:
	cjne	r7,#0x02,00273$
	ljmp	00129$
00273$:
	cjne	r7,#0x03,00274$
	ljmp	00154$
00274$:
	cjne	r7,#0x04,00275$
	ljmp	00154$
00275$:
	cjne	r7,#0x05,00276$
	ljmp	00149$
00276$:
	cjne	r7,#0x06,00277$
	ret
00277$:
	cjne	r7,#0x40,00278$
	sjmp	00106$
00278$:
	cjne	r7,#0x41,00279$
	sjmp	00109$
00279$:
	ret
;	appFHSSNIC.c:636: RFOFF;
00106$:
	mov	_RFST,#0x04
00103$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00103$
;	appFHSSNIC.c:637: PKTCTRL1 =  0xE5;       // highest PQT, address check, append_status
	mov	dptr,#_PKTCTRL1
	mov	a,#0xE5
	movx	@dptr,a
;	appFHSSNIC.c:638: PKTCTRL0 =  0x04;       // crc enabled      ( we really don't want any packets coming our way :)
	mov	dptr,#_PKTCTRL0
	mov	a,#0x04
	movx	@dptr,a
;	appFHSSNIC.c:639: FSCTRL1 =   0x12;       // freq if
	mov	dptr,#_FSCTRL1
	mov	a,#0x12
	movx	@dptr,a
;	appFHSSNIC.c:640: FSCTRL0 =   0x00;
	mov	dptr,#_FSCTRL0
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:641: MCSM0 =     0x10;       // autocal/no auto-cal....  hmmm...
	mov	dptr,#_MCSM0
	mov	a,#0x10
	movx	@dptr,a
;	appFHSSNIC.c:642: AGCCTRL2 |= AGCCTRL2_MAX_DVGA_GAIN;     // disable 3 highest gain settings
	mov	dptr,#_AGCCTRL2
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xC0
	orl	a,r7
	movx	@dptr,a
;	appFHSSNIC.c:643: macdata.mac_state = MAC_STATE_SPECAN;
	mov	dptr,#_macdata
	mov	a,#0x41
	movx	@dptr,a
;	appFHSSNIC.c:645: chan_table = rfrxbuf[0];
	mov	dptr,#_chan_table
	mov	a,#_rfrxbuf
	movx	@dptr,a
	mov	a,#(_rfrxbuf >> 8)
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:647: case MAC_STATE_SPECAN:
00109$:
;	appFHSSNIC.c:648: for (processbuffer = 0; processbuffer < macdata.synched_chans; processbuffer++)
	mov	dptr,#_processbuffer
	clr	a
	movx	@dptr,a
00166$:
	mov	dptr,#(_macdata + 0x0013)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_processbuffer
	movx	a,@dptr
	mov	r5,a
	mov	r3,a
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jnc	00126$
;	appFHSSNIC.c:651: CHANNR = processbuffer;        // may not be the fastest, but otherwise we have to store FSCAL data for each channel
	mov	dptr,#_CHANNR
	mov	a,r5
	movx	@dptr,a
;	appFHSSNIC.c:652: RFOFF;
	mov	_RFST,#0x04
00110$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00110$
;	appFHSSNIC.c:653: RFRX;
	mov	_RFST,#0x02
00116$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0D,00116$
;	appFHSSNIC.c:654: sleepMillis(2);
	mov	dptr,#0x0002
	lcall	_sleepMillis
;	appFHSSNIC.c:657: chan_table[processbuffer] = (RSSI);
	mov	dptr,#_chan_table
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_processbuffer
	movx	a,@dptr
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_RSSI
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	appFHSSNIC.c:648: for (processbuffer = 0; processbuffer < macdata.synched_chans; processbuffer++)
	mov	dptr,#_processbuffer
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	appFHSSNIC.c:661: RFOFF;
	sjmp	00166$
00126$:
	mov	_RFST,#0x04
00123$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00123$
;	appFHSSNIC.c:662: txdata( APP_SPECAN, SPECAN_QUEUE, (u8)macdata.synched_chans, (__xdata u8*)&chan_table[0] );
	mov	dptr,#(_macdata + 0x0013)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_txdata_PARM_3,r6
	mov	(_txdata_PARM_3 + 1),#0x00
	mov	dptr,#_chan_table
	movx	a,@dptr
	mov	_txdata_PARM_4,a
	inc	dptr
	movx	a,@dptr
	mov	(_txdata_PARM_4 + 1),a
	mov	_txdata_PARM_2,#0x01
	mov	dpl,#0x43
;	appFHSSNIC.c:663: break;
	ljmp	_txdata
;	appFHSSNIC.c:665: case MAC_STATE_SYNCHING:
00129$:
;	appFHSSNIC.c:668: if (rfif)
	mov	a,_rfif
	jnz	00289$
	ljmp	00138$
00289$:
;	appFHSSNIC.c:670: lastCode[0] = 0xd;
	mov	dptr,#_lastCode
	mov	a,#0x0D
	movx	@dptr,a
;	appFHSSNIC.c:671: IEN2 &= ~IEN2_RFIE;   // FIXME: is this ok?
	mov	r7,_IEN2
	mov	a,#0xFE
	anl	a,r7
	mov	_IEN2,a
;	appFHSSNIC.c:673: if(rfif & RFIF_IRQ_DONE)
	mov	a,_rfif
	jb	acc.4,00290$
	ljmp	00138$
00290$:
;	appFHSSNIC.c:677: macdata.mac_state = MAC_STATE_SYNCHED;
	mov	dptr,#_macdata
	mov	a,#0x03
	movx	@dptr,a
;	appFHSSNIC.c:678: begin_hopping((u8)(rf_tLastRecv & 0xff));       // synching happens within
	mov	dptr,#_rf_tLastRecv
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	lcall	_begin_hopping
;	appFHSSNIC.c:680: debug("network packet(sync)");
	mov	dptr,#___str_7
	lcall	_debug
;	appFHSSNIC.c:681: debughex16((u16)rf_tLastRecv);
	mov	dptr,#_rf_tLastRecv
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_debughex16
;	appFHSSNIC.c:682: debug((__code u8*)&rfrxbuf[rfRxCurrentBuffer][0]);
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	clr	a
	add	a,#_rfrxbuf
	mov	r7,a
	mov	a,r6
	addc	a,#(_rfrxbuf >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	lcall	_debug
;	appFHSSNIC.c:685: processbuffer = !rfRxCurrentBuffer;
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r7,a
	cjne	a,#0x01,00291$
00291$:
	clr	a
	rlc	a
	mov	r7,a
	mov	dptr,#_processbuffer
	movx	@dptr,a
;	appFHSSNIC.c:686: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
	mov	a,r7
	add	a,#_rfRxProcessed
	mov	r5,a
	clr	a
	addc	a,#(_rfRxProcessed >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jnz	00134$
;	appFHSSNIC.c:689: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r6,a
	jnb	acc.0,00131$
;	appFHSSNIC.c:690: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r5,a
	clr	a
	add	a,#_rfrxbuf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rfrxbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	_txdata_PARM_3,r6
	mov	(_txdata_PARM_3 + 1),#0x00
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r5,a
	clr	a
	add	a,#_rfrxbuf
	mov	r6,a
	mov	a,r5
	addc	a,#(_rfrxbuf >> 8)
	mov	r5,a
	mov	a,#0x01
	add	a,r6
	mov	_txdata_PARM_4,a
	clr	a
	addc	a,r5
	mov	(_txdata_PARM_4 + 1),a
	mov	_txdata_PARM_2,#0x01
	mov	dpl,#0x42
	lcall	_txdata
	sjmp	00132$
00131$:
;	appFHSSNIC.c:692: txdata(APP_NIC, NIC_RECV, PKTLEN, (u8*)&rfrxbuf[processbuffer]);
	mov	dptr,#_PKTLEN
	movx	a,@dptr
	mov	r6,a
	mov	_txdata_PARM_3,r6
	clr	a
	mov	(_txdata_PARM_3 + 1),a
	mov	a,r7
	add	a,r7
	mov	r6,a
	clr	a
	add	a,#_rfrxbuf
	mov	r7,a
	mov	a,r6
	addc	a,#(_rfrxbuf >> 8)
	mov	r6,a
	mov	_txdata_PARM_4,r7
	mov	(_txdata_PARM_4 + 1),r6
	mov	_txdata_PARM_2,#0x01
	mov	dpl,#0x42
	lcall	_txdata
00132$:
;	appFHSSNIC.c:695: rfRxProcessed[processbuffer] = RX_PROCESSED;
	mov	dptr,#_processbuffer
	movx	a,@dptr
	mov	r7,a
	add	a,#_rfRxProcessed
	mov	dpl,a
	clr	a
	addc	a,#(_rfRxProcessed >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
00134$:
;	appFHSSNIC.c:697: rfif &= ~RFIF_IRQ_DONE;
	mov	r7,_rfif
	mov	a,#0xEF
	anl	a,r7
	mov	_rfif,a
00138$:
;	appFHSSNIC.c:701: __critical { rfif = 0; }
	setb	_appMainLoop_sloc0_1_0
	jbc	ea,00294$
	clr	_appMainLoop_sloc0_1_0
00294$:
	mov	_rfif,#0x00
	mov	c,_appMainLoop_sloc0_1_0
	mov	ea,c
;	appFHSSNIC.c:702: IEN2 |= IEN2_RFIE;
	orl	_IEN2,#0x01
;	appFHSSNIC.c:703: break;
	ret
;	appFHSSNIC.c:705: case MAC_STATE_DISCOVERY:
00139$:
;	appFHSSNIC.c:708: if (rfif)
	mov	a,_rfif
	jnz	00295$
	ljmp	00148$
00295$:
;	appFHSSNIC.c:710: lastCode[0] = 0xd;
	mov	dptr,#_lastCode
	mov	a,#0x0D
	movx	@dptr,a
;	appFHSSNIC.c:711: IEN2 &= ~IEN2_RFIE;
	mov	r7,_IEN2
	mov	a,#0xFE
	anl	a,r7
	mov	_IEN2,a
;	appFHSSNIC.c:713: if(rfif & RFIF_IRQ_DONE)
	mov	a,_rfif
	jb	acc.4,00296$
	ljmp	00148$
00296$:
;	appFHSSNIC.c:716: processbuffer = !rfRxCurrentBuffer;
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_processbuffer
	cjne	a,#0x01,00297$
00297$:
	clr	a
	rlc	a
	movx	@dptr,a
;	appFHSSNIC.c:717: debug("network packet(discovery)");
	mov	dptr,#___str_8
	lcall	_debug
;	appFHSSNIC.c:718: debughex16((u16)rfrxbuf[processbuffer]);
	mov	dptr,#_processbuffer
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	clr	a
	add	a,#_rfrxbuf
	mov	r7,a
	mov	a,r6
	addc	a,#(_rfrxbuf >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	lcall	_debughex16
;	appFHSSNIC.c:719: debug((__code u8*)&rfrxbuf[processbuffer][0]);
	mov	dptr,#_processbuffer
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	clr	a
	add	a,#_rfrxbuf
	mov	r7,a
	mov	a,r6
	addc	a,#(_rfrxbuf >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	lcall	_debug
;	appFHSSNIC.c:722: processbuffer = !rfRxCurrentBuffer;
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r7,a
	cjne	a,#0x01,00298$
00298$:
	clr	a
	rlc	a
	mov	r7,a
	mov	dptr,#_processbuffer
	movx	@dptr,a
;	appFHSSNIC.c:723: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
	mov	a,r7
	add	a,#_rfRxProcessed
	mov	r5,a
	clr	a
	addc	a,#(_rfRxProcessed >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jnz	00144$
;	appFHSSNIC.c:726: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r6,a
	jnb	acc.0,00141$
;	appFHSSNIC.c:727: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r5,a
	clr	a
	add	a,#_rfrxbuf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rfrxbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	_txdata_PARM_3,r6
	mov	(_txdata_PARM_3 + 1),#0x00
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r5,a
	clr	a
	add	a,#_rfrxbuf
	mov	r6,a
	mov	a,r5
	addc	a,#(_rfrxbuf >> 8)
	mov	r5,a
	mov	a,#0x01
	add	a,r6
	mov	_txdata_PARM_4,a
	clr	a
	addc	a,r5
	mov	(_txdata_PARM_4 + 1),a
	mov	_txdata_PARM_2,#0x01
	mov	dpl,#0x42
	lcall	_txdata
	sjmp	00142$
00141$:
;	appFHSSNIC.c:729: txdata(APP_NIC, NIC_RECV, PKTLEN, (u8*)&rfrxbuf[processbuffer]);
	mov	dptr,#_PKTLEN
	movx	a,@dptr
	mov	r6,a
	mov	_txdata_PARM_3,r6
	clr	a
	mov	(_txdata_PARM_3 + 1),a
	mov	a,r7
	add	a,r7
	mov	r6,a
	clr	a
	add	a,#_rfrxbuf
	mov	r7,a
	mov	a,r6
	addc	a,#(_rfrxbuf >> 8)
	mov	r6,a
	mov	_txdata_PARM_4,r7
	mov	(_txdata_PARM_4 + 1),r6
	mov	_txdata_PARM_2,#0x01
	mov	dpl,#0x42
	lcall	_txdata
00142$:
;	appFHSSNIC.c:732: rfRxProcessed[processbuffer] = RX_PROCESSED;
	mov	dptr,#_processbuffer
	movx	a,@dptr
	mov	r7,a
	add	a,#_rfRxProcessed
	mov	dpl,a
	clr	a
	addc	a,#(_rfRxProcessed >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
00144$:
;	appFHSSNIC.c:734: __critical { rfif &= ~RFIF_IRQ_DONE; }
	setb	_appMainLoop_sloc0_1_0
	jbc	ea,00301$
	clr	_appMainLoop_sloc0_1_0
00301$:
	mov	r7,_rfif
	mov	a,#0xEF
	anl	a,r7
	mov	_rfif,a
	mov	c,_appMainLoop_sloc0_1_0
	mov	ea,c
00148$:
;	appFHSSNIC.c:738: __critical{ rfif = 0; }
	setb	_appMainLoop_sloc0_1_0
	jbc	ea,00302$
	clr	_appMainLoop_sloc0_1_0
00302$:
	mov	_rfif,#0x00
	mov	c,_appMainLoop_sloc0_1_0
	mov	ea,c
;	appFHSSNIC.c:739: IEN2 |= IEN2_RFIE;
	orl	_IEN2,#0x01
;	appFHSSNIC.c:740: break;
	ret
;	appFHSSNIC.c:742: case MAC_STATE_SYNCINGMASTER:
00149$:
;	appFHSSNIC.c:744: if (macdata.synched_chans >= macdata.NumChannelHops)
	mov	dptr,#(_macdata + 0x0013)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_macdata + 0x0007)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00303$
	ret
00303$:
;	appFHSSNIC.c:746: macdata.mac_state = MAC_STATE_SYNC_MASTER;
	mov	dptr,#_macdata
	mov	a,#0x04
	movx	@dptr,a
;	appFHSSNIC.c:748: break;
	ret
;	appFHSSNIC.c:752: case MAC_STATE_NONHOPPING:
00154$:
;	appFHSSNIC.c:754: if (rfif)
	mov	a,_rfif
	jnz	00304$
	ret
00304$:
;	appFHSSNIC.c:757: lastCode[0] = 0xd;
	mov	dptr,#_lastCode
	mov	a,#0x0D
	movx	@dptr,a
;	appFHSSNIC.c:759: if(rfif & (RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT) )
	mov	a,_rfif
	anl	a,#0x30
	jnz	00305$
	ret
00305$:
;	appFHSSNIC.c:761: processbuffer = !rfRxCurrentBuffer;
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r7,a
	cjne	a,#0x01,00306$
00306$:
	clr	a
	rlc	a
	mov	r7,a
	mov	dptr,#_processbuffer
	movx	@dptr,a
;	appFHSSNIC.c:762: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
	mov	a,r7
	add	a,#_rfRxProcessed
	mov	r5,a
	clr	a
	addc	a,#(_rfRxProcessed >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jz	00307$
	ljmp	00159$
00307$:
;	appFHSSNIC.c:765: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r6,a
	jnb	acc.0,00156$
;	appFHSSNIC.c:767: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r5,a
	clr	a
	add	a,#_rfrxbuf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rfrxbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	_txdata_PARM_3,r6
	mov	(_txdata_PARM_3 + 1),#0x00
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r5,a
	clr	a
	add	a,#_rfrxbuf
	mov	r6,a
	mov	a,r5
	addc	a,#(_rfrxbuf >> 8)
	mov	r5,a
	mov	a,#0x01
	add	a,r6
	mov	_txdata_PARM_4,a
	clr	a
	addc	a,r5
	mov	(_txdata_PARM_4 + 1),a
	mov	_txdata_PARM_2,#0x01
	mov	dpl,#0x42
	lcall	_txdata
	sjmp	00157$
00156$:
;	appFHSSNIC.c:769: txdata(APP_NIC, NIC_RECV, rfRxInfMode ? rfRxLargeLen : PKTLEN, (u8*)&rfrxbuf[processbuffer]);
	mov	dptr,#_rfRxInfMode
	movx	a,@dptr
	movx	a,@dptr
	jz	00170$
	mov	dptr,#_rfRxLargeLen
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	sjmp	00171$
00170$:
	mov	dptr,#_PKTLEN
	movx	a,@dptr
	mov	r4,a
	mov	r5,a
	mov	r6,#0x00
00171$:
	mov	a,r7
	add	a,r7
	mov	r4,a
	clr	a
	add	a,#_rfrxbuf
	mov	r7,a
	mov	a,r4
	addc	a,#(_rfrxbuf >> 8)
	mov	r4,a
	mov	_txdata_PARM_4,r7
	mov	(_txdata_PARM_4 + 1),r4
	mov	_txdata_PARM_2,#0x01
	mov	_txdata_PARM_3,r5
	mov	(_txdata_PARM_3 + 1),r6
	mov	dpl,#0x42
	lcall	_txdata
00157$:
;	appFHSSNIC.c:773: rfRxProcessed[processbuffer] = RX_PROCESSED;
	mov	dptr,#_processbuffer
	movx	a,@dptr
	mov	r7,a
	add	a,#_rfRxProcessed
	mov	dpl,a
	clr	a
	addc	a,#(_rfRxProcessed >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
00159$:
;	appFHSSNIC.c:775: __critical { rfif &= ~( RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT );  }          // FIXME: rfif is way too easily tossed aside here...
	setb	_appMainLoop_sloc0_1_0
	jbc	ea,00310$
	clr	_appMainLoop_sloc0_1_0
00310$:
	mov	r7,_rfif
	mov	a,#0xCF
	anl	a,r7
	mov	_rfif,a
	mov	c,_appMainLoop_sloc0_1_0
	mov	ea,c
;	appFHSSNIC.c:781: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'appHandleEP5'
;------------------------------------------------------------
;sloc0                     Allocated with name '_appHandleEP5_sloc0_1_0'
;sloc1                     Allocated with name '_appHandleEP5_sloc1_1_0'
;len                       Allocated with name '_appHandleEP5_len_1_178'
;repeat                    Allocated with name '_appHandleEP5_repeat_1_178'
;offset                    Allocated with name '_appHandleEP5_offset_1_178'
;buf                       Allocated with name '_appHandleEP5_buf_1_178'
;blocks                    Allocated with name '_appHandleEP5_blocks_1_178'
;------------------------------------------------------------
;	appFHSSNIC.c:797: int appHandleEP5()
;	-----------------------------------------
;	 function appHandleEP5
;	-----------------------------------------
_appHandleEP5:
;	appFHSSNIC.c:801: __xdata u8 * __xdata buf = &ep5.OUTbuf[0];
	mov	dptr,#(_ep5 + 0x0005)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	appFHSSNIC.c:804: switch (ep5.OUTapp)
	mov	dptr,#(_ep5 + 0x000a)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x42,00232$
	sjmp	00233$
00232$:
	ljmp	00172$
00233$:
;	appFHSSNIC.c:808: switch (ep5.OUTcmd)
	mov	dptr,#(_ep5 + 0x000b)
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x41
	jnc	00234$
	ljmp	00170$
00234$:
	mov	a,r4
	add	a,#(00235$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(00236$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00235$:
	.db	00170$
	.db	00170$
	.db	00104$
	.db	00119$
	.db	00170$
	.db	00107$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00117$
	.db	00118$
	.db	00120$
	.db	00123$
	.db	00170$
	.db	00170$
	.db	00147$
	.db	00152$
	.db	00153$
	.db	00156$
	.db	00157$
	.db	00158$
	.db	00159$
	.db	00140$
	.db	00151$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00161$
	.db	00169$
	.db	00160$
	.db	00154$
	.db	00155$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00170$
	.db	00102$
	.db	00103$
00236$:
	.db	00170$>>8
	.db	00170$>>8
	.db	00104$>>8
	.db	00119$>>8
	.db	00170$>>8
	.db	00107$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00118$>>8
	.db	00120$>>8
	.db	00123$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00147$>>8
	.db	00152$>>8
	.db	00153$>>8
	.db	00156$>>8
	.db	00157$>>8
	.db	00158$>>8
	.db	00159$>>8
	.db	00140$>>8
	.db	00151$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00161$>>8
	.db	00169$>>8
	.db	00160$>>8
	.db	00154$>>8
	.db	00155$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00170$>>8
	.db	00102$>>8
	.db	00103$>>8
;	appFHSSNIC.c:810: case RFCAT_START_SPECAN:
00102$:
;	appFHSSNIC.c:813: stop_hopping();
	push	ar7
	push	ar6
	push	ar5
	lcall	_stop_hopping
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:814: macdata.mac_state = MAC_STATE_PREP_SPECAN;
	mov	dptr,#_macdata
	mov	a,#0x40
	movx	@dptr,a
;	appFHSSNIC.c:815: macdata.synched_chans = buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#(_macdata + 0x0013)
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:816: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:817: break;
	ljmp	00172$
;	appFHSSNIC.c:819: case RFCAT_STOP_SPECAN:
00103$:
;	appFHSSNIC.c:820: macdata.mac_state = MAC_STATE_NONHOPPING;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:821: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:822: break;
	ljmp	00172$
;	appFHSSNIC.c:824: case NIC_XMIT:
00104$:
;	appFHSSNIC.c:827: if (macdata.mac_state != MAC_STATE_NONHOPPING)
	mov	dptr,#_macdata
	movx	a,@dptr
	jz	00106$
;	appFHSSNIC.c:829: debug("crap, please use FHSSxmit() instead!");
	mov	dptr,#___str_9
	lcall	_debug
;	appFHSSNIC.c:830: break;
	ljmp	00172$
00106$:
;	appFHSSNIC.c:832: len = buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_appHandleEP5_len_1_178
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:833: len += buf[1] << 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	a
	mov	r1,a
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r3
	mov	r3,a
	mov	dptr,#_appHandleEP5_len_1_178
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:836: offset = buf[4];
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	_appHandleEP5_sloc0_1_0,r2
;	1-genFromRTrack replaced	mov	(_appHandleEP5_sloc0_1_0 + 1),#0x00
	mov	(_appHandleEP5_sloc0_1_0 + 1),r1
;	appFHSSNIC.c:837: offset += buf[5] << 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	a
	add	a,_appHandleEP5_sloc0_1_0
	mov	_appHandleEP5_sloc0_1_0,a
	mov	a,r2
	addc	a,(_appHandleEP5_sloc0_1_0 + 1)
	mov	(_appHandleEP5_sloc0_1_0 + 1),a
;	appFHSSNIC.c:838: txTotal= 0;
	mov	dptr,#_txTotal
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:839: buf[0] = transmit(&buf[6], len, 0, offset);
	mov	a,#0x06
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	dptr,#_transmit_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_transmit_PARM_3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_transmit_PARM_4
	mov	a,_appHandleEP5_sloc0_1_0
	movx	@dptr,a
	mov	a,(_appHandleEP5_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	_transmit
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	appFHSSNIC.c:840: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:841: break;
	ljmp	00172$
;	appFHSSNIC.c:843: case NIC_SET_RECV_LARGE:
00107$:
;	appFHSSNIC.c:848: rfRxLargeLen = buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#_rfRxLargeLen
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:849: rfRxLargeLen += buf[1] << 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#_rfRxLargeLen
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_rfRxLargeLen
	mov	a,r4
	add	a,r1
	movx	@dptr,a
	mov	a,r3
	addc	a,r2
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:850: if(rfRxLargeLen)
	mov	dptr,#_rfRxLargeLen
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_rfRxLargeLen
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00111$
;	appFHSSNIC.c:852: rfRxInfMode = 1;
	mov	dptr,#_rfRxInfMode
	mov	a,#0x01
	movx	@dptr,a
;	appFHSSNIC.c:854: if(!rfRxTotalRXLen)
	mov	dptr,#_rfRxTotalRXLen
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_rfRxTotalRXLen
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00112$
;	appFHSSNIC.c:856: IdleMode();
	lcall	_IdleMode
;	appFHSSNIC.c:857: rfRxTotalRXLen = rfRxLargeLen;
	mov	dptr,#_rfRxLargeLen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_rfRxTotalRXLen
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:858: PKTLEN = (u8) (rfRxTotalRXLen % 256);
	mov	dptr,#_rfRxTotalRXLen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_PKTLEN
	mov	a,r3
	movx	@dptr,a
;	appFHSSNIC.c:859: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r4,a
	mov	a,#0xFC
	anl	a,r4
	movx	@dptr,a
;	appFHSSNIC.c:860: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	orl	a,r4
	movx	@dptr,a
;	appFHSSNIC.c:861: RxMode();
	lcall	_RxMode
	sjmp	00112$
00111$:
;	appFHSSNIC.c:866: rfRxInfMode = 0;
	mov	dptr,#_rfRxInfMode
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:867: rfRxTotalRXLen = 0;
	mov	dptr,#_rfRxTotalRXLen
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:868: rfRxLargeLen = 0;
	mov	dptr,#_rfRxLargeLen
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:869: IdleMode();
	lcall	_IdleMode
00112$:
;	appFHSSNIC.c:871: txdata(ep5.OUTapp, ep5.OUTcmd, 1, (__xdata u8*)&rfRxLargeLen);
	mov	dptr,#(_ep5 + 0x000a)
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#(_ep5 + 0x000b)
	movx	a,@dptr
	mov	_txdata_PARM_2,a
	mov	_txdata_PARM_4,#_rfRxLargeLen
	mov	(_txdata_PARM_4 + 1),#(_rfRxLargeLen >> 8)
	mov	_txdata_PARM_3,#0x01
	mov	(_txdata_PARM_3 + 1),#0x00
	mov	dpl,r4
	lcall	_txdata
;	appFHSSNIC.c:872: break;
	ljmp	00172$
;	appFHSSNIC.c:874: case NIC_SET_AES_MODE:
00113$:
;	appFHSSNIC.c:875: rfAESMode= buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#_rfAESMode
	movx	@dptr,a
;	appFHSSNIC.c:876: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:877: break;
	ljmp	00172$
;	appFHSSNIC.c:879: case NIC_GET_AES_MODE:
00114$:
;	appFHSSNIC.c:880: appReturn( 1, (__xdata u8*) &rfAESMode);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#_rfAESMode
	movx	@dptr,a
	mov	a,#(_rfAESMode >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:881: break;
	ljmp	00172$
;	appFHSSNIC.c:883: case NIC_SET_AES_IV:
00115$:
;	appFHSSNIC.c:884: setAES(buf, ENCCS_CMD_LDIV, (rfAESMode & AES_CRYPTO_MODE));
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0xF0
	mov	dptr,#_setAES_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_setAES_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_setAES
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:885: appReturn( 16, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_appReturn
;	appFHSSNIC.c:886: break;
	ljmp	00172$
;	appFHSSNIC.c:888: case NIC_SET_AES_KEY:
00116$:
;	appFHSSNIC.c:889: setAES(buf, ENCCS_CMD_LDKEY, (rfAESMode & AES_CRYPTO_MODE));
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0xF0
	mov	dptr,#_setAES_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_setAES_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_setAES
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:890: appReturn( 16, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_appReturn
;	appFHSSNIC.c:891: break;
	ljmp	00172$
;	appFHSSNIC.c:893: case NIC_SET_AMP_MODE:
00117$:
;	appFHSSNIC.c:894: rfAmpMode= *buf;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#_rfAmpMode
	movx	@dptr,a
;	appFHSSNIC.c:895: rfAmpMode &= 1;
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x01
	anl	a,r4
	movx	@dptr,a
;	appFHSSNIC.c:896: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:897: break;
	ljmp	00172$
;	appFHSSNIC.c:899: case NIC_GET_AMP_MODE:
00118$:
;	appFHSSNIC.c:900: appReturn( 1, (__xdata u8*) &rfAmpMode);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#_rfAmpMode
	movx	@dptr,a
	mov	a,#(_rfAmpMode >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:901: break;
	ljmp	00172$
;	appFHSSNIC.c:903: case NIC_SET_ID:
00119$:
;	appFHSSNIC.c:905: MAC_set_NIC_ID(buf[0]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_MAC_set_NIC_ID
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:906: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:907: break;
	ljmp	00172$
;	appFHSSNIC.c:909: case NIC_LONG_XMIT:
00120$:
;	appFHSSNIC.c:914: if (macdata.mac_state != MAC_STATE_NONHOPPING)
	mov	dptr,#_macdata
	movx	a,@dptr
	jz	00122$
;	appFHSSNIC.c:916: buf[0] = RC_RF_MODE_INCOMPAT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xEF
	lcall	__gptrput
;	appFHSSNIC.c:917: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:918: break;
	ljmp	00172$
00122$:
;	appFHSSNIC.c:920: len = buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_appHandleEP5_len_1_178
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:921: len += buf[1] << 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r3
	mov	r3,a
	mov	dptr,#_appHandleEP5_len_1_178
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:922: blocks = buf[2];
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	appFHSSNIC.c:923: txTotal= 0;
	mov	dptr,#_txTotal
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:924: buf[0] = transmit_long(&buf[3], len, blocks);
	mov	a,#0x03
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	dptr,#_transmit_long_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_transmit_long_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	lcall	_transmit_long
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	appFHSSNIC.c:925: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:926: break;
	ljmp	00172$
;	appFHSSNIC.c:928: case NIC_LONG_XMIT_MORE:
00123$:
;	appFHSSNIC.c:929: len = buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#_appHandleEP5_len_1_178
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:930: if (len == 0)
	mov	a,r3
	orl	a,r4
	jz	00241$
	ljmp	00131$
00241$:
;	appFHSSNIC.c:933: while (rfTxTotalTXLen && MARCSTATE == MARC_STATE_TX) 
00125$:
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00127$
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x13,00127$
;	appFHSSNIC.c:935: sleepMillis(40); // delay to avoid race condition that will cause mis-read of rfTxTotalTXLen == 0
	mov	dptr,#0x0028
	push	ar7
	push	ar6
	push	ar5
	lcall	_sleepMillis
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00125$
00127$:
;	appFHSSNIC.c:937: if(rfTxTotalTXLen)
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00129$
;	appFHSSNIC.c:939: debug("dropout final wait!");
	mov	dptr,#___str_10
	push	ar7
	push	ar6
	push	ar5
	lcall	_debug
;	appFHSSNIC.c:940: debughex16(rfTxTotalTXLen);
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	lcall	_debughex16
;	appFHSSNIC.c:941: debughex(g_txMsgQueue[0][0]);
	mov	dptr,#_g_txMsgQueue
	movx	a,@dptr
	mov	dpl,a
	lcall	_debughex
;	appFHSSNIC.c:942: debughex(g_txMsgQueue[1][0]);
	mov	dptr,#(_g_txMsgQueue + 0x00f1)
	movx	a,@dptr
	mov	dpl,a
	lcall	_debughex
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:943: lastCode[1] = LCE_DROPPED_PACKET;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x12
	movx	@dptr,a
;	appFHSSNIC.c:944: buf[0] = RC_TX_DROPPED_PACKET;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xEC
	lcall	__gptrput
;	appFHSSNIC.c:945: LED = 0;
	clr	_P2_4
;	appFHSSNIC.c:946: resetRFSTATE();
	push	ar7
	push	ar6
	push	ar5
	lcall	_resetRFSTATE
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:947: macdata.mac_state = MAC_STATE_NONHOPPING;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:948: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:949: break;
	ljmp	00172$
00129$:
;	appFHSSNIC.c:951: LED = 0;
	clr	_P2_4
;	appFHSSNIC.c:952: macdata.mac_state = MAC_STATE_NONHOPPING;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:953: buf[0] = LCE_NO_ERROR;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	appFHSSNIC.c:954: debug("total bytes tx:");
	mov	dptr,#___str_11
	push	ar7
	push	ar6
	push	ar5
	lcall	_debug
;	appFHSSNIC.c:955: debughex16(txTotal);
	mov	dptr,#_txTotal
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	lcall	_debughex16
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:956: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:957: break;
	ljmp	00172$
00131$:
;	appFHSSNIC.c:960: if (macdata.mac_state != MAC_STATE_LONG_XMIT)
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x06,00246$
	sjmp	00136$
00246$:
;	appFHSSNIC.c:962: debug("underrun");
	mov	dptr,#___str_12
	push	ar7
	push	ar6
	push	ar5
	lcall	_debug
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:964: if(lastCode[1] == LCE_DROPPED_PACKET)
	mov	dptr,#(_lastCode + 0x0001)
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x12,00133$
;	appFHSSNIC.c:966: buf[0] = RC_TX_DROPPED_PACKET;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xEC
	lcall	__gptrput
;	appFHSSNIC.c:967: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
	sjmp	00134$
00133$:
;	appFHSSNIC.c:971: lastCode[1] = LCE_RF_MULTI_BUFFER_NOT_INIT;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x17
	movx	@dptr,a
;	appFHSSNIC.c:972: buf[0] = RC_RF_MODE_INCOMPAT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xEF
	lcall	__gptrput
;	appFHSSNIC.c:973: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
00134$:
;	appFHSSNIC.c:975: LED = 0;
	clr	_P2_4
;	appFHSSNIC.c:976: resetRFSTATE();
	lcall	_resetRFSTATE
;	appFHSSNIC.c:977: macdata.mac_state = MAC_STATE_NONHOPPING;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:978: break;
	ljmp	00172$
00136$:
;	appFHSSNIC.c:981: buf[0] = MAC_tx(&buf[1], (__xdata u8) len);
	mov	a,#0x01
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	dptr,#_MAC_tx_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	_MAC_tx
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	appFHSSNIC.c:983: if(buf[0] && buf[0] != RC_ERR_BUFFER_NOT_AVAILABLE)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	a,r4
	jz	00138$
	cjne	r3,#0xFE,00250$
	sjmp	00138$
00250$:
;	appFHSSNIC.c:985: debug("buffer error");
	mov	dptr,#___str_13
	push	ar7
	push	ar6
	push	ar5
	lcall	_debug
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:986: debughex(buf[0]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_debughex
;	appFHSSNIC.c:987: LED = 0;
	clr	_P2_4
;	appFHSSNIC.c:988: resetRFSTATE();
	lcall	_resetRFSTATE
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:989: macdata.mac_state = MAC_STATE_NONHOPPING;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
00138$:
;	appFHSSNIC.c:991: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:992: break;
	ljmp	00172$
;	appFHSSNIC.c:994: case FHSS_XMIT:
00140$:
;	appFHSSNIC.c:995: len = buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#_appHandleEP5_len_1_178
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:1004: if (len > MAX_TX_MSGLEN)
	clr	c
	mov	a,#0xF0
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00142$
;	appFHSSNIC.c:1006: debug("FHSSxmit message too long");
	mov	dptr,#___str_3
	lcall	_debug
;	appFHSSNIC.c:1007: appReturn( 1, (__xdata u8*)&len);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#_appHandleEP5_len_1_178
	movx	@dptr,a
	mov	a,#(_appHandleEP5_len_1_178 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1008: break;
	ljmp	00172$
00142$:
;	appFHSSNIC.c:1011: if (g_txMsgQueue[macdata.txMsgIdx][0] != 0)
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r1,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	jz	00144$
;	appFHSSNIC.c:1013: debug("still waiting on the last packet");
	mov	dptr,#___str_14
	lcall	_debug
;	appFHSSNIC.c:1014: appReturn( 1, (__xdata u8*)&len);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#_appHandleEP5_len_1_178
	movx	@dptr,a
	mov	a,#(_appHandleEP5_len_1_178 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1015: break;
	ljmp	00172$
00144$:
;	appFHSSNIC.c:1018: g_txMsgQueue[macdata.txMsgIdx][0] = len;
	mov	ar0,r3
	mov	dpl,r1
	mov	dph,r2
	mov	a,r0
	movx	@dptr,a
;	appFHSSNIC.c:1019: memcpy(&g_txMsgQueue[macdata.txMsgIdx][1], &buf[1], len);
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	b,#0xF1
	mul	ab
	add	a,#_g_txMsgQueue
	mov	r1,a
	mov	a,#(_g_txMsgQueue >> 8)
	addc	a,b
	mov	r2,a
	inc	r1
	cjne	r1,#0x00,00253$
	inc	r2
00253$:
	mov	_appHandleEP5_sloc1_1_0,r1
	mov	(_appHandleEP5_sloc1_1_0 + 1),r2
	mov	(_appHandleEP5_sloc1_1_0 + 2),#0x00
	mov	a,#0x01
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	_memcpy_PARM_2,r1
	mov	(_memcpy_PARM_2 + 1),r2
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,r3
	mov	(_memcpy_PARM_3 + 1),r4
	mov	dpl,_appHandleEP5_sloc1_1_0
	mov	dph,(_appHandleEP5_sloc1_1_0 + 1)
	mov	b,(_appHandleEP5_sloc1_1_0 + 2)
	lcall	_memcpy
;	appFHSSNIC.c:1021: if (++macdata.txMsgIdx >= MAX_TX_MSGS)
	mov	dptr,#(_macdata + 0x0011)
	movx	a,@dptr
	mov	r4,a
	inc	r4
	mov	dptr,#(_macdata + 0x0011)
	mov	a,r4
	movx	@dptr,a
	cjne	r4,#0x02,00254$
00254$:
	jc	00146$
;	appFHSSNIC.c:1023: macdata.txMsgIdx = 0;
	mov	dptr,#(_macdata + 0x0011)
	clr	a
	movx	@dptr,a
00146$:
;	appFHSSNIC.c:1026: appReturn( 1, (__xdata u8*)&len);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#_appHandleEP5_len_1_178
	movx	@dptr,a
	mov	a,#(_appHandleEP5_len_1_178 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1027: break;
	ljmp	00172$
;	appFHSSNIC.c:1029: case FHSS_SET_CHANNELS:
00147$:
;	appFHSSNIC.c:1030: macdata.NumChannels = (__xdata u16)buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#(_macdata + 0x0005)
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:1031: if (macdata.NumChannels <= MAX_CHANNELS)
	mov	dptr,#(_macdata + 0x0005)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,#0x70
	subb	a,r4
	mov	a,#0x03
	subb	a,r3
	jc	00149$
;	appFHSSNIC.c:1034: memcpy(&g_Channels[0], &buf[2], macdata.NumChannels);
	mov	a,#0x02
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	_memcpy_PARM_2,r3
	mov	(_memcpy_PARM_2 + 1),r4
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,r1
	mov	(_memcpy_PARM_3 + 1),r2
	mov	dptr,#_g_Channels
	mov	b,#0x00
	lcall	_memcpy
;	appFHSSNIC.c:1035: appReturn( 2, (u8*)&macdata.NumChannels);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#(_macdata + 0x0005)
	movx	@dptr,a
	mov	a,#((_macdata + 0x0005) >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_appReturn
	ljmp	00172$
00149$:
;	appFHSSNIC.c:1037: appReturn( 8, (__xdata u8*)"NO DEAL");
	mov	dptr,#_appReturn_PARM_2
	mov	a,#___str_15
	movx	@dptr,a
	mov	a,#(___str_15 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x08
	lcall	_appReturn
;	appFHSSNIC.c:1039: break;
	ljmp	00172$
;	appFHSSNIC.c:1041: case FHSS_GET_CHANNELS:
00151$:
;	appFHSSNIC.c:1042: appReturn( macdata.NumChannels, &g_Channels[0]);
	mov	dptr,#(_macdata + 0x0005)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_appReturn_PARM_2
	mov	a,#_g_Channels
	movx	@dptr,a
	mov	a,#(_g_Channels >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	lcall	_appReturn
;	appFHSSNIC.c:1043: break;
	ljmp	00172$
;	appFHSSNIC.c:1045: case FHSS_NEXT_CHANNEL:
00152$:
;	appFHSSNIC.c:1046: MAC_set_chanidx(MAC_getNextChannel());
	lcall	_MAC_getNextChannel
	mov	r3,#0x00
	mov	dph,r3
	lcall	_MAC_set_chanidx
;	appFHSSNIC.c:1047: appReturn( 1, &g_Channels[macdata.curChanIdx]);
	mov	dptr,#(_macdata + 0x0009)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_appReturn_PARM_2
	mov	a,r3
	add	a,#_g_Channels
	movx	@dptr,a
	mov	a,r4
	addc	a,#(_g_Channels >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1048: break;
	ljmp	00172$
;	appFHSSNIC.c:1050: case FHSS_CHANGE_CHANNEL:
00153$:
;	appFHSSNIC.c:1051: PHY_set_channel(buf[0]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_PHY_set_channel
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1052: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1053: break;
	ljmp	00172$
;	appFHSSNIC.c:1055: case FHSS_START_HOPPING:
00154$:
;	appFHSSNIC.c:1056: begin_hopping(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_begin_hopping
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1057: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1058: break;
	ljmp	00172$
;	appFHSSNIC.c:1060: case FHSS_STOP_HOPPING:
00155$:
;	appFHSSNIC.c:1061: stop_hopping();
	push	ar7
	push	ar6
	push	ar5
	lcall	_stop_hopping
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1062: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1063: break;
	ljmp	00172$
;	appFHSSNIC.c:1066: case FHSS_SET_MAC_THRESHOLD:
00156$:
;	appFHSSNIC.c:1067: macdata.MAC_threshold = buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#(_macdata + 0x0001)
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:1068: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1069: break;
	ljmp	00172$
;	appFHSSNIC.c:1071: case FHSS_GET_MAC_THRESHOLD:
00157$:
;	appFHSSNIC.c:1072: appReturn( 4, (__xdata u8*)&macdata.MAC_threshold);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#(_macdata + 0x0001)
	movx	@dptr,a
	mov	a,#((_macdata + 0x0001) >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_appReturn
;	appFHSSNIC.c:1073: break;
	ljmp	00172$
;	appFHSSNIC.c:1075: case FHSS_SET_MAC_DATA:
00158$:
;	appFHSSNIC.c:1076: debugx(buf);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_debugx
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1077: debughex(buf[0]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_debughex
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1078: memcpy((__xdata u8*)&macdata, (__xdata u8*)*buf, sizeof(macdata));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	_memcpy_PARM_2,r4
	mov	(_memcpy_PARM_2 + 1),r3
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r3
	mov	_memcpy_PARM_3,#0x15
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r3
	mov	dptr,#_macdata
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1079: appReturn( sizeof(macdata), buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x15
	lcall	_appReturn
;	appFHSSNIC.c:1080: break;
	ljmp	00172$
;	appFHSSNIC.c:1082: case FHSS_GET_MAC_DATA:
00159$:
;	appFHSSNIC.c:1083: macdata.MAC_timer = rf_MAC_timer;
	mov	dptr,#_rf_MAC_timer
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#(_macdata + 0x0003)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:1084: appReturn( sizeof(macdata), (__xdata u8*)&macdata);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#_macdata
	movx	@dptr,a
	mov	a,#(_macdata >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x15
	lcall	_appReturn
;	appFHSSNIC.c:1085: break;
	ljmp	00172$
;	appFHSSNIC.c:1087: case FHSS_START_SYNC:
00160$:
;	appFHSSNIC.c:1088: MAC_sync(buf[0]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_MAC_sync
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1089: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1090: break;
	ljmp	00172$
;	appFHSSNIC.c:1092: case FHSS_SET_STATE:
00161$:
;	appFHSSNIC.c:1094: macdata.tLastStateChange = clock;
	mov	dptr,#_clock
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_macdata + 0x000b)
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	appFHSSNIC.c:1095: macdata.mac_state = (u8)buf[0];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_macdata
	movx	@dptr,a
;	appFHSSNIC.c:1099: switch (macdata.mac_state)
	mov	dptr,#_macdata
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,#0xff - 0x05
	jc	00168$
	mov	a,r3
	add	a,r3
	add	a,r3
	mov	dptr,#00258$
	jmp	@a+dptr
00258$:
	ljmp	00162$
	ljmp	00163$
	ljmp	00164$
	ljmp	00166$
	ljmp	00167$
	ljmp	00165$
;	appFHSSNIC.c:1101: case MAC_STATE_NONHOPPING:
00162$:
;	appFHSSNIC.c:1102: case MAC_STATE_DISCOVERY:
00163$:
;	appFHSSNIC.c:1103: case MAC_STATE_SYNCHING:
00164$:
;	appFHSSNIC.c:1105: stop_hopping();
	push	ar7
	push	ar6
	push	ar5
	lcall	_stop_hopping
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1106: break;
;	appFHSSNIC.c:1108: case MAC_STATE_SYNCINGMASTER:
	sjmp	00168$
00165$:
;	appFHSSNIC.c:1109: MAC_do_Master_scanny_thingy();
	push	ar7
	push	ar6
	push	ar5
	lcall	_MAC_do_Master_scanny_thingy
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1110: break;
;	appFHSSNIC.c:1112: case MAC_STATE_SYNCHED:
	sjmp	00168$
00166$:
;	appFHSSNIC.c:1113: case MAC_STATE_SYNC_MASTER:
00167$:
;	appFHSSNIC.c:1114: begin_hopping(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_begin_hopping
	pop	ar5
	pop	ar6
	pop	ar7
;	appFHSSNIC.c:1116: }
00168$:
;	appFHSSNIC.c:1118: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1119: break;
;	appFHSSNIC.c:1121: case FHSS_GET_STATE:
	sjmp	00172$
00169$:
;	appFHSSNIC.c:1122: appReturn( 1, (__xdata u8*)&macdata.mac_state);
	mov	dptr,#_appReturn_PARM_2
	mov	a,#_macdata
	movx	@dptr,a
	mov	a,#(_macdata >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1123: break;
;	appFHSSNIC.c:1125: default:
	sjmp	00172$
00170$:
;	appFHSSNIC.c:1126: appReturn( 1, buf);
	mov	dptr,#_appReturn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_appReturn
;	appFHSSNIC.c:1130: }
00172$:
;	appFHSSNIC.c:1133: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'appHandleEP0OUTdone'
;------------------------------------------------------------
;	appFHSSNIC.c:1137: void appHandleEP0OUTdone(void)
;	-----------------------------------------
;	 function appHandleEP0OUTdone
;	-----------------------------------------
_appHandleEP0OUTdone:
;	appFHSSNIC.c:1139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'appHandleEP0OUT'
;------------------------------------------------------------
;	appFHSSNIC.c:1142: void appHandleEP0OUT(void)
;	-----------------------------------------
;	 function appHandleEP0OUT
;	-----------------------------------------
_appHandleEP0OUT:
;	appFHSSNIC.c:1172: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'appHandleEP0'
;------------------------------------------------------------
;pReq                      Allocated to registers 
;------------------------------------------------------------
;	appFHSSNIC.c:1179: int appHandleEP0(__xdata USB_Setup_Header* pReq)
;	-----------------------------------------
;	 function appHandleEP0
;	-----------------------------------------
_appHandleEP0:
;	appFHSSNIC.c:1215: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'appInitRf'
;------------------------------------------------------------
;	appFHSSNIC.c:1225: void appInitRf(void)
;	-----------------------------------------
;	 function appInitRf
;	-----------------------------------------
_appInitRf:
;	appFHSSNIC.c:1231: IOCFG2      = 0x00;
	mov	dptr,#_IOCFG2
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:1232: IOCFG1      = 0x00;
	mov	dptr,#_IOCFG1
	movx	@dptr,a
;	appFHSSNIC.c:1233: IOCFG0      = 0x00;
	mov	dptr,#_IOCFG0
	movx	@dptr,a
;	appFHSSNIC.c:1234: SYNC1       = 0x0c;
	mov	dptr,#_SYNC1
	mov	a,#0x0C
	movx	@dptr,a
;	appFHSSNIC.c:1235: SYNC0       = 0x4e;
	mov	dptr,#_SYNC0
	mov	a,#0x4E
	movx	@dptr,a
;	appFHSSNIC.c:1236: PKTLEN      = 0xff;
	mov	dptr,#_PKTLEN
	mov	a,#0xFF
	movx	@dptr,a
;	appFHSSNIC.c:1237: PKTCTRL1    = 0x40; // PQT threshold  - was 0x00
	mov	dptr,#_PKTCTRL1
	mov	a,#0x40
	movx	@dptr,a
;	appFHSSNIC.c:1238: PKTCTRL0    = 0x00; // FLEN.  for VLEN use |1 (ie.  FLEN=00, VLEN=01)
	mov	dptr,#_PKTCTRL0
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:1239: ADDR        = 0x00;
	mov	dptr,#_ADDR
	movx	@dptr,a
;	appFHSSNIC.c:1240: CHANNR      = 0x00;
	mov	dptr,#_CHANNR
	movx	@dptr,a
;	appFHSSNIC.c:1241: FSCTRL1     = 0x06;
	mov	dptr,#_FSCTRL1
	mov	a,#0x06
	movx	@dptr,a
;	appFHSSNIC.c:1242: FSCTRL0     = 0x00;
	mov	dptr,#_FSCTRL0
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:1243: FREQ2       = 0x24;
	mov	dptr,#_FREQ2
	mov	a,#0x24
	movx	@dptr,a
;	appFHSSNIC.c:1244: FREQ1       = 0x3a;
	mov	dptr,#_FREQ1
	mov	a,#0x3A
	movx	@dptr,a
;	appFHSSNIC.c:1245: FREQ0       = 0xf1;
	mov	dptr,#_FREQ0
	mov	a,#0xF1
	movx	@dptr,a
;	appFHSSNIC.c:1246: MDMCFG4     = 0xca;
	mov	dptr,#_MDMCFG4
	mov	a,#0xCA
	movx	@dptr,a
;	appFHSSNIC.c:1247: MDMCFG3     = 0xa3;
	mov	dptr,#_MDMCFG3
	mov	a,#0xA3
	movx	@dptr,a
;	appFHSSNIC.c:1248: MDMCFG2     = 0x01;
	mov	dptr,#_MDMCFG2
	mov	a,#0x01
	movx	@dptr,a
;	appFHSSNIC.c:1249: MDMCFG1     = 0x23;
	mov	dptr,#_MDMCFG1
	mov	a,#0x23
	movx	@dptr,a
;	appFHSSNIC.c:1250: MDMCFG0     = 0x11;
	mov	dptr,#_MDMCFG0
	mov	a,#0x11
	movx	@dptr,a
;	appFHSSNIC.c:1251: DEVIATN     = 0x36;
	mov	dptr,#_DEVIATN
	mov	a,#0x36
	movx	@dptr,a
;	appFHSSNIC.c:1252: MCSM2       = 0x07;             // RX_TIMEOUT
	mov	dptr,#_MCSM2
	mov	a,#0x07
	movx	@dptr,a
;	appFHSSNIC.c:1253: MCSM1       = 0x0f;             // was 'CCA_MODE RSSI below threshold unless currently recvg pkt'-3, now 'Always'-0 - always end up in RX mode
	mov	dptr,#_MCSM1
	mov	a,#0x0F
	movx	@dptr,a
;	appFHSSNIC.c:1254: MCSM0       = 0x18;             // fsautosync when going from idle to rx/tx/fstxon
	mov	dptr,#_MCSM0
	mov	a,#0x18
	movx	@dptr,a
;	appFHSSNIC.c:1255: FOCCFG      = 0x17;
	mov	dptr,#_FOCCFG
	dec	a
	movx	@dptr,a
;	appFHSSNIC.c:1256: BSCFG       = 0x6c;
	mov	dptr,#_BSCFG
	mov	a,#0x6C
	movx	@dptr,a
;	appFHSSNIC.c:1257: AGCCTRL2    = 0x03;
	mov	dptr,#_AGCCTRL2
	mov	a,#0x03
	movx	@dptr,a
;	appFHSSNIC.c:1258: AGCCTRL1    = 0x40;
	mov	dptr,#_AGCCTRL1
	mov	a,#0x40
	movx	@dptr,a
;	appFHSSNIC.c:1259: AGCCTRL0    = 0x91;
	mov	dptr,#_AGCCTRL0
	mov	a,#0x91
	movx	@dptr,a
;	appFHSSNIC.c:1260: FREND1      = 0x56;
	mov	dptr,#_FREND1
	mov	a,#0x56
	movx	@dptr,a
;	appFHSSNIC.c:1261: FREND0      = 0x10;
	mov	dptr,#_FREND0
	mov	a,#0x10
	movx	@dptr,a
;	appFHSSNIC.c:1262: FSCAL3      = 0xe9;
	mov	dptr,#_FSCAL3
	mov	a,#0xE9
	movx	@dptr,a
;	appFHSSNIC.c:1263: FSCAL2      = 0x2a;
	mov	dptr,#_FSCAL2
	mov	a,#0x2A
	movx	@dptr,a
;	appFHSSNIC.c:1264: FSCAL1      = 0x00;
	mov	dptr,#_FSCAL1
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:1265: FSCAL0      = 0x1f;
	mov	dptr,#_FSCAL0
	mov	a,#0x1F
	movx	@dptr,a
;	appFHSSNIC.c:1266: TEST2       = 0x88; // low data rates, increased sensitivity provided by 0x81- was 0x88
	mov	dptr,#_TEST2
	mov	a,#0x88
	movx	@dptr,a
;	appFHSSNIC.c:1267: TEST1       = 0x31; // always 0x31 in tx-mode, for low data rates 0x35 provides increased sensitivity - was 0x31
	mov	dptr,#_TEST1
	mov	a,#0x31
	movx	@dptr,a
;	appFHSSNIC.c:1268: TEST0       = 0x09;
	mov	dptr,#_TEST0
	mov	a,#0x09
	movx	@dptr,a
;	appFHSSNIC.c:1269: PA_TABLE0   = 0xc0;
	mov	dptr,#_PA_TABLE0
	mov	a,#0xC0
	movx	@dptr,a
;	appFHSSNIC.c:1277: FSCTRL1     = 0x0c;             // Intermediate Frequency
	mov	dptr,#_FSCTRL1
	swap	a
	movx	@dptr,a
;	appFHSSNIC.c:1279: FREQ2       = 0x25;
	mov	dptr,#_FREQ2
	mov	a,#0x25
	movx	@dptr,a
;	appFHSSNIC.c:1280: FREQ1       = 0x95;
	mov	dptr,#_FREQ1
	mov	a,#0x95
	movx	@dptr,a
;	appFHSSNIC.c:1281: FREQ0       = 0x55;
	mov	dptr,#_FREQ0
	mov	a,#0x55
	movx	@dptr,a
;	appFHSSNIC.c:1293: FREND1      = 0xb6;
	mov	dptr,#_FREND1
	mov	a,#0xB6
	movx	@dptr,a
;	appFHSSNIC.c:1294: FREND0      = 0x10;
	mov	dptr,#_FREND0
	mov	a,#0x10
	movx	@dptr,a
;	appFHSSNIC.c:1295: FSCAL3      = 0xea;
	mov	dptr,#_FSCAL3
	mov	a,#0xEA
	movx	@dptr,a
;	appFHSSNIC.c:1296: FSCAL2      = 0x2a;
	mov	dptr,#_FSCAL2
	mov	a,#0x2A
	movx	@dptr,a
;	appFHSSNIC.c:1297: FSCAL1      = 0x00;
	mov	dptr,#_FSCAL1
	clr	a
	movx	@dptr,a
;	appFHSSNIC.c:1298: FSCAL0      = 0x1f;
	mov	dptr,#_FSCAL0
	mov	a,#0x1F
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initBoard'
;------------------------------------------------------------
;	appFHSSNIC.c:1344: void initBoard(void)
;	-----------------------------------------
;	 function initBoard
;	-----------------------------------------
_initBoard:
;	appFHSSNIC.c:1347: clock_init();
	lcall	_clock_init
;	appFHSSNIC.c:1348: io_init();
	ljmp	_io_init
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	appFHSSNIC.c:1352: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	appFHSSNIC.c:1354: initBoard();
	lcall	_initBoard
;	appFHSSNIC.c:1355: initDMA();  // do this early so peripherals that use DMA can allocate channels correctly
	lcall	_initDMA
;	appFHSSNIC.c:1356: initAES();
	lcall	_initAES
;	appFHSSNIC.c:1357: initUSB();
	lcall	_initUSB
;	appFHSSNIC.c:1358: init_RF();
	lcall	_init_RF
;	appFHSSNIC.c:1359: appMainInit();
	lcall	_appMainInit
;	appFHSSNIC.c:1361: usb_up();
	lcall	_usb_up
;	appFHSSNIC.c:1364: EA = 1;
	setb	_EA
;	appFHSSNIC.c:1365: waitForUSBsetup();
	lcall	_waitForUSBsetup
;	appFHSSNIC.c:1367: REALLYFASTBLINK();
	setb	_P2_4
	mov	dptr,#0x0002
	lcall	_sleepMillis
	clr	_P2_4
	mov	dptr,#0x000A
	lcall	_sleepMillis
;	appFHSSNIC.c:1369: while (1)
00102$:
;	appFHSSNIC.c:1371: usbProcessEvents();
	lcall	_usbProcessEvents
;	appFHSSNIC.c:1372: appMainLoop();
	lcall	_appMainLoop
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Cannot call transmit_long while FHSS Hopping or already proc"
	.ascii "essing transmit_long!"
	.db 0x00
___str_1:
	.ascii "MAC_tx() returned error"
	.db 0x00
___str_2:
	.ascii "never entered TX"
	.db 0x00
___str_3:
	.ascii "FHSSxmit message too long"
	.db 0x00
___str_4:
	.ascii "FHSS state entering SYNCHING from wrong state"
	.db 0x00
___str_5:
	.ascii "SYNCH_MASTER -> SYNCINGMASTER"
	.db 0x00
___str_6:
	.ascii "FHSSxmit done"
	.db 0x00
___str_7:
	.ascii "network packet(sync)"
	.db 0x00
___str_8:
	.ascii "network packet(discovery)"
	.db 0x00
___str_9:
	.ascii "crap, please use FHSSxmit() instead!"
	.db 0x00
___str_10:
	.ascii "dropout final wait!"
	.db 0x00
___str_11:
	.ascii "total bytes tx:"
	.db 0x00
___str_12:
	.ascii "underrun"
	.db 0x00
___str_13:
	.ascii "buffer error"
	.db 0x00
___str_14:
	.ascii "still waiting on the last packet"
	.db 0x00
___str_15:
	.ascii "NO DEAL"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
