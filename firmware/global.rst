                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
                                      4 ; This file was generated Wed Nov 30 16:38:12 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module global
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _strncmp_PARM_3
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
                                    239 	.globl _strncmp_PARM_2
                                    240 	.globl _clock
                                    241 	.globl _lastCode
                                    242 	.globl _USBF5
                                    243 	.globl _USBF4
                                    244 	.globl _USBF3
                                    245 	.globl _USBF2
                                    246 	.globl _USBF1
                                    247 	.globl _USBF0
                                    248 	.globl _USBCNTH
                                    249 	.globl _USBCNTL
                                    250 	.globl _USBCNT0
                                    251 	.globl _USBCSOH
                                    252 	.globl _USBCSOL
                                    253 	.globl _USBMAXO
                                    254 	.globl _USBCSIH
                                    255 	.globl _USBCSIL
                                    256 	.globl _USBCS0
                                    257 	.globl _USBMAXI
                                    258 	.globl _USBINDEX
                                    259 	.globl _USBFRMH
                                    260 	.globl _USBFRML
                                    261 	.globl _USBCIE
                                    262 	.globl _USBOIE
                                    263 	.globl _USBIIE
                                    264 	.globl _USBCIF
                                    265 	.globl _USBOIF
                                    266 	.globl _USBIIF
                                    267 	.globl _USBPOW
                                    268 	.globl _USBADDR
                                    269 	.globl _X_P2DIR
                                    270 	.globl _X_P1DIR
                                    271 	.globl _X_P0DIR
                                    272 	.globl _X_U1GCR
                                    273 	.globl _X_U1UCR
                                    274 	.globl _X_U1BAUD
                                    275 	.globl _X_U1DBUF
                                    276 	.globl _X_U1CSR
                                    277 	.globl _X_P2INP
                                    278 	.globl _X_P1INP
                                    279 	.globl _X_P2SEL
                                    280 	.globl _X_P1SEL
                                    281 	.globl _X_P0SEL
                                    282 	.globl _X_ADCCFG
                                    283 	.globl _X_PERCFG
                                    284 	.globl __NA_B
                                    285 	.globl _X_T4CC1
                                    286 	.globl _X_T4CCTL1
                                    287 	.globl _X_T4CC0
                                    288 	.globl _X_T4CCTL0
                                    289 	.globl _X_T4CTL
                                    290 	.globl _X_T4CNT
                                    291 	.globl _X_RFIF
                                    292 	.globl __NA_IRCON2
                                    293 	.globl _X_T1CCTL2
                                    294 	.globl _X_T1CCTL1
                                    295 	.globl _X_T1CCTL0
                                    296 	.globl _X_T1CTL
                                    297 	.globl _X_T1CNTH
                                    298 	.globl _X_T1CNTL
                                    299 	.globl _X_RFST
                                    300 	.globl __NA_ACC
                                    301 	.globl _X_T1CC2H
                                    302 	.globl _X_T1CC2L
                                    303 	.globl _X_T1CC1H
                                    304 	.globl _X_T1CC1L
                                    305 	.globl _X_T1CC0H
                                    306 	.globl _X_T1CC0L
                                    307 	.globl _X_RFD
                                    308 	.globl _X_TIMIF
                                    309 	.globl _X_DMAREQ
                                    310 	.globl _X_DMAARM
                                    311 	.globl _X_DMA0CFGH
                                    312 	.globl _X_DMA0CFGL
                                    313 	.globl _X_DMA1CFGH
                                    314 	.globl _X_DMA1CFGL
                                    315 	.globl _X_DMAIRQ
                                    316 	.globl __NA_PSW
                                    317 	.globl _X_T3CC1
                                    318 	.globl _X_T3CCTL1
                                    319 	.globl _X_T3CC0
                                    320 	.globl _X_T3CCTL0
                                    321 	.globl _X_T3CTL
                                    322 	.globl _X_T3CNT
                                    323 	.globl _X_WDCTL
                                    324 	.globl __X_SFRC8
                                    325 	.globl _X_MEMCTR
                                    326 	.globl _X_CLKCON
                                    327 	.globl _X_U0GCR
                                    328 	.globl _X_U0UCR
                                    329 	.globl __X_SFRC3
                                    330 	.globl _X_U0BAUD
                                    331 	.globl _X_U0DBUF
                                    332 	.globl __NA_IRCON
                                    333 	.globl __X_SFRBF
                                    334 	.globl _X_SLEEP
                                    335 	.globl _X_RNDH
                                    336 	.globl _X_RNDL
                                    337 	.globl _X_ADCH
                                    338 	.globl _X_ADCL
                                    339 	.globl __NA_IP1
                                    340 	.globl __NA_IEN1
                                    341 	.globl __X_SFRB7
                                    342 	.globl _X_ADCCON3
                                    343 	.globl _X_ADCCON2
                                    344 	.globl _X_ADCCON1
                                    345 	.globl _X_ENCCS
                                    346 	.globl _X_ENCDO
                                    347 	.globl _X_ENCDI
                                    348 	.globl __X_SFRB0
                                    349 	.globl _X_FWDATA
                                    350 	.globl _X_FCTL
                                    351 	.globl _X_FADDRH
                                    352 	.globl _X_FADDRL
                                    353 	.globl _X_FWT
                                    354 	.globl __X_SFRAA
                                    355 	.globl __NA_IP0
                                    356 	.globl __NA_IEN0
                                    357 	.globl __X_SFRA7
                                    358 	.globl _X_WORTIME1
                                    359 	.globl _X_WORTIME0
                                    360 	.globl _X_WOREVT1
                                    361 	.globl _X_WOREVT0
                                    362 	.globl _X_WORCTRL
                                    363 	.globl _X_WORIRQ
                                    364 	.globl __NA_P2
                                    365 	.globl __X_SFR9F
                                    366 	.globl _X_T2CTL
                                    367 	.globl _X_T2PR
                                    368 	.globl _X_T2CT
                                    369 	.globl __NA_S1CON
                                    370 	.globl __NA_IEN2
                                    371 	.globl __X_SFR99
                                    372 	.globl __NA_S0CON
                                    373 	.globl __X_SFR97
                                    374 	.globl __X_SFR96
                                    375 	.globl __X_SFR95
                                    376 	.globl __X_SFR94
                                    377 	.globl _X_MPAGE
                                    378 	.globl __NA_DPS
                                    379 	.globl _X_RFIM
                                    380 	.globl __NA_P1
                                    381 	.globl _X_P0INP
                                    382 	.globl __X_SFR8E
                                    383 	.globl _X_P1IEN
                                    384 	.globl _X_PICTL
                                    385 	.globl _X_P2IFG
                                    386 	.globl _X_P1IFG
                                    387 	.globl _X_P0IFG
                                    388 	.globl __NA_TCON
                                    389 	.globl __NA_PCON
                                    390 	.globl _X_U0CSR
                                    391 	.globl __NA_DPH1
                                    392 	.globl __NA_DPL1
                                    393 	.globl __NA_DPH0
                                    394 	.globl __NA_DPL0
                                    395 	.globl __NA_SP
                                    396 	.globl __NA_P0
                                    397 	.globl _I2SCLKF2
                                    398 	.globl _I2SCLKF1
                                    399 	.globl _I2SCLKF0
                                    400 	.globl _I2SSTAT
                                    401 	.globl _I2SWCNT
                                    402 	.globl _I2SDATH
                                    403 	.globl _I2SDATL
                                    404 	.globl _I2SCFG1
                                    405 	.globl _I2SCFG0
                                    406 	.globl _VCO_VC_DAC
                                    407 	.globl _PKTSTATUS
                                    408 	.globl _MARCSTATE
                                    409 	.globl _RSSI
                                    410 	.globl _LQI
                                    411 	.globl _FREQEST
                                    412 	.globl _VERSION
                                    413 	.globl _PARTNUM
                                    414 	.globl __XREGDF35
                                    415 	.globl __XREGDF34
                                    416 	.globl __XREGDF33
                                    417 	.globl __XREGDF32
                                    418 	.globl _IOCFG0
                                    419 	.globl _IOCFG1
                                    420 	.globl _IOCFG2
                                    421 	.globl _PA_TABLE0
                                    422 	.globl _PA_TABLE1
                                    423 	.globl _PA_TABLE2
                                    424 	.globl _PA_TABLE3
                                    425 	.globl _PA_TABLE4
                                    426 	.globl _PA_TABLE5
                                    427 	.globl _PA_TABLE6
                                    428 	.globl _PA_TABLE7
                                    429 	.globl __XREGDF26
                                    430 	.globl _TEST0
                                    431 	.globl _TEST1
                                    432 	.globl _TEST2
                                    433 	.globl __XREGDF22
                                    434 	.globl __XREGDF21
                                    435 	.globl __XREGDF20
                                    436 	.globl _FSCAL0
                                    437 	.globl _FSCAL1
                                    438 	.globl _FSCAL2
                                    439 	.globl _FSCAL3
                                    440 	.globl _FREND0
                                    441 	.globl _FREND1
                                    442 	.globl _AGCCTRL0
                                    443 	.globl _AGCCTRL1
                                    444 	.globl _AGCCTRL2
                                    445 	.globl _BSCFG
                                    446 	.globl _FOCCFG
                                    447 	.globl _MCSM0
                                    448 	.globl _MCSM1
                                    449 	.globl _MCSM2
                                    450 	.globl _DEVIATN
                                    451 	.globl _MDMCFG0
                                    452 	.globl _MDMCFG1
                                    453 	.globl _MDMCFG2
                                    454 	.globl _MDMCFG3
                                    455 	.globl _MDMCFG4
                                    456 	.globl _FREQ0
                                    457 	.globl _FREQ1
                                    458 	.globl _FREQ2
                                    459 	.globl _FSCTRL0
                                    460 	.globl _FSCTRL1
                                    461 	.globl _CHANNR
                                    462 	.globl _ADDR
                                    463 	.globl _PKTCTRL0
                                    464 	.globl _PKTCTRL1
                                    465 	.globl _PKTLEN
                                    466 	.globl _SYNC0
                                    467 	.globl _SYNC1
                                    468 	.globl _MDMCTRL0H
                                    469 	.globl _blink_binary_baby_lsb_PARM_2
                                    470 	.globl _sleepMillis
                                    471 	.globl _sleepMicros
                                    472 	.globl _blink_binary_baby_lsb
                                    473 	.globl _strncmp
                                    474 	.globl _clock_init
                                    475 	.globl _io_init
                                    476 	.globl _t1IntHandler
                                    477 ;--------------------------------------------------------
                                    478 ; special function registers
                                    479 ;--------------------------------------------------------
                                    480 	.area RSEG    (ABS,DATA)
      000000                        481 	.org 0x0000
                           000080   482 _P0	=	0x0080
                           000081   483 _SP	=	0x0081
                           000082   484 _DPL0	=	0x0082
                           000083   485 _DPH0	=	0x0083
                           000084   486 _DPL1	=	0x0084
                           000085   487 _DPH1	=	0x0085
                           000086   488 _U0CSR	=	0x0086
                           000087   489 _PCON	=	0x0087
                           000088   490 _TCON	=	0x0088
                           000089   491 _P0IFG	=	0x0089
                           00008A   492 _P1IFG	=	0x008a
                           00008B   493 _P2IFG	=	0x008b
                           00008C   494 _PICTL	=	0x008c
                           00008D   495 _P1IEN	=	0x008d
                           00008E   496 __SFR8E	=	0x008e
                           00008F   497 _P0INP	=	0x008f
                           000090   498 _P1	=	0x0090
                           000091   499 _RFIM	=	0x0091
                           000092   500 _DPS	=	0x0092
                           000093   501 _MPAGE	=	0x0093
                           000093   502 __XPAGE	=	0x0093
                           000094   503 __SFR94	=	0x0094
                           000095   504 __SFR95	=	0x0095
                           000096   505 __SFR96	=	0x0096
                           000097   506 __SFR97	=	0x0097
                           000098   507 _S0CON	=	0x0098
                           000099   508 __SFR99	=	0x0099
                           00009A   509 _IEN2	=	0x009a
                           00009B   510 _S1CON	=	0x009b
                           00009C   511 _T2CT	=	0x009c
                           00009D   512 _T2PR	=	0x009d
                           00009E   513 _T2CTL	=	0x009e
                           00009F   514 __SFR9F	=	0x009f
                           0000A0   515 _P2	=	0x00a0
                           0000A1   516 _WORIRQ	=	0x00a1
                           0000A2   517 _WORCTRL	=	0x00a2
                           0000A3   518 _WOREVT0	=	0x00a3
                           0000A4   519 _WOREVT1	=	0x00a4
                           0000A5   520 _WORTIME0	=	0x00a5
                           0000A6   521 _WORTIME1	=	0x00a6
                           0000A7   522 __SFRA7	=	0x00a7
                           0000A8   523 _IEN0	=	0x00a8
                           0000A9   524 _IP0	=	0x00a9
                           0000AA   525 __SFRAA	=	0x00aa
                           0000AB   526 _FWT	=	0x00ab
                           0000AC   527 _FADDRL	=	0x00ac
                           0000AD   528 _FADDRH	=	0x00ad
                           0000AE   529 _FCTL	=	0x00ae
                           0000AF   530 _FWDATA	=	0x00af
                           0000B0   531 __SFRB0	=	0x00b0
                           0000B1   532 _ENCDI	=	0x00b1
                           0000B2   533 _ENCDO	=	0x00b2
                           0000B3   534 _ENCCS	=	0x00b3
                           0000B4   535 _ADCCON1	=	0x00b4
                           0000B5   536 _ADCCON2	=	0x00b5
                           0000B6   537 _ADCCON3	=	0x00b6
                           0000B7   538 __SFRB7	=	0x00b7
                           0000B8   539 _IEN1	=	0x00b8
                           0000B9   540 _IP1	=	0x00b9
                           0000BA   541 _ADCL	=	0x00ba
                           0000BB   542 _ADCH	=	0x00bb
                           0000BC   543 _RNDL	=	0x00bc
                           0000BD   544 _RNDH	=	0x00bd
                           0000BE   545 _SLEEP	=	0x00be
                           0000BF   546 __SFRBF	=	0x00bf
                           0000C0   547 _IRCON	=	0x00c0
                           0000C1   548 _U0DBUF	=	0x00c1
                           0000C2   549 _U0BAUD	=	0x00c2
                           0000C3   550 __SFRC3	=	0x00c3
                           0000C4   551 _U0UCR	=	0x00c4
                           0000C5   552 _U0GCR	=	0x00c5
                           0000C6   553 _CLKCON	=	0x00c6
                           0000C7   554 _MEMCTR	=	0x00c7
                           0000C8   555 __SFRC8	=	0x00c8
                           0000C9   556 _WDCTL	=	0x00c9
                           0000CA   557 _T3CNT	=	0x00ca
                           0000CB   558 _T3CTL	=	0x00cb
                           0000CC   559 _T3CCTL0	=	0x00cc
                           0000CD   560 _T3CC0	=	0x00cd
                           0000CE   561 _T3CCTL1	=	0x00ce
                           0000CF   562 _T3CC1	=	0x00cf
                           0000D0   563 _PSW	=	0x00d0
                           0000D1   564 _DMAIRQ	=	0x00d1
                           0000D2   565 _DMA1CFGL	=	0x00d2
                           0000D3   566 _DMA1CFGH	=	0x00d3
                           0000D4   567 _DMA0CFGL	=	0x00d4
                           0000D5   568 _DMA0CFGH	=	0x00d5
                           0000D6   569 _DMAARM	=	0x00d6
                           0000D7   570 _DMAREQ	=	0x00d7
                           0000D8   571 _TIMIF	=	0x00d8
                           0000D9   572 _RFD	=	0x00d9
                           0000DA   573 _T1CC0L	=	0x00da
                           0000DB   574 _T1CC0H	=	0x00db
                           0000DC   575 _T1CC1L	=	0x00dc
                           0000DD   576 _T1CC1H	=	0x00dd
                           0000DE   577 _T1CC2L	=	0x00de
                           0000DF   578 _T1CC2H	=	0x00df
                           0000E0   579 _ACC	=	0x00e0
                           0000E1   580 _RFST	=	0x00e1
                           0000E2   581 _T1CNTL	=	0x00e2
                           0000E3   582 _T1CNTH	=	0x00e3
                           0000E4   583 _T1CTL	=	0x00e4
                           0000E5   584 _T1CCTL0	=	0x00e5
                           0000E6   585 _T1CCTL1	=	0x00e6
                           0000E7   586 _T1CCTL2	=	0x00e7
                           0000E8   587 _IRCON2	=	0x00e8
                           0000E9   588 _RFIF	=	0x00e9
                           0000EA   589 _T4CNT	=	0x00ea
                           0000EB   590 _T4CTL	=	0x00eb
                           0000EC   591 _T4CCTL0	=	0x00ec
                           0000ED   592 _T4CC0	=	0x00ed
                           0000EE   593 _T4CCTL1	=	0x00ee
                           0000EF   594 _T4CC1	=	0x00ef
                           0000F0   595 _B	=	0x00f0
                           0000F1   596 _PERCFG	=	0x00f1
                           0000F2   597 _ADCCFG	=	0x00f2
                           0000F3   598 _P0SEL	=	0x00f3
                           0000F4   599 _P1SEL	=	0x00f4
                           0000F5   600 _P2SEL	=	0x00f5
                           0000F6   601 _P1INP	=	0x00f6
                           0000F7   602 _P2INP	=	0x00f7
                           0000F8   603 _U1CSR	=	0x00f8
                           0000F9   604 _U1DBUF	=	0x00f9
                           0000FA   605 _U1BAUD	=	0x00fa
                           0000FB   606 _U1UCR	=	0x00fb
                           0000FC   607 _U1GCR	=	0x00fc
                           0000FD   608 _P0DIR	=	0x00fd
                           0000FE   609 _P1DIR	=	0x00fe
                           0000FF   610 _P2DIR	=	0x00ff
                                    611 ;--------------------------------------------------------
                                    612 ; special function bits
                                    613 ;--------------------------------------------------------
                                    614 	.area RSEG    (ABS,DATA)
      000000                        615 	.org 0x0000
                           000080   616 _P0_0	=	0x0080
                           000081   617 _P0_1	=	0x0081
                           000082   618 _P0_2	=	0x0082
                           000083   619 _P0_3	=	0x0083
                           000084   620 _P0_4	=	0x0084
                           000085   621 _P0_5	=	0x0085
                           000086   622 _P0_6	=	0x0086
                           000087   623 _P0_7	=	0x0087
                           000088   624 _IT0	=	0x0088
                           000089   625 _RFTXRXIF	=	0x0089
                           00008A   626 _IT1	=	0x008a
                           00008B   627 _URX0IF	=	0x008b
                           00008D   628 _ADCIF	=	0x008d
                           00008F   629 _URX1IF	=	0x008f
                           000090   630 _P1_0	=	0x0090
                           000091   631 _P1_1	=	0x0091
                           000092   632 _P1_2	=	0x0092
                           000093   633 _P1_3	=	0x0093
                           000094   634 _P1_4	=	0x0094
                           000095   635 _P1_5	=	0x0095
                           000096   636 _P1_6	=	0x0096
                           000097   637 _P1_7	=	0x0097
                           000098   638 _ENCIF_0	=	0x0098
                           000099   639 _ENCIF_1	=	0x0099
                           0000A0   640 _P2_0	=	0x00a0
                           0000A1   641 _P2_1	=	0x00a1
                           0000A2   642 _P2_2	=	0x00a2
                           0000A3   643 _P2_3	=	0x00a3
                           0000A4   644 _P2_4	=	0x00a4
                           0000A5   645 _P2_5	=	0x00a5
                           0000A6   646 _P2_6	=	0x00a6
                           0000A7   647 _P2_7	=	0x00a7
                           0000A8   648 _RFTXRXIE	=	0x00a8
                           0000A9   649 _ADCIE	=	0x00a9
                           0000AA   650 _URX0IE	=	0x00aa
                           0000AB   651 _URX1IE	=	0x00ab
                           0000AC   652 _ENCIE	=	0x00ac
                           0000AD   653 _STIE	=	0x00ad
                           0000AF   654 _EA	=	0x00af
                           0000B8   655 _DMAIE	=	0x00b8
                           0000B9   656 _T1IE	=	0x00b9
                           0000BA   657 _T2IE	=	0x00ba
                           0000BB   658 _T3IE	=	0x00bb
                           0000BC   659 _T4IE	=	0x00bc
                           0000BD   660 _P0IE	=	0x00bd
                           0000C0   661 _DMAIF	=	0x00c0
                           0000C1   662 _T1IF	=	0x00c1
                           0000C2   663 _T2IF	=	0x00c2
                           0000C3   664 _T3IF	=	0x00c3
                           0000C4   665 _T4IF	=	0x00c4
                           0000C5   666 _P0IF	=	0x00c5
                           0000C7   667 _STIF	=	0x00c7
                           0000D0   668 _P	=	0x00d0
                           0000D1   669 _F1	=	0x00d1
                           0000D2   670 _OV	=	0x00d2
                           0000D3   671 _RS0	=	0x00d3
                           0000D4   672 _RS1	=	0x00d4
                           0000D5   673 _F0	=	0x00d5
                           0000D6   674 _AC	=	0x00d6
                           0000D7   675 _CY	=	0x00d7
                           0000D8   676 _T3OVFIF	=	0x00d8
                           0000D9   677 _T3CH0IF	=	0x00d9
                           0000DA   678 _T3CH1IF	=	0x00da
                           0000DB   679 _T4OVFIF	=	0x00db
                           0000DC   680 _T4CH0IF	=	0x00dc
                           0000DD   681 _T4CH1IF	=	0x00dd
                           0000DE   682 _OVFIM	=	0x00de
                           0000E0   683 _ACC_0	=	0x00e0
                           0000E1   684 _ACC_1	=	0x00e1
                           0000E2   685 _ACC_2	=	0x00e2
                           0000E3   686 _ACC_3	=	0x00e3
                           0000E4   687 _ACC_4	=	0x00e4
                           0000E5   688 _ACC_5	=	0x00e5
                           0000E6   689 _ACC_6	=	0x00e6
                           0000E7   690 _ACC_7	=	0x00e7
                           0000E8   691 _P2IF	=	0x00e8
                           0000E9   692 _UTX0IF	=	0x00e9
                           0000EA   693 _UTX1IF	=	0x00ea
                           0000EB   694 _P1IF	=	0x00eb
                           0000EC   695 _WDTIF	=	0x00ec
                           0000F0   696 _B_0	=	0x00f0
                           0000F1   697 _B_1	=	0x00f1
                           0000F2   698 _B_2	=	0x00f2
                           0000F3   699 _B_3	=	0x00f3
                           0000F4   700 _B_4	=	0x00f4
                           0000F5   701 _B_5	=	0x00f5
                           0000F6   702 _B_6	=	0x00f6
                           0000F7   703 _B_7	=	0x00f7
                           0000F8   704 _ACTIVE	=	0x00f8
                           0000F9   705 _TX_BYTE	=	0x00f9
                           0000FA   706 _RX_BYTE	=	0x00fa
                           0000FB   707 _ERR	=	0x00fb
                           0000FC   708 _FE	=	0x00fc
                           0000FD   709 _SLAVE	=	0x00fd
                           0000FE   710 _RE	=	0x00fe
                           0000FF   711 _MODE	=	0x00ff
                           0000E8   712 _USBIF	=	0x00e8
                                    713 ;--------------------------------------------------------
                                    714 ; overlayable register banks
                                    715 ;--------------------------------------------------------
                                    716 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        717 	.ds 8
                                    718 ;--------------------------------------------------------
                                    719 ; internal ram data
                                    720 ;--------------------------------------------------------
                                    721 	.area DSEG    (DATA)
      000026                        722 _blink_binary_baby_lsb_PARM_2:
      000026                        723 	.ds 1
                                    724 ;--------------------------------------------------------
                                    725 ; overlayable items in internal ram 
                                    726 ;--------------------------------------------------------
                                    727 	.area	OSEG    (OVR,DATA)
                                    728 	.area	OSEG    (OVR,DATA)
                                    729 	.area	OSEG    (OVR,DATA)
      000027                        730 _strncmp_PARM_3:
      000027                        731 	.ds 2
      000029                        732 _strncmp_sloc0_1_0:
      000029                        733 	.ds 1
      00002A                        734 _strncmp_sloc1_1_0:
      00002A                        735 	.ds 2
                                    736 ;--------------------------------------------------------
                                    737 ; indirectly addressable internal ram data
                                    738 ;--------------------------------------------------------
                                    739 	.area ISEG    (DATA)
                                    740 ;--------------------------------------------------------
                                    741 ; absolute internal ram data
                                    742 ;--------------------------------------------------------
                                    743 	.area IABS    (ABS,DATA)
                                    744 	.area IABS    (ABS,DATA)
                                    745 ;--------------------------------------------------------
                                    746 ; bit data
                                    747 ;--------------------------------------------------------
                                    748 	.area BSEG    (BIT)
                                    749 ;--------------------------------------------------------
                                    750 ; paged external ram data
                                    751 ;--------------------------------------------------------
                                    752 	.area PSEG    (PAG,XDATA)
                                    753 ;--------------------------------------------------------
                                    754 ; external ram data
                                    755 ;--------------------------------------------------------
                                    756 	.area XSEG    (XDATA)
                           00DF02   757 _MDMCTRL0H	=	0xdf02
                           00DF00   758 _SYNC1	=	0xdf00
                           00DF01   759 _SYNC0	=	0xdf01
                           00DF02   760 _PKTLEN	=	0xdf02
                           00DF03   761 _PKTCTRL1	=	0xdf03
                           00DF04   762 _PKTCTRL0	=	0xdf04
                           00DF05   763 _ADDR	=	0xdf05
                           00DF06   764 _CHANNR	=	0xdf06
                           00DF07   765 _FSCTRL1	=	0xdf07
                           00DF08   766 _FSCTRL0	=	0xdf08
                           00DF09   767 _FREQ2	=	0xdf09
                           00DF0A   768 _FREQ1	=	0xdf0a
                           00DF0B   769 _FREQ0	=	0xdf0b
                           00DF0C   770 _MDMCFG4	=	0xdf0c
                           00DF0D   771 _MDMCFG3	=	0xdf0d
                           00DF0E   772 _MDMCFG2	=	0xdf0e
                           00DF0F   773 _MDMCFG1	=	0xdf0f
                           00DF10   774 _MDMCFG0	=	0xdf10
                           00DF11   775 _DEVIATN	=	0xdf11
                           00DF12   776 _MCSM2	=	0xdf12
                           00DF13   777 _MCSM1	=	0xdf13
                           00DF14   778 _MCSM0	=	0xdf14
                           00DF15   779 _FOCCFG	=	0xdf15
                           00DF16   780 _BSCFG	=	0xdf16
                           00DF17   781 _AGCCTRL2	=	0xdf17
                           00DF18   782 _AGCCTRL1	=	0xdf18
                           00DF19   783 _AGCCTRL0	=	0xdf19
                           00DF1A   784 _FREND1	=	0xdf1a
                           00DF1B   785 _FREND0	=	0xdf1b
                           00DF1C   786 _FSCAL3	=	0xdf1c
                           00DF1D   787 _FSCAL2	=	0xdf1d
                           00DF1E   788 _FSCAL1	=	0xdf1e
                           00DF1F   789 _FSCAL0	=	0xdf1f
                           00DF20   790 __XREGDF20	=	0xdf20
                           00DF21   791 __XREGDF21	=	0xdf21
                           00DF22   792 __XREGDF22	=	0xdf22
                           00DF23   793 _TEST2	=	0xdf23
                           00DF24   794 _TEST1	=	0xdf24
                           00DF25   795 _TEST0	=	0xdf25
                           00DF26   796 __XREGDF26	=	0xdf26
                           00DF27   797 _PA_TABLE7	=	0xdf27
                           00DF28   798 _PA_TABLE6	=	0xdf28
                           00DF29   799 _PA_TABLE5	=	0xdf29
                           00DF2A   800 _PA_TABLE4	=	0xdf2a
                           00DF2B   801 _PA_TABLE3	=	0xdf2b
                           00DF2C   802 _PA_TABLE2	=	0xdf2c
                           00DF2D   803 _PA_TABLE1	=	0xdf2d
                           00DF2E   804 _PA_TABLE0	=	0xdf2e
                           00DF2F   805 _IOCFG2	=	0xdf2f
                           00DF30   806 _IOCFG1	=	0xdf30
                           00DF31   807 _IOCFG0	=	0xdf31
                           00DF32   808 __XREGDF32	=	0xdf32
                           00DF33   809 __XREGDF33	=	0xdf33
                           00DF34   810 __XREGDF34	=	0xdf34
                           00DF35   811 __XREGDF35	=	0xdf35
                           00DF36   812 _PARTNUM	=	0xdf36
                           00DF37   813 _VERSION	=	0xdf37
                           00DF38   814 _FREQEST	=	0xdf38
                           00DF39   815 _LQI	=	0xdf39
                           00DF3A   816 _RSSI	=	0xdf3a
                           00DF3B   817 _MARCSTATE	=	0xdf3b
                           00DF3C   818 _PKTSTATUS	=	0xdf3c
                           00DF3D   819 _VCO_VC_DAC	=	0xdf3d
                           00DF40   820 _I2SCFG0	=	0xdf40
                           00DF41   821 _I2SCFG1	=	0xdf41
                           00DF42   822 _I2SDATL	=	0xdf42
                           00DF43   823 _I2SDATH	=	0xdf43
                           00DF44   824 _I2SWCNT	=	0xdf44
                           00DF45   825 _I2SSTAT	=	0xdf45
                           00DF46   826 _I2SCLKF0	=	0xdf46
                           00DF47   827 _I2SCLKF1	=	0xdf47
                           00DF48   828 _I2SCLKF2	=	0xdf48
                           00DF80   829 __NA_P0	=	0xdf80
                           00DF81   830 __NA_SP	=	0xdf81
                           00DF82   831 __NA_DPL0	=	0xdf82
                           00DF83   832 __NA_DPH0	=	0xdf83
                           00DF84   833 __NA_DPL1	=	0xdf84
                           00DF85   834 __NA_DPH1	=	0xdf85
                           00DF86   835 _X_U0CSR	=	0xdf86
                           00DF87   836 __NA_PCON	=	0xdf87
                           00DF88   837 __NA_TCON	=	0xdf88
                           00DF89   838 _X_P0IFG	=	0xdf89
                           00DF8A   839 _X_P1IFG	=	0xdf8a
                           00DF8B   840 _X_P2IFG	=	0xdf8b
                           00DF8C   841 _X_PICTL	=	0xdf8c
                           00DF8D   842 _X_P1IEN	=	0xdf8d
                           00DF8E   843 __X_SFR8E	=	0xdf8e
                           00DF8F   844 _X_P0INP	=	0xdf8f
                           00DF90   845 __NA_P1	=	0xdf90
                           00DF91   846 _X_RFIM	=	0xdf91
                           00DF92   847 __NA_DPS	=	0xdf92
                           00DF93   848 _X_MPAGE	=	0xdf93
                           00DF94   849 __X_SFR94	=	0xdf94
                           00DF95   850 __X_SFR95	=	0xdf95
                           00DF96   851 __X_SFR96	=	0xdf96
                           00DF97   852 __X_SFR97	=	0xdf97
                           00DF98   853 __NA_S0CON	=	0xdf98
                           00DF99   854 __X_SFR99	=	0xdf99
                           00DF9A   855 __NA_IEN2	=	0xdf9a
                           00DF9B   856 __NA_S1CON	=	0xdf9b
                           00DF9C   857 _X_T2CT	=	0xdf9c
                           00DF9D   858 _X_T2PR	=	0xdf9d
                           00DF9E   859 _X_T2CTL	=	0xdf9e
                           00DF9F   860 __X_SFR9F	=	0xdf9f
                           00DFA0   861 __NA_P2	=	0xdfa0
                           00DFA1   862 _X_WORIRQ	=	0xdfa1
                           00DFA2   863 _X_WORCTRL	=	0xdfa2
                           00DFA3   864 _X_WOREVT0	=	0xdfa3
                           00DFA4   865 _X_WOREVT1	=	0xdfa4
                           00DFA5   866 _X_WORTIME0	=	0xdfa5
                           00DFA6   867 _X_WORTIME1	=	0xdfa6
                           00DFA7   868 __X_SFRA7	=	0xdfa7
                           00DFA8   869 __NA_IEN0	=	0xdfa8
                           00DFA9   870 __NA_IP0	=	0xdfa9
                           00DFAA   871 __X_SFRAA	=	0xdfaa
                           00DFAB   872 _X_FWT	=	0xdfab
                           00DFAC   873 _X_FADDRL	=	0xdfac
                           00DFAD   874 _X_FADDRH	=	0xdfad
                           00DFAE   875 _X_FCTL	=	0xdfae
                           00DFAF   876 _X_FWDATA	=	0xdfaf
                           00DFB0   877 __X_SFRB0	=	0xdfb0
                           00DFB1   878 _X_ENCDI	=	0xdfb1
                           00DFB2   879 _X_ENCDO	=	0xdfb2
                           00DFB3   880 _X_ENCCS	=	0xdfb3
                           00DFB4   881 _X_ADCCON1	=	0xdfb4
                           00DFB5   882 _X_ADCCON2	=	0xdfb5
                           00DFB6   883 _X_ADCCON3	=	0xdfb6
                           00DFB7   884 __X_SFRB7	=	0xdfb7
                           00DFB8   885 __NA_IEN1	=	0xdfb8
                           00DFB9   886 __NA_IP1	=	0xdfb9
                           00DFBA   887 _X_ADCL	=	0xdfba
                           00DFBB   888 _X_ADCH	=	0xdfbb
                           00DFBC   889 _X_RNDL	=	0xdfbc
                           00DFBD   890 _X_RNDH	=	0xdfbd
                           00DFBE   891 _X_SLEEP	=	0xdfbe
                           00DFBF   892 __X_SFRBF	=	0xdfbf
                           00DFC0   893 __NA_IRCON	=	0xdfc0
                           00DFC1   894 _X_U0DBUF	=	0xdfc1
                           00DFC2   895 _X_U0BAUD	=	0xdfc2
                           00DFC3   896 __X_SFRC3	=	0xdfc3
                           00DFC4   897 _X_U0UCR	=	0xdfc4
                           00DFC5   898 _X_U0GCR	=	0xdfc5
                           00DFC6   899 _X_CLKCON	=	0xdfc6
                           00DFC7   900 _X_MEMCTR	=	0xdfc7
                           00DFC8   901 __X_SFRC8	=	0xdfc8
                           00DFC9   902 _X_WDCTL	=	0xdfc9
                           00DFCA   903 _X_T3CNT	=	0xdfca
                           00DFCB   904 _X_T3CTL	=	0xdfcb
                           00DFCC   905 _X_T3CCTL0	=	0xdfcc
                           00DFCD   906 _X_T3CC0	=	0xdfcd
                           00DFCE   907 _X_T3CCTL1	=	0xdfce
                           00DFCF   908 _X_T3CC1	=	0xdfcf
                           00DFD0   909 __NA_PSW	=	0xdfd0
                           00DFD1   910 _X_DMAIRQ	=	0xdfd1
                           00DFD2   911 _X_DMA1CFGL	=	0xdfd2
                           00DFD3   912 _X_DMA1CFGH	=	0xdfd3
                           00DFD4   913 _X_DMA0CFGL	=	0xdfd4
                           00DFD5   914 _X_DMA0CFGH	=	0xdfd5
                           00DFD6   915 _X_DMAARM	=	0xdfd6
                           00DFD7   916 _X_DMAREQ	=	0xdfd7
                           00DFD8   917 _X_TIMIF	=	0xdfd8
                           00DFD9   918 _X_RFD	=	0xdfd9
                           00DFDA   919 _X_T1CC0L	=	0xdfda
                           00DFDB   920 _X_T1CC0H	=	0xdfdb
                           00DFDC   921 _X_T1CC1L	=	0xdfdc
                           00DFDD   922 _X_T1CC1H	=	0xdfdd
                           00DFDE   923 _X_T1CC2L	=	0xdfde
                           00DFDF   924 _X_T1CC2H	=	0xdfdf
                           00DFE0   925 __NA_ACC	=	0xdfe0
                           00DFE1   926 _X_RFST	=	0xdfe1
                           00DFE2   927 _X_T1CNTL	=	0xdfe2
                           00DFE3   928 _X_T1CNTH	=	0xdfe3
                           00DFE4   929 _X_T1CTL	=	0xdfe4
                           00DFE5   930 _X_T1CCTL0	=	0xdfe5
                           00DFE6   931 _X_T1CCTL1	=	0xdfe6
                           00DFE7   932 _X_T1CCTL2	=	0xdfe7
                           00DFE8   933 __NA_IRCON2	=	0xdfe8
                           00DFE9   934 _X_RFIF	=	0xdfe9
                           00DFEA   935 _X_T4CNT	=	0xdfea
                           00DFEB   936 _X_T4CTL	=	0xdfeb
                           00DFEC   937 _X_T4CCTL0	=	0xdfec
                           00DFED   938 _X_T4CC0	=	0xdfed
                           00DFEE   939 _X_T4CCTL1	=	0xdfee
                           00DFEF   940 _X_T4CC1	=	0xdfef
                           00DFF0   941 __NA_B	=	0xdff0
                           00DFF1   942 _X_PERCFG	=	0xdff1
                           00DFF2   943 _X_ADCCFG	=	0xdff2
                           00DFF3   944 _X_P0SEL	=	0xdff3
                           00DFF4   945 _X_P1SEL	=	0xdff4
                           00DFF5   946 _X_P2SEL	=	0xdff5
                           00DFF6   947 _X_P1INP	=	0xdff6
                           00DFF7   948 _X_P2INP	=	0xdff7
                           00DFF8   949 _X_U1CSR	=	0xdff8
                           00DFF9   950 _X_U1DBUF	=	0xdff9
                           00DFFA   951 _X_U1BAUD	=	0xdffa
                           00DFFB   952 _X_U1UCR	=	0xdffb
                           00DFFC   953 _X_U1GCR	=	0xdffc
                           00DFFD   954 _X_P0DIR	=	0xdffd
                           00DFFE   955 _X_P1DIR	=	0xdffe
                           00DFFF   956 _X_P2DIR	=	0xdfff
                           00DE00   957 _USBADDR	=	0xde00
                           00DE01   958 _USBPOW	=	0xde01
                           00DE02   959 _USBIIF	=	0xde02
                           00DE04   960 _USBOIF	=	0xde04
                           00DE06   961 _USBCIF	=	0xde06
                           00DE07   962 _USBIIE	=	0xde07
                           00DE09   963 _USBOIE	=	0xde09
                           00DE0B   964 _USBCIE	=	0xde0b
                           00DE0C   965 _USBFRML	=	0xde0c
                           00DE0D   966 _USBFRMH	=	0xde0d
                           00DE0E   967 _USBINDEX	=	0xde0e
                           00DE10   968 _USBMAXI	=	0xde10
                           00DE11   969 _USBCS0	=	0xde11
                           00DE11   970 _USBCSIL	=	0xde11
                           00DE12   971 _USBCSIH	=	0xde12
                           00DE13   972 _USBMAXO	=	0xde13
                           00DE14   973 _USBCSOL	=	0xde14
                           00DE15   974 _USBCSOH	=	0xde15
                           00DE16   975 _USBCNT0	=	0xde16
                           00DE16   976 _USBCNTL	=	0xde16
                           00DE17   977 _USBCNTH	=	0xde17
                           00DE20   978 _USBF0	=	0xde20
                           00DE22   979 _USBF1	=	0xde22
                           00DE24   980 _USBF2	=	0xde24
                           00DE26   981 _USBF3	=	0xde26
                           00DE28   982 _USBF4	=	0xde28
                           00DE2A   983 _USBF5	=	0xde2a
      00FDB3                        984 _lastCode::
      00FDB3                        985 	.ds 2
      00FDB5                        986 _clock::
      00FDB5                        987 	.ds 4
      00FDB9                        988 _strncmp_PARM_2:
      00FDB9                        989 	.ds 3
      00FDBC                        990 _strncmp_s1_1_58:
      00FDBC                        991 	.ds 3
                                    992 ;--------------------------------------------------------
                                    993 ; absolute external ram data
                                    994 ;--------------------------------------------------------
                                    995 	.area XABS    (ABS,XDATA)
                                    996 ;--------------------------------------------------------
                                    997 ; external initialized ram data
                                    998 ;--------------------------------------------------------
                                    999 	.area XISEG   (XDATA)
                                   1000 	.area HOME    (CODE)
                                   1001 	.area GSINIT0 (CODE)
                                   1002 	.area GSINIT1 (CODE)
                                   1003 	.area GSINIT2 (CODE)
                                   1004 	.area GSINIT3 (CODE)
                                   1005 	.area GSINIT4 (CODE)
                                   1006 	.area GSINIT5 (CODE)
                                   1007 	.area GSINIT  (CODE)
                                   1008 	.area GSFINAL (CODE)
                                   1009 	.area CSEG    (CODE)
                                   1010 ;--------------------------------------------------------
                                   1011 ; global & static initialisations
                                   1012 ;--------------------------------------------------------
                                   1013 	.area HOME    (CODE)
                                   1014 	.area GSINIT  (CODE)
                                   1015 	.area GSFINAL (CODE)
                                   1016 	.area GSINIT  (CODE)
                                   1017 ;--------------------------------------------------------
                                   1018 ; Home
                                   1019 ;--------------------------------------------------------
                                   1020 	.area HOME    (CODE)
                                   1021 	.area HOME    (CODE)
                                   1022 ;--------------------------------------------------------
                                   1023 ; code
                                   1024 ;--------------------------------------------------------
                                   1025 	.area CSEG    (CODE)
                                   1026 ;------------------------------------------------------------
                                   1027 ;Allocation info for local variables in function 'sleepMillis'
                                   1028 ;------------------------------------------------------------
                                   1029 ;ms                        Allocated to registers 
                                   1030 ;j                         Allocated to registers r4 r5 
                                   1031 ;------------------------------------------------------------
                                   1032 ;	global.c:9: void sleepMillis(int ms) 
                                   1033 ;	-----------------------------------------
                                   1034 ;	 function sleepMillis
                                   1035 ;	-----------------------------------------
      002865                       1036 _sleepMillis:
                           000007  1037 	ar7 = 0x07
                           000006  1038 	ar6 = 0x06
                           000005  1039 	ar5 = 0x05
                           000004  1040 	ar4 = 0x04
                           000003  1041 	ar3 = 0x03
                           000002  1042 	ar2 = 0x02
                           000001  1043 	ar1 = 0x01
                           000000  1044 	ar0 = 0x00
      002865 AE 82            [24] 1045 	mov	r6,dpl
      002867 AF 83            [24] 1046 	mov	r7,dph
                                   1047 ;	global.c:12: while (--ms > 0) 
      002869                       1048 00102$:
      002869 1E               [12] 1049 	dec	r6
      00286A BE FF 01         [24] 1050 	cjne	r6,#0xFF,00123$
      00286D 1F               [12] 1051 	dec	r7
      00286E                       1052 00123$:
      00286E C3               [12] 1053 	clr	c
      00286F E4               [12] 1054 	clr	a
      002870 9E               [12] 1055 	subb	a,r6
      002871 74 80            [12] 1056 	mov	a,#(0x00 ^ 0x80)
      002873 8F F0            [24] 1057 	mov	b,r7
      002875 63 F0 80         [24] 1058 	xrl	b,#0x80
      002878 95 F0            [12] 1059 	subb	a,b
      00287A 50 16            [24] 1060 	jnc	00108$
                                   1061 ;	global.c:14: for (j=0; j<SLEEPTIMER;j++); // about 1 millisecond
      00287C 7C 4C            [12] 1062 	mov	r4,#0x4C
      00287E 7D 04            [12] 1063 	mov	r5,#0x04
      002880                       1064 00107$:
      002880 EC               [12] 1065 	mov	a,r4
      002881 24 FF            [12] 1066 	add	a,#0xFF
      002883 FA               [12] 1067 	mov	r2,a
      002884 ED               [12] 1068 	mov	a,r5
      002885 34 FF            [12] 1069 	addc	a,#0xFF
      002887 FB               [12] 1070 	mov	r3,a
      002888 8A 04            [24] 1071 	mov	ar4,r2
      00288A 8B 05            [24] 1072 	mov	ar5,r3
      00288C EA               [12] 1073 	mov	a,r2
      00288D 4B               [12] 1074 	orl	a,r3
      00288E 70 F0            [24] 1075 	jnz	00107$
      002890 80 D7            [24] 1076 	sjmp	00102$
      002892                       1077 00108$:
      002892 22               [24] 1078 	ret
                                   1079 ;------------------------------------------------------------
                                   1080 ;Allocation info for local variables in function 'sleepMicros'
                                   1081 ;------------------------------------------------------------
                                   1082 ;us                        Allocated to registers r6 r7 
                                   1083 ;------------------------------------------------------------
                                   1084 ;	global.c:19: void sleepMicros(int us) 
                                   1085 ;	-----------------------------------------
                                   1086 ;	 function sleepMicros
                                   1087 ;	-----------------------------------------
      002893                       1088 _sleepMicros:
      002893 AE 82            [24] 1089 	mov	r6,dpl
                                   1090 ;	global.c:23: us *= PLATFORM_CLOCK_FREQ/11;
      002895 E5 83            [12] 1091 	mov	a,dph
      002897 CE               [12] 1092 	xch	a,r6
      002898 25 E0            [12] 1093 	add	a,acc
      00289A CE               [12] 1094 	xch	a,r6
      00289B 33               [12] 1095 	rlc	a
      00289C FF               [12] 1096 	mov	r7,a
                                   1097 ;	global.c:24: while (--us > 0) ;
      00289D                       1098 00101$:
      00289D 1E               [12] 1099 	dec	r6
      00289E BE FF 01         [24] 1100 	cjne	r6,#0xFF,00110$
      0028A1 1F               [12] 1101 	dec	r7
      0028A2                       1102 00110$:
      0028A2 C3               [12] 1103 	clr	c
      0028A3 E4               [12] 1104 	clr	a
      0028A4 9E               [12] 1105 	subb	a,r6
      0028A5 74 80            [12] 1106 	mov	a,#(0x00 ^ 0x80)
      0028A7 8F F0            [24] 1107 	mov	b,r7
      0028A9 63 F0 80         [24] 1108 	xrl	b,#0x80
      0028AC 95 F0            [12] 1109 	subb	a,b
      0028AE 40 ED            [24] 1110 	jc	00101$
      0028B0 22               [24] 1111 	ret
                                   1112 ;------------------------------------------------------------
                                   1113 ;Allocation info for local variables in function 'blink_binary_baby_lsb'
                                   1114 ;------------------------------------------------------------
                                   1115 ;bits                      Allocated with name '_blink_binary_baby_lsb_PARM_2'
                                   1116 ;num                       Allocated to registers r6 r7 
                                   1117 ;------------------------------------------------------------
                                   1118 ;	global.c:27: void blink_binary_baby_lsb(u16 num, char bits)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function blink_binary_baby_lsb
                                   1121 ;	-----------------------------------------
      0028B1                       1122 _blink_binary_baby_lsb:
      0028B1 AE 82            [24] 1123 	mov	r6,dpl
      0028B3 AF 83            [24] 1124 	mov	r7,dph
                                   1125 ;	global.c:29: LED = 1;
      0028B5 D2 A4            [12] 1126 	setb	_P2_4
                                   1127 ;	global.c:30: sleepMillis(1000);
      0028B7 90 03 E8         [24] 1128 	mov	dptr,#0x03E8
      0028BA C0 07            [24] 1129 	push	ar7
      0028BC C0 06            [24] 1130 	push	ar6
      0028BE 12 28 65         [24] 1131 	lcall	_sleepMillis
                                   1132 ;	global.c:31: LED = 0;
      0028C1 C2 A4            [12] 1133 	clr	_P2_4
                                   1134 ;	global.c:32: sleepMillis(500);
      0028C3 90 01 F4         [24] 1135 	mov	dptr,#0x01F4
      0028C6 12 28 65         [24] 1136 	lcall	_sleepMillis
      0028C9 D0 06            [24] 1137 	pop	ar6
      0028CB D0 07            [24] 1138 	pop	ar7
                                   1139 ;	global.c:33: bits -= 1;          // 16 bit numbers needs to start on bit 15, etc....
      0028CD 15 26            [12] 1140 	dec	_blink_binary_baby_lsb_PARM_2
      0028CF AD 26            [24] 1141 	mov	r5,_blink_binary_baby_lsb_PARM_2
      0028D1                       1142 00106$:
                                   1143 ;	global.c:35: for (; bits>=0; bits--)
      0028D1 ED               [12] 1144 	mov	a,r5
      0028D2 20 E7 54         [24] 1145 	jb	acc.7,00104$
                                   1146 ;	global.c:37: if (num & 1)
      0028D5 EE               [12] 1147 	mov	a,r6
      0028D6 30 E0 24         [24] 1148 	jnb	acc.0,00102$
                                   1149 ;	global.c:39: sleepMillis(25);
      0028D9 90 00 19         [24] 1150 	mov	dptr,#0x0019
      0028DC C0 07            [24] 1151 	push	ar7
      0028DE C0 06            [24] 1152 	push	ar6
      0028E0 C0 05            [24] 1153 	push	ar5
      0028E2 12 28 65         [24] 1154 	lcall	_sleepMillis
                                   1155 ;	global.c:40: LED = 1;
      0028E5 D2 A4            [12] 1156 	setb	_P2_4
                                   1157 ;	global.c:41: sleepMillis(550);
      0028E7 90 02 26         [24] 1158 	mov	dptr,#0x0226
      0028EA 12 28 65         [24] 1159 	lcall	_sleepMillis
                                   1160 ;	global.c:42: LED = 0;
      0028ED C2 A4            [12] 1161 	clr	_P2_4
                                   1162 ;	global.c:43: sleepMillis(25);
      0028EF 90 00 19         [24] 1163 	mov	dptr,#0x0019
      0028F2 12 28 65         [24] 1164 	lcall	_sleepMillis
      0028F5 D0 05            [24] 1165 	pop	ar5
      0028F7 D0 06            [24] 1166 	pop	ar6
      0028F9 D0 07            [24] 1167 	pop	ar7
      0028FB 80 22            [24] 1168 	sjmp	00103$
      0028FD                       1169 00102$:
                                   1170 ;	global.c:47: sleepMillis(275);
      0028FD 90 01 13         [24] 1171 	mov	dptr,#0x0113
      002900 C0 07            [24] 1172 	push	ar7
      002902 C0 06            [24] 1173 	push	ar6
      002904 C0 05            [24] 1174 	push	ar5
      002906 12 28 65         [24] 1175 	lcall	_sleepMillis
                                   1176 ;	global.c:48: LED = 1;
      002909 D2 A4            [12] 1177 	setb	_P2_4
                                   1178 ;	global.c:49: sleepMillis(50);
      00290B 90 00 32         [24] 1179 	mov	dptr,#0x0032
      00290E 12 28 65         [24] 1180 	lcall	_sleepMillis
                                   1181 ;	global.c:50: LED = 0;
      002911 C2 A4            [12] 1182 	clr	_P2_4
                                   1183 ;	global.c:51: sleepMillis(275);
      002913 90 01 13         [24] 1184 	mov	dptr,#0x0113
      002916 12 28 65         [24] 1185 	lcall	_sleepMillis
      002919 D0 05            [24] 1186 	pop	ar5
      00291B D0 06            [24] 1187 	pop	ar6
      00291D D0 07            [24] 1188 	pop	ar7
      00291F                       1189 00103$:
                                   1190 ;	global.c:53: num = num >> 1;
      00291F EF               [12] 1191 	mov	a,r7
      002920 C3               [12] 1192 	clr	c
      002921 13               [12] 1193 	rrc	a
      002922 CE               [12] 1194 	xch	a,r6
      002923 13               [12] 1195 	rrc	a
      002924 CE               [12] 1196 	xch	a,r6
      002925 FF               [12] 1197 	mov	r7,a
                                   1198 ;	global.c:35: for (; bits>=0; bits--)
      002926 1D               [12] 1199 	dec	r5
      002927 80 A8            [24] 1200 	sjmp	00106$
      002929                       1201 00104$:
                                   1202 ;	global.c:55: LED = 0;
      002929 C2 A4            [12] 1203 	clr	_P2_4
                                   1204 ;	global.c:56: sleepMillis(1000);
      00292B 90 03 E8         [24] 1205 	mov	dptr,#0x03E8
      00292E 02 28 65         [24] 1206 	ljmp	_sleepMillis
                                   1207 ;------------------------------------------------------------
                                   1208 ;Allocation info for local variables in function 'strncmp'
                                   1209 ;------------------------------------------------------------
                                   1210 ;s2                        Allocated with name '_strncmp_PARM_2'
                                   1211 ;s1                        Allocated with name '_strncmp_s1_1_58'
                                   1212 ;n                         Allocated with name '_strncmp_PARM_3'
                                   1213 ;tst                       Allocated with name '_strncmp_sloc0_1_0'
                                   1214 ;sloc0                     Allocated with name '_strncmp_sloc0_1_0'
                                   1215 ;sloc1                     Allocated with name '_strncmp_sloc1_1_0'
                                   1216 ;------------------------------------------------------------
                                   1217 ;	global.c:88: int strncmp(const char * __xdata s1, const char * __xdata s2, u16 n)
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function strncmp
                                   1220 ;	-----------------------------------------
      002931                       1221 _strncmp:
      002931 AF F0            [24] 1222 	mov	r7,b
      002933 AE 83            [24] 1223 	mov	r6,dph
      002935 E5 82            [12] 1224 	mov	a,dpl
      002937 90 FD BC         [24] 1225 	mov	dptr,#_strncmp_s1_1_58
      00293A F0               [24] 1226 	movx	@dptr,a
      00293B EE               [12] 1227 	mov	a,r6
      00293C A3               [24] 1228 	inc	dptr
      00293D F0               [24] 1229 	movx	@dptr,a
      00293E EF               [12] 1230 	mov	a,r7
      00293F A3               [24] 1231 	inc	dptr
      002940 F0               [24] 1232 	movx	@dptr,a
                                   1233 ;	global.c:100: return 0;
      002941 90 FD BC         [24] 1234 	mov	dptr,#_strncmp_s1_1_58
      002944 E0               [24] 1235 	movx	a,@dptr
      002945 FD               [12] 1236 	mov	r5,a
      002946 A3               [24] 1237 	inc	dptr
      002947 E0               [24] 1238 	movx	a,@dptr
      002948 FE               [12] 1239 	mov	r6,a
      002949 A3               [24] 1240 	inc	dptr
      00294A E0               [24] 1241 	movx	a,@dptr
      00294B FF               [12] 1242 	mov	r7,a
      00294C 90 FD B9         [24] 1243 	mov	dptr,#_strncmp_PARM_2
      00294F E0               [24] 1244 	movx	a,@dptr
      002950 FA               [12] 1245 	mov	r2,a
      002951 A3               [24] 1246 	inc	dptr
      002952 E0               [24] 1247 	movx	a,@dptr
      002953 FB               [12] 1248 	mov	r3,a
      002954 A3               [24] 1249 	inc	dptr
      002955 E0               [24] 1250 	movx	a,@dptr
      002956 FC               [12] 1251 	mov	r4,a
      002957 A8 27            [24] 1252 	mov	r0,_strncmp_PARM_3
      002959 A9 28            [24] 1253 	mov	r1,(_strncmp_PARM_3 + 1)
      00295B                       1254 00105$:
                                   1255 ;	global.c:92: for (;n>0;n--)
      00295B E8               [12] 1256 	mov	a,r0
      00295C 49               [12] 1257 	orl	a,r1
      00295D 60 50            [24] 1258 	jz	00103$
                                   1259 ;	global.c:94: tst = *s1 - *s2;
      00295F C0 00            [24] 1260 	push	ar0
      002961 C0 01            [24] 1261 	push	ar1
      002963 8D 82            [24] 1262 	mov	dpl,r5
      002965 8E 83            [24] 1263 	mov	dph,r6
      002967 8F F0            [24] 1264 	mov	b,r7
      002969 12 30 79         [24] 1265 	lcall	__gptrget
      00296C F9               [12] 1266 	mov	r1,a
      00296D 8A 82            [24] 1267 	mov	dpl,r2
      00296F 8B 83            [24] 1268 	mov	dph,r3
      002971 8C F0            [24] 1269 	mov	b,r4
      002973 12 30 79         [24] 1270 	lcall	__gptrget
      002976 F8               [12] 1271 	mov	r0,a
      002977 E9               [12] 1272 	mov	a,r1
      002978 C3               [12] 1273 	clr	c
      002979 98               [12] 1274 	subb	a,r0
                                   1275 ;	global.c:95: if (tst)
      00297A F9               [12] 1276 	mov	r1,a
      00297B 89 29            [24] 1277 	mov	_strncmp_sloc0_1_0,r1
      00297D D0 01            [24] 1278 	pop	ar1
      00297F D0 00            [24] 1279 	pop	ar0
      002981 60 10            [24] 1280 	jz	00102$
                                   1281 ;	global.c:96: return tst;
      002983 E5 29            [12] 1282 	mov	a,_strncmp_sloc0_1_0
      002985 F5 2A            [12] 1283 	mov	_strncmp_sloc1_1_0,a
      002987 33               [12] 1284 	rlc	a
      002988 95 E0            [12] 1285 	subb	a,acc
      00298A F5 2B            [12] 1286 	mov	(_strncmp_sloc1_1_0 + 1),a
      00298C 85 2A 82         [24] 1287 	mov	dpl,_strncmp_sloc1_1_0
      00298F 85 2B 83         [24] 1288 	mov	dph,(_strncmp_sloc1_1_0 + 1)
      002992 22               [24] 1289 	ret
      002993                       1290 00102$:
                                   1291 ;	global.c:97: s1++;
      002993 0D               [12] 1292 	inc	r5
      002994 BD 00 01         [24] 1293 	cjne	r5,#0x00,00122$
      002997 0E               [12] 1294 	inc	r6
      002998                       1295 00122$:
      002998 90 FD BC         [24] 1296 	mov	dptr,#_strncmp_s1_1_58
      00299B ED               [12] 1297 	mov	a,r5
      00299C F0               [24] 1298 	movx	@dptr,a
      00299D EE               [12] 1299 	mov	a,r6
      00299E A3               [24] 1300 	inc	dptr
      00299F F0               [24] 1301 	movx	@dptr,a
      0029A0 EF               [12] 1302 	mov	a,r7
      0029A1 A3               [24] 1303 	inc	dptr
      0029A2 F0               [24] 1304 	movx	@dptr,a
                                   1305 ;	global.c:98: s2++;
      0029A3 0A               [12] 1306 	inc	r2
      0029A4 BA 00 01         [24] 1307 	cjne	r2,#0x00,00123$
      0029A7 0B               [12] 1308 	inc	r3
      0029A8                       1309 00123$:
                                   1310 ;	global.c:92: for (;n>0;n--)
      0029A8 18               [12] 1311 	dec	r0
      0029A9 B8 FF 01         [24] 1312 	cjne	r0,#0xFF,00124$
      0029AC 19               [12] 1313 	dec	r1
      0029AD                       1314 00124$:
      0029AD 80 AC            [24] 1315 	sjmp	00105$
      0029AF                       1316 00103$:
                                   1317 ;	global.c:100: return 0;
      0029AF 90 00 00         [24] 1318 	mov	dptr,#0x0000
      0029B2 22               [24] 1319 	ret
                                   1320 ;------------------------------------------------------------
                                   1321 ;Allocation info for local variables in function 'clock_init'
                                   1322 ;------------------------------------------------------------
                                   1323 ;	global.c:103: void clock_init(void)
                                   1324 ;	-----------------------------------------
                                   1325 ;	 function clock_init
                                   1326 ;	-----------------------------------------
      0029B3                       1327 _clock_init:
                                   1328 ;	global.c:108: SLEEP &= ~SLEEP_OSC_PD;
      0029B3 AF BE            [24] 1329 	mov	r7,_SLEEP
      0029B5 74 FB            [12] 1330 	mov	a,#0xFB
      0029B7 5F               [12] 1331 	anl	a,r7
      0029B8 F5 BE            [12] 1332 	mov	_SLEEP,a
                                   1333 ;	global.c:109: while( !(SLEEP & SLEEP_XOSC_S) );
      0029BA                       1334 00101$:
      0029BA E5 BE            [12] 1335 	mov	a,_SLEEP
      0029BC 30 E6 FB         [24] 1336 	jnb	acc.6,00101$
                                   1337 ;	global.c:110: CLKCON = (CLKCON & ~(CLKCON_CLKSPD | CLKCON_OSC)) | CLKSPD_DIV_1;
      0029BF AF C6            [24] 1338 	mov	r7,_CLKCON
      0029C1 74 B8            [12] 1339 	mov	a,#0xB8
      0029C3 5F               [12] 1340 	anl	a,r7
      0029C4 F5 C6            [12] 1341 	mov	_CLKCON,a
                                   1342 ;	global.c:111: while (CLKCON & CLKCON_OSC);
      0029C6                       1343 00104$:
      0029C6 E5 C6            [12] 1344 	mov	a,_CLKCON
      0029C8 20 E6 FB         [24] 1345 	jb	acc.6,00104$
                                   1346 ;	global.c:112: SLEEP |= SLEEP_OSC_PD;
      0029CB 43 BE 04         [24] 1347 	orl	_SLEEP,#0x04
                                   1348 ;	global.c:113: while (!IS_XOSC_STABLE());
      0029CE                       1349 00107$:
      0029CE E5 BE            [12] 1350 	mov	a,_SLEEP
      0029D0 30 E6 FB         [24] 1351 	jnb	acc.6,00107$
                                   1352 ;	global.c:119: CLKCON &= 0xc7;          //( ~ 0b00111000);  - clearing out TICKSPD  freq = 24mhz on cc1111, 26mhz on cc1110
      0029D3 53 C6 C7         [24] 1353 	anl	_CLKCON,#0xC7
                                   1354 ;	global.c:121: T1CTL |= T1CTL_DIV_128;     // T1 running at 187.500 kHz
      0029D6 43 E4 0C         [24] 1355 	orl	_T1CTL,#0x0C
                                   1356 ;	global.c:122: T1CTL |= T1CTL_MODE_FREERUN;
      0029D9 43 E4 01         [24] 1357 	orl	_T1CTL,#0x01
                                   1358 ;	global.c:123: T1IE = 1;
      0029DC D2 B9            [12] 1359 	setb	_T1IE
      0029DE 22               [24] 1360 	ret
                                   1361 ;------------------------------------------------------------
                                   1362 ;Allocation info for local variables in function 'io_init'
                                   1363 ;------------------------------------------------------------
                                   1364 ;	global.c:130: void io_init(void)
                                   1365 ;	-----------------------------------------
                                   1366 ;	 function io_init
                                   1367 ;	-----------------------------------------
      0029DF                       1368 _io_init:
                                   1369 ;	global.c:190: P1DIR |= 3;
      0029DF 43 FE 03         [24] 1370 	orl	_P1DIR,#0x03
                                   1371 ;	global.c:196: LED = 0;
      0029E2 C2 A4            [12] 1372 	clr	_P2_4
      0029E4 22               [24] 1373 	ret
                                   1374 ;------------------------------------------------------------
                                   1375 ;Allocation info for local variables in function 't1IntHandler'
                                   1376 ;------------------------------------------------------------
                                   1377 ;	global.c:203: void t1IntHandler(void) __interrupt T1_VECTOR  // interrupt handler should trigger on T1 overflow
                                   1378 ;	-----------------------------------------
                                   1379 ;	 function t1IntHandler
                                   1380 ;	-----------------------------------------
      0029E5                       1381 _t1IntHandler:
      0029E5 C0 E0            [24] 1382 	push	acc
      0029E7 C0 82            [24] 1383 	push	dpl
      0029E9 C0 83            [24] 1384 	push	dph
      0029EB C0 D0            [24] 1385 	push	psw
                                   1386 ;	global.c:205: clock ++;
      0029ED 90 FD B5         [24] 1387 	mov	dptr,#_clock
      0029F0 E0               [24] 1388 	movx	a,@dptr
      0029F1 24 01            [12] 1389 	add	a,#0x01
      0029F3 F0               [24] 1390 	movx	@dptr,a
      0029F4 A3               [24] 1391 	inc	dptr
      0029F5 E0               [24] 1392 	movx	a,@dptr
      0029F6 34 00            [12] 1393 	addc	a,#0x00
      0029F8 F0               [24] 1394 	movx	@dptr,a
      0029F9 A3               [24] 1395 	inc	dptr
      0029FA E0               [24] 1396 	movx	a,@dptr
      0029FB 34 00            [12] 1397 	addc	a,#0x00
      0029FD F0               [24] 1398 	movx	@dptr,a
      0029FE A3               [24] 1399 	inc	dptr
      0029FF E0               [24] 1400 	movx	a,@dptr
      002A00 34 00            [12] 1401 	addc	a,#0x00
      002A02 F0               [24] 1402 	movx	@dptr,a
      002A03 D0 D0            [24] 1403 	pop	psw
      002A05 D0 83            [24] 1404 	pop	dph
      002A07 D0 82            [24] 1405 	pop	dpl
      002A09 D0 E0            [24] 1406 	pop	acc
      002A0B 32               [24] 1407 	reti
                                   1408 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1409 ;	eliminated unneeded push/pop b
                                   1410 	.area CSEG    (CODE)
                                   1411 	.area CONST   (CODE)
                                   1412 	.area XINIT   (CODE)
                                   1413 	.area CABS    (ABS,CODE)
