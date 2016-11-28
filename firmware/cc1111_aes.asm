;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Fri Nov 18 22:30:59 2016
;--------------------------------------------------------
	.module cc1111_aes
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _getDMA
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
	.globl _doAES_PARM_5
	.globl _doAES_PARM_4
	.globl _doAES_PARM_3
	.globl _doAES_PARM_2
	.globl _decAES_PARM_4
	.globl _decAES_PARM_3
	.globl _decAES_PARM_2
	.globl _encAES_PARM_4
	.globl _encAES_PARM_3
	.globl _encAES_PARM_2
	.globl _padAES_PARM_2
	.globl _setAES_PARM_3
	.globl _setAES_PARM_2
	.globl _aesdmaarmo
	.globl _aesdmachano
	.globl _aesdmaarmi
	.globl _aesdmachani
	.globl _aesdmao
	.globl _aesdmai
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
	.globl _initAES
	.globl _setAES
	.globl _padAES
	.globl _encAES
	.globl _decAES
	.globl _doAES
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_doAES_sloc0_1_0:
	.ds 2
_doAES_sloc1_1_0:
	.ds 2
_doAES_sloc2_1_0:
	.ds 1
_doAES_sloc3_1_0:
	.ds 1
_doAES_sloc4_1_0:
	.ds 2
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
_aesdmai::
	.ds 2
_aesdmao::
	.ds 2
_aesdmachani::
	.ds 1
_aesdmaarmi::
	.ds 1
_aesdmachano::
	.ds 1
_aesdmaarmo::
	.ds 1
_setAES_PARM_2:
	.ds 1
_setAES_PARM_3:
	.ds 1
_setAES_buf_1_56:
	.ds 2
_padAES_PARM_2:
	.ds 2
_padAES_buf_1_58:
	.ds 2
_encAES_PARM_2:
	.ds 2
_encAES_PARM_3:
	.ds 2
_encAES_PARM_4:
	.ds 1
_encAES_inbuf_1_60:
	.ds 2
_decAES_PARM_2:
	.ds 2
_decAES_PARM_3:
	.ds 2
_decAES_PARM_4:
	.ds 1
_decAES_inbuf_1_62:
	.ds 2
_doAES_PARM_2:
	.ds 2
_doAES_PARM_3:
	.ds 2
_doAES_PARM_4:
	.ds 1
_doAES_PARM_5:
	.ds 1
_doAES_inbuf_1_64:
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
;Allocation info for local variables in function 'initAES'
;------------------------------------------------------------
;	cc1111_aes.c:13: void initAES(void)
;	-----------------------------------------
;	 function initAES
;	-----------------------------------------
_initAES:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	cc1111_aes.c:18: aesdmachani= getDMA();                    // allocate a DMA channel
	lcall	_getDMA
	mov	r7,dpl
	mov	dptr,#_aesdmachani
	mov	a,r7
	movx	@dptr,a
;	cc1111_aes.c:19: aesdmaarmi= (DMAARM0 << aesdmachani);     // pre-calculate arming bit
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	mov	dptr,#_aesdmaarmi
	movx	@dptr,a
;	cc1111_aes.c:20: aesdmai= &dma_configs[aesdmachani];       // point our DMA descriptor at allocated channel descriptor
	mov	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_dma_configs
	mov	r6,a
	mov	a,#(_dma_configs >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_aesdmai
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111_aes.c:21: aesdmai->destAddrH = 0xdf;                // ENCDI == 0xdfb1 - AES Input SFR
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	mov	a,#0xDF
	movx	@dptr,a
;	cc1111_aes.c:22: aesdmai->destAddrL = 0xb1;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,#0xB1
	movx	@dptr,a
;	cc1111_aes.c:23: aesdmai->lenL = 16;                       // always 128 bit operations
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,#0x10
	movx	@dptr,a
;	cc1111_aes.c:24: aesdmai->trig = DMA_CFG0_TRIGGER_ENC_DW;  // trigger when co-processor requests data
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xE0
	orl	a,#0x1D
	movx	@dptr,a
;	cc1111_aes.c:25: aesdmai->srcInc = 1;
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	a,#0x3F
	orl	a,#0x40
	movx	@dptr,a
;	cc1111_aes.c:26: aesdmai->priority = 1;
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xFC
	orl	a,#0x01
	movx	@dptr,a
;	cc1111_aes.c:29: aesdmachano= getDMA();
	lcall	_getDMA
	mov	r7,dpl
	mov	dptr,#_aesdmachano
	mov	a,r7
	movx	@dptr,a
;	cc1111_aes.c:30: aesdmaarmo= (DMAARM0 << aesdmachano);
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00108$
00106$:
	add	a,acc
00108$:
	djnz	b,00106$
	mov	dptr,#_aesdmaarmo
	movx	@dptr,a
;	cc1111_aes.c:31: aesdmao= &dma_configs[aesdmachano];
	mov	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_dma_configs
	mov	r6,a
	mov	a,#(_dma_configs >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_aesdmao
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111_aes.c:32: aesdmao->srcAddrH = 0xdf;                 // ENCDO == 0xdfb2 - AES Output SFR
	mov	dpl,r6
	mov	dph,r7
	mov	a,#0xDF
	movx	@dptr,a
;	cc1111_aes.c:33: aesdmao->srcAddrL = 0xb2;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	a,#0xB2
	movx	@dptr,a
;	cc1111_aes.c:34: aesdmao->lenL = 16;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,#0x10
	movx	@dptr,a
;	cc1111_aes.c:35: aesdmao->trig = DMA_CFG0_TRIGGER_DNC_UP;  // trigger when co-processor signals upload ready
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xE0
	orl	a,#0x1E
	movx	@dptr,a
;	cc1111_aes.c:36: aesdmao->destInc = 1;
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xCF
	orl	a,#0x10
	movx	@dptr,a
;	cc1111_aes.c:37: aesdmao->priority = 1;
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xFC
	orl	a,#0x01
	movx	@dptr,a
;	cc1111_aes.c:40: IP0 |= BIT4;
	orl	_IP0,#0x10
;	cc1111_aes.c:41: IP1 |= BIT4;
	orl	_IP1,#0x10
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setAES'
;------------------------------------------------------------
;command                   Allocated with name '_setAES_PARM_2'
;mode                      Allocated with name '_setAES_PARM_3'
;buf                       Allocated with name '_setAES_buf_1_56'
;------------------------------------------------------------
;	cc1111_aes.c:45: void setAES(__xdata u8* __xdata buf, __xdata u8 command, __xdata u8 mode)
;	-----------------------------------------
;	 function setAES
;	-----------------------------------------
_setAES:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_setAES_buf_1_56
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111_aes.c:48: while(!(ENCCS & ENCCS_RDY))
00101$:
	mov	a,_ENCCS
	jnb	acc.3,00101$
;	cc1111_aes.c:52: aesdmai->srcAddrH = (u8) ((u16) buf >> 8);
	mov	dptr,#_aesdmai
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_setAES_buf_1_56
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	mov	ar2,r3
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
;	cc1111_aes.c:53: aesdmai->srcAddrL = (u8) ((u16) buf & 0xff);
	mov	dptr,#_aesdmai
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	r5,#0x00
	mov	a,r4
	movx	@dptr,a
;	cc1111_aes.c:54: DMAARM |= aesdmaarmi;
	mov	dptr,#_aesdmaarmi
	movx	a,@dptr
	orl	_DMAARM,a
;	cc1111_aes.c:55: NOP();
; nop; 
;	cc1111_aes.c:58: ENCCS = mode | command | ENCCS_ST;
	mov	dptr,#_setAES_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_setAES_PARM_3
	movx	a,@dptr
	mov	r6,a
	orl	a,r7
	orl	a,#0x01
	mov	_ENCCS,a
;	cc1111_aes.c:61: while(!(ENCCS & ENCCS_RDY))
00104$:
	mov	a,_ENCCS
	jnb	acc.3,00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'padAES'
;------------------------------------------------------------
;len                       Allocated with name '_padAES_PARM_2'
;buf                       Allocated with name '_padAES_buf_1_58'
;------------------------------------------------------------
;	cc1111_aes.c:67: __xdata u16 padAES(__xdata u8* __xdata buf, __xdata u16 len)
;	-----------------------------------------
;	 function padAES
;	-----------------------------------------
_padAES:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_padAES_buf_1_58
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111_aes.c:69: while(len % 16)
	mov	dptr,#_padAES_buf_1_58
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_padAES_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00101$:
	mov	a,r4
	anl	a,#0x0F
	jz	00103$
;	cc1111_aes.c:70: buf[len++]= '\0';
	mov	ar2,r4
	mov	ar3,r5
	inc	r4
	cjne	r4,#0x00,00114$
	inc	r5
00114$:
	mov	a,r2
	add	a,r6
	mov	dpl,a
	mov	a,r3
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	sjmp	00101$
00103$:
;	cc1111_aes.c:72: return len;
	mov	dpl,r4
	mov	dph,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'encAES'
;------------------------------------------------------------
;outbuf                    Allocated with name '_encAES_PARM_2'
;len                       Allocated with name '_encAES_PARM_3'
;mode                      Allocated with name '_encAES_PARM_4'
;inbuf                     Allocated with name '_encAES_inbuf_1_60'
;------------------------------------------------------------
;	cc1111_aes.c:76: void encAES(__xdata u8* __xdata inbuf, __xdata u8* __xdata outbuf, __xdata u16 len, __xdata u8 mode)
;	-----------------------------------------
;	 function encAES
;	-----------------------------------------
_encAES:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_encAES_inbuf_1_60
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111_aes.c:78: doAES(inbuf, outbuf, len, ENCCS_CMD_ENC, mode);
	mov	dptr,#_encAES_inbuf_1_60
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_encAES_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_encAES_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_encAES_PARM_4
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_doAES_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_doAES_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_doAES_PARM_4
	clr	a
	movx	@dptr,a
	mov	dptr,#_doAES_PARM_5
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	_doAES
;------------------------------------------------------------
;Allocation info for local variables in function 'decAES'
;------------------------------------------------------------
;outbuf                    Allocated with name '_decAES_PARM_2'
;len                       Allocated with name '_decAES_PARM_3'
;mode                      Allocated with name '_decAES_PARM_4'
;inbuf                     Allocated with name '_decAES_inbuf_1_62'
;------------------------------------------------------------
;	cc1111_aes.c:82: void decAES(__xdata u8* __xdata inbuf, __xdata u8* __xdata outbuf, __xdata u16 len, __xdata u8 mode)
;	-----------------------------------------
;	 function decAES
;	-----------------------------------------
_decAES:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_decAES_inbuf_1_62
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111_aes.c:84: doAES(inbuf, outbuf, len, ENCCS_CMD_DEC, mode);
	mov	dptr,#_decAES_inbuf_1_62
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_decAES_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_decAES_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_decAES_PARM_4
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_doAES_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_doAES_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_doAES_PARM_4
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_doAES_PARM_5
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	_doAES
;------------------------------------------------------------
;Allocation info for local variables in function 'doAES'
;------------------------------------------------------------
;outbuf                    Allocated with name '_doAES_PARM_2'
;len                       Allocated with name '_doAES_PARM_3'
;command                   Allocated with name '_doAES_PARM_4'
;mode                      Allocated with name '_doAES_PARM_5'
;inbuf                     Allocated with name '_doAES_inbuf_1_64'
;bufp                      Allocated with name '_doAES_bufp_1_65'
;sloc0                     Allocated with name '_doAES_sloc0_1_0'
;sloc1                     Allocated with name '_doAES_sloc1_1_0'
;sloc2                     Allocated with name '_doAES_sloc2_1_0'
;sloc3                     Allocated with name '_doAES_sloc3_1_0'
;sloc4                     Allocated with name '_doAES_sloc4_1_0'
;------------------------------------------------------------
;	cc1111_aes.c:88: void doAES(__xdata u8* __xdata inbuf, __xdata u8* __xdata outbuf, __xdata u16 len, __xdata u8 command, __xdata u8 mode)
;	-----------------------------------------
;	 function doAES
;	-----------------------------------------
_doAES:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_doAES_inbuf_1_64
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cc1111_aes.c:93: while(!(ENCCS & ENCCS_RDY))
00101$:
	mov	a,_ENCCS
	jnb	acc.3,00101$
;	cc1111_aes.c:96: for(bufp= 0 ; bufp < len ; bufp += 16)
	mov	dptr,#_doAES_inbuf_1_64
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_doAES_PARM_2
	movx	a,@dptr
	mov	_doAES_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_doAES_sloc4_1_0 + 1),a
	mov	dptr,#_doAES_PARM_5
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x50
	anl	a,r3
	mov	_doAES_sloc3_1_0,a
	mov	dptr,#_doAES_PARM_4
	movx	a,@dptr
	mov	r1,a
	orl	a,r3
	orl	a,#0x01
	mov	r3,a
	mov	a,#0x01
	orl	a,r1
	mov	_doAES_sloc2_1_0,a
	mov	dptr,#_doAES_PARM_3
	movx	a,@dptr
	mov	_doAES_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_doAES_sloc0_1_0 + 1),a
	clr	a
	mov	_doAES_sloc1_1_0,a
	mov	(_doAES_sloc1_1_0 + 1),a
00113$:
	clr	c
	mov	a,_doAES_sloc1_1_0
	subb	a,_doAES_sloc0_1_0
	mov	a,(_doAES_sloc1_1_0 + 1)
	subb	a,(_doAES_sloc0_1_0 + 1)
	jc	00143$
	ret
00143$:
;	cc1111_aes.c:99: aesdmai->srcAddrH = (u8) ((u16) (inbuf + bufp) >> 8);
	push	ar3
	mov	dptr,#_aesdmai
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_doAES_sloc1_1_0
	add	a,r6
	mov	r1,a
	mov	a,(_doAES_sloc1_1_0 + 1)
	addc	a,r7
	mov	r2,a
	mov	ar4,r1
	mov	ar5,r2
	mov	ar4,r5
	mov	dpl,r0
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
;	cc1111_aes.c:100: aesdmai->srcAddrL = (u8) ((u16) (inbuf + bufp) & 0xff);
	mov	dptr,#_aesdmai
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	cc1111_aes.c:101: aesdmao->destAddrH = (u8) ((u16) (outbuf + bufp) >> 8);
	mov	dptr,#_aesdmao
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	mov	a,_doAES_sloc1_1_0
	add	a,_doAES_sloc4_1_0
	mov	r4,a
	mov	a,(_doAES_sloc1_1_0 + 1)
	addc	a,(_doAES_sloc4_1_0 + 1)
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	mov	ar2,r3
	mov	a,r2
	movx	@dptr,a
;	cc1111_aes.c:102: aesdmao->destAddrL = (u8) ((u16) (outbuf + bufp) & 0xff);
	mov	dptr,#_aesdmao
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	cc1111_aes.c:103: DMAARM |= (aesdmaarmi | aesdmaarmo);
	mov	dptr,#_aesdmaarmo
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_aesdmaarmi
	movx	a,@dptr
	mov	r4,a
	orl	a,r5
	orl	_DMAARM,a
;	cc1111_aes.c:104: NOP(); NOP();
; nop; 
; nop; 
;	cc1111_aes.c:114: if((mode & ENCCS_MODE_CBCMAC) && bufp == len - 16)
	pop	ar3
	mov	a,_doAES_sloc3_1_0
	jz	00105$
	mov	a,_doAES_sloc0_1_0
	add	a,#0xF0
	mov	r4,a
	mov	a,(_doAES_sloc0_1_0 + 1)
	addc	a,#0xFF
	mov	r5,a
	mov	a,r4
	cjne	a,_doAES_sloc1_1_0,00105$
	mov	a,r5
	cjne	a,(_doAES_sloc1_1_0 + 1),00105$
;	cc1111_aes.c:115: ENCCS = ENCCS_MODE_CBC | command | ENCCS_ST;
	mov	_ENCCS,_doAES_sloc2_1_0
	sjmp	00108$
00105$:
;	cc1111_aes.c:117: ENCCS = mode | command | ENCCS_ST;
	mov	_ENCCS,r3
;	cc1111_aes.c:120: while(!(ENCCS & ENCCS_RDY))
00108$:
	mov	a,_ENCCS
	jnb	acc.3,00108$
;	cc1111_aes.c:96: for(bufp= 0 ; bufp < len ; bufp += 16)
	mov	a,#0x10
	add	a,_doAES_sloc1_1_0
	mov	_doAES_sloc1_1_0,a
	clr	a
	addc	a,(_doAES_sloc1_1_0 + 1)
	mov	(_doAES_sloc1_1_0 + 1),a
	ljmp	00113$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
