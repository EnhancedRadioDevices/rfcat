;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Fri Dec 16 14:02:33 2016
;--------------------------------------------------------
	.module cc1111rf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RepeaterStop
	.globl _RepeaterStart
	.globl _setFreq
	.globl _memset
	.globl _decAES
	.globl _encAES
	.globl _padAES
	.globl _appInitRf
	.globl _sleepMicros
	.globl _usbProcessEvents
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
	.globl _bRepeatMode
	.globl _rfAmpMode
	.globl _rfAESMode
	.globl _rfTxInfMode
	.globl _rfTxTotalTXLen
	.globl _rfTxRepeatOffset
	.globl _rfTxRepeatLen
	.globl _rfTxBufferEnd
	.globl _rfTxRepeatCounter
	.globl _rfTxCounter
	.globl _rfTxBufCount
	.globl _rfTxCurBufIdx
	.globl _rfRxLargeLen
	.globl _rfRxTotalRXLen
	.globl _rfRxInfMode
	.globl _byte_shuffle_PARM_3
	.globl _byte_shuffle_PARM_2
	.globl _transmit_PARM_4
	.globl _transmit_PARM_3
	.globl _transmit_PARM_2
	.globl _macdata
	.globl _rf_tLastRecv
	.globl _rf_MAC_timer
	.globl _rf_status
	.globl _txTotal
	.globl _rftxbuf
	.globl _rfRxProcessed
	.globl _rfRxCounter
	.globl _rfrxbuf
	.globl _rfRxCurrentBuffer
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
	.globl _rfif
	.globl _resetRFSTATE
	.globl _RxMode
	.globl _TxMode
	.globl _IdleMode
	.globl _init_RF
	.globl _waitRSSI
	.globl _transmit
	.globl _startRX
	.globl _rfTxRxIntHandler
	.globl _rfIntHandler
	.globl _byte_shuffle
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
_rfif::
	.ds 1
_transmit_sloc1_1_0:
	.ds 2
_rfIntHandler_encoffset_1_136:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_transmit_sloc0_1_0:
	.ds 1
_rfIntHandler_sloc0_1_0:
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
_rfRxCurrentBuffer::
	.ds 1
_rfrxbuf::
	.ds 1024
_rfRxCounter::
	.ds 4
_rfRxProcessed::
	.ds 2
_rftxbuf::
	.ds 2
_txTotal::
	.ds 2
_rf_status::
	.ds 1
_rf_MAC_timer::
	.ds 2
_rf_tLastRecv::
	.ds 2
_macdata::
	.ds 21
_transmit_PARM_2:
	.ds 2
_transmit_PARM_3:
	.ds 2
_transmit_PARM_4:
	.ds 2
_transmit_buf_1_96:
	.ds 2
_transmit_encoffset_1_97:
	.ds 1
_byte_shuffle_PARM_2:
	.ds 2
_byte_shuffle_PARM_3:
	.ds 2
_byte_shuffle_buf_1_146:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_rfRxInfMode::
	.ds 1
_rfRxTotalRXLen::
	.ds 2
_rfRxLargeLen::
	.ds 2
_rfTxCurBufIdx::
	.ds 1
_rfTxBufCount::
	.ds 1
_rfTxCounter::
	.ds 2
_rfTxRepeatCounter::
	.ds 2
_rfTxBufferEnd::
	.ds 2
_rfTxRepeatLen::
	.ds 2
_rfTxRepeatOffset::
	.ds 2
_rfTxTotalTXLen::
	.ds 2
_rfTxInfMode::
	.ds 1
_rfAESMode::
	.ds 1
_rfAmpMode::
	.ds 1
_bRepeatMode::
	.ds 1
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
;Allocation info for local variables in function 'setFreq'
;------------------------------------------------------------
;freq                      Allocated to registers r4 r5 r6 r7 
;num                       Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	cc1111rf.c:56: void setFreq(u32 freq)
;	-----------------------------------------
;	 function setFreq
;	-----------------------------------------
_setFreq:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	cc1111rf.c:61: num = freq * (0x10000 / 1000000.0) / PLATFORM_CLOCK_FREQ;
	lcall	___ulong2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x37BD
	mov	b,#0x86
	mov	a,#0x3D
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xC0
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2ulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	cc1111rf.c:62: FREQ2 = num >> 16;
	mov	dptr,#_FREQ2
	mov	a,r6
	movx	@dptr,a
;	cc1111rf.c:63: FREQ1 = (num>>8) & 0xff;
	mov	ar3,r5
	mov	dptr,#_FREQ1
	mov	a,r3
	movx	@dptr,a
;	cc1111rf.c:64: FREQ0 = num & 0xff;
	mov	dptr,#_FREQ0
	mov	a,r4
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetRFSTATE'
;------------------------------------------------------------
;	cc1111rf.c:67: void resetRFSTATE(void)
;	-----------------------------------------
;	 function resetRFSTATE
;	-----------------------------------------
_resetRFSTATE:
;	cc1111rf.c:70: RFST = RFST_SIDLE; while ((MARCSTATE) != MARC_STATE_IDLE);
	mov	_RFST,#0x04
00101$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00101$
;	cc1111rf.c:72: RFST = rf_status;
	mov	dptr,#_rf_status
	movx	a,@dptr
	mov	_RFST,a
;	cc1111rf.c:73: while (rf_status != RFST_SIDLE && MARCSTATE == MARC_STATE_IDLE)
00105$:
	mov	dptr,#_rf_status
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00124$
	ret
00124$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00125$
	sjmp	00105$
00125$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RxMode'
;------------------------------------------------------------
;	cc1111rf.c:78: void RxMode(void)
;	-----------------------------------------
;	 function RxMode
;	-----------------------------------------
_RxMode:
;	cc1111rf.c:80: if (rf_status != RFST_SRX)
	mov	dptr,#_rf_status
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00108$
	ret
00108$:
;	cc1111rf.c:82: MCSM1 &= 0xf0;
;	cc1111rf.c:83: MCSM1 |= 0x0f;
	mov	dptr,#_MCSM1
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
	movx	a,@dptr
	orl	a,#0x0F
	movx	@dptr,a
;	cc1111rf.c:84: rf_status = RFST_SRX;
	mov	dptr,#_rf_status
	mov	a,#0x02
	movx	@dptr,a
;	cc1111rf.c:86: startRX();
	ljmp	_startRX
;------------------------------------------------------------
;Allocation info for local variables in function 'TxMode'
;------------------------------------------------------------
;	cc1111rf.c:91: void TxMode(void)
;	-----------------------------------------
;	 function TxMode
;	-----------------------------------------
_TxMode:
;	cc1111rf.c:93: if (rf_status != RFST_STX)
	mov	dptr,#_rf_status
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00117$
	ret
00117$:
;	cc1111rf.c:95: MCSM1 &= 0xf0;
;	cc1111rf.c:96: MCSM1 |= 0x0a;
	mov	dptr,#_MCSM1
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x0A
	movx	@dptr,a
;	cc1111rf.c:98: rf_status = RFST_STX;
	mov	dptr,#_rf_status
	mov	a,#0x03
	movx	@dptr,a
;	cc1111rf.c:99: RFTX;
	mov	_RFST,#0x03
00101$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x13,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IdleMode'
;------------------------------------------------------------
;	cc1111rf.c:104: void IdleMode(void)
;	-----------------------------------------
;	 function IdleMode
;	-----------------------------------------
_IdleMode:
;	cc1111rf.c:106: if (rf_status != RFST_SIDLE)
	mov	dptr,#_rf_status
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00120$
	ret
00120$:
;	cc1111rf.c:109: MCSM1 &= 0xf0;
	mov	dptr,#_MCSM1
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
;	cc1111rf.c:110: RFIM &= ~RFIF_IRQ_DONE;
	mov	r7,_RFIM
	mov	a,#0xEF
	anl	a,r7
	mov	_RFIM,a
;	cc1111rf.c:111: RFOFF;
	mov	_RFST,#0x04
00101$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00101$
;	cc1111rf.c:118: S1CON &= ~(S1CON_RFIF_0|S1CON_RFIF_1);  // clear RFIF interrupts
	mov	r7,_S1CON
	mov	a,#0xFC
	anl	a,r7
	mov	_S1CON,a
;	cc1111rf.c:119: RFIF &= ~RFIF_IRQ_DONE;
	mov	r7,_RFIF
	mov	a,#0xEF
	anl	a,r7
	mov	_RFIF,a
;	cc1111rf.c:121: rf_status = RFST_SIDLE;
	mov	dptr,#_rf_status
	mov	a,#0x04
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_RF'
;------------------------------------------------------------
;	cc1111rf.c:130: void init_RF()
;	-----------------------------------------
;	 function init_RF
;	-----------------------------------------
_init_RF:
;	cc1111rf.c:133: rf_tLastRecv = 0;
	mov	dptr,#_rf_tLastRecv
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:136: rfRxCounter[FIRST_BUFFER] = 0;
	mov	dptr,#_rfRxCounter
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:137: rfRxCounter[SECOND_BUFFER] = 0;
	mov	dptr,#(_rfRxCounter + 0x0002)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:150: CLKCON &= 0xc7;
	anl	_CLKCON,#0xC7
;	cc1111rf.c:152: T2PR = 0;
	mov	_T2PR,#0x00
;	cc1111rf.c:153: T2CTL |= T2CTL_TIP_64;  // 64, 128, 256, 1024
	mov	_T2CTL,_T2CTL
;	cc1111rf.c:154: T2CTL |= T2CTL_TIG;
	orl	_T2CTL,#0x04
;	cc1111rf.c:158: IP0 |= 0;       // grp0 is RF/RFTXRX/DMA
	mov	_IP0,_IP0
;	cc1111rf.c:159: IP1 |= BIT0;
	orl	_IP1,#0x01
;	cc1111rf.c:162: rf_status = RFST_SIDLE;
	mov	dptr,#_rf_status
	mov	a,#0x04
	movx	@dptr,a
;	cc1111rf.c:171: memset(rfrxbuf,0,(BUFFER_AMOUNT * BUFFER_SIZE));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x00
	mov	(_memset_PARM_3 + 1),#0x04
	mov	dptr,#_rfrxbuf
	mov	b,#0x00
	lcall	_memset
;	cc1111rf.c:173: appInitRf();
	lcall	_appInitRf
;	cc1111rf.c:176: RFTXRXIE = 1;                   // FIXME: should this be something that is enabled/disabled by usb?
	setb	_RFTXRXIE
;	cc1111rf.c:177: RFIM = 0xd1;    // TXUNF, RXOVF, DONE, SFD  (SFD to mark time of receipt)
	mov	_RFIM,#0xD1
;	cc1111rf.c:178: RFIF = 0;
	mov	_RFIF,#0x00
;	cc1111rf.c:179: rfif = 0;
	mov	_rfif,#0x00
;	cc1111rf.c:180: IEN2 |= IEN2_RFIE;
	orl	_IEN2,#0x01
;	cc1111rf.c:183: RFOFF;
	mov	_RFST,#0x04
00101$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitRSSI'
;------------------------------------------------------------
;u16WaitTime               Allocated to registers r6 r7 
;------------------------------------------------------------
;	cc1111rf.c:188: int waitRSSI()
;	-----------------------------------------
;	 function waitRSSI
;	-----------------------------------------
_waitRSSI:
;	cc1111rf.c:191: while(u16WaitTime < RSSI_TIMEOUT_US)
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	clr	c
	mov	a,r6
	subb	a,#0xDC
	mov	a,r7
	subb	a,#0x05
	jnc	00106$
;	cc1111rf.c:193: if(PKTSTATUS & (PKTSTATUS_CCA | PKTSTATUS_CS))
	mov	dptr,#_PKTSTATUS
	movx	a,@dptr
	mov	r5,a
	anl	a,#0x50
	jz	00102$
;	cc1111rf.c:195: return 1;
	mov	dptr,#0x0001
	ret
00102$:
;	cc1111rf.c:199: sleepMicros(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_sleepMicros
	pop	ar6
	pop	ar7
;	cc1111rf.c:200: u16WaitTime += 50;
	mov	a,#0x32
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	sjmp	00104$
00106$:
;	cc1111rf.c:203: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit'
;------------------------------------------------------------
;sloc1                     Allocated with name '_transmit_sloc1_1_0'
;len                       Allocated with name '_transmit_PARM_2'
;repeat                    Allocated with name '_transmit_PARM_3'
;offset                    Allocated with name '_transmit_PARM_4'
;buf                       Allocated with name '_transmit_buf_1_96'
;countdown                 Allocated with name '_transmit_countdown_1_97'
;encoffset                 Allocated with name '_transmit_encoffset_1_97'
;original_pktlen           Allocated with name '_transmit_original_pktlen_1_97'
;------------------------------------------------------------
;	cc1111rf.c:214: u8 transmit(__xdata u8* __xdata buf, __xdata u16 len, __xdata u16 repeat, __xdata u16 offset)
;	-----------------------------------------
;	 function transmit
;	-----------------------------------------
_transmit:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_transmit_buf_1_96
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:217: __xdata u8 encoffset = 0;
	mov	dptr,#_transmit_encoffset_1_97
	clr	a
	movx	@dptr,a
;	cc1111rf.c:218: __xdata u8 original_pktlen = PKTLEN;
	mov	dptr,#_PKTLEN
	movx	a,@dptr
	mov	r7,a
;	cc1111rf.c:220: while (MARCSTATE == MARC_STATE_TX)
00101$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x13,00103$
;	cc1111rf.c:222: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _transmit_sloc0_1_0,c
	mov	_P2_4,c
	sjmp	00101$
00103$:
;	cc1111rf.c:228: LED = 0;
	clr	_P2_4
;	cc1111rf.c:231: rfTxInfMode = 0;
	mov	dptr,#_rfTxInfMode
	clr	a
	movx	@dptr,a
;	cc1111rf.c:232: rfTxRepeatCounter = repeat;
	mov	dptr,#_transmit_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_rfTxRepeatCounter
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:233: rfTxRepeatOffset = offset;
	mov	dptr,#_transmit_PARM_4
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_rfTxRepeatOffset
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:234: rfTxBufferEnd = len;
	mov	dptr,#_transmit_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_rfTxBufferEnd
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:235: rfTxRepeatLen = len - offset;
	mov	dptr,#_rfTxRepeatLen
	mov	a,r1
	clr	c
	subb	a,r3
	movx	@dptr,a
	mov	a,r2
	subb	a,r4
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:237: rfTxTotalTXLen = len + (rfTxRepeatLen * repeat);
	mov	dptr,#_rfTxRepeatLen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),r6
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_rfTxTotalTXLen
	mov	a,r3
	add	a,r1
	movx	@dptr,a
	mov	a,r4
	addc	a,r2
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:242: if(len == 0)
	mov	a,r1
	orl	a,r2
	jnz	00118$
;	cc1111rf.c:244: len = buf[0];
	mov	dptr,#_transmit_buf_1_96
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r0,a
	mov	_transmit_sloc1_1_0,r0
	mov	(_transmit_sloc1_1_0 + 1),#0x00
	mov	dptr,#_transmit_PARM_2
	mov	a,_transmit_sloc1_1_0
	movx	@dptr,a
	mov	a,(_transmit_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:246: switch (PKTCTRL0 & PKTCTRL0_LENGTH_CONFIG)
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r0,a
	anl	ar0,#0x03
	cjne	r0,#0x00,00214$
	sjmp	00105$
00214$:
	cjne	r0,#0x01,00215$
	sjmp	00216$
00215$:
	ljmp	00119$
00216$:
;	cc1111rf.c:249: len++;  // we need to send the length byte too...
	mov	dptr,#_transmit_PARM_2
	mov	a,#0x01
	add	a,_transmit_sloc1_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_transmit_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:250: break;
	ljmp	00119$
;	cc1111rf.c:251: case PKTCTRL0_LENGTH_CONFIG_FIX:
00105$:
;	cc1111rf.c:252: buf++;  // skip sending the length byte
	mov	dptr,#_transmit_buf_1_96
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:253: PKTLEN= len;
	mov	dptr,#_transmit_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_PKTLEN
	mov	a,r3
	movx	@dptr,a
;	cc1111rf.c:254: break;
	ljmp	00119$
;	cc1111rf.c:257: }
00118$:
;	cc1111rf.c:263: switch (PKTCTRL0 & PKTCTRL0_LENGTH_CONFIG)
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x03
	cjne	r4,#0x00,00217$
	sjmp	00109$
00217$:
	cjne	r4,#0x01,00218$
	sjmp	00219$
00218$:
	ljmp	00119$
00219$:
;	cc1111rf.c:267: byte_shuffle(buf, len, 1);
	mov	dptr,#_transmit_buf_1_96
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_byte_shuffle_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_byte_shuffle_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar2
	push	ar1
	lcall	_byte_shuffle
	pop	ar1
	pop	ar2
	pop	ar7
;	cc1111rf.c:268: buf[0] = (u8) len;
	mov	dptr,#_transmit_buf_1_96
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar0,r1
	mov	dpl,r3
	mov	dph,r4
	mov	a,r0
	movx	@dptr,a
;	cc1111rf.c:269: break;
;	cc1111rf.c:270: case PKTCTRL0_LENGTH_CONFIG_FIX:
	sjmp	00119$
00109$:
;	cc1111rf.c:274: if(repeat)
	mov	a,r5
	orl	a,r6
	jz	00113$
;	cc1111rf.c:278: PKTLEN = (u8) (rfTxTotalTXLen % 256);
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_PKTLEN
	mov	a,r5
	movx	@dptr,a
;	cc1111rf.c:279: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	anl	a,#0xFC
	movx	@dptr,a
;	cc1111rf.c:281: if(rfTxTotalTXLen > RF_MAX_TX_BLOCK)
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	jz	00111$
;	cc1111rf.c:282: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x02
	movx	@dptr,a
00111$:
;	cc1111rf.c:284: rfTxInfMode = 1;
	mov	dptr,#_rfTxInfMode
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00119$
00113$:
;	cc1111rf.c:287: PKTLEN = len;
	mov	dptr,#_PKTLEN
	mov	a,r1
	movx	@dptr,a
;	cc1111rf.c:291: }
00119$:
;	cc1111rf.c:296: RFTXRXIE = 1;
	setb	_RFTXRXIE
;	cc1111rf.c:302: if(rfAESMode & AES_CRYPTO_OUT_ENABLE)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r6,a
	jb	acc.3,00222$
	ljmp	00135$
00222$:
;	cc1111rf.c:304: if((PKTCTRL0 & PKTCTRL0_LENGTH_CONFIG) == PKTCTRL0_LENGTH_CONFIG_VAR)
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x03
	cjne	r6,#0x01,00121$
;	cc1111rf.c:305: encoffset= 1;
	mov	dptr,#_transmit_encoffset_1_97
	mov	a,#0x01
	movx	@dptr,a
00121$:
;	cc1111rf.c:307: len= padAES(buf + encoffset, len);
	mov	dptr,#_transmit_encoffset_1_97
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_transmit_buf_1_96
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	dptr,#_transmit_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_padAES_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_padAES
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	cc1111rf.c:309: if((rfAESMode & AES_CRYPTO_OUT_TYPE) == AES_CRYPTO_OUT_ENCRYPT)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0x04
	cjne	r1,#0x04,00123$
;	cc1111rf.c:310: encAES(buf + encoffset, buf + encoffset, len, (rfAESMode & AES_CRYPTO_MODE));
	push	ar7
	mov	a,r6
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0xF0
	mov	dptr,#_encAES_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_encAES_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_encAES_PARM_4
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_encAES
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	sjmp	00124$
00123$:
;	cc1111rf.c:312: decAES(buf + encoffset, buf + encoffset, len, (rfAESMode & AES_CRYPTO_MODE));
	push	ar7
	mov	a,r6
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0xF0
	mov	dptr,#_decAES_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_decAES_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_decAES_PARM_4
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_decAES
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	cc1111rf.c:426: return 1;
	pop	ar7
;	cc1111rf.c:312: decAES(buf + encoffset, buf + encoffset, len, (rfAESMode & AES_CRYPTO_MODE));
00124$:
;	cc1111rf.c:314: if(encoffset)
	mov	a,r6
	jz	00132$
;	cc1111rf.c:318: if((rfAESMode & AES_CRYPTO_MODE) == ENCCS_MODE_CBCMAC)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0xF0
	cjne	r6,#0x50,00126$
;	cc1111rf.c:319: buf[0] = 16;
	mov	dpl,r4
	mov	dph,r5
	mov	a,#0x10
	movx	@dptr,a
	sjmp	00135$
00126$:
;	cc1111rf.c:321: buf[0] = (u8) len;
	mov	ar6,r2
	mov	dpl,r4
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
	sjmp	00135$
00132$:
;	cc1111rf.c:325: if((rfAESMode & AES_CRYPTO_MODE) == ENCCS_MODE_CBCMAC)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0xF0
	cjne	r6,#0x50,00129$
;	cc1111rf.c:326: PKTLEN = 16;
	mov	dptr,#_PKTLEN
	mov	a,#0x10
	movx	@dptr,a
	sjmp	00135$
00129$:
;	cc1111rf.c:328: PKTLEN = (u8) len;
	mov	dptr,#_PKTLEN
	mov	a,r2
	movx	@dptr,a
00135$:
;	cc1111rf.c:333: rftxbuf = buf;
	mov	dptr,#_transmit_buf_1_96
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_rftxbuf
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:336: rfTxCounter = 0;
	mov	dptr,#_rfTxCounter
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:393: RFST = RFST_STX;
	mov	_RFST,#0x03
;	cc1111rf.c:397: while (MARCSTATE != MARC_STATE_TX && --countdown)
	mov	r5,#0x60
	mov	r6,#0xEA
00137$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x13,00232$
	sjmp	00139$
00232$:
	dec	r5
	cjne	r5,#0xFF,00233$
	dec	r6
00233$:
	mov	a,r5
	orl	a,r6
	jz	00139$
;	cc1111rf.c:400: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _transmit_sloc0_1_0,c
	mov	_P2_4,c
	sjmp	00137$
00139$:
;	cc1111rf.c:406: LED = 1;
	setb	_P2_4
;	cc1111rf.c:407: if (!countdown)
	mov	a,r5
	orl	a,r6
	jnz	00142$
;	cc1111rf.c:409: lastCode[1] = LCE_RFTX_NEVER_TX;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x13
	movx	@dptr,a
;	cc1111rf.c:412: while (MARCSTATE == MARC_STATE_TX)
00142$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x13,00144$
;	cc1111rf.c:414: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _transmit_sloc0_1_0,c
	mov	_P2_4,c
;	cc1111rf.c:416: usbProcessEvents();
	push	ar7
	lcall	_usbProcessEvents
	pop	ar7
	sjmp	00142$
00144$:
;	cc1111rf.c:421: LED = 0;
	clr	_P2_4
;	cc1111rf.c:424: PKTLEN = original_pktlen;
	mov	dptr,#_PKTLEN
	mov	a,r7
	movx	@dptr,a
;	cc1111rf.c:426: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startRX'
;------------------------------------------------------------
;	cc1111rf.c:433: void startRX(void)
;	-----------------------------------------
;	 function startRX
;	-----------------------------------------
_startRX:
;	cc1111rf.c:439: RFTXRXIE = 1;
	setb	_RFTXRXIE
;	cc1111rf.c:443: memset(rfrxbuf,0,BUFFER_SIZE);
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x00
	mov	(_memset_PARM_3 + 1),#0x02
	mov	dptr,#_rfrxbuf
	mov	b,#0x00
	lcall	_memset
;	cc1111rf.c:446: rfRxCounter[FIRST_BUFFER] = 0;
	mov	dptr,#_rfRxCounter
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:447: rfRxCounter[SECOND_BUFFER] = 0;
	mov	dptr,#(_rfRxCounter + 0x0002)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:453: rfRxProcessed[FIRST_BUFFER] = RX_UNPROCESSED;
	mov	dptr,#_rfRxProcessed
	clr	a
	movx	@dptr,a
;	cc1111rf.c:454: rfRxProcessed[SECOND_BUFFER] = RX_PROCESSED;
	mov	dptr,#(_rfRxProcessed + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
;	cc1111rf.c:457: rfRxCurrentBuffer = 0;
	mov	dptr,#_rfRxCurrentBuffer
	clr	a
	movx	@dptr,a
;	cc1111rf.c:459: S1CON &= ~(S1CON_RFIF_0|S1CON_RFIF_1);
	mov	r7,_S1CON
	mov	a,#0xFC
	anl	a,r7
	mov	_S1CON,a
;	cc1111rf.c:460: RFIF &= ~RFIF_IRQ_DONE;
	mov	r7,_RFIF
	mov	a,#0xEF
	anl	a,r7
	mov	_RFIF,a
;	cc1111rf.c:493: RFRX;
	mov	_RFST,#0x02
00101$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0D,00101$
;	cc1111rf.c:495: RFIM |= RFIF_IRQ_DONE;
	orl	_RFIM,#0x10
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RepeaterStart'
;------------------------------------------------------------
;	cc1111rf.c:506: void RepeaterStart()
;	-----------------------------------------
;	 function RepeaterStart
;	-----------------------------------------
_RepeaterStart:
;	cc1111rf.c:508: bRepeatMode = 1;
	mov	dptr,#_bRepeatMode
	mov	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RepeaterStop'
;------------------------------------------------------------
;	cc1111rf.c:511: void RepeaterStop()
;	-----------------------------------------
;	 function RepeaterStop
;	-----------------------------------------
_RepeaterStop:
;	cc1111rf.c:513: bRepeatMode = 0;
	mov	dptr,#_bRepeatMode
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rfTxRxIntHandler'
;------------------------------------------------------------
;	cc1111rf.c:525: void rfTxRxIntHandler(void) __interrupt RFTXRX_VECTOR  // interrupt handler should transmit or receive the next byte
;	-----------------------------------------
;	 function rfTxRxIntHandler
;	-----------------------------------------
_rfTxRxIntHandler:
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
;	cc1111rf.c:527: lastCode[0] = LC_RFTXRX_VECTOR;
	mov	dptr,#_lastCode
	mov	a,#0x11
	movx	@dptr,a
;	cc1111rf.c:531: RFTXRXIF = 0;
	clr	_RFTXRXIF
;	cc1111rf.c:533: if(MARCSTATE == MARC_STATE_RX)
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0D,00176$
	sjmp	00177$
00176$:
	ljmp	00130$
00177$:
;	cc1111rf.c:536: LED = 1;
	setb	_P2_4
;	cc1111rf.c:538: if(rfRxInfMode)
	mov	dptr,#_rfRxInfMode
	movx	a,@dptr
	mov	r7,a
	jz	00104$
;	cc1111rf.c:539: if(rfRxTotalRXLen-- < 256)
	mov	dptr,#_rfRxTotalRXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rfRxTotalRXLen
	movx	a,@dptr
	add	a,#0xFF
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r5,a
	mov	dptr,#_rfRxTotalRXLen
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	jnz	00104$
;	cc1111rf.c:540: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r7,a
	anl	a,#0xFC
	movx	@dptr,a
00104$:
;	cc1111rf.c:541: rf_status = RFST_SRX;
	mov	dptr,#_rf_status
	mov	a,#0x02
	movx	@dptr,a
;	cc1111rf.c:542: rfrxbuf[rfRxCurrentBuffer][rfRxCounter[rfRxCurrentBuffer]++] = RFD;
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
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_rfRxCounter
	mov	r4,a
	mov	a,#(_rfRxCounter >> 8)
	addc	a,b
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x01
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	add	a,r7
	mov	dpl,a
	mov	a,r3
	addc	a,r6
	mov	dph,a
	mov	a,_RFD
	movx	@dptr,a
;	cc1111rf.c:543: if(rfRxCounter[rfRxCurrentBuffer] >= BUFFER_SIZE || rfRxCounter[rfRxCurrentBuffer] == 0)
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_rfRxCounter
	mov	dpl,a
	mov	a,#(_rfRxCounter >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	anl	a,#0xFE
	jnz	00105$
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_rfRxCounter
	mov	dpl,a
	mov	a,#(_rfRxCounter >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00106$
00105$:
;	cc1111rf.c:545: rfRxCounter[rfRxCurrentBuffer] = BUFFER_SIZE-1;
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x02
	mul	ab
	add	a,#_rfRxCounter
	mov	dpl,a
	mov	a,#(_rfRxCounter >> 8)
	addc	a,b
	mov	dph,a
	mov	a,#0xFF
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
00106$:
;	cc1111rf.c:548: if(!rfRxTotalRXLen && rfRxInfMode)
	mov	dptr,#_rfRxTotalRXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00184$
	ljmp	00132$
00184$:
	mov	dptr,#_rfRxInfMode
	movx	a,@dptr
	mov	r7,a
	jnz	00185$
	ljmp	00132$
00185$:
;	cc1111rf.c:550: rfRxTotalRXLen = rfRxLargeLen;
	mov	dptr,#_rfRxLargeLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rfRxTotalRXLen
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:551: PKTLEN = (u8) (rfRxTotalRXLen % 256);
	mov	dptr,#_rfRxTotalRXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_PKTLEN
	mov	a,r6
	movx	@dptr,a
;	cc1111rf.c:552: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
;	cc1111rf.c:553: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	anl	a,#0xFC
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x02
	movx	@dptr,a
	ljmp	00132$
00130$:
;	cc1111rf.c:557: else if(MARCSTATE == MARC_STATE_TX)
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x13,00186$
	sjmp	00187$
00186$:
	ljmp	00132$
00187$:
;	cc1111rf.c:560: if (rfTxInfMode)
	mov	dptr,#_rfTxInfMode
	movx	a,@dptr
	mov	r7,a
	jnz	00188$
	ljmp	00125$
00188$:
;	cc1111rf.c:567: macdata.tLastHop ++;
	mov	dptr,#(_macdata + 0x000d)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00189$
	inc	r7
00189$:
	mov	dptr,#(_macdata + 0x000d)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:569: if (rfTxCounter == rfTxBufferEnd)
	mov	dptr,#_rfTxCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rfTxBufferEnd
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00190$
	mov	a,r7
	cjne	a,ar5,00190$
	sjmp	00191$
00190$:
	ljmp	00121$
00191$:
;	cc1111rf.c:571: if (rfTxRepeatCounter)
	mov	dptr,#_rfTxRepeatCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00118$
;	cc1111rf.c:573: if(rfTxRepeatCounter != 0xff)
	mov	dptr,#_rfTxRepeatCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xFF,00193$
	cjne	r7,#0x00,00193$
	sjmp	00112$
00193$:
;	cc1111rf.c:574: rfTxRepeatCounter--;
	mov	dptr,#_rfTxRepeatCounter
	movx	a,@dptr
	add	a,#0xFF
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_rfTxRepeatCounter
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00112$:
;	cc1111rf.c:575: rfTxCounter = rfTxRepeatOffset;
	mov	dptr,#_rfTxRepeatOffset
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rfTxCounter
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00121$
00118$:
;	cc1111rf.c:581: rftxbuf[(rfTxCurBufIdx * rfTxBufferEnd)] = BUFFER_AVAILABLE;
	mov	dptr,#_rfTxBufferEnd
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#_rfTxCurBufIdx
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_rftxbuf
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	dpl,a
	mov	a,r7
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
;	cc1111rf.c:583: if (++rfTxCurBufIdx == rfTxBufCount)
	mov	dptr,#_rfTxCurBufIdx
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_rfTxCurBufIdx
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rfTxBufCount
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00114$
;	cc1111rf.c:585: rfTxCurBufIdx = 0;
	mov	dptr,#_rfTxCurBufIdx
	clr	a
	movx	@dptr,a
00114$:
;	cc1111rf.c:588: if (rftxbuf[(rfTxCurBufIdx * rfTxBufferEnd)] == BUFFER_AVAILABLE)
	mov	dptr,#_rfTxBufferEnd
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#_rfTxCurBufIdx
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_rftxbuf
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	r6,a
	mov	a,r7
	addc	a,r5
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00116$
;	cc1111rf.c:591: macdata.mac_state = MAC_STATE_NONHOPPING;
	mov	dptr,#_macdata
	clr	a
	movx	@dptr,a
;	cc1111rf.c:592: lastCode[1] = LCE_DROPPED_PACKET;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x12
	movx	@dptr,a
;	cc1111rf.c:593: resetRFSTATE();
	lcall	_resetRFSTATE
;	cc1111rf.c:594: LED = 0;
	clr	_P2_4
00116$:
;	cc1111rf.c:598: rfTxCounter = 1;
	mov	dptr,#_rfTxCounter
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00121$:
;	cc1111rf.c:602: if(rfTxTotalTXLen-- == 255)
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	add	a,#0xFF
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r5,a
	mov	dptr,#_rfTxTotalTXLen
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	cjne	r6,#0xFF,00126$
	cjne	r7,#0x00,00126$
;	cc1111rf.c:604: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r7,a
	anl	a,#0xFC
	movx	@dptr,a
	sjmp	00126$
00125$:
;	cc1111rf.c:611: rfTxTotalTXLen--;
	mov	dptr,#_rfTxTotalTXLen
	movx	a,@dptr
	add	a,#0xFF
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_rfTxTotalTXLen
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00126$:
;	cc1111rf.c:612: rf_status = RFST_STX;
	mov	dptr,#_rf_status
	mov	a,#0x03
	movx	@dptr,a
;	cc1111rf.c:614: RFD = rftxbuf[(rfTxCurBufIdx * rfTxBufferEnd) + rfTxCounter++];
	mov	dptr,#_rfTxBufferEnd
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#_rfTxCurBufIdx
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_rfTxCounter
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_rfTxCounter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_rftxbuf
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	dpl,a
	mov	a,r7
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	_RFD,a
;	cc1111rf.c:615: txTotal++;
	mov	dptr,#_txTotal
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00132$:
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
;Allocation info for local variables in function 'rfIntHandler'
;------------------------------------------------------------
;encoffset                 Allocated with name '_rfIntHandler_encoffset_1_136'
;------------------------------------------------------------
;	cc1111rf.c:619: void rfIntHandler(void) __interrupt RF_VECTOR  // interrupt handler should trigger on rf events
;	-----------------------------------------
;	 function rfIntHandler
;	-----------------------------------------
_rfIntHandler:
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
;	cc1111rf.c:621: u8 encoffset= 0;
	mov	_rfIntHandler_encoffset_1_136,#0x00
;	cc1111rf.c:624: lastCode[0] = LC_RF_VECTOR;
	mov	dptr,#_lastCode
	mov	a,#0x10
	movx	@dptr,a
;	cc1111rf.c:625: S1CON &= ~(S1CON_RFIF_0 | S1CON_RFIF_1);
	mov	r6,_S1CON
	mov	a,#0xFC
	anl	a,r6
	mov	_S1CON,a
;	cc1111rf.c:628: rfif |= RFIF;
	mov	a,_RFIF
	orl	_rfif,a
;	cc1111rf.c:630: if (RFIF & RFIF_IRQ_SFD)
	mov	a,_RFIF
	jnb	acc.0,00102$
;	cc1111rf.c:634: rf_tLastRecv = T2CT | (rf_MAC_timer << 8);
	mov	dptr,#_rf_MAC_timer
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	ar6,r5
	mov	r5,#0x00
	mov	r3,_T2CT
	mov	r4,#0x00
	mov	dptr,#_rf_tLastRecv
	mov	a,r5
	orl	a,r3
	movx	@dptr,a
	mov	a,r6
	orl	a,r4
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:635: RFIF &= ~RFIF_IRQ_SFD;
	mov	r6,_RFIF
	mov	a,#0xFE
	anl	a,r6
	mov	_RFIF,a
00102$:
;	cc1111rf.c:640: if (RFIF & ( RFIF_IRQ_DONE | RFIF_IRQ_RXOVF | RFIF_IRQ_TIMEOUT ))
	mov	a,_RFIF
	anl	a,#0x70
	jnz	00152$
	ljmp	00117$
00152$:
;	cc1111rf.c:643: if(rf_status == RFST_STX)
	mov	dptr,#_rf_status
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x03,00114$
;	cc1111rf.c:649: rfif &= ~( RFIF_IRQ_DONE | RFIF_IRQ_RXOVF | RFIF_IRQ_TIMEOUT );
	mov	r6,_rfif
	mov	a,#0x8F
	anl	a,r6
	mov	_rfif,a
	ljmp	00115$
00114$:
;	cc1111rf.c:655: if(rfRxProcessed[!rfRxCurrentBuffer] == RX_PROCESSED)
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r6,a
	cjne	a,#0x01,00155$
00155$:
	clr	a
	rlc	a
	add	a,#_rfRxProcessed
	mov	dpl,a
	clr	a
	addc	a,#(_rfRxProcessed >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00156$
	sjmp	00157$
00156$:
	ljmp	00111$
00157$:
;	cc1111rf.c:660: if(rfAESMode & AES_CRYPTO_IN_ENABLE)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r6,a
	jb	acc.1,00158$
	ljmp	00109$
00158$:
;	cc1111rf.c:662: if((PKTCTRL0 & PKTCTRL0_LENGTH_CONFIG) == PKTCTRL0_LENGTH_CONFIG_VAR)
	mov	dptr,#_PKTCTRL0
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x03
	cjne	r6,#0x01,00104$
;	cc1111rf.c:663: encoffset= 1;
	mov	_rfIntHandler_encoffset_1_136,#0x01
00104$:
;	cc1111rf.c:664: if((rfAESMode & AES_CRYPTO_IN_TYPE) == AES_CRYPTO_IN_ENCRYPT)
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x01
	cjne	r6,#0x01,00106$
;	cc1111rf.c:665: encAES(&rfrxbuf[rfRxCurrentBuffer][encoffset], &rfrxbuf[rfRxCurrentBuffer][encoffset], rfRxCounter[rfRxCurrentBuffer] - encoffset, (rfAESMode & AES_CRYPTO_MODE));
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	add	a,acc
	mov	r5,a
	clr	a
	add	a,#_rfrxbuf
	mov	r6,a
	mov	a,r5
	addc	a,#(_rfrxbuf >> 8)
	mov	r5,a
	mov	r3,_rfIntHandler_encoffset_1_136
	mov	r4,#0x00
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r5
	mov	r5,a
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r1,a
	add	a,r1
	mov	r2,a
	clr	a
	add	a,#_rfrxbuf
	mov	r1,a
	mov	a,r2
	addc	a,#(_rfrxbuf >> 8)
	mov	r2,a
	mov	a,r3
	add	a,r1
	mov	r3,a
	mov	a,r4
	addc	a,r2
	mov	r4,a
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_rfRxCounter
	mov	dpl,a
	mov	a,#(_rfRxCounter >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r0,_rfIntHandler_encoffset_1_136
	mov	r7,#0x00
	mov	a,r1
	clr	c
	subb	a,r0
	mov	r1,a
	mov	a,r2
	subb	a,r7
	mov	r2,a
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0xF0
	mov	dptr,#_encAES_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_encAES_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_encAES_PARM_4
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r5
	lcall	_encAES
	sjmp	00109$
00106$:
;	cc1111rf.c:667: decAES(&rfrxbuf[rfRxCurrentBuffer][encoffset], &rfrxbuf[rfRxCurrentBuffer][encoffset], rfRxCounter[rfRxCurrentBuffer] - encoffset, (rfAESMode & AES_CRYPTO_MODE));
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
	mov	r4,_rfIntHandler_encoffset_1_136
	mov	r5,#0x00
	mov	a,r4
	add	a,r7
	mov	r7,a
	mov	a,r5
	addc	a,r6
	mov	r6,a
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	add	a,acc
	mov	r2,a
	clr	a
	add	a,#_rfrxbuf
	mov	r3,a
	mov	a,r2
	addc	a,#(_rfrxbuf >> 8)
	mov	r2,a
	mov	a,r4
	add	a,r3
	mov	r4,a
	mov	a,r5
	addc	a,r2
	mov	r5,a
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_rfRxCounter
	mov	dpl,a
	mov	a,#(_rfRxCounter >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,_rfIntHandler_encoffset_1_136
	mov	r1,#0x00
	mov	a,r2
	clr	c
	subb	a,r0
	mov	r2,a
	mov	a,r3
	subb	a,r1
	mov	r3,a
	mov	dptr,#_rfAESMode
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0xF0
	mov	dptr,#_decAES_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_decAES_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_decAES_PARM_4
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	_decAES
00109$:
;	cc1111rf.c:671: rfRxCurrentBuffer ^= 1;
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	xrl	a,#0x01
	movx	@dptr,a
;	cc1111rf.c:672: rfRxCounter[rfRxCurrentBuffer] = 0;
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x02
	mul	ab
	add	a,#_rfRxCounter
	mov	dpl,a
	mov	a,#(_rfRxCounter >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:674: rfRxProcessed[FIRST_BUFFER] = RX_UNPROCESSED;
	mov	dptr,#_rfRxProcessed
;	cc1111rf.c:675: rfRxProcessed[SECOND_BUFFER] = RX_UNPROCESSED;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rfRxProcessed + 0x0001)
	movx	@dptr,a
	sjmp	00112$
00111$:
;	cc1111rf.c:692: lastCode[1] = LCE_DROPPED_PACKET;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x12
	movx	@dptr,a
;	cc1111rf.c:693: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _rfIntHandler_sloc0_1_0,c
	mov	_P2_4,c
;	cc1111rf.c:694: rfRxCounter[rfRxCurrentBuffer] = 0;
	mov	dptr,#_rfRxCurrentBuffer
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x02
	mul	ab
	add	a,#_rfRxCounter
	mov	dpl,a
	mov	a,#(_rfRxCounter >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:695: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _rfIntHandler_sloc0_1_0,c
	mov	_P2_4,c
00112$:
;	cc1111rf.c:698: LED = 0;
	clr	_P2_4
00115$:
;	cc1111rf.c:700: RFIF &= ~(RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT);        // OVF needs to be handled next...
	mov	r7,_RFIF
	mov	a,#0xCF
	anl	a,r7
	mov	_RFIF,a
00117$:
;	cc1111rf.c:704: if(RFIF & RFIF_IRQ_RXOVF)
	mov	a,_RFIF
	jnb	acc.6,00119$
;	cc1111rf.c:709: lastCode[1] = LCE_RF_RXOVF;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x10
	movx	@dptr,a
;	cc1111rf.c:710: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _rfIntHandler_sloc0_1_0,c
	mov	_P2_4,c
;	cc1111rf.c:712: resetRFSTATE();
	lcall	_resetRFSTATE
;	cc1111rf.c:714: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _rfIntHandler_sloc0_1_0,c
	mov	_P2_4,c
;	cc1111rf.c:715: RFIF &= ~RFIF_IRQ_RXOVF;
	mov	r7,_RFIF
	mov	a,#0xBF
	anl	a,r7
	mov	_RFIF,a
00119$:
;	cc1111rf.c:718: if(RFIF & RFIF_IRQ_TXUNF)
	mov	a,_RFIF
	jnb	acc.7,00122$
;	cc1111rf.c:721: lastCode[1] = LCE_RF_TXUNF;
	mov	dptr,#(_lastCode + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
;	cc1111rf.c:722: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _rfIntHandler_sloc0_1_0,c
	mov	_P2_4,c
;	cc1111rf.c:724: resetRFSTATE();
	lcall	_resetRFSTATE
;	cc1111rf.c:726: LED = !LED;
	mov	c,_P2_4
	cpl	c
	mov  _rfIntHandler_sloc0_1_0,c
	mov	_P2_4,c
;	cc1111rf.c:728: RFIF &= ~RFIF_IRQ_TXUNF;
	mov	r7,_RFIF
	mov	a,#0x7F
	anl	a,r7
	mov	_RFIF,a
00122$:
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
;Allocation info for local variables in function 'byte_shuffle'
;------------------------------------------------------------
;len                       Allocated with name '_byte_shuffle_PARM_2'
;offset                    Allocated with name '_byte_shuffle_PARM_3'
;buf                       Allocated with name '_byte_shuffle_buf_1_146'
;------------------------------------------------------------
;	cc1111rf.c:733: void byte_shuffle(__xdata u8* __xdata buf, __xdata u16 len, __xdata u16 offset)
;	-----------------------------------------
;	 function byte_shuffle
;	-----------------------------------------
_byte_shuffle:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_byte_shuffle_buf_1_146
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111rf.c:735: while(len--)
	mov	dptr,#_byte_shuffle_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_byte_shuffle_buf_1_146
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_byte_shuffle_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00101$:
	mov	ar0,r2
	mov	ar1,r3
	dec	r2
	cjne	r2,#0xFF,00113$
	dec	r3
00113$:
	mov	a,r0
	orl	a,r1
	jz	00104$
;	cc1111rf.c:736: buf[len + offset] = buf[len];
	mov	a,r6
	add	a,r2
	mov	r0,a
	mov	a,r7
	addc	a,r3
	mov	r1,a
	mov	a,r0
	add	a,r4
	mov	r0,a
	mov	a,r1
	addc	a,r5
	mov	r1,a
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	push	ar6
	push	ar7
	movx	a,@dptr
	mov	dpl,r0
	mov	dph,r1
	movx	@dptr,a
	pop	ar7
	pop	ar6
	sjmp	00101$
00104$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__rfRxInfMode:
	.db #0x00	; 0
__xinit__rfRxTotalRXLen:
	.byte #0x00,#0x00	; 0
__xinit__rfRxLargeLen:
	.byte #0x00,#0x00	; 0
__xinit__rfTxCurBufIdx:
	.db #0x00	; 0
__xinit__rfTxBufCount:
	.db #0x01	; 1
__xinit__rfTxCounter:
	.byte #0x00,#0x00	; 0
__xinit__rfTxRepeatCounter:
	.byte #0x00,#0x00	; 0
__xinit__rfTxBufferEnd:
	.byte #0x00,#0x00	; 0
__xinit__rfTxRepeatLen:
	.byte #0x00,#0x00	; 0
__xinit__rfTxRepeatOffset:
	.byte #0x00,#0x00	; 0
__xinit__rfTxTotalTXLen:
	.byte #0x00,#0x00	; 0
__xinit__rfTxInfMode:
	.db #0x00	; 0
__xinit__rfAESMode:
	.db #0x00	; 0
__xinit__rfAmpMode:
	.db #0x00	; 0
__xinit__bRepeatMode:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
