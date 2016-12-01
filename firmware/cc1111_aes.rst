                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
                                      4 ; This file was generated Wed Nov 30 16:38:12 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module cc1111_aes
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _getDMA
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
                                    239 	.globl _doAES_PARM_5
                                    240 	.globl _doAES_PARM_4
                                    241 	.globl _doAES_PARM_3
                                    242 	.globl _doAES_PARM_2
                                    243 	.globl _decAES_PARM_4
                                    244 	.globl _decAES_PARM_3
                                    245 	.globl _decAES_PARM_2
                                    246 	.globl _encAES_PARM_4
                                    247 	.globl _encAES_PARM_3
                                    248 	.globl _encAES_PARM_2
                                    249 	.globl _padAES_PARM_2
                                    250 	.globl _setAES_PARM_3
                                    251 	.globl _setAES_PARM_2
                                    252 	.globl _aesdmaarmo
                                    253 	.globl _aesdmachano
                                    254 	.globl _aesdmaarmi
                                    255 	.globl _aesdmachani
                                    256 	.globl _aesdmao
                                    257 	.globl _aesdmai
                                    258 	.globl _USBF5
                                    259 	.globl _USBF4
                                    260 	.globl _USBF3
                                    261 	.globl _USBF2
                                    262 	.globl _USBF1
                                    263 	.globl _USBF0
                                    264 	.globl _USBCNTH
                                    265 	.globl _USBCNTL
                                    266 	.globl _USBCNT0
                                    267 	.globl _USBCSOH
                                    268 	.globl _USBCSOL
                                    269 	.globl _USBMAXO
                                    270 	.globl _USBCSIH
                                    271 	.globl _USBCSIL
                                    272 	.globl _USBCS0
                                    273 	.globl _USBMAXI
                                    274 	.globl _USBINDEX
                                    275 	.globl _USBFRMH
                                    276 	.globl _USBFRML
                                    277 	.globl _USBCIE
                                    278 	.globl _USBOIE
                                    279 	.globl _USBIIE
                                    280 	.globl _USBCIF
                                    281 	.globl _USBOIF
                                    282 	.globl _USBIIF
                                    283 	.globl _USBPOW
                                    284 	.globl _USBADDR
                                    285 	.globl _X_P2DIR
                                    286 	.globl _X_P1DIR
                                    287 	.globl _X_P0DIR
                                    288 	.globl _X_U1GCR
                                    289 	.globl _X_U1UCR
                                    290 	.globl _X_U1BAUD
                                    291 	.globl _X_U1DBUF
                                    292 	.globl _X_U1CSR
                                    293 	.globl _X_P2INP
                                    294 	.globl _X_P1INP
                                    295 	.globl _X_P2SEL
                                    296 	.globl _X_P1SEL
                                    297 	.globl _X_P0SEL
                                    298 	.globl _X_ADCCFG
                                    299 	.globl _X_PERCFG
                                    300 	.globl __NA_B
                                    301 	.globl _X_T4CC1
                                    302 	.globl _X_T4CCTL1
                                    303 	.globl _X_T4CC0
                                    304 	.globl _X_T4CCTL0
                                    305 	.globl _X_T4CTL
                                    306 	.globl _X_T4CNT
                                    307 	.globl _X_RFIF
                                    308 	.globl __NA_IRCON2
                                    309 	.globl _X_T1CCTL2
                                    310 	.globl _X_T1CCTL1
                                    311 	.globl _X_T1CCTL0
                                    312 	.globl _X_T1CTL
                                    313 	.globl _X_T1CNTH
                                    314 	.globl _X_T1CNTL
                                    315 	.globl _X_RFST
                                    316 	.globl __NA_ACC
                                    317 	.globl _X_T1CC2H
                                    318 	.globl _X_T1CC2L
                                    319 	.globl _X_T1CC1H
                                    320 	.globl _X_T1CC1L
                                    321 	.globl _X_T1CC0H
                                    322 	.globl _X_T1CC0L
                                    323 	.globl _X_RFD
                                    324 	.globl _X_TIMIF
                                    325 	.globl _X_DMAREQ
                                    326 	.globl _X_DMAARM
                                    327 	.globl _X_DMA0CFGH
                                    328 	.globl _X_DMA0CFGL
                                    329 	.globl _X_DMA1CFGH
                                    330 	.globl _X_DMA1CFGL
                                    331 	.globl _X_DMAIRQ
                                    332 	.globl __NA_PSW
                                    333 	.globl _X_T3CC1
                                    334 	.globl _X_T3CCTL1
                                    335 	.globl _X_T3CC0
                                    336 	.globl _X_T3CCTL0
                                    337 	.globl _X_T3CTL
                                    338 	.globl _X_T3CNT
                                    339 	.globl _X_WDCTL
                                    340 	.globl __X_SFRC8
                                    341 	.globl _X_MEMCTR
                                    342 	.globl _X_CLKCON
                                    343 	.globl _X_U0GCR
                                    344 	.globl _X_U0UCR
                                    345 	.globl __X_SFRC3
                                    346 	.globl _X_U0BAUD
                                    347 	.globl _X_U0DBUF
                                    348 	.globl __NA_IRCON
                                    349 	.globl __X_SFRBF
                                    350 	.globl _X_SLEEP
                                    351 	.globl _X_RNDH
                                    352 	.globl _X_RNDL
                                    353 	.globl _X_ADCH
                                    354 	.globl _X_ADCL
                                    355 	.globl __NA_IP1
                                    356 	.globl __NA_IEN1
                                    357 	.globl __X_SFRB7
                                    358 	.globl _X_ADCCON3
                                    359 	.globl _X_ADCCON2
                                    360 	.globl _X_ADCCON1
                                    361 	.globl _X_ENCCS
                                    362 	.globl _X_ENCDO
                                    363 	.globl _X_ENCDI
                                    364 	.globl __X_SFRB0
                                    365 	.globl _X_FWDATA
                                    366 	.globl _X_FCTL
                                    367 	.globl _X_FADDRH
                                    368 	.globl _X_FADDRL
                                    369 	.globl _X_FWT
                                    370 	.globl __X_SFRAA
                                    371 	.globl __NA_IP0
                                    372 	.globl __NA_IEN0
                                    373 	.globl __X_SFRA7
                                    374 	.globl _X_WORTIME1
                                    375 	.globl _X_WORTIME0
                                    376 	.globl _X_WOREVT1
                                    377 	.globl _X_WOREVT0
                                    378 	.globl _X_WORCTRL
                                    379 	.globl _X_WORIRQ
                                    380 	.globl __NA_P2
                                    381 	.globl __X_SFR9F
                                    382 	.globl _X_T2CTL
                                    383 	.globl _X_T2PR
                                    384 	.globl _X_T2CT
                                    385 	.globl __NA_S1CON
                                    386 	.globl __NA_IEN2
                                    387 	.globl __X_SFR99
                                    388 	.globl __NA_S0CON
                                    389 	.globl __X_SFR97
                                    390 	.globl __X_SFR96
                                    391 	.globl __X_SFR95
                                    392 	.globl __X_SFR94
                                    393 	.globl _X_MPAGE
                                    394 	.globl __NA_DPS
                                    395 	.globl _X_RFIM
                                    396 	.globl __NA_P1
                                    397 	.globl _X_P0INP
                                    398 	.globl __X_SFR8E
                                    399 	.globl _X_P1IEN
                                    400 	.globl _X_PICTL
                                    401 	.globl _X_P2IFG
                                    402 	.globl _X_P1IFG
                                    403 	.globl _X_P0IFG
                                    404 	.globl __NA_TCON
                                    405 	.globl __NA_PCON
                                    406 	.globl _X_U0CSR
                                    407 	.globl __NA_DPH1
                                    408 	.globl __NA_DPL1
                                    409 	.globl __NA_DPH0
                                    410 	.globl __NA_DPL0
                                    411 	.globl __NA_SP
                                    412 	.globl __NA_P0
                                    413 	.globl _I2SCLKF2
                                    414 	.globl _I2SCLKF1
                                    415 	.globl _I2SCLKF0
                                    416 	.globl _I2SSTAT
                                    417 	.globl _I2SWCNT
                                    418 	.globl _I2SDATH
                                    419 	.globl _I2SDATL
                                    420 	.globl _I2SCFG1
                                    421 	.globl _I2SCFG0
                                    422 	.globl _VCO_VC_DAC
                                    423 	.globl _PKTSTATUS
                                    424 	.globl _MARCSTATE
                                    425 	.globl _RSSI
                                    426 	.globl _LQI
                                    427 	.globl _FREQEST
                                    428 	.globl _VERSION
                                    429 	.globl _PARTNUM
                                    430 	.globl __XREGDF35
                                    431 	.globl __XREGDF34
                                    432 	.globl __XREGDF33
                                    433 	.globl __XREGDF32
                                    434 	.globl _IOCFG0
                                    435 	.globl _IOCFG1
                                    436 	.globl _IOCFG2
                                    437 	.globl _PA_TABLE0
                                    438 	.globl _PA_TABLE1
                                    439 	.globl _PA_TABLE2
                                    440 	.globl _PA_TABLE3
                                    441 	.globl _PA_TABLE4
                                    442 	.globl _PA_TABLE5
                                    443 	.globl _PA_TABLE6
                                    444 	.globl _PA_TABLE7
                                    445 	.globl __XREGDF26
                                    446 	.globl _TEST0
                                    447 	.globl _TEST1
                                    448 	.globl _TEST2
                                    449 	.globl __XREGDF22
                                    450 	.globl __XREGDF21
                                    451 	.globl __XREGDF20
                                    452 	.globl _FSCAL0
                                    453 	.globl _FSCAL1
                                    454 	.globl _FSCAL2
                                    455 	.globl _FSCAL3
                                    456 	.globl _FREND0
                                    457 	.globl _FREND1
                                    458 	.globl _AGCCTRL0
                                    459 	.globl _AGCCTRL1
                                    460 	.globl _AGCCTRL2
                                    461 	.globl _BSCFG
                                    462 	.globl _FOCCFG
                                    463 	.globl _MCSM0
                                    464 	.globl _MCSM1
                                    465 	.globl _MCSM2
                                    466 	.globl _DEVIATN
                                    467 	.globl _MDMCFG0
                                    468 	.globl _MDMCFG1
                                    469 	.globl _MDMCFG2
                                    470 	.globl _MDMCFG3
                                    471 	.globl _MDMCFG4
                                    472 	.globl _FREQ0
                                    473 	.globl _FREQ1
                                    474 	.globl _FREQ2
                                    475 	.globl _FSCTRL0
                                    476 	.globl _FSCTRL1
                                    477 	.globl _CHANNR
                                    478 	.globl _ADDR
                                    479 	.globl _PKTCTRL0
                                    480 	.globl _PKTCTRL1
                                    481 	.globl _PKTLEN
                                    482 	.globl _SYNC0
                                    483 	.globl _SYNC1
                                    484 	.globl _MDMCTRL0H
                                    485 	.globl _initAES
                                    486 	.globl _setAES
                                    487 	.globl _padAES
                                    488 	.globl _encAES
                                    489 	.globl _decAES
                                    490 	.globl _doAES
                                    491 ;--------------------------------------------------------
                                    492 ; special function registers
                                    493 ;--------------------------------------------------------
                                    494 	.area RSEG    (ABS,DATA)
      000000                        495 	.org 0x0000
                           000080   496 _P0	=	0x0080
                           000081   497 _SP	=	0x0081
                           000082   498 _DPL0	=	0x0082
                           000083   499 _DPH0	=	0x0083
                           000084   500 _DPL1	=	0x0084
                           000085   501 _DPH1	=	0x0085
                           000086   502 _U0CSR	=	0x0086
                           000087   503 _PCON	=	0x0087
                           000088   504 _TCON	=	0x0088
                           000089   505 _P0IFG	=	0x0089
                           00008A   506 _P1IFG	=	0x008a
                           00008B   507 _P2IFG	=	0x008b
                           00008C   508 _PICTL	=	0x008c
                           00008D   509 _P1IEN	=	0x008d
                           00008E   510 __SFR8E	=	0x008e
                           00008F   511 _P0INP	=	0x008f
                           000090   512 _P1	=	0x0090
                           000091   513 _RFIM	=	0x0091
                           000092   514 _DPS	=	0x0092
                           000093   515 _MPAGE	=	0x0093
                           000093   516 __XPAGE	=	0x0093
                           000094   517 __SFR94	=	0x0094
                           000095   518 __SFR95	=	0x0095
                           000096   519 __SFR96	=	0x0096
                           000097   520 __SFR97	=	0x0097
                           000098   521 _S0CON	=	0x0098
                           000099   522 __SFR99	=	0x0099
                           00009A   523 _IEN2	=	0x009a
                           00009B   524 _S1CON	=	0x009b
                           00009C   525 _T2CT	=	0x009c
                           00009D   526 _T2PR	=	0x009d
                           00009E   527 _T2CTL	=	0x009e
                           00009F   528 __SFR9F	=	0x009f
                           0000A0   529 _P2	=	0x00a0
                           0000A1   530 _WORIRQ	=	0x00a1
                           0000A2   531 _WORCTRL	=	0x00a2
                           0000A3   532 _WOREVT0	=	0x00a3
                           0000A4   533 _WOREVT1	=	0x00a4
                           0000A5   534 _WORTIME0	=	0x00a5
                           0000A6   535 _WORTIME1	=	0x00a6
                           0000A7   536 __SFRA7	=	0x00a7
                           0000A8   537 _IEN0	=	0x00a8
                           0000A9   538 _IP0	=	0x00a9
                           0000AA   539 __SFRAA	=	0x00aa
                           0000AB   540 _FWT	=	0x00ab
                           0000AC   541 _FADDRL	=	0x00ac
                           0000AD   542 _FADDRH	=	0x00ad
                           0000AE   543 _FCTL	=	0x00ae
                           0000AF   544 _FWDATA	=	0x00af
                           0000B0   545 __SFRB0	=	0x00b0
                           0000B1   546 _ENCDI	=	0x00b1
                           0000B2   547 _ENCDO	=	0x00b2
                           0000B3   548 _ENCCS	=	0x00b3
                           0000B4   549 _ADCCON1	=	0x00b4
                           0000B5   550 _ADCCON2	=	0x00b5
                           0000B6   551 _ADCCON3	=	0x00b6
                           0000B7   552 __SFRB7	=	0x00b7
                           0000B8   553 _IEN1	=	0x00b8
                           0000B9   554 _IP1	=	0x00b9
                           0000BA   555 _ADCL	=	0x00ba
                           0000BB   556 _ADCH	=	0x00bb
                           0000BC   557 _RNDL	=	0x00bc
                           0000BD   558 _RNDH	=	0x00bd
                           0000BE   559 _SLEEP	=	0x00be
                           0000BF   560 __SFRBF	=	0x00bf
                           0000C0   561 _IRCON	=	0x00c0
                           0000C1   562 _U0DBUF	=	0x00c1
                           0000C2   563 _U0BAUD	=	0x00c2
                           0000C3   564 __SFRC3	=	0x00c3
                           0000C4   565 _U0UCR	=	0x00c4
                           0000C5   566 _U0GCR	=	0x00c5
                           0000C6   567 _CLKCON	=	0x00c6
                           0000C7   568 _MEMCTR	=	0x00c7
                           0000C8   569 __SFRC8	=	0x00c8
                           0000C9   570 _WDCTL	=	0x00c9
                           0000CA   571 _T3CNT	=	0x00ca
                           0000CB   572 _T3CTL	=	0x00cb
                           0000CC   573 _T3CCTL0	=	0x00cc
                           0000CD   574 _T3CC0	=	0x00cd
                           0000CE   575 _T3CCTL1	=	0x00ce
                           0000CF   576 _T3CC1	=	0x00cf
                           0000D0   577 _PSW	=	0x00d0
                           0000D1   578 _DMAIRQ	=	0x00d1
                           0000D2   579 _DMA1CFGL	=	0x00d2
                           0000D3   580 _DMA1CFGH	=	0x00d3
                           0000D4   581 _DMA0CFGL	=	0x00d4
                           0000D5   582 _DMA0CFGH	=	0x00d5
                           0000D6   583 _DMAARM	=	0x00d6
                           0000D7   584 _DMAREQ	=	0x00d7
                           0000D8   585 _TIMIF	=	0x00d8
                           0000D9   586 _RFD	=	0x00d9
                           0000DA   587 _T1CC0L	=	0x00da
                           0000DB   588 _T1CC0H	=	0x00db
                           0000DC   589 _T1CC1L	=	0x00dc
                           0000DD   590 _T1CC1H	=	0x00dd
                           0000DE   591 _T1CC2L	=	0x00de
                           0000DF   592 _T1CC2H	=	0x00df
                           0000E0   593 _ACC	=	0x00e0
                           0000E1   594 _RFST	=	0x00e1
                           0000E2   595 _T1CNTL	=	0x00e2
                           0000E3   596 _T1CNTH	=	0x00e3
                           0000E4   597 _T1CTL	=	0x00e4
                           0000E5   598 _T1CCTL0	=	0x00e5
                           0000E6   599 _T1CCTL1	=	0x00e6
                           0000E7   600 _T1CCTL2	=	0x00e7
                           0000E8   601 _IRCON2	=	0x00e8
                           0000E9   602 _RFIF	=	0x00e9
                           0000EA   603 _T4CNT	=	0x00ea
                           0000EB   604 _T4CTL	=	0x00eb
                           0000EC   605 _T4CCTL0	=	0x00ec
                           0000ED   606 _T4CC0	=	0x00ed
                           0000EE   607 _T4CCTL1	=	0x00ee
                           0000EF   608 _T4CC1	=	0x00ef
                           0000F0   609 _B	=	0x00f0
                           0000F1   610 _PERCFG	=	0x00f1
                           0000F2   611 _ADCCFG	=	0x00f2
                           0000F3   612 _P0SEL	=	0x00f3
                           0000F4   613 _P1SEL	=	0x00f4
                           0000F5   614 _P2SEL	=	0x00f5
                           0000F6   615 _P1INP	=	0x00f6
                           0000F7   616 _P2INP	=	0x00f7
                           0000F8   617 _U1CSR	=	0x00f8
                           0000F9   618 _U1DBUF	=	0x00f9
                           0000FA   619 _U1BAUD	=	0x00fa
                           0000FB   620 _U1UCR	=	0x00fb
                           0000FC   621 _U1GCR	=	0x00fc
                           0000FD   622 _P0DIR	=	0x00fd
                           0000FE   623 _P1DIR	=	0x00fe
                           0000FF   624 _P2DIR	=	0x00ff
                                    625 ;--------------------------------------------------------
                                    626 ; special function bits
                                    627 ;--------------------------------------------------------
                                    628 	.area RSEG    (ABS,DATA)
      000000                        629 	.org 0x0000
                           000080   630 _P0_0	=	0x0080
                           000081   631 _P0_1	=	0x0081
                           000082   632 _P0_2	=	0x0082
                           000083   633 _P0_3	=	0x0083
                           000084   634 _P0_4	=	0x0084
                           000085   635 _P0_5	=	0x0085
                           000086   636 _P0_6	=	0x0086
                           000087   637 _P0_7	=	0x0087
                           000088   638 _IT0	=	0x0088
                           000089   639 _RFTXRXIF	=	0x0089
                           00008A   640 _IT1	=	0x008a
                           00008B   641 _URX0IF	=	0x008b
                           00008D   642 _ADCIF	=	0x008d
                           00008F   643 _URX1IF	=	0x008f
                           000090   644 _P1_0	=	0x0090
                           000091   645 _P1_1	=	0x0091
                           000092   646 _P1_2	=	0x0092
                           000093   647 _P1_3	=	0x0093
                           000094   648 _P1_4	=	0x0094
                           000095   649 _P1_5	=	0x0095
                           000096   650 _P1_6	=	0x0096
                           000097   651 _P1_7	=	0x0097
                           000098   652 _ENCIF_0	=	0x0098
                           000099   653 _ENCIF_1	=	0x0099
                           0000A0   654 _P2_0	=	0x00a0
                           0000A1   655 _P2_1	=	0x00a1
                           0000A2   656 _P2_2	=	0x00a2
                           0000A3   657 _P2_3	=	0x00a3
                           0000A4   658 _P2_4	=	0x00a4
                           0000A5   659 _P2_5	=	0x00a5
                           0000A6   660 _P2_6	=	0x00a6
                           0000A7   661 _P2_7	=	0x00a7
                           0000A8   662 _RFTXRXIE	=	0x00a8
                           0000A9   663 _ADCIE	=	0x00a9
                           0000AA   664 _URX0IE	=	0x00aa
                           0000AB   665 _URX1IE	=	0x00ab
                           0000AC   666 _ENCIE	=	0x00ac
                           0000AD   667 _STIE	=	0x00ad
                           0000AF   668 _EA	=	0x00af
                           0000B8   669 _DMAIE	=	0x00b8
                           0000B9   670 _T1IE	=	0x00b9
                           0000BA   671 _T2IE	=	0x00ba
                           0000BB   672 _T3IE	=	0x00bb
                           0000BC   673 _T4IE	=	0x00bc
                           0000BD   674 _P0IE	=	0x00bd
                           0000C0   675 _DMAIF	=	0x00c0
                           0000C1   676 _T1IF	=	0x00c1
                           0000C2   677 _T2IF	=	0x00c2
                           0000C3   678 _T3IF	=	0x00c3
                           0000C4   679 _T4IF	=	0x00c4
                           0000C5   680 _P0IF	=	0x00c5
                           0000C7   681 _STIF	=	0x00c7
                           0000D0   682 _P	=	0x00d0
                           0000D1   683 _F1	=	0x00d1
                           0000D2   684 _OV	=	0x00d2
                           0000D3   685 _RS0	=	0x00d3
                           0000D4   686 _RS1	=	0x00d4
                           0000D5   687 _F0	=	0x00d5
                           0000D6   688 _AC	=	0x00d6
                           0000D7   689 _CY	=	0x00d7
                           0000D8   690 _T3OVFIF	=	0x00d8
                           0000D9   691 _T3CH0IF	=	0x00d9
                           0000DA   692 _T3CH1IF	=	0x00da
                           0000DB   693 _T4OVFIF	=	0x00db
                           0000DC   694 _T4CH0IF	=	0x00dc
                           0000DD   695 _T4CH1IF	=	0x00dd
                           0000DE   696 _OVFIM	=	0x00de
                           0000E0   697 _ACC_0	=	0x00e0
                           0000E1   698 _ACC_1	=	0x00e1
                           0000E2   699 _ACC_2	=	0x00e2
                           0000E3   700 _ACC_3	=	0x00e3
                           0000E4   701 _ACC_4	=	0x00e4
                           0000E5   702 _ACC_5	=	0x00e5
                           0000E6   703 _ACC_6	=	0x00e6
                           0000E7   704 _ACC_7	=	0x00e7
                           0000E8   705 _P2IF	=	0x00e8
                           0000E9   706 _UTX0IF	=	0x00e9
                           0000EA   707 _UTX1IF	=	0x00ea
                           0000EB   708 _P1IF	=	0x00eb
                           0000EC   709 _WDTIF	=	0x00ec
                           0000F0   710 _B_0	=	0x00f0
                           0000F1   711 _B_1	=	0x00f1
                           0000F2   712 _B_2	=	0x00f2
                           0000F3   713 _B_3	=	0x00f3
                           0000F4   714 _B_4	=	0x00f4
                           0000F5   715 _B_5	=	0x00f5
                           0000F6   716 _B_6	=	0x00f6
                           0000F7   717 _B_7	=	0x00f7
                           0000F8   718 _ACTIVE	=	0x00f8
                           0000F9   719 _TX_BYTE	=	0x00f9
                           0000FA   720 _RX_BYTE	=	0x00fa
                           0000FB   721 _ERR	=	0x00fb
                           0000FC   722 _FE	=	0x00fc
                           0000FD   723 _SLAVE	=	0x00fd
                           0000FE   724 _RE	=	0x00fe
                           0000FF   725 _MODE	=	0x00ff
                           0000E8   726 _USBIF	=	0x00e8
                                    727 ;--------------------------------------------------------
                                    728 ; overlayable register banks
                                    729 ;--------------------------------------------------------
                                    730 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        731 	.ds 8
                                    732 ;--------------------------------------------------------
                                    733 ; internal ram data
                                    734 ;--------------------------------------------------------
                                    735 	.area DSEG    (DATA)
                                    736 ;--------------------------------------------------------
                                    737 ; overlayable items in internal ram 
                                    738 ;--------------------------------------------------------
                                    739 	.area	OSEG    (OVR,DATA)
      000027                        740 _doAES_sloc0_1_0:
      000027                        741 	.ds 2
      000029                        742 _doAES_sloc1_1_0:
      000029                        743 	.ds 2
      00002B                        744 _doAES_sloc2_1_0:
      00002B                        745 	.ds 1
      00002C                        746 _doAES_sloc3_1_0:
      00002C                        747 	.ds 1
      00002D                        748 _doAES_sloc4_1_0:
      00002D                        749 	.ds 2
                                    750 ;--------------------------------------------------------
                                    751 ; indirectly addressable internal ram data
                                    752 ;--------------------------------------------------------
                                    753 	.area ISEG    (DATA)
                                    754 ;--------------------------------------------------------
                                    755 ; absolute internal ram data
                                    756 ;--------------------------------------------------------
                                    757 	.area IABS    (ABS,DATA)
                                    758 	.area IABS    (ABS,DATA)
                                    759 ;--------------------------------------------------------
                                    760 ; bit data
                                    761 ;--------------------------------------------------------
                                    762 	.area BSEG    (BIT)
                                    763 ;--------------------------------------------------------
                                    764 ; paged external ram data
                                    765 ;--------------------------------------------------------
                                    766 	.area PSEG    (PAG,XDATA)
                                    767 ;--------------------------------------------------------
                                    768 ; external ram data
                                    769 ;--------------------------------------------------------
                                    770 	.area XSEG    (XDATA)
                           00DF02   771 _MDMCTRL0H	=	0xdf02
                           00DF00   772 _SYNC1	=	0xdf00
                           00DF01   773 _SYNC0	=	0xdf01
                           00DF02   774 _PKTLEN	=	0xdf02
                           00DF03   775 _PKTCTRL1	=	0xdf03
                           00DF04   776 _PKTCTRL0	=	0xdf04
                           00DF05   777 _ADDR	=	0xdf05
                           00DF06   778 _CHANNR	=	0xdf06
                           00DF07   779 _FSCTRL1	=	0xdf07
                           00DF08   780 _FSCTRL0	=	0xdf08
                           00DF09   781 _FREQ2	=	0xdf09
                           00DF0A   782 _FREQ1	=	0xdf0a
                           00DF0B   783 _FREQ0	=	0xdf0b
                           00DF0C   784 _MDMCFG4	=	0xdf0c
                           00DF0D   785 _MDMCFG3	=	0xdf0d
                           00DF0E   786 _MDMCFG2	=	0xdf0e
                           00DF0F   787 _MDMCFG1	=	0xdf0f
                           00DF10   788 _MDMCFG0	=	0xdf10
                           00DF11   789 _DEVIATN	=	0xdf11
                           00DF12   790 _MCSM2	=	0xdf12
                           00DF13   791 _MCSM1	=	0xdf13
                           00DF14   792 _MCSM0	=	0xdf14
                           00DF15   793 _FOCCFG	=	0xdf15
                           00DF16   794 _BSCFG	=	0xdf16
                           00DF17   795 _AGCCTRL2	=	0xdf17
                           00DF18   796 _AGCCTRL1	=	0xdf18
                           00DF19   797 _AGCCTRL0	=	0xdf19
                           00DF1A   798 _FREND1	=	0xdf1a
                           00DF1B   799 _FREND0	=	0xdf1b
                           00DF1C   800 _FSCAL3	=	0xdf1c
                           00DF1D   801 _FSCAL2	=	0xdf1d
                           00DF1E   802 _FSCAL1	=	0xdf1e
                           00DF1F   803 _FSCAL0	=	0xdf1f
                           00DF20   804 __XREGDF20	=	0xdf20
                           00DF21   805 __XREGDF21	=	0xdf21
                           00DF22   806 __XREGDF22	=	0xdf22
                           00DF23   807 _TEST2	=	0xdf23
                           00DF24   808 _TEST1	=	0xdf24
                           00DF25   809 _TEST0	=	0xdf25
                           00DF26   810 __XREGDF26	=	0xdf26
                           00DF27   811 _PA_TABLE7	=	0xdf27
                           00DF28   812 _PA_TABLE6	=	0xdf28
                           00DF29   813 _PA_TABLE5	=	0xdf29
                           00DF2A   814 _PA_TABLE4	=	0xdf2a
                           00DF2B   815 _PA_TABLE3	=	0xdf2b
                           00DF2C   816 _PA_TABLE2	=	0xdf2c
                           00DF2D   817 _PA_TABLE1	=	0xdf2d
                           00DF2E   818 _PA_TABLE0	=	0xdf2e
                           00DF2F   819 _IOCFG2	=	0xdf2f
                           00DF30   820 _IOCFG1	=	0xdf30
                           00DF31   821 _IOCFG0	=	0xdf31
                           00DF32   822 __XREGDF32	=	0xdf32
                           00DF33   823 __XREGDF33	=	0xdf33
                           00DF34   824 __XREGDF34	=	0xdf34
                           00DF35   825 __XREGDF35	=	0xdf35
                           00DF36   826 _PARTNUM	=	0xdf36
                           00DF37   827 _VERSION	=	0xdf37
                           00DF38   828 _FREQEST	=	0xdf38
                           00DF39   829 _LQI	=	0xdf39
                           00DF3A   830 _RSSI	=	0xdf3a
                           00DF3B   831 _MARCSTATE	=	0xdf3b
                           00DF3C   832 _PKTSTATUS	=	0xdf3c
                           00DF3D   833 _VCO_VC_DAC	=	0xdf3d
                           00DF40   834 _I2SCFG0	=	0xdf40
                           00DF41   835 _I2SCFG1	=	0xdf41
                           00DF42   836 _I2SDATL	=	0xdf42
                           00DF43   837 _I2SDATH	=	0xdf43
                           00DF44   838 _I2SWCNT	=	0xdf44
                           00DF45   839 _I2SSTAT	=	0xdf45
                           00DF46   840 _I2SCLKF0	=	0xdf46
                           00DF47   841 _I2SCLKF1	=	0xdf47
                           00DF48   842 _I2SCLKF2	=	0xdf48
                           00DF80   843 __NA_P0	=	0xdf80
                           00DF81   844 __NA_SP	=	0xdf81
                           00DF82   845 __NA_DPL0	=	0xdf82
                           00DF83   846 __NA_DPH0	=	0xdf83
                           00DF84   847 __NA_DPL1	=	0xdf84
                           00DF85   848 __NA_DPH1	=	0xdf85
                           00DF86   849 _X_U0CSR	=	0xdf86
                           00DF87   850 __NA_PCON	=	0xdf87
                           00DF88   851 __NA_TCON	=	0xdf88
                           00DF89   852 _X_P0IFG	=	0xdf89
                           00DF8A   853 _X_P1IFG	=	0xdf8a
                           00DF8B   854 _X_P2IFG	=	0xdf8b
                           00DF8C   855 _X_PICTL	=	0xdf8c
                           00DF8D   856 _X_P1IEN	=	0xdf8d
                           00DF8E   857 __X_SFR8E	=	0xdf8e
                           00DF8F   858 _X_P0INP	=	0xdf8f
                           00DF90   859 __NA_P1	=	0xdf90
                           00DF91   860 _X_RFIM	=	0xdf91
                           00DF92   861 __NA_DPS	=	0xdf92
                           00DF93   862 _X_MPAGE	=	0xdf93
                           00DF94   863 __X_SFR94	=	0xdf94
                           00DF95   864 __X_SFR95	=	0xdf95
                           00DF96   865 __X_SFR96	=	0xdf96
                           00DF97   866 __X_SFR97	=	0xdf97
                           00DF98   867 __NA_S0CON	=	0xdf98
                           00DF99   868 __X_SFR99	=	0xdf99
                           00DF9A   869 __NA_IEN2	=	0xdf9a
                           00DF9B   870 __NA_S1CON	=	0xdf9b
                           00DF9C   871 _X_T2CT	=	0xdf9c
                           00DF9D   872 _X_T2PR	=	0xdf9d
                           00DF9E   873 _X_T2CTL	=	0xdf9e
                           00DF9F   874 __X_SFR9F	=	0xdf9f
                           00DFA0   875 __NA_P2	=	0xdfa0
                           00DFA1   876 _X_WORIRQ	=	0xdfa1
                           00DFA2   877 _X_WORCTRL	=	0xdfa2
                           00DFA3   878 _X_WOREVT0	=	0xdfa3
                           00DFA4   879 _X_WOREVT1	=	0xdfa4
                           00DFA5   880 _X_WORTIME0	=	0xdfa5
                           00DFA6   881 _X_WORTIME1	=	0xdfa6
                           00DFA7   882 __X_SFRA7	=	0xdfa7
                           00DFA8   883 __NA_IEN0	=	0xdfa8
                           00DFA9   884 __NA_IP0	=	0xdfa9
                           00DFAA   885 __X_SFRAA	=	0xdfaa
                           00DFAB   886 _X_FWT	=	0xdfab
                           00DFAC   887 _X_FADDRL	=	0xdfac
                           00DFAD   888 _X_FADDRH	=	0xdfad
                           00DFAE   889 _X_FCTL	=	0xdfae
                           00DFAF   890 _X_FWDATA	=	0xdfaf
                           00DFB0   891 __X_SFRB0	=	0xdfb0
                           00DFB1   892 _X_ENCDI	=	0xdfb1
                           00DFB2   893 _X_ENCDO	=	0xdfb2
                           00DFB3   894 _X_ENCCS	=	0xdfb3
                           00DFB4   895 _X_ADCCON1	=	0xdfb4
                           00DFB5   896 _X_ADCCON2	=	0xdfb5
                           00DFB6   897 _X_ADCCON3	=	0xdfb6
                           00DFB7   898 __X_SFRB7	=	0xdfb7
                           00DFB8   899 __NA_IEN1	=	0xdfb8
                           00DFB9   900 __NA_IP1	=	0xdfb9
                           00DFBA   901 _X_ADCL	=	0xdfba
                           00DFBB   902 _X_ADCH	=	0xdfbb
                           00DFBC   903 _X_RNDL	=	0xdfbc
                           00DFBD   904 _X_RNDH	=	0xdfbd
                           00DFBE   905 _X_SLEEP	=	0xdfbe
                           00DFBF   906 __X_SFRBF	=	0xdfbf
                           00DFC0   907 __NA_IRCON	=	0xdfc0
                           00DFC1   908 _X_U0DBUF	=	0xdfc1
                           00DFC2   909 _X_U0BAUD	=	0xdfc2
                           00DFC3   910 __X_SFRC3	=	0xdfc3
                           00DFC4   911 _X_U0UCR	=	0xdfc4
                           00DFC5   912 _X_U0GCR	=	0xdfc5
                           00DFC6   913 _X_CLKCON	=	0xdfc6
                           00DFC7   914 _X_MEMCTR	=	0xdfc7
                           00DFC8   915 __X_SFRC8	=	0xdfc8
                           00DFC9   916 _X_WDCTL	=	0xdfc9
                           00DFCA   917 _X_T3CNT	=	0xdfca
                           00DFCB   918 _X_T3CTL	=	0xdfcb
                           00DFCC   919 _X_T3CCTL0	=	0xdfcc
                           00DFCD   920 _X_T3CC0	=	0xdfcd
                           00DFCE   921 _X_T3CCTL1	=	0xdfce
                           00DFCF   922 _X_T3CC1	=	0xdfcf
                           00DFD0   923 __NA_PSW	=	0xdfd0
                           00DFD1   924 _X_DMAIRQ	=	0xdfd1
                           00DFD2   925 _X_DMA1CFGL	=	0xdfd2
                           00DFD3   926 _X_DMA1CFGH	=	0xdfd3
                           00DFD4   927 _X_DMA0CFGL	=	0xdfd4
                           00DFD5   928 _X_DMA0CFGH	=	0xdfd5
                           00DFD6   929 _X_DMAARM	=	0xdfd6
                           00DFD7   930 _X_DMAREQ	=	0xdfd7
                           00DFD8   931 _X_TIMIF	=	0xdfd8
                           00DFD9   932 _X_RFD	=	0xdfd9
                           00DFDA   933 _X_T1CC0L	=	0xdfda
                           00DFDB   934 _X_T1CC0H	=	0xdfdb
                           00DFDC   935 _X_T1CC1L	=	0xdfdc
                           00DFDD   936 _X_T1CC1H	=	0xdfdd
                           00DFDE   937 _X_T1CC2L	=	0xdfde
                           00DFDF   938 _X_T1CC2H	=	0xdfdf
                           00DFE0   939 __NA_ACC	=	0xdfe0
                           00DFE1   940 _X_RFST	=	0xdfe1
                           00DFE2   941 _X_T1CNTL	=	0xdfe2
                           00DFE3   942 _X_T1CNTH	=	0xdfe3
                           00DFE4   943 _X_T1CTL	=	0xdfe4
                           00DFE5   944 _X_T1CCTL0	=	0xdfe5
                           00DFE6   945 _X_T1CCTL1	=	0xdfe6
                           00DFE7   946 _X_T1CCTL2	=	0xdfe7
                           00DFE8   947 __NA_IRCON2	=	0xdfe8
                           00DFE9   948 _X_RFIF	=	0xdfe9
                           00DFEA   949 _X_T4CNT	=	0xdfea
                           00DFEB   950 _X_T4CTL	=	0xdfeb
                           00DFEC   951 _X_T4CCTL0	=	0xdfec
                           00DFED   952 _X_T4CC0	=	0xdfed
                           00DFEE   953 _X_T4CCTL1	=	0xdfee
                           00DFEF   954 _X_T4CC1	=	0xdfef
                           00DFF0   955 __NA_B	=	0xdff0
                           00DFF1   956 _X_PERCFG	=	0xdff1
                           00DFF2   957 _X_ADCCFG	=	0xdff2
                           00DFF3   958 _X_P0SEL	=	0xdff3
                           00DFF4   959 _X_P1SEL	=	0xdff4
                           00DFF5   960 _X_P2SEL	=	0xdff5
                           00DFF6   961 _X_P1INP	=	0xdff6
                           00DFF7   962 _X_P2INP	=	0xdff7
                           00DFF8   963 _X_U1CSR	=	0xdff8
                           00DFF9   964 _X_U1DBUF	=	0xdff9
                           00DFFA   965 _X_U1BAUD	=	0xdffa
                           00DFFB   966 _X_U1UCR	=	0xdffb
                           00DFFC   967 _X_U1GCR	=	0xdffc
                           00DFFD   968 _X_P0DIR	=	0xdffd
                           00DFFE   969 _X_P1DIR	=	0xdffe
                           00DFFF   970 _X_P2DIR	=	0xdfff
                           00DE00   971 _USBADDR	=	0xde00
                           00DE01   972 _USBPOW	=	0xde01
                           00DE02   973 _USBIIF	=	0xde02
                           00DE04   974 _USBOIF	=	0xde04
                           00DE06   975 _USBCIF	=	0xde06
                           00DE07   976 _USBIIE	=	0xde07
                           00DE09   977 _USBOIE	=	0xde09
                           00DE0B   978 _USBCIE	=	0xde0b
                           00DE0C   979 _USBFRML	=	0xde0c
                           00DE0D   980 _USBFRMH	=	0xde0d
                           00DE0E   981 _USBINDEX	=	0xde0e
                           00DE10   982 _USBMAXI	=	0xde10
                           00DE11   983 _USBCS0	=	0xde11
                           00DE11   984 _USBCSIL	=	0xde11
                           00DE12   985 _USBCSIH	=	0xde12
                           00DE13   986 _USBMAXO	=	0xde13
                           00DE14   987 _USBCSOL	=	0xde14
                           00DE15   988 _USBCSOH	=	0xde15
                           00DE16   989 _USBCNT0	=	0xde16
                           00DE16   990 _USBCNTL	=	0xde16
                           00DE17   991 _USBCNTH	=	0xde17
                           00DE20   992 _USBF0	=	0xde20
                           00DE22   993 _USBF1	=	0xde22
                           00DE24   994 _USBF2	=	0xde24
                           00DE26   995 _USBF3	=	0xde26
                           00DE28   996 _USBF4	=	0xde28
                           00DE2A   997 _USBF5	=	0xde2a
      00FDBF                        998 _aesdmai::
      00FDBF                        999 	.ds 2
      00FDC1                       1000 _aesdmao::
      00FDC1                       1001 	.ds 2
      00FDC3                       1002 _aesdmachani::
      00FDC3                       1003 	.ds 1
      00FDC4                       1004 _aesdmaarmi::
      00FDC4                       1005 	.ds 1
      00FDC5                       1006 _aesdmachano::
      00FDC5                       1007 	.ds 1
      00FDC6                       1008 _aesdmaarmo::
      00FDC6                       1009 	.ds 1
      00FDC7                       1010 _setAES_PARM_2:
      00FDC7                       1011 	.ds 1
      00FDC8                       1012 _setAES_PARM_3:
      00FDC8                       1013 	.ds 1
      00FDC9                       1014 _setAES_buf_1_56:
      00FDC9                       1015 	.ds 2
      00FDCB                       1016 _padAES_PARM_2:
      00FDCB                       1017 	.ds 2
      00FDCD                       1018 _padAES_buf_1_58:
      00FDCD                       1019 	.ds 2
      00FDCF                       1020 _encAES_PARM_2:
      00FDCF                       1021 	.ds 2
      00FDD1                       1022 _encAES_PARM_3:
      00FDD1                       1023 	.ds 2
      00FDD3                       1024 _encAES_PARM_4:
      00FDD3                       1025 	.ds 1
      00FDD4                       1026 _encAES_inbuf_1_60:
      00FDD4                       1027 	.ds 2
      00FDD6                       1028 _decAES_PARM_2:
      00FDD6                       1029 	.ds 2
      00FDD8                       1030 _decAES_PARM_3:
      00FDD8                       1031 	.ds 2
      00FDDA                       1032 _decAES_PARM_4:
      00FDDA                       1033 	.ds 1
      00FDDB                       1034 _decAES_inbuf_1_62:
      00FDDB                       1035 	.ds 2
      00FDDD                       1036 _doAES_PARM_2:
      00FDDD                       1037 	.ds 2
      00FDDF                       1038 _doAES_PARM_3:
      00FDDF                       1039 	.ds 2
      00FDE1                       1040 _doAES_PARM_4:
      00FDE1                       1041 	.ds 1
      00FDE2                       1042 _doAES_PARM_5:
      00FDE2                       1043 	.ds 1
      00FDE3                       1044 _doAES_inbuf_1_64:
      00FDE3                       1045 	.ds 2
                                   1046 ;--------------------------------------------------------
                                   1047 ; absolute external ram data
                                   1048 ;--------------------------------------------------------
                                   1049 	.area XABS    (ABS,XDATA)
                                   1050 ;--------------------------------------------------------
                                   1051 ; external initialized ram data
                                   1052 ;--------------------------------------------------------
                                   1053 	.area XISEG   (XDATA)
                                   1054 	.area HOME    (CODE)
                                   1055 	.area GSINIT0 (CODE)
                                   1056 	.area GSINIT1 (CODE)
                                   1057 	.area GSINIT2 (CODE)
                                   1058 	.area GSINIT3 (CODE)
                                   1059 	.area GSINIT4 (CODE)
                                   1060 	.area GSINIT5 (CODE)
                                   1061 	.area GSINIT  (CODE)
                                   1062 	.area GSFINAL (CODE)
                                   1063 	.area CSEG    (CODE)
                                   1064 ;--------------------------------------------------------
                                   1065 ; global & static initialisations
                                   1066 ;--------------------------------------------------------
                                   1067 	.area HOME    (CODE)
                                   1068 	.area GSINIT  (CODE)
                                   1069 	.area GSFINAL (CODE)
                                   1070 	.area GSINIT  (CODE)
                                   1071 ;--------------------------------------------------------
                                   1072 ; Home
                                   1073 ;--------------------------------------------------------
                                   1074 	.area HOME    (CODE)
                                   1075 	.area HOME    (CODE)
                                   1076 ;--------------------------------------------------------
                                   1077 ; code
                                   1078 ;--------------------------------------------------------
                                   1079 	.area CSEG    (CODE)
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'initAES'
                                   1082 ;------------------------------------------------------------
                                   1083 ;	cc1111_aes.c:13: void initAES(void)
                                   1084 ;	-----------------------------------------
                                   1085 ;	 function initAES
                                   1086 ;	-----------------------------------------
      002A0C                       1087 _initAES:
                           000007  1088 	ar7 = 0x07
                           000006  1089 	ar6 = 0x06
                           000005  1090 	ar5 = 0x05
                           000004  1091 	ar4 = 0x04
                           000003  1092 	ar3 = 0x03
                           000002  1093 	ar2 = 0x02
                           000001  1094 	ar1 = 0x01
                           000000  1095 	ar0 = 0x00
                                   1096 ;	cc1111_aes.c:18: aesdmachani= getDMA();                    // allocate a DMA channel
      002A0C 12 1D 83         [24] 1097 	lcall	_getDMA
      002A0F AF 82            [24] 1098 	mov	r7,dpl
      002A11 90 FD C3         [24] 1099 	mov	dptr,#_aesdmachani
      002A14 EF               [12] 1100 	mov	a,r7
      002A15 F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	cc1111_aes.c:19: aesdmaarmi= (DMAARM0 << aesdmachani);     // pre-calculate arming bit
      002A16 8F F0            [24] 1103 	mov	b,r7
      002A18 05 F0            [12] 1104 	inc	b
      002A1A 74 01            [12] 1105 	mov	a,#0x01
      002A1C 80 02            [24] 1106 	sjmp	00105$
      002A1E                       1107 00103$:
      002A1E 25 E0            [12] 1108 	add	a,acc
      002A20                       1109 00105$:
      002A20 D5 F0 FB         [24] 1110 	djnz	b,00103$
      002A23 90 FD C4         [24] 1111 	mov	dptr,#_aesdmaarmi
      002A26 F0               [24] 1112 	movx	@dptr,a
                                   1113 ;	cc1111_aes.c:20: aesdmai= &dma_configs[aesdmachani];       // point our DMA descriptor at allocated channel descriptor
      002A27 EF               [12] 1114 	mov	a,r7
      002A28 75 F0 08         [24] 1115 	mov	b,#0x08
      002A2B A4               [48] 1116 	mul	ab
      002A2C 24 67            [12] 1117 	add	a,#_dma_configs
      002A2E FE               [12] 1118 	mov	r6,a
      002A2F 74 F9            [12] 1119 	mov	a,#(_dma_configs >> 8)
      002A31 35 F0            [12] 1120 	addc	a,b
      002A33 FF               [12] 1121 	mov	r7,a
      002A34 90 FD BF         [24] 1122 	mov	dptr,#_aesdmai
      002A37 EE               [12] 1123 	mov	a,r6
      002A38 F0               [24] 1124 	movx	@dptr,a
      002A39 EF               [12] 1125 	mov	a,r7
      002A3A A3               [24] 1126 	inc	dptr
      002A3B F0               [24] 1127 	movx	@dptr,a
                                   1128 ;	cc1111_aes.c:21: aesdmai->destAddrH = 0xdf;                // ENCDI == 0xdfb1 - AES Input SFR
      002A3C 8E 82            [24] 1129 	mov	dpl,r6
      002A3E 8F 83            [24] 1130 	mov	dph,r7
      002A40 A3               [24] 1131 	inc	dptr
      002A41 A3               [24] 1132 	inc	dptr
      002A42 74 DF            [12] 1133 	mov	a,#0xDF
      002A44 F0               [24] 1134 	movx	@dptr,a
                                   1135 ;	cc1111_aes.c:22: aesdmai->destAddrL = 0xb1;
      002A45 8E 82            [24] 1136 	mov	dpl,r6
      002A47 8F 83            [24] 1137 	mov	dph,r7
      002A49 A3               [24] 1138 	inc	dptr
      002A4A A3               [24] 1139 	inc	dptr
      002A4B A3               [24] 1140 	inc	dptr
      002A4C 74 B1            [12] 1141 	mov	a,#0xB1
      002A4E F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	cc1111_aes.c:23: aesdmai->lenL = 16;                       // always 128 bit operations
      002A4F 8E 82            [24] 1144 	mov	dpl,r6
      002A51 8F 83            [24] 1145 	mov	dph,r7
      002A53 A3               [24] 1146 	inc	dptr
      002A54 A3               [24] 1147 	inc	dptr
      002A55 A3               [24] 1148 	inc	dptr
      002A56 A3               [24] 1149 	inc	dptr
      002A57 A3               [24] 1150 	inc	dptr
      002A58 74 10            [12] 1151 	mov	a,#0x10
      002A5A F0               [24] 1152 	movx	@dptr,a
                                   1153 ;	cc1111_aes.c:24: aesdmai->trig = DMA_CFG0_TRIGGER_ENC_DW;  // trigger when co-processor requests data
      002A5B 74 06            [12] 1154 	mov	a,#0x06
      002A5D 2E               [12] 1155 	add	a,r6
      002A5E F5 82            [12] 1156 	mov	dpl,a
      002A60 E4               [12] 1157 	clr	a
      002A61 3F               [12] 1158 	addc	a,r7
      002A62 F5 83            [12] 1159 	mov	dph,a
      002A64 E0               [24] 1160 	movx	a,@dptr
      002A65 54 E0            [12] 1161 	anl	a,#0xE0
      002A67 44 1D            [12] 1162 	orl	a,#0x1D
      002A69 F0               [24] 1163 	movx	@dptr,a
                                   1164 ;	cc1111_aes.c:25: aesdmai->srcInc = 1;
      002A6A 74 07            [12] 1165 	mov	a,#0x07
      002A6C 2E               [12] 1166 	add	a,r6
      002A6D F5 82            [12] 1167 	mov	dpl,a
      002A6F E4               [12] 1168 	clr	a
      002A70 3F               [12] 1169 	addc	a,r7
      002A71 F5 83            [12] 1170 	mov	dph,a
      002A73 E0               [24] 1171 	movx	a,@dptr
      002A74 54 3F            [12] 1172 	anl	a,#0x3F
      002A76 44 40            [12] 1173 	orl	a,#0x40
      002A78 F0               [24] 1174 	movx	@dptr,a
                                   1175 ;	cc1111_aes.c:26: aesdmai->priority = 1;
      002A79 74 07            [12] 1176 	mov	a,#0x07
      002A7B 2E               [12] 1177 	add	a,r6
      002A7C F5 82            [12] 1178 	mov	dpl,a
      002A7E E4               [12] 1179 	clr	a
      002A7F 3F               [12] 1180 	addc	a,r7
      002A80 F5 83            [12] 1181 	mov	dph,a
      002A82 E0               [24] 1182 	movx	a,@dptr
      002A83 54 FC            [12] 1183 	anl	a,#0xFC
      002A85 44 01            [12] 1184 	orl	a,#0x01
      002A87 F0               [24] 1185 	movx	@dptr,a
                                   1186 ;	cc1111_aes.c:29: aesdmachano= getDMA();
      002A88 12 1D 83         [24] 1187 	lcall	_getDMA
      002A8B AF 82            [24] 1188 	mov	r7,dpl
      002A8D 90 FD C5         [24] 1189 	mov	dptr,#_aesdmachano
      002A90 EF               [12] 1190 	mov	a,r7
      002A91 F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	cc1111_aes.c:30: aesdmaarmo= (DMAARM0 << aesdmachano);
      002A92 8F F0            [24] 1193 	mov	b,r7
      002A94 05 F0            [12] 1194 	inc	b
      002A96 74 01            [12] 1195 	mov	a,#0x01
      002A98 80 02            [24] 1196 	sjmp	00108$
      002A9A                       1197 00106$:
      002A9A 25 E0            [12] 1198 	add	a,acc
      002A9C                       1199 00108$:
      002A9C D5 F0 FB         [24] 1200 	djnz	b,00106$
      002A9F 90 FD C6         [24] 1201 	mov	dptr,#_aesdmaarmo
      002AA2 F0               [24] 1202 	movx	@dptr,a
                                   1203 ;	cc1111_aes.c:31: aesdmao= &dma_configs[aesdmachano];
      002AA3 EF               [12] 1204 	mov	a,r7
      002AA4 75 F0 08         [24] 1205 	mov	b,#0x08
      002AA7 A4               [48] 1206 	mul	ab
      002AA8 24 67            [12] 1207 	add	a,#_dma_configs
      002AAA FE               [12] 1208 	mov	r6,a
      002AAB 74 F9            [12] 1209 	mov	a,#(_dma_configs >> 8)
      002AAD 35 F0            [12] 1210 	addc	a,b
      002AAF FF               [12] 1211 	mov	r7,a
      002AB0 90 FD C1         [24] 1212 	mov	dptr,#_aesdmao
      002AB3 EE               [12] 1213 	mov	a,r6
      002AB4 F0               [24] 1214 	movx	@dptr,a
      002AB5 EF               [12] 1215 	mov	a,r7
      002AB6 A3               [24] 1216 	inc	dptr
      002AB7 F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	cc1111_aes.c:32: aesdmao->srcAddrH = 0xdf;                 // ENCDO == 0xdfb2 - AES Output SFR
      002AB8 8E 82            [24] 1219 	mov	dpl,r6
      002ABA 8F 83            [24] 1220 	mov	dph,r7
      002ABC 74 DF            [12] 1221 	mov	a,#0xDF
      002ABE F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	cc1111_aes.c:33: aesdmao->srcAddrL = 0xb2;
      002ABF 8E 82            [24] 1224 	mov	dpl,r6
      002AC1 8F 83            [24] 1225 	mov	dph,r7
      002AC3 A3               [24] 1226 	inc	dptr
      002AC4 74 B2            [12] 1227 	mov	a,#0xB2
      002AC6 F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	cc1111_aes.c:34: aesdmao->lenL = 16;
      002AC7 8E 82            [24] 1230 	mov	dpl,r6
      002AC9 8F 83            [24] 1231 	mov	dph,r7
      002ACB A3               [24] 1232 	inc	dptr
      002ACC A3               [24] 1233 	inc	dptr
      002ACD A3               [24] 1234 	inc	dptr
      002ACE A3               [24] 1235 	inc	dptr
      002ACF A3               [24] 1236 	inc	dptr
      002AD0 74 10            [12] 1237 	mov	a,#0x10
      002AD2 F0               [24] 1238 	movx	@dptr,a
                                   1239 ;	cc1111_aes.c:35: aesdmao->trig = DMA_CFG0_TRIGGER_DNC_UP;  // trigger when co-processor signals upload ready
      002AD3 74 06            [12] 1240 	mov	a,#0x06
      002AD5 2E               [12] 1241 	add	a,r6
      002AD6 F5 82            [12] 1242 	mov	dpl,a
      002AD8 E4               [12] 1243 	clr	a
      002AD9 3F               [12] 1244 	addc	a,r7
      002ADA F5 83            [12] 1245 	mov	dph,a
      002ADC E0               [24] 1246 	movx	a,@dptr
      002ADD 54 E0            [12] 1247 	anl	a,#0xE0
      002ADF 44 1E            [12] 1248 	orl	a,#0x1E
      002AE1 F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	cc1111_aes.c:36: aesdmao->destInc = 1;
      002AE2 74 07            [12] 1251 	mov	a,#0x07
      002AE4 2E               [12] 1252 	add	a,r6
      002AE5 F5 82            [12] 1253 	mov	dpl,a
      002AE7 E4               [12] 1254 	clr	a
      002AE8 3F               [12] 1255 	addc	a,r7
      002AE9 F5 83            [12] 1256 	mov	dph,a
      002AEB E0               [24] 1257 	movx	a,@dptr
      002AEC 54 CF            [12] 1258 	anl	a,#0xCF
      002AEE 44 10            [12] 1259 	orl	a,#0x10
      002AF0 F0               [24] 1260 	movx	@dptr,a
                                   1261 ;	cc1111_aes.c:37: aesdmao->priority = 1;
      002AF1 74 07            [12] 1262 	mov	a,#0x07
      002AF3 2E               [12] 1263 	add	a,r6
      002AF4 F5 82            [12] 1264 	mov	dpl,a
      002AF6 E4               [12] 1265 	clr	a
      002AF7 3F               [12] 1266 	addc	a,r7
      002AF8 F5 83            [12] 1267 	mov	dph,a
      002AFA E0               [24] 1268 	movx	a,@dptr
      002AFB 54 FC            [12] 1269 	anl	a,#0xFC
      002AFD 44 01            [12] 1270 	orl	a,#0x01
      002AFF F0               [24] 1271 	movx	@dptr,a
                                   1272 ;	cc1111_aes.c:40: IP0 |= BIT4;
      002B00 43 A9 10         [24] 1273 	orl	_IP0,#0x10
                                   1274 ;	cc1111_aes.c:41: IP1 |= BIT4;
      002B03 43 B9 10         [24] 1275 	orl	_IP1,#0x10
      002B06 22               [24] 1276 	ret
                                   1277 ;------------------------------------------------------------
                                   1278 ;Allocation info for local variables in function 'setAES'
                                   1279 ;------------------------------------------------------------
                                   1280 ;command                   Allocated with name '_setAES_PARM_2'
                                   1281 ;mode                      Allocated with name '_setAES_PARM_3'
                                   1282 ;buf                       Allocated with name '_setAES_buf_1_56'
                                   1283 ;------------------------------------------------------------
                                   1284 ;	cc1111_aes.c:45: void setAES(__xdata u8* __xdata buf, __xdata u8 command, __xdata u8 mode)
                                   1285 ;	-----------------------------------------
                                   1286 ;	 function setAES
                                   1287 ;	-----------------------------------------
      002B07                       1288 _setAES:
      002B07 AF 83            [24] 1289 	mov	r7,dph
      002B09 E5 82            [12] 1290 	mov	a,dpl
      002B0B 90 FD C9         [24] 1291 	mov	dptr,#_setAES_buf_1_56
      002B0E F0               [24] 1292 	movx	@dptr,a
      002B0F EF               [12] 1293 	mov	a,r7
      002B10 A3               [24] 1294 	inc	dptr
      002B11 F0               [24] 1295 	movx	@dptr,a
                                   1296 ;	cc1111_aes.c:48: while(!(ENCCS & ENCCS_RDY))
      002B12                       1297 00101$:
      002B12 E5 B3            [12] 1298 	mov	a,_ENCCS
      002B14 30 E3 FB         [24] 1299 	jnb	acc.3,00101$
                                   1300 ;	cc1111_aes.c:52: aesdmai->srcAddrH = (u8) ((u16) buf >> 8);
      002B17 90 FD BF         [24] 1301 	mov	dptr,#_aesdmai
      002B1A E0               [24] 1302 	movx	a,@dptr
      002B1B FE               [12] 1303 	mov	r6,a
      002B1C A3               [24] 1304 	inc	dptr
      002B1D E0               [24] 1305 	movx	a,@dptr
      002B1E FF               [12] 1306 	mov	r7,a
      002B1F 90 FD C9         [24] 1307 	mov	dptr,#_setAES_buf_1_56
      002B22 E0               [24] 1308 	movx	a,@dptr
      002B23 FC               [12] 1309 	mov	r4,a
      002B24 A3               [24] 1310 	inc	dptr
      002B25 E0               [24] 1311 	movx	a,@dptr
      002B26 FD               [12] 1312 	mov	r5,a
      002B27 8C 02            [24] 1313 	mov	ar2,r4
      002B29 8D 03            [24] 1314 	mov	ar3,r5
      002B2B 8B 02            [24] 1315 	mov	ar2,r3
      002B2D 8E 82            [24] 1316 	mov	dpl,r6
      002B2F 8F 83            [24] 1317 	mov	dph,r7
      002B31 EA               [12] 1318 	mov	a,r2
      002B32 F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	cc1111_aes.c:53: aesdmai->srcAddrL = (u8) ((u16) buf & 0xff);
      002B33 90 FD BF         [24] 1321 	mov	dptr,#_aesdmai
      002B36 E0               [24] 1322 	movx	a,@dptr
      002B37 FE               [12] 1323 	mov	r6,a
      002B38 A3               [24] 1324 	inc	dptr
      002B39 E0               [24] 1325 	movx	a,@dptr
      002B3A FF               [12] 1326 	mov	r7,a
      002B3B 8E 82            [24] 1327 	mov	dpl,r6
      002B3D 8F 83            [24] 1328 	mov	dph,r7
      002B3F A3               [24] 1329 	inc	dptr
      002B40 7D 00            [12] 1330 	mov	r5,#0x00
      002B42 EC               [12] 1331 	mov	a,r4
      002B43 F0               [24] 1332 	movx	@dptr,a
                                   1333 ;	cc1111_aes.c:54: DMAARM |= aesdmaarmi;
      002B44 90 FD C4         [24] 1334 	mov	dptr,#_aesdmaarmi
      002B47 E0               [24] 1335 	movx	a,@dptr
      002B48 42 D6            [12] 1336 	orl	_DMAARM,a
                                   1337 ;	cc1111_aes.c:55: NOP();
                                   1338 ; nop; 
                                   1339 ;	cc1111_aes.c:58: ENCCS = mode | command | ENCCS_ST;
      002B4A 90 FD C7         [24] 1340 	mov	dptr,#_setAES_PARM_2
      002B4D E0               [24] 1341 	movx	a,@dptr
      002B4E FF               [12] 1342 	mov	r7,a
      002B4F 90 FD C8         [24] 1343 	mov	dptr,#_setAES_PARM_3
      002B52 E0               [24] 1344 	movx	a,@dptr
      002B53 FE               [12] 1345 	mov	r6,a
      002B54 4F               [12] 1346 	orl	a,r7
      002B55 44 01            [12] 1347 	orl	a,#0x01
      002B57 F5 B3            [12] 1348 	mov	_ENCCS,a
                                   1349 ;	cc1111_aes.c:61: while(!(ENCCS & ENCCS_RDY))
      002B59                       1350 00104$:
      002B59 E5 B3            [12] 1351 	mov	a,_ENCCS
      002B5B 30 E3 FB         [24] 1352 	jnb	acc.3,00104$
      002B5E 22               [24] 1353 	ret
                                   1354 ;------------------------------------------------------------
                                   1355 ;Allocation info for local variables in function 'padAES'
                                   1356 ;------------------------------------------------------------
                                   1357 ;len                       Allocated with name '_padAES_PARM_2'
                                   1358 ;buf                       Allocated with name '_padAES_buf_1_58'
                                   1359 ;------------------------------------------------------------
                                   1360 ;	cc1111_aes.c:67: __xdata u16 padAES(__xdata u8* __xdata buf, __xdata u16 len)
                                   1361 ;	-----------------------------------------
                                   1362 ;	 function padAES
                                   1363 ;	-----------------------------------------
      002B5F                       1364 _padAES:
      002B5F AF 83            [24] 1365 	mov	r7,dph
      002B61 E5 82            [12] 1366 	mov	a,dpl
      002B63 90 FD CD         [24] 1367 	mov	dptr,#_padAES_buf_1_58
      002B66 F0               [24] 1368 	movx	@dptr,a
      002B67 EF               [12] 1369 	mov	a,r7
      002B68 A3               [24] 1370 	inc	dptr
      002B69 F0               [24] 1371 	movx	@dptr,a
                                   1372 ;	cc1111_aes.c:69: while(len % 16)
      002B6A 90 FD CD         [24] 1373 	mov	dptr,#_padAES_buf_1_58
      002B6D E0               [24] 1374 	movx	a,@dptr
      002B6E FE               [12] 1375 	mov	r6,a
      002B6F A3               [24] 1376 	inc	dptr
      002B70 E0               [24] 1377 	movx	a,@dptr
      002B71 FF               [12] 1378 	mov	r7,a
      002B72 90 FD CB         [24] 1379 	mov	dptr,#_padAES_PARM_2
      002B75 E0               [24] 1380 	movx	a,@dptr
      002B76 FC               [12] 1381 	mov	r4,a
      002B77 A3               [24] 1382 	inc	dptr
      002B78 E0               [24] 1383 	movx	a,@dptr
      002B79 FD               [12] 1384 	mov	r5,a
      002B7A                       1385 00101$:
      002B7A EC               [12] 1386 	mov	a,r4
      002B7B 54 0F            [12] 1387 	anl	a,#0x0F
      002B7D 60 15            [24] 1388 	jz	00103$
                                   1389 ;	cc1111_aes.c:70: buf[len++]= '\0';
      002B7F 8C 02            [24] 1390 	mov	ar2,r4
      002B81 8D 03            [24] 1391 	mov	ar3,r5
      002B83 0C               [12] 1392 	inc	r4
      002B84 BC 00 01         [24] 1393 	cjne	r4,#0x00,00114$
      002B87 0D               [12] 1394 	inc	r5
      002B88                       1395 00114$:
      002B88 EA               [12] 1396 	mov	a,r2
      002B89 2E               [12] 1397 	add	a,r6
      002B8A F5 82            [12] 1398 	mov	dpl,a
      002B8C EB               [12] 1399 	mov	a,r3
      002B8D 3F               [12] 1400 	addc	a,r7
      002B8E F5 83            [12] 1401 	mov	dph,a
      002B90 E4               [12] 1402 	clr	a
      002B91 F0               [24] 1403 	movx	@dptr,a
      002B92 80 E6            [24] 1404 	sjmp	00101$
      002B94                       1405 00103$:
                                   1406 ;	cc1111_aes.c:72: return len;
      002B94 8C 82            [24] 1407 	mov	dpl,r4
      002B96 8D 83            [24] 1408 	mov	dph,r5
      002B98 22               [24] 1409 	ret
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'encAES'
                                   1412 ;------------------------------------------------------------
                                   1413 ;outbuf                    Allocated with name '_encAES_PARM_2'
                                   1414 ;len                       Allocated with name '_encAES_PARM_3'
                                   1415 ;mode                      Allocated with name '_encAES_PARM_4'
                                   1416 ;inbuf                     Allocated with name '_encAES_inbuf_1_60'
                                   1417 ;------------------------------------------------------------
                                   1418 ;	cc1111_aes.c:76: void encAES(__xdata u8* __xdata inbuf, __xdata u8* __xdata outbuf, __xdata u16 len, __xdata u8 mode)
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function encAES
                                   1421 ;	-----------------------------------------
      002B99                       1422 _encAES:
      002B99 AF 83            [24] 1423 	mov	r7,dph
      002B9B E5 82            [12] 1424 	mov	a,dpl
      002B9D 90 FD D4         [24] 1425 	mov	dptr,#_encAES_inbuf_1_60
      002BA0 F0               [24] 1426 	movx	@dptr,a
      002BA1 EF               [12] 1427 	mov	a,r7
      002BA2 A3               [24] 1428 	inc	dptr
      002BA3 F0               [24] 1429 	movx	@dptr,a
                                   1430 ;	cc1111_aes.c:78: doAES(inbuf, outbuf, len, ENCCS_CMD_ENC, mode);
      002BA4 90 FD D4         [24] 1431 	mov	dptr,#_encAES_inbuf_1_60
      002BA7 E0               [24] 1432 	movx	a,@dptr
      002BA8 FE               [12] 1433 	mov	r6,a
      002BA9 A3               [24] 1434 	inc	dptr
      002BAA E0               [24] 1435 	movx	a,@dptr
      002BAB FF               [12] 1436 	mov	r7,a
      002BAC 90 FD CF         [24] 1437 	mov	dptr,#_encAES_PARM_2
      002BAF E0               [24] 1438 	movx	a,@dptr
      002BB0 FC               [12] 1439 	mov	r4,a
      002BB1 A3               [24] 1440 	inc	dptr
      002BB2 E0               [24] 1441 	movx	a,@dptr
      002BB3 FD               [12] 1442 	mov	r5,a
      002BB4 90 FD D1         [24] 1443 	mov	dptr,#_encAES_PARM_3
      002BB7 E0               [24] 1444 	movx	a,@dptr
      002BB8 FA               [12] 1445 	mov	r2,a
      002BB9 A3               [24] 1446 	inc	dptr
      002BBA E0               [24] 1447 	movx	a,@dptr
      002BBB FB               [12] 1448 	mov	r3,a
      002BBC 90 FD D3         [24] 1449 	mov	dptr,#_encAES_PARM_4
      002BBF E0               [24] 1450 	movx	a,@dptr
      002BC0 F9               [12] 1451 	mov	r1,a
      002BC1 90 FD DD         [24] 1452 	mov	dptr,#_doAES_PARM_2
      002BC4 EC               [12] 1453 	mov	a,r4
      002BC5 F0               [24] 1454 	movx	@dptr,a
      002BC6 ED               [12] 1455 	mov	a,r5
      002BC7 A3               [24] 1456 	inc	dptr
      002BC8 F0               [24] 1457 	movx	@dptr,a
      002BC9 90 FD DF         [24] 1458 	mov	dptr,#_doAES_PARM_3
      002BCC EA               [12] 1459 	mov	a,r2
      002BCD F0               [24] 1460 	movx	@dptr,a
      002BCE EB               [12] 1461 	mov	a,r3
      002BCF A3               [24] 1462 	inc	dptr
      002BD0 F0               [24] 1463 	movx	@dptr,a
      002BD1 90 FD E1         [24] 1464 	mov	dptr,#_doAES_PARM_4
      002BD4 E4               [12] 1465 	clr	a
      002BD5 F0               [24] 1466 	movx	@dptr,a
      002BD6 90 FD E2         [24] 1467 	mov	dptr,#_doAES_PARM_5
      002BD9 E9               [12] 1468 	mov	a,r1
      002BDA F0               [24] 1469 	movx	@dptr,a
      002BDB 8E 82            [24] 1470 	mov	dpl,r6
      002BDD 8F 83            [24] 1471 	mov	dph,r7
      002BDF 02 2C 2C         [24] 1472 	ljmp	_doAES
                                   1473 ;------------------------------------------------------------
                                   1474 ;Allocation info for local variables in function 'decAES'
                                   1475 ;------------------------------------------------------------
                                   1476 ;outbuf                    Allocated with name '_decAES_PARM_2'
                                   1477 ;len                       Allocated with name '_decAES_PARM_3'
                                   1478 ;mode                      Allocated with name '_decAES_PARM_4'
                                   1479 ;inbuf                     Allocated with name '_decAES_inbuf_1_62'
                                   1480 ;------------------------------------------------------------
                                   1481 ;	cc1111_aes.c:82: void decAES(__xdata u8* __xdata inbuf, __xdata u8* __xdata outbuf, __xdata u16 len, __xdata u8 mode)
                                   1482 ;	-----------------------------------------
                                   1483 ;	 function decAES
                                   1484 ;	-----------------------------------------
      002BE2                       1485 _decAES:
      002BE2 AF 83            [24] 1486 	mov	r7,dph
      002BE4 E5 82            [12] 1487 	mov	a,dpl
      002BE6 90 FD DB         [24] 1488 	mov	dptr,#_decAES_inbuf_1_62
      002BE9 F0               [24] 1489 	movx	@dptr,a
      002BEA EF               [12] 1490 	mov	a,r7
      002BEB A3               [24] 1491 	inc	dptr
      002BEC F0               [24] 1492 	movx	@dptr,a
                                   1493 ;	cc1111_aes.c:84: doAES(inbuf, outbuf, len, ENCCS_CMD_DEC, mode);
      002BED 90 FD DB         [24] 1494 	mov	dptr,#_decAES_inbuf_1_62
      002BF0 E0               [24] 1495 	movx	a,@dptr
      002BF1 FE               [12] 1496 	mov	r6,a
      002BF2 A3               [24] 1497 	inc	dptr
      002BF3 E0               [24] 1498 	movx	a,@dptr
      002BF4 FF               [12] 1499 	mov	r7,a
      002BF5 90 FD D6         [24] 1500 	mov	dptr,#_decAES_PARM_2
      002BF8 E0               [24] 1501 	movx	a,@dptr
      002BF9 FC               [12] 1502 	mov	r4,a
      002BFA A3               [24] 1503 	inc	dptr
      002BFB E0               [24] 1504 	movx	a,@dptr
      002BFC FD               [12] 1505 	mov	r5,a
      002BFD 90 FD D8         [24] 1506 	mov	dptr,#_decAES_PARM_3
      002C00 E0               [24] 1507 	movx	a,@dptr
      002C01 FA               [12] 1508 	mov	r2,a
      002C02 A3               [24] 1509 	inc	dptr
      002C03 E0               [24] 1510 	movx	a,@dptr
      002C04 FB               [12] 1511 	mov	r3,a
      002C05 90 FD DA         [24] 1512 	mov	dptr,#_decAES_PARM_4
      002C08 E0               [24] 1513 	movx	a,@dptr
      002C09 F9               [12] 1514 	mov	r1,a
      002C0A 90 FD DD         [24] 1515 	mov	dptr,#_doAES_PARM_2
      002C0D EC               [12] 1516 	mov	a,r4
      002C0E F0               [24] 1517 	movx	@dptr,a
      002C0F ED               [12] 1518 	mov	a,r5
      002C10 A3               [24] 1519 	inc	dptr
      002C11 F0               [24] 1520 	movx	@dptr,a
      002C12 90 FD DF         [24] 1521 	mov	dptr,#_doAES_PARM_3
      002C15 EA               [12] 1522 	mov	a,r2
      002C16 F0               [24] 1523 	movx	@dptr,a
      002C17 EB               [12] 1524 	mov	a,r3
      002C18 A3               [24] 1525 	inc	dptr
      002C19 F0               [24] 1526 	movx	@dptr,a
      002C1A 90 FD E1         [24] 1527 	mov	dptr,#_doAES_PARM_4
      002C1D 74 02            [12] 1528 	mov	a,#0x02
      002C1F F0               [24] 1529 	movx	@dptr,a
      002C20 90 FD E2         [24] 1530 	mov	dptr,#_doAES_PARM_5
      002C23 E9               [12] 1531 	mov	a,r1
      002C24 F0               [24] 1532 	movx	@dptr,a
      002C25 8E 82            [24] 1533 	mov	dpl,r6
      002C27 8F 83            [24] 1534 	mov	dph,r7
      002C29 02 2C 2C         [24] 1535 	ljmp	_doAES
                                   1536 ;------------------------------------------------------------
                                   1537 ;Allocation info for local variables in function 'doAES'
                                   1538 ;------------------------------------------------------------
                                   1539 ;outbuf                    Allocated with name '_doAES_PARM_2'
                                   1540 ;len                       Allocated with name '_doAES_PARM_3'
                                   1541 ;command                   Allocated with name '_doAES_PARM_4'
                                   1542 ;mode                      Allocated with name '_doAES_PARM_5'
                                   1543 ;inbuf                     Allocated with name '_doAES_inbuf_1_64'
                                   1544 ;bufp                      Allocated with name '_doAES_bufp_1_65'
                                   1545 ;sloc0                     Allocated with name '_doAES_sloc0_1_0'
                                   1546 ;sloc1                     Allocated with name '_doAES_sloc1_1_0'
                                   1547 ;sloc2                     Allocated with name '_doAES_sloc2_1_0'
                                   1548 ;sloc3                     Allocated with name '_doAES_sloc3_1_0'
                                   1549 ;sloc4                     Allocated with name '_doAES_sloc4_1_0'
                                   1550 ;------------------------------------------------------------
                                   1551 ;	cc1111_aes.c:88: void doAES(__xdata u8* __xdata inbuf, __xdata u8* __xdata outbuf, __xdata u16 len, __xdata u8 command, __xdata u8 mode)
                                   1552 ;	-----------------------------------------
                                   1553 ;	 function doAES
                                   1554 ;	-----------------------------------------
      002C2C                       1555 _doAES:
      002C2C AF 83            [24] 1556 	mov	r7,dph
      002C2E E5 82            [12] 1557 	mov	a,dpl
      002C30 90 FD E3         [24] 1558 	mov	dptr,#_doAES_inbuf_1_64
      002C33 F0               [24] 1559 	movx	@dptr,a
      002C34 EF               [12] 1560 	mov	a,r7
      002C35 A3               [24] 1561 	inc	dptr
      002C36 F0               [24] 1562 	movx	@dptr,a
                                   1563 ;	cc1111_aes.c:93: while(!(ENCCS & ENCCS_RDY))
      002C37                       1564 00101$:
      002C37 E5 B3            [12] 1565 	mov	a,_ENCCS
      002C39 30 E3 FB         [24] 1566 	jnb	acc.3,00101$
                                   1567 ;	cc1111_aes.c:96: for(bufp= 0 ; bufp < len ; bufp += 16)
      002C3C 90 FD E3         [24] 1568 	mov	dptr,#_doAES_inbuf_1_64
      002C3F E0               [24] 1569 	movx	a,@dptr
      002C40 FE               [12] 1570 	mov	r6,a
      002C41 A3               [24] 1571 	inc	dptr
      002C42 E0               [24] 1572 	movx	a,@dptr
      002C43 FF               [12] 1573 	mov	r7,a
      002C44 90 FD DD         [24] 1574 	mov	dptr,#_doAES_PARM_2
      002C47 E0               [24] 1575 	movx	a,@dptr
      002C48 F5 2D            [12] 1576 	mov	_doAES_sloc4_1_0,a
      002C4A A3               [24] 1577 	inc	dptr
      002C4B E0               [24] 1578 	movx	a,@dptr
      002C4C F5 2E            [12] 1579 	mov	(_doAES_sloc4_1_0 + 1),a
      002C4E 90 FD E2         [24] 1580 	mov	dptr,#_doAES_PARM_5
      002C51 E0               [24] 1581 	movx	a,@dptr
      002C52 FB               [12] 1582 	mov	r3,a
      002C53 74 50            [12] 1583 	mov	a,#0x50
      002C55 5B               [12] 1584 	anl	a,r3
      002C56 F5 2C            [12] 1585 	mov	_doAES_sloc3_1_0,a
      002C58 90 FD E1         [24] 1586 	mov	dptr,#_doAES_PARM_4
      002C5B E0               [24] 1587 	movx	a,@dptr
      002C5C F9               [12] 1588 	mov	r1,a
      002C5D 4B               [12] 1589 	orl	a,r3
      002C5E 44 01            [12] 1590 	orl	a,#0x01
      002C60 FB               [12] 1591 	mov	r3,a
      002C61 74 01            [12] 1592 	mov	a,#0x01
      002C63 49               [12] 1593 	orl	a,r1
      002C64 F5 2B            [12] 1594 	mov	_doAES_sloc2_1_0,a
      002C66 90 FD DF         [24] 1595 	mov	dptr,#_doAES_PARM_3
      002C69 E0               [24] 1596 	movx	a,@dptr
      002C6A F5 27            [12] 1597 	mov	_doAES_sloc0_1_0,a
      002C6C A3               [24] 1598 	inc	dptr
      002C6D E0               [24] 1599 	movx	a,@dptr
      002C6E F5 28            [12] 1600 	mov	(_doAES_sloc0_1_0 + 1),a
      002C70 E4               [12] 1601 	clr	a
      002C71 F5 29            [12] 1602 	mov	_doAES_sloc1_1_0,a
      002C73 F5 2A            [12] 1603 	mov	(_doAES_sloc1_1_0 + 1),a
      002C75                       1604 00113$:
      002C75 C3               [12] 1605 	clr	c
      002C76 E5 29            [12] 1606 	mov	a,_doAES_sloc1_1_0
      002C78 95 27            [12] 1607 	subb	a,_doAES_sloc0_1_0
      002C7A E5 2A            [12] 1608 	mov	a,(_doAES_sloc1_1_0 + 1)
      002C7C 95 28            [12] 1609 	subb	a,(_doAES_sloc0_1_0 + 1)
      002C7E 40 01            [24] 1610 	jc	00143$
      002C80 22               [24] 1611 	ret
      002C81                       1612 00143$:
                                   1613 ;	cc1111_aes.c:99: aesdmai->srcAddrH = (u8) ((u16) (inbuf + bufp) >> 8);
      002C81 C0 03            [24] 1614 	push	ar3
      002C83 90 FD BF         [24] 1615 	mov	dptr,#_aesdmai
      002C86 E0               [24] 1616 	movx	a,@dptr
      002C87 F8               [12] 1617 	mov	r0,a
      002C88 A3               [24] 1618 	inc	dptr
      002C89 E0               [24] 1619 	movx	a,@dptr
      002C8A FB               [12] 1620 	mov	r3,a
      002C8B E5 29            [12] 1621 	mov	a,_doAES_sloc1_1_0
      002C8D 2E               [12] 1622 	add	a,r6
      002C8E F9               [12] 1623 	mov	r1,a
      002C8F E5 2A            [12] 1624 	mov	a,(_doAES_sloc1_1_0 + 1)
      002C91 3F               [12] 1625 	addc	a,r7
      002C92 FA               [12] 1626 	mov	r2,a
      002C93 89 04            [24] 1627 	mov	ar4,r1
      002C95 8A 05            [24] 1628 	mov	ar5,r2
      002C97 8D 04            [24] 1629 	mov	ar4,r5
      002C99 88 82            [24] 1630 	mov	dpl,r0
      002C9B 8B 83            [24] 1631 	mov	dph,r3
      002C9D EC               [12] 1632 	mov	a,r4
      002C9E F0               [24] 1633 	movx	@dptr,a
                                   1634 ;	cc1111_aes.c:100: aesdmai->srcAddrL = (u8) ((u16) (inbuf + bufp) & 0xff);
      002C9F 90 FD BF         [24] 1635 	mov	dptr,#_aesdmai
      002CA2 E0               [24] 1636 	movx	a,@dptr
      002CA3 FC               [12] 1637 	mov	r4,a
      002CA4 A3               [24] 1638 	inc	dptr
      002CA5 E0               [24] 1639 	movx	a,@dptr
      002CA6 FD               [12] 1640 	mov	r5,a
      002CA7 8C 82            [24] 1641 	mov	dpl,r4
      002CA9 8D 83            [24] 1642 	mov	dph,r5
      002CAB A3               [24] 1643 	inc	dptr
      002CAC E9               [12] 1644 	mov	a,r1
      002CAD F0               [24] 1645 	movx	@dptr,a
                                   1646 ;	cc1111_aes.c:101: aesdmao->destAddrH = (u8) ((u16) (outbuf + bufp) >> 8);
      002CAE 90 FD C1         [24] 1647 	mov	dptr,#_aesdmao
      002CB1 E0               [24] 1648 	movx	a,@dptr
      002CB2 FC               [12] 1649 	mov	r4,a
      002CB3 A3               [24] 1650 	inc	dptr
      002CB4 E0               [24] 1651 	movx	a,@dptr
      002CB5 FD               [12] 1652 	mov	r5,a
      002CB6 8C 82            [24] 1653 	mov	dpl,r4
      002CB8 8D 83            [24] 1654 	mov	dph,r5
      002CBA A3               [24] 1655 	inc	dptr
      002CBB A3               [24] 1656 	inc	dptr
      002CBC E5 29            [12] 1657 	mov	a,_doAES_sloc1_1_0
      002CBE 25 2D            [12] 1658 	add	a,_doAES_sloc4_1_0
      002CC0 FC               [12] 1659 	mov	r4,a
      002CC1 E5 2A            [12] 1660 	mov	a,(_doAES_sloc1_1_0 + 1)
      002CC3 35 2E            [12] 1661 	addc	a,(_doAES_sloc4_1_0 + 1)
      002CC5 FD               [12] 1662 	mov	r5,a
      002CC6 8C 02            [24] 1663 	mov	ar2,r4
      002CC8 8D 03            [24] 1664 	mov	ar3,r5
      002CCA 8B 02            [24] 1665 	mov	ar2,r3
      002CCC EA               [12] 1666 	mov	a,r2
      002CCD F0               [24] 1667 	movx	@dptr,a
                                   1668 ;	cc1111_aes.c:102: aesdmao->destAddrL = (u8) ((u16) (outbuf + bufp) & 0xff);
      002CCE 90 FD C1         [24] 1669 	mov	dptr,#_aesdmao
      002CD1 E0               [24] 1670 	movx	a,@dptr
      002CD2 FA               [12] 1671 	mov	r2,a
      002CD3 A3               [24] 1672 	inc	dptr
      002CD4 E0               [24] 1673 	movx	a,@dptr
      002CD5 FB               [12] 1674 	mov	r3,a
      002CD6 8A 82            [24] 1675 	mov	dpl,r2
      002CD8 8B 83            [24] 1676 	mov	dph,r3
      002CDA A3               [24] 1677 	inc	dptr
      002CDB A3               [24] 1678 	inc	dptr
      002CDC A3               [24] 1679 	inc	dptr
      002CDD EC               [12] 1680 	mov	a,r4
      002CDE F0               [24] 1681 	movx	@dptr,a
                                   1682 ;	cc1111_aes.c:103: DMAARM |= (aesdmaarmi | aesdmaarmo);
      002CDF 90 FD C6         [24] 1683 	mov	dptr,#_aesdmaarmo
      002CE2 E0               [24] 1684 	movx	a,@dptr
      002CE3 FD               [12] 1685 	mov	r5,a
      002CE4 90 FD C4         [24] 1686 	mov	dptr,#_aesdmaarmi
      002CE7 E0               [24] 1687 	movx	a,@dptr
      002CE8 FC               [12] 1688 	mov	r4,a
      002CE9 4D               [12] 1689 	orl	a,r5
      002CEA 42 D6            [12] 1690 	orl	_DMAARM,a
                                   1691 ;	cc1111_aes.c:104: NOP(); NOP();
                                   1692 ; nop; 
                                   1693 ; nop; 
                                   1694 ;	cc1111_aes.c:114: if((mode & ENCCS_MODE_CBCMAC) && bufp == len - 16)
      002CEC D0 03            [24] 1695 	pop	ar3
      002CEE E5 2C            [12] 1696 	mov	a,_doAES_sloc3_1_0
      002CF0 60 17            [24] 1697 	jz	00105$
      002CF2 E5 27            [12] 1698 	mov	a,_doAES_sloc0_1_0
      002CF4 24 F0            [12] 1699 	add	a,#0xF0
      002CF6 FC               [12] 1700 	mov	r4,a
      002CF7 E5 28            [12] 1701 	mov	a,(_doAES_sloc0_1_0 + 1)
      002CF9 34 FF            [12] 1702 	addc	a,#0xFF
      002CFB FD               [12] 1703 	mov	r5,a
      002CFC EC               [12] 1704 	mov	a,r4
      002CFD B5 29 09         [24] 1705 	cjne	a,_doAES_sloc1_1_0,00105$
      002D00 ED               [12] 1706 	mov	a,r5
      002D01 B5 2A 05         [24] 1707 	cjne	a,(_doAES_sloc1_1_0 + 1),00105$
                                   1708 ;	cc1111_aes.c:115: ENCCS = ENCCS_MODE_CBC | command | ENCCS_ST;
      002D04 85 2B B3         [24] 1709 	mov	_ENCCS,_doAES_sloc2_1_0
      002D07 80 02            [24] 1710 	sjmp	00108$
      002D09                       1711 00105$:
                                   1712 ;	cc1111_aes.c:117: ENCCS = mode | command | ENCCS_ST;
      002D09 8B B3            [24] 1713 	mov	_ENCCS,r3
                                   1714 ;	cc1111_aes.c:120: while(!(ENCCS & ENCCS_RDY))
      002D0B                       1715 00108$:
      002D0B E5 B3            [12] 1716 	mov	a,_ENCCS
      002D0D 30 E3 FB         [24] 1717 	jnb	acc.3,00108$
                                   1718 ;	cc1111_aes.c:96: for(bufp= 0 ; bufp < len ; bufp += 16)
      002D10 74 10            [12] 1719 	mov	a,#0x10
      002D12 25 29            [12] 1720 	add	a,_doAES_sloc1_1_0
      002D14 F5 29            [12] 1721 	mov	_doAES_sloc1_1_0,a
      002D16 E4               [12] 1722 	clr	a
      002D17 35 2A            [12] 1723 	addc	a,(_doAES_sloc1_1_0 + 1)
      002D19 F5 2A            [12] 1724 	mov	(_doAES_sloc1_1_0 + 1),a
      002D1B 02 2C 75         [24] 1725 	ljmp	00113$
                                   1726 	.area CSEG    (CODE)
                                   1727 	.area CONST   (CODE)
                                   1728 	.area XINIT   (CODE)
                                   1729 	.area CABS    (ABS,CODE)
