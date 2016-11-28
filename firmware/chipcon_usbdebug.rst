                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
                                      4 ; This file was generated Fri Nov 18 22:31:00 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module chipcon_usbdebug
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _txdata
                                     13 	.globl _USBIF
                                     14 	.globl _MODE
                                     15 	.globl _RE
                                     16 	.globl _SLAVE
                                     17 	.globl _FE
                                     18 	.globl _ERR
                                     19 	.globl _RX_BYTE
                                     20 	.globl _TX_BYTE
                                     21 	.globl _ACTIVE
                                     22 	.globl _B_7
                                     23 	.globl _B_6
                                     24 	.globl _B_5
                                     25 	.globl _B_4
                                     26 	.globl _B_3
                                     27 	.globl _B_2
                                     28 	.globl _B_1
                                     29 	.globl _B_0
                                     30 	.globl _WDTIF
                                     31 	.globl _P1IF
                                     32 	.globl _UTX1IF
                                     33 	.globl _UTX0IF
                                     34 	.globl _P2IF
                                     35 	.globl _ACC_7
                                     36 	.globl _ACC_6
                                     37 	.globl _ACC_5
                                     38 	.globl _ACC_4
                                     39 	.globl _ACC_3
                                     40 	.globl _ACC_2
                                     41 	.globl _ACC_1
                                     42 	.globl _ACC_0
                                     43 	.globl _OVFIM
                                     44 	.globl _T4CH1IF
                                     45 	.globl _T4CH0IF
                                     46 	.globl _T4OVFIF
                                     47 	.globl _T3CH1IF
                                     48 	.globl _T3CH0IF
                                     49 	.globl _T3OVFIF
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _STIF
                                     59 	.globl _P0IF
                                     60 	.globl _T4IF
                                     61 	.globl _T3IF
                                     62 	.globl _T2IF
                                     63 	.globl _T1IF
                                     64 	.globl _DMAIF
                                     65 	.globl _P0IE
                                     66 	.globl _T4IE
                                     67 	.globl _T3IE
                                     68 	.globl _T2IE
                                     69 	.globl _T1IE
                                     70 	.globl _DMAIE
                                     71 	.globl _EA
                                     72 	.globl _STIE
                                     73 	.globl _ENCIE
                                     74 	.globl _URX1IE
                                     75 	.globl _URX0IE
                                     76 	.globl _ADCIE
                                     77 	.globl _RFTXRXIE
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _ENCIF_1
                                     87 	.globl _ENCIF_0
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _URX1IF
                                     97 	.globl _ADCIF
                                     98 	.globl _URX0IF
                                     99 	.globl _IT1
                                    100 	.globl _RFTXRXIF
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _P2DIR
                                    111 	.globl _P1DIR
                                    112 	.globl _P0DIR
                                    113 	.globl _U1GCR
                                    114 	.globl _U1UCR
                                    115 	.globl _U1BAUD
                                    116 	.globl _U1DBUF
                                    117 	.globl _U1CSR
                                    118 	.globl _P2INP
                                    119 	.globl _P1INP
                                    120 	.globl _P2SEL
                                    121 	.globl _P1SEL
                                    122 	.globl _P0SEL
                                    123 	.globl _ADCCFG
                                    124 	.globl _PERCFG
                                    125 	.globl _B
                                    126 	.globl _T4CC1
                                    127 	.globl _T4CCTL1
                                    128 	.globl _T4CC0
                                    129 	.globl _T4CCTL0
                                    130 	.globl _T4CTL
                                    131 	.globl _T4CNT
                                    132 	.globl _RFIF
                                    133 	.globl _IRCON2
                                    134 	.globl _T1CCTL2
                                    135 	.globl _T1CCTL1
                                    136 	.globl _T1CCTL0
                                    137 	.globl _T1CTL
                                    138 	.globl _T1CNTH
                                    139 	.globl _T1CNTL
                                    140 	.globl _RFST
                                    141 	.globl _ACC
                                    142 	.globl _T1CC2H
                                    143 	.globl _T1CC2L
                                    144 	.globl _T1CC1H
                                    145 	.globl _T1CC1L
                                    146 	.globl _T1CC0H
                                    147 	.globl _T1CC0L
                                    148 	.globl _RFD
                                    149 	.globl _TIMIF
                                    150 	.globl _DMAREQ
                                    151 	.globl _DMAARM
                                    152 	.globl _DMA0CFGH
                                    153 	.globl _DMA0CFGL
                                    154 	.globl _DMA1CFGH
                                    155 	.globl _DMA1CFGL
                                    156 	.globl _DMAIRQ
                                    157 	.globl _PSW
                                    158 	.globl _T3CC1
                                    159 	.globl _T3CCTL1
                                    160 	.globl _T3CC0
                                    161 	.globl _T3CCTL0
                                    162 	.globl _T3CTL
                                    163 	.globl _T3CNT
                                    164 	.globl _WDCTL
                                    165 	.globl __SFRC8
                                    166 	.globl _MEMCTR
                                    167 	.globl _CLKCON
                                    168 	.globl _U0GCR
                                    169 	.globl _U0UCR
                                    170 	.globl __SFRC3
                                    171 	.globl _U0BAUD
                                    172 	.globl _U0DBUF
                                    173 	.globl _IRCON
                                    174 	.globl __SFRBF
                                    175 	.globl _SLEEP
                                    176 	.globl _RNDH
                                    177 	.globl _RNDL
                                    178 	.globl _ADCH
                                    179 	.globl _ADCL
                                    180 	.globl _IP1
                                    181 	.globl _IEN1
                                    182 	.globl __SFRB7
                                    183 	.globl _ADCCON3
                                    184 	.globl _ADCCON2
                                    185 	.globl _ADCCON1
                                    186 	.globl _ENCCS
                                    187 	.globl _ENCDO
                                    188 	.globl _ENCDI
                                    189 	.globl __SFRB0
                                    190 	.globl _FWDATA
                                    191 	.globl _FCTL
                                    192 	.globl _FADDRH
                                    193 	.globl _FADDRL
                                    194 	.globl _FWT
                                    195 	.globl __SFRAA
                                    196 	.globl _IP0
                                    197 	.globl _IEN0
                                    198 	.globl __SFRA7
                                    199 	.globl _WORTIME1
                                    200 	.globl _WORTIME0
                                    201 	.globl _WOREVT1
                                    202 	.globl _WOREVT0
                                    203 	.globl _WORCTRL
                                    204 	.globl _WORIRQ
                                    205 	.globl _P2
                                    206 	.globl __SFR9F
                                    207 	.globl _T2CTL
                                    208 	.globl _T2PR
                                    209 	.globl _T2CT
                                    210 	.globl _S1CON
                                    211 	.globl _IEN2
                                    212 	.globl __SFR99
                                    213 	.globl _S0CON
                                    214 	.globl __SFR97
                                    215 	.globl __SFR96
                                    216 	.globl __SFR95
                                    217 	.globl __SFR94
                                    218 	.globl __XPAGE
                                    219 	.globl _MPAGE
                                    220 	.globl _DPS
                                    221 	.globl _RFIM
                                    222 	.globl _P1
                                    223 	.globl _P0INP
                                    224 	.globl __SFR8E
                                    225 	.globl _P1IEN
                                    226 	.globl _PICTL
                                    227 	.globl _P2IFG
                                    228 	.globl _P1IFG
                                    229 	.globl _P0IFG
                                    230 	.globl _TCON
                                    231 	.globl _PCON
                                    232 	.globl _U0CSR
                                    233 	.globl _DPH1
                                    234 	.globl _DPL1
                                    235 	.globl _DPH0
                                    236 	.globl _DPL0
                                    237 	.globl _SP
                                    238 	.globl _P0
                                    239 	.globl _USBF5
                                    240 	.globl _USBF4
                                    241 	.globl _USBF3
                                    242 	.globl _USBF2
                                    243 	.globl _USBF1
                                    244 	.globl _USBF0
                                    245 	.globl _USBCNTH
                                    246 	.globl _USBCNTL
                                    247 	.globl _USBCNT0
                                    248 	.globl _USBCSOH
                                    249 	.globl _USBCSOL
                                    250 	.globl _USBMAXO
                                    251 	.globl _USBCSIH
                                    252 	.globl _USBCSIL
                                    253 	.globl _USBCS0
                                    254 	.globl _USBMAXI
                                    255 	.globl _USBINDEX
                                    256 	.globl _USBFRMH
                                    257 	.globl _USBFRML
                                    258 	.globl _USBCIE
                                    259 	.globl _USBOIE
                                    260 	.globl _USBIIE
                                    261 	.globl _USBCIF
                                    262 	.globl _USBOIF
                                    263 	.globl _USBIIF
                                    264 	.globl _USBPOW
                                    265 	.globl _USBADDR
                                    266 	.globl _X_P2DIR
                                    267 	.globl _X_P1DIR
                                    268 	.globl _X_P0DIR
                                    269 	.globl _X_U1GCR
                                    270 	.globl _X_U1UCR
                                    271 	.globl _X_U1BAUD
                                    272 	.globl _X_U1DBUF
                                    273 	.globl _X_U1CSR
                                    274 	.globl _X_P2INP
                                    275 	.globl _X_P1INP
                                    276 	.globl _X_P2SEL
                                    277 	.globl _X_P1SEL
                                    278 	.globl _X_P0SEL
                                    279 	.globl _X_ADCCFG
                                    280 	.globl _X_PERCFG
                                    281 	.globl __NA_B
                                    282 	.globl _X_T4CC1
                                    283 	.globl _X_T4CCTL1
                                    284 	.globl _X_T4CC0
                                    285 	.globl _X_T4CCTL0
                                    286 	.globl _X_T4CTL
                                    287 	.globl _X_T4CNT
                                    288 	.globl _X_RFIF
                                    289 	.globl __NA_IRCON2
                                    290 	.globl _X_T1CCTL2
                                    291 	.globl _X_T1CCTL1
                                    292 	.globl _X_T1CCTL0
                                    293 	.globl _X_T1CTL
                                    294 	.globl _X_T1CNTH
                                    295 	.globl _X_T1CNTL
                                    296 	.globl _X_RFST
                                    297 	.globl __NA_ACC
                                    298 	.globl _X_T1CC2H
                                    299 	.globl _X_T1CC2L
                                    300 	.globl _X_T1CC1H
                                    301 	.globl _X_T1CC1L
                                    302 	.globl _X_T1CC0H
                                    303 	.globl _X_T1CC0L
                                    304 	.globl _X_RFD
                                    305 	.globl _X_TIMIF
                                    306 	.globl _X_DMAREQ
                                    307 	.globl _X_DMAARM
                                    308 	.globl _X_DMA0CFGH
                                    309 	.globl _X_DMA0CFGL
                                    310 	.globl _X_DMA1CFGH
                                    311 	.globl _X_DMA1CFGL
                                    312 	.globl _X_DMAIRQ
                                    313 	.globl __NA_PSW
                                    314 	.globl _X_T3CC1
                                    315 	.globl _X_T3CCTL1
                                    316 	.globl _X_T3CC0
                                    317 	.globl _X_T3CCTL0
                                    318 	.globl _X_T3CTL
                                    319 	.globl _X_T3CNT
                                    320 	.globl _X_WDCTL
                                    321 	.globl __X_SFRC8
                                    322 	.globl _X_MEMCTR
                                    323 	.globl _X_CLKCON
                                    324 	.globl _X_U0GCR
                                    325 	.globl _X_U0UCR
                                    326 	.globl __X_SFRC3
                                    327 	.globl _X_U0BAUD
                                    328 	.globl _X_U0DBUF
                                    329 	.globl __NA_IRCON
                                    330 	.globl __X_SFRBF
                                    331 	.globl _X_SLEEP
                                    332 	.globl _X_RNDH
                                    333 	.globl _X_RNDL
                                    334 	.globl _X_ADCH
                                    335 	.globl _X_ADCL
                                    336 	.globl __NA_IP1
                                    337 	.globl __NA_IEN1
                                    338 	.globl __X_SFRB7
                                    339 	.globl _X_ADCCON3
                                    340 	.globl _X_ADCCON2
                                    341 	.globl _X_ADCCON1
                                    342 	.globl _X_ENCCS
                                    343 	.globl _X_ENCDO
                                    344 	.globl _X_ENCDI
                                    345 	.globl __X_SFRB0
                                    346 	.globl _X_FWDATA
                                    347 	.globl _X_FCTL
                                    348 	.globl _X_FADDRH
                                    349 	.globl _X_FADDRL
                                    350 	.globl _X_FWT
                                    351 	.globl __X_SFRAA
                                    352 	.globl __NA_IP0
                                    353 	.globl __NA_IEN0
                                    354 	.globl __X_SFRA7
                                    355 	.globl _X_WORTIME1
                                    356 	.globl _X_WORTIME0
                                    357 	.globl _X_WOREVT1
                                    358 	.globl _X_WOREVT0
                                    359 	.globl _X_WORCTRL
                                    360 	.globl _X_WORIRQ
                                    361 	.globl __NA_P2
                                    362 	.globl __X_SFR9F
                                    363 	.globl _X_T2CTL
                                    364 	.globl _X_T2PR
                                    365 	.globl _X_T2CT
                                    366 	.globl __NA_S1CON
                                    367 	.globl __NA_IEN2
                                    368 	.globl __X_SFR99
                                    369 	.globl __NA_S0CON
                                    370 	.globl __X_SFR97
                                    371 	.globl __X_SFR96
                                    372 	.globl __X_SFR95
                                    373 	.globl __X_SFR94
                                    374 	.globl _X_MPAGE
                                    375 	.globl __NA_DPS
                                    376 	.globl _X_RFIM
                                    377 	.globl __NA_P1
                                    378 	.globl _X_P0INP
                                    379 	.globl __X_SFR8E
                                    380 	.globl _X_P1IEN
                                    381 	.globl _X_PICTL
                                    382 	.globl _X_P2IFG
                                    383 	.globl _X_P1IFG
                                    384 	.globl _X_P0IFG
                                    385 	.globl __NA_TCON
                                    386 	.globl __NA_PCON
                                    387 	.globl _X_U0CSR
                                    388 	.globl __NA_DPH1
                                    389 	.globl __NA_DPL1
                                    390 	.globl __NA_DPH0
                                    391 	.globl __NA_DPL0
                                    392 	.globl __NA_SP
                                    393 	.globl __NA_P0
                                    394 	.globl _I2SCLKF2
                                    395 	.globl _I2SCLKF1
                                    396 	.globl _I2SCLKF0
                                    397 	.globl _I2SSTAT
                                    398 	.globl _I2SWCNT
                                    399 	.globl _I2SDATH
                                    400 	.globl _I2SDATL
                                    401 	.globl _I2SCFG1
                                    402 	.globl _I2SCFG0
                                    403 	.globl _VCO_VC_DAC
                                    404 	.globl _PKTSTATUS
                                    405 	.globl _MARCSTATE
                                    406 	.globl _RSSI
                                    407 	.globl _LQI
                                    408 	.globl _FREQEST
                                    409 	.globl _VERSION
                                    410 	.globl _PARTNUM
                                    411 	.globl __XREGDF35
                                    412 	.globl __XREGDF34
                                    413 	.globl __XREGDF33
                                    414 	.globl __XREGDF32
                                    415 	.globl _IOCFG0
                                    416 	.globl _IOCFG1
                                    417 	.globl _IOCFG2
                                    418 	.globl _PA_TABLE0
                                    419 	.globl _PA_TABLE1
                                    420 	.globl _PA_TABLE2
                                    421 	.globl _PA_TABLE3
                                    422 	.globl _PA_TABLE4
                                    423 	.globl _PA_TABLE5
                                    424 	.globl _PA_TABLE6
                                    425 	.globl _PA_TABLE7
                                    426 	.globl __XREGDF26
                                    427 	.globl _TEST0
                                    428 	.globl _TEST1
                                    429 	.globl _TEST2
                                    430 	.globl __XREGDF22
                                    431 	.globl __XREGDF21
                                    432 	.globl __XREGDF20
                                    433 	.globl _FSCAL0
                                    434 	.globl _FSCAL1
                                    435 	.globl _FSCAL2
                                    436 	.globl _FSCAL3
                                    437 	.globl _FREND0
                                    438 	.globl _FREND1
                                    439 	.globl _AGCCTRL0
                                    440 	.globl _AGCCTRL1
                                    441 	.globl _AGCCTRL2
                                    442 	.globl _BSCFG
                                    443 	.globl _FOCCFG
                                    444 	.globl _MCSM0
                                    445 	.globl _MCSM1
                                    446 	.globl _MCSM2
                                    447 	.globl _DEVIATN
                                    448 	.globl _MDMCFG0
                                    449 	.globl _MDMCFG1
                                    450 	.globl _MDMCFG2
                                    451 	.globl _MDMCFG3
                                    452 	.globl _MDMCFG4
                                    453 	.globl _FREQ0
                                    454 	.globl _FREQ1
                                    455 	.globl _FREQ2
                                    456 	.globl _FSCTRL0
                                    457 	.globl _FSCTRL1
                                    458 	.globl _CHANNR
                                    459 	.globl _ADDR
                                    460 	.globl _PKTCTRL0
                                    461 	.globl _PKTCTRL1
                                    462 	.globl _PKTLEN
                                    463 	.globl _SYNC0
                                    464 	.globl _SYNC1
                                    465 	.globl _MDMCTRL0H
                                    466 	.globl _debugx
                                    467 	.globl _debug
                                    468 	.globl _debughex
                                    469 	.globl _debughex16
                                    470 	.globl _debughex32
                                    471 ;--------------------------------------------------------
                                    472 ; special function registers
                                    473 ;--------------------------------------------------------
                                    474 	.area RSEG    (ABS,DATA)
      000000                        475 	.org 0x0000
                           000080   476 _P0	=	0x0080
                           000081   477 _SP	=	0x0081
                           000082   478 _DPL0	=	0x0082
                           000083   479 _DPH0	=	0x0083
                           000084   480 _DPL1	=	0x0084
                           000085   481 _DPH1	=	0x0085
                           000086   482 _U0CSR	=	0x0086
                           000087   483 _PCON	=	0x0087
                           000088   484 _TCON	=	0x0088
                           000089   485 _P0IFG	=	0x0089
                           00008A   486 _P1IFG	=	0x008a
                           00008B   487 _P2IFG	=	0x008b
                           00008C   488 _PICTL	=	0x008c
                           00008D   489 _P1IEN	=	0x008d
                           00008E   490 __SFR8E	=	0x008e
                           00008F   491 _P0INP	=	0x008f
                           000090   492 _P1	=	0x0090
                           000091   493 _RFIM	=	0x0091
                           000092   494 _DPS	=	0x0092
                           000093   495 _MPAGE	=	0x0093
                           000093   496 __XPAGE	=	0x0093
                           000094   497 __SFR94	=	0x0094
                           000095   498 __SFR95	=	0x0095
                           000096   499 __SFR96	=	0x0096
                           000097   500 __SFR97	=	0x0097
                           000098   501 _S0CON	=	0x0098
                           000099   502 __SFR99	=	0x0099
                           00009A   503 _IEN2	=	0x009a
                           00009B   504 _S1CON	=	0x009b
                           00009C   505 _T2CT	=	0x009c
                           00009D   506 _T2PR	=	0x009d
                           00009E   507 _T2CTL	=	0x009e
                           00009F   508 __SFR9F	=	0x009f
                           0000A0   509 _P2	=	0x00a0
                           0000A1   510 _WORIRQ	=	0x00a1
                           0000A2   511 _WORCTRL	=	0x00a2
                           0000A3   512 _WOREVT0	=	0x00a3
                           0000A4   513 _WOREVT1	=	0x00a4
                           0000A5   514 _WORTIME0	=	0x00a5
                           0000A6   515 _WORTIME1	=	0x00a6
                           0000A7   516 __SFRA7	=	0x00a7
                           0000A8   517 _IEN0	=	0x00a8
                           0000A9   518 _IP0	=	0x00a9
                           0000AA   519 __SFRAA	=	0x00aa
                           0000AB   520 _FWT	=	0x00ab
                           0000AC   521 _FADDRL	=	0x00ac
                           0000AD   522 _FADDRH	=	0x00ad
                           0000AE   523 _FCTL	=	0x00ae
                           0000AF   524 _FWDATA	=	0x00af
                           0000B0   525 __SFRB0	=	0x00b0
                           0000B1   526 _ENCDI	=	0x00b1
                           0000B2   527 _ENCDO	=	0x00b2
                           0000B3   528 _ENCCS	=	0x00b3
                           0000B4   529 _ADCCON1	=	0x00b4
                           0000B5   530 _ADCCON2	=	0x00b5
                           0000B6   531 _ADCCON3	=	0x00b6
                           0000B7   532 __SFRB7	=	0x00b7
                           0000B8   533 _IEN1	=	0x00b8
                           0000B9   534 _IP1	=	0x00b9
                           0000BA   535 _ADCL	=	0x00ba
                           0000BB   536 _ADCH	=	0x00bb
                           0000BC   537 _RNDL	=	0x00bc
                           0000BD   538 _RNDH	=	0x00bd
                           0000BE   539 _SLEEP	=	0x00be
                           0000BF   540 __SFRBF	=	0x00bf
                           0000C0   541 _IRCON	=	0x00c0
                           0000C1   542 _U0DBUF	=	0x00c1
                           0000C2   543 _U0BAUD	=	0x00c2
                           0000C3   544 __SFRC3	=	0x00c3
                           0000C4   545 _U0UCR	=	0x00c4
                           0000C5   546 _U0GCR	=	0x00c5
                           0000C6   547 _CLKCON	=	0x00c6
                           0000C7   548 _MEMCTR	=	0x00c7
                           0000C8   549 __SFRC8	=	0x00c8
                           0000C9   550 _WDCTL	=	0x00c9
                           0000CA   551 _T3CNT	=	0x00ca
                           0000CB   552 _T3CTL	=	0x00cb
                           0000CC   553 _T3CCTL0	=	0x00cc
                           0000CD   554 _T3CC0	=	0x00cd
                           0000CE   555 _T3CCTL1	=	0x00ce
                           0000CF   556 _T3CC1	=	0x00cf
                           0000D0   557 _PSW	=	0x00d0
                           0000D1   558 _DMAIRQ	=	0x00d1
                           0000D2   559 _DMA1CFGL	=	0x00d2
                           0000D3   560 _DMA1CFGH	=	0x00d3
                           0000D4   561 _DMA0CFGL	=	0x00d4
                           0000D5   562 _DMA0CFGH	=	0x00d5
                           0000D6   563 _DMAARM	=	0x00d6
                           0000D7   564 _DMAREQ	=	0x00d7
                           0000D8   565 _TIMIF	=	0x00d8
                           0000D9   566 _RFD	=	0x00d9
                           0000DA   567 _T1CC0L	=	0x00da
                           0000DB   568 _T1CC0H	=	0x00db
                           0000DC   569 _T1CC1L	=	0x00dc
                           0000DD   570 _T1CC1H	=	0x00dd
                           0000DE   571 _T1CC2L	=	0x00de
                           0000DF   572 _T1CC2H	=	0x00df
                           0000E0   573 _ACC	=	0x00e0
                           0000E1   574 _RFST	=	0x00e1
                           0000E2   575 _T1CNTL	=	0x00e2
                           0000E3   576 _T1CNTH	=	0x00e3
                           0000E4   577 _T1CTL	=	0x00e4
                           0000E5   578 _T1CCTL0	=	0x00e5
                           0000E6   579 _T1CCTL1	=	0x00e6
                           0000E7   580 _T1CCTL2	=	0x00e7
                           0000E8   581 _IRCON2	=	0x00e8
                           0000E9   582 _RFIF	=	0x00e9
                           0000EA   583 _T4CNT	=	0x00ea
                           0000EB   584 _T4CTL	=	0x00eb
                           0000EC   585 _T4CCTL0	=	0x00ec
                           0000ED   586 _T4CC0	=	0x00ed
                           0000EE   587 _T4CCTL1	=	0x00ee
                           0000EF   588 _T4CC1	=	0x00ef
                           0000F0   589 _B	=	0x00f0
                           0000F1   590 _PERCFG	=	0x00f1
                           0000F2   591 _ADCCFG	=	0x00f2
                           0000F3   592 _P0SEL	=	0x00f3
                           0000F4   593 _P1SEL	=	0x00f4
                           0000F5   594 _P2SEL	=	0x00f5
                           0000F6   595 _P1INP	=	0x00f6
                           0000F7   596 _P2INP	=	0x00f7
                           0000F8   597 _U1CSR	=	0x00f8
                           0000F9   598 _U1DBUF	=	0x00f9
                           0000FA   599 _U1BAUD	=	0x00fa
                           0000FB   600 _U1UCR	=	0x00fb
                           0000FC   601 _U1GCR	=	0x00fc
                           0000FD   602 _P0DIR	=	0x00fd
                           0000FE   603 _P1DIR	=	0x00fe
                           0000FF   604 _P2DIR	=	0x00ff
                                    605 ;--------------------------------------------------------
                                    606 ; special function bits
                                    607 ;--------------------------------------------------------
                                    608 	.area RSEG    (ABS,DATA)
      000000                        609 	.org 0x0000
                           000080   610 _P0_0	=	0x0080
                           000081   611 _P0_1	=	0x0081
                           000082   612 _P0_2	=	0x0082
                           000083   613 _P0_3	=	0x0083
                           000084   614 _P0_4	=	0x0084
                           000085   615 _P0_5	=	0x0085
                           000086   616 _P0_6	=	0x0086
                           000087   617 _P0_7	=	0x0087
                           000088   618 _IT0	=	0x0088
                           000089   619 _RFTXRXIF	=	0x0089
                           00008A   620 _IT1	=	0x008a
                           00008B   621 _URX0IF	=	0x008b
                           00008D   622 _ADCIF	=	0x008d
                           00008F   623 _URX1IF	=	0x008f
                           000090   624 _P1_0	=	0x0090
                           000091   625 _P1_1	=	0x0091
                           000092   626 _P1_2	=	0x0092
                           000093   627 _P1_3	=	0x0093
                           000094   628 _P1_4	=	0x0094
                           000095   629 _P1_5	=	0x0095
                           000096   630 _P1_6	=	0x0096
                           000097   631 _P1_7	=	0x0097
                           000098   632 _ENCIF_0	=	0x0098
                           000099   633 _ENCIF_1	=	0x0099
                           0000A0   634 _P2_0	=	0x00a0
                           0000A1   635 _P2_1	=	0x00a1
                           0000A2   636 _P2_2	=	0x00a2
                           0000A3   637 _P2_3	=	0x00a3
                           0000A4   638 _P2_4	=	0x00a4
                           0000A5   639 _P2_5	=	0x00a5
                           0000A6   640 _P2_6	=	0x00a6
                           0000A7   641 _P2_7	=	0x00a7
                           0000A8   642 _RFTXRXIE	=	0x00a8
                           0000A9   643 _ADCIE	=	0x00a9
                           0000AA   644 _URX0IE	=	0x00aa
                           0000AB   645 _URX1IE	=	0x00ab
                           0000AC   646 _ENCIE	=	0x00ac
                           0000AD   647 _STIE	=	0x00ad
                           0000AF   648 _EA	=	0x00af
                           0000B8   649 _DMAIE	=	0x00b8
                           0000B9   650 _T1IE	=	0x00b9
                           0000BA   651 _T2IE	=	0x00ba
                           0000BB   652 _T3IE	=	0x00bb
                           0000BC   653 _T4IE	=	0x00bc
                           0000BD   654 _P0IE	=	0x00bd
                           0000C0   655 _DMAIF	=	0x00c0
                           0000C1   656 _T1IF	=	0x00c1
                           0000C2   657 _T2IF	=	0x00c2
                           0000C3   658 _T3IF	=	0x00c3
                           0000C4   659 _T4IF	=	0x00c4
                           0000C5   660 _P0IF	=	0x00c5
                           0000C7   661 _STIF	=	0x00c7
                           0000D0   662 _P	=	0x00d0
                           0000D1   663 _F1	=	0x00d1
                           0000D2   664 _OV	=	0x00d2
                           0000D3   665 _RS0	=	0x00d3
                           0000D4   666 _RS1	=	0x00d4
                           0000D5   667 _F0	=	0x00d5
                           0000D6   668 _AC	=	0x00d6
                           0000D7   669 _CY	=	0x00d7
                           0000D8   670 _T3OVFIF	=	0x00d8
                           0000D9   671 _T3CH0IF	=	0x00d9
                           0000DA   672 _T3CH1IF	=	0x00da
                           0000DB   673 _T4OVFIF	=	0x00db
                           0000DC   674 _T4CH0IF	=	0x00dc
                           0000DD   675 _T4CH1IF	=	0x00dd
                           0000DE   676 _OVFIM	=	0x00de
                           0000E0   677 _ACC_0	=	0x00e0
                           0000E1   678 _ACC_1	=	0x00e1
                           0000E2   679 _ACC_2	=	0x00e2
                           0000E3   680 _ACC_3	=	0x00e3
                           0000E4   681 _ACC_4	=	0x00e4
                           0000E5   682 _ACC_5	=	0x00e5
                           0000E6   683 _ACC_6	=	0x00e6
                           0000E7   684 _ACC_7	=	0x00e7
                           0000E8   685 _P2IF	=	0x00e8
                           0000E9   686 _UTX0IF	=	0x00e9
                           0000EA   687 _UTX1IF	=	0x00ea
                           0000EB   688 _P1IF	=	0x00eb
                           0000EC   689 _WDTIF	=	0x00ec
                           0000F0   690 _B_0	=	0x00f0
                           0000F1   691 _B_1	=	0x00f1
                           0000F2   692 _B_2	=	0x00f2
                           0000F3   693 _B_3	=	0x00f3
                           0000F4   694 _B_4	=	0x00f4
                           0000F5   695 _B_5	=	0x00f5
                           0000F6   696 _B_6	=	0x00f6
                           0000F7   697 _B_7	=	0x00f7
                           0000F8   698 _ACTIVE	=	0x00f8
                           0000F9   699 _TX_BYTE	=	0x00f9
                           0000FA   700 _RX_BYTE	=	0x00fa
                           0000FB   701 _ERR	=	0x00fb
                           0000FC   702 _FE	=	0x00fc
                           0000FD   703 _SLAVE	=	0x00fd
                           0000FE   704 _RE	=	0x00fe
                           0000FF   705 _MODE	=	0x00ff
                           0000E8   706 _USBIF	=	0x00e8
                                    707 ;--------------------------------------------------------
                                    708 ; overlayable register banks
                                    709 ;--------------------------------------------------------
                                    710 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        711 	.ds 8
                                    712 ;--------------------------------------------------------
                                    713 ; internal ram data
                                    714 ;--------------------------------------------------------
                                    715 	.area DSEG    (DATA)
                                    716 ;--------------------------------------------------------
                                    717 ; overlayable items in internal ram 
                                    718 ;--------------------------------------------------------
                                    719 ;--------------------------------------------------------
                                    720 ; indirectly addressable internal ram data
                                    721 ;--------------------------------------------------------
                                    722 	.area ISEG    (DATA)
                                    723 ;--------------------------------------------------------
                                    724 ; absolute internal ram data
                                    725 ;--------------------------------------------------------
                                    726 	.area IABS    (ABS,DATA)
                                    727 	.area IABS    (ABS,DATA)
                                    728 ;--------------------------------------------------------
                                    729 ; bit data
                                    730 ;--------------------------------------------------------
                                    731 	.area BSEG    (BIT)
                                    732 ;--------------------------------------------------------
                                    733 ; paged external ram data
                                    734 ;--------------------------------------------------------
                                    735 	.area PSEG    (PAG,XDATA)
                                    736 ;--------------------------------------------------------
                                    737 ; external ram data
                                    738 ;--------------------------------------------------------
                                    739 	.area XSEG    (XDATA)
                           00DF02   740 _MDMCTRL0H	=	0xdf02
                           00DF00   741 _SYNC1	=	0xdf00
                           00DF01   742 _SYNC0	=	0xdf01
                           00DF02   743 _PKTLEN	=	0xdf02
                           00DF03   744 _PKTCTRL1	=	0xdf03
                           00DF04   745 _PKTCTRL0	=	0xdf04
                           00DF05   746 _ADDR	=	0xdf05
                           00DF06   747 _CHANNR	=	0xdf06
                           00DF07   748 _FSCTRL1	=	0xdf07
                           00DF08   749 _FSCTRL0	=	0xdf08
                           00DF09   750 _FREQ2	=	0xdf09
                           00DF0A   751 _FREQ1	=	0xdf0a
                           00DF0B   752 _FREQ0	=	0xdf0b
                           00DF0C   753 _MDMCFG4	=	0xdf0c
                           00DF0D   754 _MDMCFG3	=	0xdf0d
                           00DF0E   755 _MDMCFG2	=	0xdf0e
                           00DF0F   756 _MDMCFG1	=	0xdf0f
                           00DF10   757 _MDMCFG0	=	0xdf10
                           00DF11   758 _DEVIATN	=	0xdf11
                           00DF12   759 _MCSM2	=	0xdf12
                           00DF13   760 _MCSM1	=	0xdf13
                           00DF14   761 _MCSM0	=	0xdf14
                           00DF15   762 _FOCCFG	=	0xdf15
                           00DF16   763 _BSCFG	=	0xdf16
                           00DF17   764 _AGCCTRL2	=	0xdf17
                           00DF18   765 _AGCCTRL1	=	0xdf18
                           00DF19   766 _AGCCTRL0	=	0xdf19
                           00DF1A   767 _FREND1	=	0xdf1a
                           00DF1B   768 _FREND0	=	0xdf1b
                           00DF1C   769 _FSCAL3	=	0xdf1c
                           00DF1D   770 _FSCAL2	=	0xdf1d
                           00DF1E   771 _FSCAL1	=	0xdf1e
                           00DF1F   772 _FSCAL0	=	0xdf1f
                           00DF20   773 __XREGDF20	=	0xdf20
                           00DF21   774 __XREGDF21	=	0xdf21
                           00DF22   775 __XREGDF22	=	0xdf22
                           00DF23   776 _TEST2	=	0xdf23
                           00DF24   777 _TEST1	=	0xdf24
                           00DF25   778 _TEST0	=	0xdf25
                           00DF26   779 __XREGDF26	=	0xdf26
                           00DF27   780 _PA_TABLE7	=	0xdf27
                           00DF28   781 _PA_TABLE6	=	0xdf28
                           00DF29   782 _PA_TABLE5	=	0xdf29
                           00DF2A   783 _PA_TABLE4	=	0xdf2a
                           00DF2B   784 _PA_TABLE3	=	0xdf2b
                           00DF2C   785 _PA_TABLE2	=	0xdf2c
                           00DF2D   786 _PA_TABLE1	=	0xdf2d
                           00DF2E   787 _PA_TABLE0	=	0xdf2e
                           00DF2F   788 _IOCFG2	=	0xdf2f
                           00DF30   789 _IOCFG1	=	0xdf30
                           00DF31   790 _IOCFG0	=	0xdf31
                           00DF32   791 __XREGDF32	=	0xdf32
                           00DF33   792 __XREGDF33	=	0xdf33
                           00DF34   793 __XREGDF34	=	0xdf34
                           00DF35   794 __XREGDF35	=	0xdf35
                           00DF36   795 _PARTNUM	=	0xdf36
                           00DF37   796 _VERSION	=	0xdf37
                           00DF38   797 _FREQEST	=	0xdf38
                           00DF39   798 _LQI	=	0xdf39
                           00DF3A   799 _RSSI	=	0xdf3a
                           00DF3B   800 _MARCSTATE	=	0xdf3b
                           00DF3C   801 _PKTSTATUS	=	0xdf3c
                           00DF3D   802 _VCO_VC_DAC	=	0xdf3d
                           00DF40   803 _I2SCFG0	=	0xdf40
                           00DF41   804 _I2SCFG1	=	0xdf41
                           00DF42   805 _I2SDATL	=	0xdf42
                           00DF43   806 _I2SDATH	=	0xdf43
                           00DF44   807 _I2SWCNT	=	0xdf44
                           00DF45   808 _I2SSTAT	=	0xdf45
                           00DF46   809 _I2SCLKF0	=	0xdf46
                           00DF47   810 _I2SCLKF1	=	0xdf47
                           00DF48   811 _I2SCLKF2	=	0xdf48
                           00DF80   812 __NA_P0	=	0xdf80
                           00DF81   813 __NA_SP	=	0xdf81
                           00DF82   814 __NA_DPL0	=	0xdf82
                           00DF83   815 __NA_DPH0	=	0xdf83
                           00DF84   816 __NA_DPL1	=	0xdf84
                           00DF85   817 __NA_DPH1	=	0xdf85
                           00DF86   818 _X_U0CSR	=	0xdf86
                           00DF87   819 __NA_PCON	=	0xdf87
                           00DF88   820 __NA_TCON	=	0xdf88
                           00DF89   821 _X_P0IFG	=	0xdf89
                           00DF8A   822 _X_P1IFG	=	0xdf8a
                           00DF8B   823 _X_P2IFG	=	0xdf8b
                           00DF8C   824 _X_PICTL	=	0xdf8c
                           00DF8D   825 _X_P1IEN	=	0xdf8d
                           00DF8E   826 __X_SFR8E	=	0xdf8e
                           00DF8F   827 _X_P0INP	=	0xdf8f
                           00DF90   828 __NA_P1	=	0xdf90
                           00DF91   829 _X_RFIM	=	0xdf91
                           00DF92   830 __NA_DPS	=	0xdf92
                           00DF93   831 _X_MPAGE	=	0xdf93
                           00DF94   832 __X_SFR94	=	0xdf94
                           00DF95   833 __X_SFR95	=	0xdf95
                           00DF96   834 __X_SFR96	=	0xdf96
                           00DF97   835 __X_SFR97	=	0xdf97
                           00DF98   836 __NA_S0CON	=	0xdf98
                           00DF99   837 __X_SFR99	=	0xdf99
                           00DF9A   838 __NA_IEN2	=	0xdf9a
                           00DF9B   839 __NA_S1CON	=	0xdf9b
                           00DF9C   840 _X_T2CT	=	0xdf9c
                           00DF9D   841 _X_T2PR	=	0xdf9d
                           00DF9E   842 _X_T2CTL	=	0xdf9e
                           00DF9F   843 __X_SFR9F	=	0xdf9f
                           00DFA0   844 __NA_P2	=	0xdfa0
                           00DFA1   845 _X_WORIRQ	=	0xdfa1
                           00DFA2   846 _X_WORCTRL	=	0xdfa2
                           00DFA3   847 _X_WOREVT0	=	0xdfa3
                           00DFA4   848 _X_WOREVT1	=	0xdfa4
                           00DFA5   849 _X_WORTIME0	=	0xdfa5
                           00DFA6   850 _X_WORTIME1	=	0xdfa6
                           00DFA7   851 __X_SFRA7	=	0xdfa7
                           00DFA8   852 __NA_IEN0	=	0xdfa8
                           00DFA9   853 __NA_IP0	=	0xdfa9
                           00DFAA   854 __X_SFRAA	=	0xdfaa
                           00DFAB   855 _X_FWT	=	0xdfab
                           00DFAC   856 _X_FADDRL	=	0xdfac
                           00DFAD   857 _X_FADDRH	=	0xdfad
                           00DFAE   858 _X_FCTL	=	0xdfae
                           00DFAF   859 _X_FWDATA	=	0xdfaf
                           00DFB0   860 __X_SFRB0	=	0xdfb0
                           00DFB1   861 _X_ENCDI	=	0xdfb1
                           00DFB2   862 _X_ENCDO	=	0xdfb2
                           00DFB3   863 _X_ENCCS	=	0xdfb3
                           00DFB4   864 _X_ADCCON1	=	0xdfb4
                           00DFB5   865 _X_ADCCON2	=	0xdfb5
                           00DFB6   866 _X_ADCCON3	=	0xdfb6
                           00DFB7   867 __X_SFRB7	=	0xdfb7
                           00DFB8   868 __NA_IEN1	=	0xdfb8
                           00DFB9   869 __NA_IP1	=	0xdfb9
                           00DFBA   870 _X_ADCL	=	0xdfba
                           00DFBB   871 _X_ADCH	=	0xdfbb
                           00DFBC   872 _X_RNDL	=	0xdfbc
                           00DFBD   873 _X_RNDH	=	0xdfbd
                           00DFBE   874 _X_SLEEP	=	0xdfbe
                           00DFBF   875 __X_SFRBF	=	0xdfbf
                           00DFC0   876 __NA_IRCON	=	0xdfc0
                           00DFC1   877 _X_U0DBUF	=	0xdfc1
                           00DFC2   878 _X_U0BAUD	=	0xdfc2
                           00DFC3   879 __X_SFRC3	=	0xdfc3
                           00DFC4   880 _X_U0UCR	=	0xdfc4
                           00DFC5   881 _X_U0GCR	=	0xdfc5
                           00DFC6   882 _X_CLKCON	=	0xdfc6
                           00DFC7   883 _X_MEMCTR	=	0xdfc7
                           00DFC8   884 __X_SFRC8	=	0xdfc8
                           00DFC9   885 _X_WDCTL	=	0xdfc9
                           00DFCA   886 _X_T3CNT	=	0xdfca
                           00DFCB   887 _X_T3CTL	=	0xdfcb
                           00DFCC   888 _X_T3CCTL0	=	0xdfcc
                           00DFCD   889 _X_T3CC0	=	0xdfcd
                           00DFCE   890 _X_T3CCTL1	=	0xdfce
                           00DFCF   891 _X_T3CC1	=	0xdfcf
                           00DFD0   892 __NA_PSW	=	0xdfd0
                           00DFD1   893 _X_DMAIRQ	=	0xdfd1
                           00DFD2   894 _X_DMA1CFGL	=	0xdfd2
                           00DFD3   895 _X_DMA1CFGH	=	0xdfd3
                           00DFD4   896 _X_DMA0CFGL	=	0xdfd4
                           00DFD5   897 _X_DMA0CFGH	=	0xdfd5
                           00DFD6   898 _X_DMAARM	=	0xdfd6
                           00DFD7   899 _X_DMAREQ	=	0xdfd7
                           00DFD8   900 _X_TIMIF	=	0xdfd8
                           00DFD9   901 _X_RFD	=	0xdfd9
                           00DFDA   902 _X_T1CC0L	=	0xdfda
                           00DFDB   903 _X_T1CC0H	=	0xdfdb
                           00DFDC   904 _X_T1CC1L	=	0xdfdc
                           00DFDD   905 _X_T1CC1H	=	0xdfdd
                           00DFDE   906 _X_T1CC2L	=	0xdfde
                           00DFDF   907 _X_T1CC2H	=	0xdfdf
                           00DFE0   908 __NA_ACC	=	0xdfe0
                           00DFE1   909 _X_RFST	=	0xdfe1
                           00DFE2   910 _X_T1CNTL	=	0xdfe2
                           00DFE3   911 _X_T1CNTH	=	0xdfe3
                           00DFE4   912 _X_T1CTL	=	0xdfe4
                           00DFE5   913 _X_T1CCTL0	=	0xdfe5
                           00DFE6   914 _X_T1CCTL1	=	0xdfe6
                           00DFE7   915 _X_T1CCTL2	=	0xdfe7
                           00DFE8   916 __NA_IRCON2	=	0xdfe8
                           00DFE9   917 _X_RFIF	=	0xdfe9
                           00DFEA   918 _X_T4CNT	=	0xdfea
                           00DFEB   919 _X_T4CTL	=	0xdfeb
                           00DFEC   920 _X_T4CCTL0	=	0xdfec
                           00DFED   921 _X_T4CC0	=	0xdfed
                           00DFEE   922 _X_T4CCTL1	=	0xdfee
                           00DFEF   923 _X_T4CC1	=	0xdfef
                           00DFF0   924 __NA_B	=	0xdff0
                           00DFF1   925 _X_PERCFG	=	0xdff1
                           00DFF2   926 _X_ADCCFG	=	0xdff2
                           00DFF3   927 _X_P0SEL	=	0xdff3
                           00DFF4   928 _X_P1SEL	=	0xdff4
                           00DFF5   929 _X_P2SEL	=	0xdff5
                           00DFF6   930 _X_P1INP	=	0xdff6
                           00DFF7   931 _X_P2INP	=	0xdff7
                           00DFF8   932 _X_U1CSR	=	0xdff8
                           00DFF9   933 _X_U1DBUF	=	0xdff9
                           00DFFA   934 _X_U1BAUD	=	0xdffa
                           00DFFB   935 _X_U1UCR	=	0xdffb
                           00DFFC   936 _X_U1GCR	=	0xdffc
                           00DFFD   937 _X_P0DIR	=	0xdffd
                           00DFFE   938 _X_P1DIR	=	0xdffe
                           00DFFF   939 _X_P2DIR	=	0xdfff
                           00DE00   940 _USBADDR	=	0xde00
                           00DE01   941 _USBPOW	=	0xde01
                           00DE02   942 _USBIIF	=	0xde02
                           00DE04   943 _USBOIF	=	0xde04
                           00DE06   944 _USBCIF	=	0xde06
                           00DE07   945 _USBIIE	=	0xde07
                           00DE09   946 _USBOIE	=	0xde09
                           00DE0B   947 _USBCIE	=	0xde0b
                           00DE0C   948 _USBFRML	=	0xde0c
                           00DE0D   949 _USBFRMH	=	0xde0d
                           00DE0E   950 _USBINDEX	=	0xde0e
                           00DE10   951 _USBMAXI	=	0xde10
                           00DE11   952 _USBCS0	=	0xde11
                           00DE11   953 _USBCSIL	=	0xde11
                           00DE12   954 _USBCSIH	=	0xde12
                           00DE13   955 _USBMAXO	=	0xde13
                           00DE14   956 _USBCSOL	=	0xde14
                           00DE15   957 _USBCSOH	=	0xde15
                           00DE16   958 _USBCNT0	=	0xde16
                           00DE16   959 _USBCNTL	=	0xde16
                           00DE17   960 _USBCNTH	=	0xde17
                           00DE20   961 _USBF0	=	0xde20
                           00DE22   962 _USBF1	=	0xde22
                           00DE24   963 _USBF2	=	0xde24
                           00DE26   964 _USBF3	=	0xde26
                           00DE28   965 _USBF4	=	0xde28
                           00DE2A   966 _USBF5	=	0xde2a
      00F741                        967 _debugx_text_1_48:
      00F741                        968 	.ds 2
      00F743                        969 _debug_text_1_50:
      00F743                        970 	.ds 2
      00F745                        971 _debughex_num_1_52:
      00F745                        972 	.ds 1
      00F746                        973 _debughex16_num_1_54:
      00F746                        974 	.ds 2
      00F748                        975 _debughex32_num_1_56:
      00F748                        976 	.ds 4
                                    977 ;--------------------------------------------------------
                                    978 ; absolute external ram data
                                    979 ;--------------------------------------------------------
                                    980 	.area XABS    (ABS,XDATA)
                                    981 ;--------------------------------------------------------
                                    982 ; external initialized ram data
                                    983 ;--------------------------------------------------------
                                    984 	.area XISEG   (XDATA)
                                    985 	.area HOME    (CODE)
                                    986 	.area GSINIT0 (CODE)
                                    987 	.area GSINIT1 (CODE)
                                    988 	.area GSINIT2 (CODE)
                                    989 	.area GSINIT3 (CODE)
                                    990 	.area GSINIT4 (CODE)
                                    991 	.area GSINIT5 (CODE)
                                    992 	.area GSINIT  (CODE)
                                    993 	.area GSFINAL (CODE)
                                    994 	.area CSEG    (CODE)
                                    995 ;--------------------------------------------------------
                                    996 ; global & static initialisations
                                    997 ;--------------------------------------------------------
                                    998 	.area HOME    (CODE)
                                    999 	.area GSINIT  (CODE)
                                   1000 	.area GSFINAL (CODE)
                                   1001 	.area GSINIT  (CODE)
                                   1002 ;--------------------------------------------------------
                                   1003 ; Home
                                   1004 ;--------------------------------------------------------
                                   1005 	.area HOME    (CODE)
                                   1006 	.area HOME    (CODE)
                                   1007 ;--------------------------------------------------------
                                   1008 ; code
                                   1009 ;--------------------------------------------------------
                                   1010 	.area CSEG    (CODE)
                                   1011 ;------------------------------------------------------------
                                   1012 ;Allocation info for local variables in function 'debugx'
                                   1013 ;------------------------------------------------------------
                                   1014 ;len                       Allocated to registers r4 r5 
                                   1015 ;text                      Allocated with name '_debugx_text_1_48'
                                   1016 ;ptr                       Allocated with name '_debugx_ptr_1_49'
                                   1017 ;------------------------------------------------------------
                                   1018 ;	chipcon_usbdebug.c:7: void debugx(__xdata u8* __xdata  text)
                                   1019 ;	-----------------------------------------
                                   1020 ;	 function debugx
                                   1021 ;	-----------------------------------------
      0011EA                       1022 _debugx:
                           000007  1023 	ar7 = 0x07
                           000006  1024 	ar6 = 0x06
                           000005  1025 	ar5 = 0x05
                           000004  1026 	ar4 = 0x04
                           000003  1027 	ar3 = 0x03
                           000002  1028 	ar2 = 0x02
                           000001  1029 	ar1 = 0x01
                           000000  1030 	ar0 = 0x00
      0011EA AF 83            [24] 1031 	mov	r7,dph
      0011EC E5 82            [12] 1032 	mov	a,dpl
      0011EE 90 F7 41         [24] 1033 	mov	dptr,#_debugx_text_1_48
      0011F1 F0               [24] 1034 	movx	@dptr,a
      0011F2 EF               [12] 1035 	mov	a,r7
      0011F3 A3               [24] 1036 	inc	dptr
      0011F4 F0               [24] 1037 	movx	@dptr,a
                                   1038 ;	chipcon_usbdebug.c:10: __xdata u8* __xdata  ptr = text;
      0011F5 90 F7 41         [24] 1039 	mov	dptr,#_debugx_text_1_48
      0011F8 E0               [24] 1040 	movx	a,@dptr
      0011F9 FE               [12] 1041 	mov	r6,a
      0011FA A3               [24] 1042 	inc	dptr
      0011FB E0               [24] 1043 	movx	a,@dptr
      0011FC FF               [12] 1044 	mov	r7,a
                                   1045 ;	chipcon_usbdebug.c:11: while (*ptr++ != 0)
      0011FD 7C 00            [12] 1046 	mov	r4,#0x00
      0011FF 7D 00            [12] 1047 	mov	r5,#0x00
      001201 8E 02            [24] 1048 	mov	ar2,r6
      001203 8F 03            [24] 1049 	mov	ar3,r7
      001205                       1050 00101$:
      001205 8A 82            [24] 1051 	mov	dpl,r2
      001207 8B 83            [24] 1052 	mov	dph,r3
      001209 E0               [24] 1053 	movx	a,@dptr
      00120A F9               [12] 1054 	mov	r1,a
      00120B A3               [24] 1055 	inc	dptr
      00120C AA 82            [24] 1056 	mov	r2,dpl
      00120E AB 83            [24] 1057 	mov	r3,dph
      001210 E9               [12] 1058 	mov	a,r1
      001211 60 07            [24] 1059 	jz	00103$
                                   1060 ;	chipcon_usbdebug.c:12: len ++;
      001213 0C               [12] 1061 	inc	r4
      001214 BC 00 EE         [24] 1062 	cjne	r4,#0x00,00101$
      001217 0D               [12] 1063 	inc	r5
      001218 80 EB            [24] 1064 	sjmp	00101$
      00121A                       1065 00103$:
                                   1066 ;	chipcon_usbdebug.c:13: txdata(0xfe, 0xf0, len, (__xdata u8*)text);
      00121A 75 12 F0         [24] 1067 	mov	_txdata_PARM_2,#0xF0
      00121D 8C 13            [24] 1068 	mov	_txdata_PARM_3,r4
      00121F 8D 14            [24] 1069 	mov	(_txdata_PARM_3 + 1),r5
      001221 8E 15            [24] 1070 	mov	_txdata_PARM_4,r6
      001223 8F 16            [24] 1071 	mov	(_txdata_PARM_4 + 1),r7
      001225 75 82 FE         [24] 1072 	mov	dpl,#0xFE
      001228 02 11 C1         [24] 1073 	ljmp	_txdata
                                   1074 ;------------------------------------------------------------
                                   1075 ;Allocation info for local variables in function 'debug'
                                   1076 ;------------------------------------------------------------
                                   1077 ;len                       Allocated to registers r4 r5 
                                   1078 ;text                      Allocated with name '_debug_text_1_50'
                                   1079 ;ptr                       Allocated with name '_debug_ptr_1_51'
                                   1080 ;------------------------------------------------------------
                                   1081 ;	chipcon_usbdebug.c:16: void debug(__code u8* __xdata  text)
                                   1082 ;	-----------------------------------------
                                   1083 ;	 function debug
                                   1084 ;	-----------------------------------------
      00122B                       1085 _debug:
      00122B AF 83            [24] 1086 	mov	r7,dph
      00122D E5 82            [12] 1087 	mov	a,dpl
      00122F 90 F7 43         [24] 1088 	mov	dptr,#_debug_text_1_50
      001232 F0               [24] 1089 	movx	@dptr,a
      001233 EF               [12] 1090 	mov	a,r7
      001234 A3               [24] 1091 	inc	dptr
      001235 F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	chipcon_usbdebug.c:19: __code u8* __xdata  ptr = text;
      001236 90 F7 43         [24] 1094 	mov	dptr,#_debug_text_1_50
      001239 E0               [24] 1095 	movx	a,@dptr
      00123A FE               [12] 1096 	mov	r6,a
      00123B A3               [24] 1097 	inc	dptr
      00123C E0               [24] 1098 	movx	a,@dptr
      00123D FF               [12] 1099 	mov	r7,a
                                   1100 ;	chipcon_usbdebug.c:20: while (*ptr++ != 0)
      00123E 7C 00            [12] 1101 	mov	r4,#0x00
      001240 7D 00            [12] 1102 	mov	r5,#0x00
      001242 8E 02            [24] 1103 	mov	ar2,r6
      001244 8F 03            [24] 1104 	mov	ar3,r7
      001246                       1105 00101$:
      001246 8A 82            [24] 1106 	mov	dpl,r2
      001248 8B 83            [24] 1107 	mov	dph,r3
      00124A E4               [12] 1108 	clr	a
      00124B 93               [24] 1109 	movc	a,@a+dptr
      00124C F9               [12] 1110 	mov	r1,a
      00124D A3               [24] 1111 	inc	dptr
      00124E AA 82            [24] 1112 	mov	r2,dpl
      001250 AB 83            [24] 1113 	mov	r3,dph
      001252 E9               [12] 1114 	mov	a,r1
      001253 60 07            [24] 1115 	jz	00103$
                                   1116 ;	chipcon_usbdebug.c:21: len ++;
      001255 0C               [12] 1117 	inc	r4
      001256 BC 00 ED         [24] 1118 	cjne	r4,#0x00,00101$
      001259 0D               [12] 1119 	inc	r5
      00125A 80 EA            [24] 1120 	sjmp	00101$
      00125C                       1121 00103$:
                                   1122 ;	chipcon_usbdebug.c:22: txdata(0xfe, 0xf0, len, (__xdata u8*)text);
      00125C 8E 15            [24] 1123 	mov	_txdata_PARM_4,r6
      00125E 8F 16            [24] 1124 	mov	(_txdata_PARM_4 + 1),r7
      001260 75 12 F0         [24] 1125 	mov	_txdata_PARM_2,#0xF0
      001263 8C 13            [24] 1126 	mov	_txdata_PARM_3,r4
      001265 8D 14            [24] 1127 	mov	(_txdata_PARM_3 + 1),r5
      001267 75 82 FE         [24] 1128 	mov	dpl,#0xFE
      00126A 02 11 C1         [24] 1129 	ljmp	_txdata
                                   1130 ;------------------------------------------------------------
                                   1131 ;Allocation info for local variables in function 'debughex'
                                   1132 ;------------------------------------------------------------
                                   1133 ;num                       Allocated with name '_debughex_num_1_52'
                                   1134 ;------------------------------------------------------------
                                   1135 ;	chipcon_usbdebug.c:25: void debughex(__xdata u8 num)
                                   1136 ;	-----------------------------------------
                                   1137 ;	 function debughex
                                   1138 ;	-----------------------------------------
      00126D                       1139 _debughex:
      00126D E5 82            [12] 1140 	mov	a,dpl
      00126F 90 F7 45         [24] 1141 	mov	dptr,#_debughex_num_1_52
      001272 F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	chipcon_usbdebug.c:27: txdata(0xfe, DEBUG_CMD_HEX, 1, (__xdata u8*)&num);
      001273 75 15 45         [24] 1144 	mov	_txdata_PARM_4,#_debughex_num_1_52
      001276 75 16 F7         [24] 1145 	mov	(_txdata_PARM_4 + 1),#(_debughex_num_1_52 >> 8)
      001279 75 12 F1         [24] 1146 	mov	_txdata_PARM_2,#0xF1
      00127C 75 13 01         [24] 1147 	mov	_txdata_PARM_3,#0x01
      00127F 75 14 00         [24] 1148 	mov	(_txdata_PARM_3 + 1),#0x00
      001282 75 82 FE         [24] 1149 	mov	dpl,#0xFE
      001285 02 11 C1         [24] 1150 	ljmp	_txdata
                                   1151 ;------------------------------------------------------------
                                   1152 ;Allocation info for local variables in function 'debughex16'
                                   1153 ;------------------------------------------------------------
                                   1154 ;num                       Allocated with name '_debughex16_num_1_54'
                                   1155 ;------------------------------------------------------------
                                   1156 ;	chipcon_usbdebug.c:30: void debughex16(__xdata u16 num)
                                   1157 ;	-----------------------------------------
                                   1158 ;	 function debughex16
                                   1159 ;	-----------------------------------------
      001288                       1160 _debughex16:
      001288 AF 83            [24] 1161 	mov	r7,dph
      00128A E5 82            [12] 1162 	mov	a,dpl
      00128C 90 F7 46         [24] 1163 	mov	dptr,#_debughex16_num_1_54
      00128F F0               [24] 1164 	movx	@dptr,a
      001290 EF               [12] 1165 	mov	a,r7
      001291 A3               [24] 1166 	inc	dptr
      001292 F0               [24] 1167 	movx	@dptr,a
                                   1168 ;	chipcon_usbdebug.c:32: txdata(0xfe, DEBUG_CMD_HEX16, 2, (__xdata u8*)&num);
      001293 75 15 46         [24] 1169 	mov	_txdata_PARM_4,#_debughex16_num_1_54
      001296 75 16 F7         [24] 1170 	mov	(_txdata_PARM_4 + 1),#(_debughex16_num_1_54 >> 8)
      001299 75 12 F2         [24] 1171 	mov	_txdata_PARM_2,#0xF2
      00129C 75 13 02         [24] 1172 	mov	_txdata_PARM_3,#0x02
      00129F 75 14 00         [24] 1173 	mov	(_txdata_PARM_3 + 1),#0x00
      0012A2 75 82 FE         [24] 1174 	mov	dpl,#0xFE
      0012A5 02 11 C1         [24] 1175 	ljmp	_txdata
                                   1176 ;------------------------------------------------------------
                                   1177 ;Allocation info for local variables in function 'debughex32'
                                   1178 ;------------------------------------------------------------
                                   1179 ;num                       Allocated with name '_debughex32_num_1_56'
                                   1180 ;------------------------------------------------------------
                                   1181 ;	chipcon_usbdebug.c:35: void debughex32(__xdata u32 num)
                                   1182 ;	-----------------------------------------
                                   1183 ;	 function debughex32
                                   1184 ;	-----------------------------------------
      0012A8                       1185 _debughex32:
      0012A8 AF 82            [24] 1186 	mov	r7,dpl
      0012AA AE 83            [24] 1187 	mov	r6,dph
      0012AC AD F0            [24] 1188 	mov	r5,b
      0012AE FC               [12] 1189 	mov	r4,a
      0012AF 90 F7 48         [24] 1190 	mov	dptr,#_debughex32_num_1_56
      0012B2 EF               [12] 1191 	mov	a,r7
      0012B3 F0               [24] 1192 	movx	@dptr,a
      0012B4 EE               [12] 1193 	mov	a,r6
      0012B5 A3               [24] 1194 	inc	dptr
      0012B6 F0               [24] 1195 	movx	@dptr,a
      0012B7 ED               [12] 1196 	mov	a,r5
      0012B8 A3               [24] 1197 	inc	dptr
      0012B9 F0               [24] 1198 	movx	@dptr,a
      0012BA EC               [12] 1199 	mov	a,r4
      0012BB A3               [24] 1200 	inc	dptr
      0012BC F0               [24] 1201 	movx	@dptr,a
                                   1202 ;	chipcon_usbdebug.c:37: txdata(0xfe, DEBUG_CMD_HEX32, 4, (__xdata u8*)&num);
      0012BD 75 15 48         [24] 1203 	mov	_txdata_PARM_4,#_debughex32_num_1_56
      0012C0 75 16 F7         [24] 1204 	mov	(_txdata_PARM_4 + 1),#(_debughex32_num_1_56 >> 8)
      0012C3 75 12 F3         [24] 1205 	mov	_txdata_PARM_2,#0xF3
      0012C6 75 13 04         [24] 1206 	mov	_txdata_PARM_3,#0x04
      0012C9 75 14 00         [24] 1207 	mov	(_txdata_PARM_3 + 1),#0x00
      0012CC 75 82 FE         [24] 1208 	mov	dpl,#0xFE
      0012CF 02 11 C1         [24] 1209 	ljmp	_txdata
                                   1210 	.area CSEG    (CODE)
                                   1211 	.area CONST   (CODE)
                                   1212 	.area XINIT   (CODE)
                                   1213 	.area CABS    (ABS,CODE)
