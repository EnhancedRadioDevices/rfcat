                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
                                      4 ; This file was generated Fri Nov 18 22:31:00 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module cc1110_spicom
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _vcom_down
                                     13 	.globl _vcom_readline
                                     14 	.globl _vcom_pollchar
                                     15 	.globl _tx1_isr
                                     16 	.globl _rx1_isr
                                     17 	.globl _USBIF
                                     18 	.globl _MODE
                                     19 	.globl _RE
                                     20 	.globl _SLAVE
                                     21 	.globl _FE
                                     22 	.globl _ERR
                                     23 	.globl _RX_BYTE
                                     24 	.globl _TX_BYTE
                                     25 	.globl _ACTIVE
                                     26 	.globl _B_7
                                     27 	.globl _B_6
                                     28 	.globl _B_5
                                     29 	.globl _B_4
                                     30 	.globl _B_3
                                     31 	.globl _B_2
                                     32 	.globl _B_1
                                     33 	.globl _B_0
                                     34 	.globl _WDTIF
                                     35 	.globl _P1IF
                                     36 	.globl _UTX1IF
                                     37 	.globl _UTX0IF
                                     38 	.globl _P2IF
                                     39 	.globl _ACC_7
                                     40 	.globl _ACC_6
                                     41 	.globl _ACC_5
                                     42 	.globl _ACC_4
                                     43 	.globl _ACC_3
                                     44 	.globl _ACC_2
                                     45 	.globl _ACC_1
                                     46 	.globl _ACC_0
                                     47 	.globl _OVFIM
                                     48 	.globl _T4CH1IF
                                     49 	.globl _T4CH0IF
                                     50 	.globl _T4OVFIF
                                     51 	.globl _T3CH1IF
                                     52 	.globl _T3CH0IF
                                     53 	.globl _T3OVFIF
                                     54 	.globl _CY
                                     55 	.globl _AC
                                     56 	.globl _F0
                                     57 	.globl _RS1
                                     58 	.globl _RS0
                                     59 	.globl _OV
                                     60 	.globl _F1
                                     61 	.globl _P
                                     62 	.globl _STIF
                                     63 	.globl _P0IF
                                     64 	.globl _T4IF
                                     65 	.globl _T3IF
                                     66 	.globl _T2IF
                                     67 	.globl _T1IF
                                     68 	.globl _DMAIF
                                     69 	.globl _P0IE
                                     70 	.globl _T4IE
                                     71 	.globl _T3IE
                                     72 	.globl _T2IE
                                     73 	.globl _T1IE
                                     74 	.globl _DMAIE
                                     75 	.globl _EA
                                     76 	.globl _STIE
                                     77 	.globl _ENCIE
                                     78 	.globl _URX1IE
                                     79 	.globl _URX0IE
                                     80 	.globl _ADCIE
                                     81 	.globl _RFTXRXIE
                                     82 	.globl _P2_7
                                     83 	.globl _P2_6
                                     84 	.globl _P2_5
                                     85 	.globl _P2_4
                                     86 	.globl _P2_3
                                     87 	.globl _P2_2
                                     88 	.globl _P2_1
                                     89 	.globl _P2_0
                                     90 	.globl _ENCIF_1
                                     91 	.globl _ENCIF_0
                                     92 	.globl _P1_7
                                     93 	.globl _P1_6
                                     94 	.globl _P1_5
                                     95 	.globl _P1_4
                                     96 	.globl _P1_3
                                     97 	.globl _P1_2
                                     98 	.globl _P1_1
                                     99 	.globl _P1_0
                                    100 	.globl _URX1IF
                                    101 	.globl _ADCIF
                                    102 	.globl _URX0IF
                                    103 	.globl _IT1
                                    104 	.globl _RFTXRXIF
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _P2DIR
                                    115 	.globl _P1DIR
                                    116 	.globl _P0DIR
                                    117 	.globl _U1GCR
                                    118 	.globl _U1UCR
                                    119 	.globl _U1BAUD
                                    120 	.globl _U1DBUF
                                    121 	.globl _U1CSR
                                    122 	.globl _P2INP
                                    123 	.globl _P1INP
                                    124 	.globl _P2SEL
                                    125 	.globl _P1SEL
                                    126 	.globl _P0SEL
                                    127 	.globl _ADCCFG
                                    128 	.globl _PERCFG
                                    129 	.globl _B
                                    130 	.globl _T4CC1
                                    131 	.globl _T4CCTL1
                                    132 	.globl _T4CC0
                                    133 	.globl _T4CCTL0
                                    134 	.globl _T4CTL
                                    135 	.globl _T4CNT
                                    136 	.globl _RFIF
                                    137 	.globl _IRCON2
                                    138 	.globl _T1CCTL2
                                    139 	.globl _T1CCTL1
                                    140 	.globl _T1CCTL0
                                    141 	.globl _T1CTL
                                    142 	.globl _T1CNTH
                                    143 	.globl _T1CNTL
                                    144 	.globl _RFST
                                    145 	.globl _ACC
                                    146 	.globl _T1CC2H
                                    147 	.globl _T1CC2L
                                    148 	.globl _T1CC1H
                                    149 	.globl _T1CC1L
                                    150 	.globl _T1CC0H
                                    151 	.globl _T1CC0L
                                    152 	.globl _RFD
                                    153 	.globl _TIMIF
                                    154 	.globl _DMAREQ
                                    155 	.globl _DMAARM
                                    156 	.globl _DMA0CFGH
                                    157 	.globl _DMA0CFGL
                                    158 	.globl _DMA1CFGH
                                    159 	.globl _DMA1CFGL
                                    160 	.globl _DMAIRQ
                                    161 	.globl _PSW
                                    162 	.globl _T3CC1
                                    163 	.globl _T3CCTL1
                                    164 	.globl _T3CC0
                                    165 	.globl _T3CCTL0
                                    166 	.globl _T3CTL
                                    167 	.globl _T3CNT
                                    168 	.globl _WDCTL
                                    169 	.globl __SFRC8
                                    170 	.globl _MEMCTR
                                    171 	.globl _CLKCON
                                    172 	.globl _U0GCR
                                    173 	.globl _U0UCR
                                    174 	.globl __SFRC3
                                    175 	.globl _U0BAUD
                                    176 	.globl _U0DBUF
                                    177 	.globl _IRCON
                                    178 	.globl __SFRBF
                                    179 	.globl _SLEEP
                                    180 	.globl _RNDH
                                    181 	.globl _RNDL
                                    182 	.globl _ADCH
                                    183 	.globl _ADCL
                                    184 	.globl _IP1
                                    185 	.globl _IEN1
                                    186 	.globl __SFRB7
                                    187 	.globl _ADCCON3
                                    188 	.globl _ADCCON2
                                    189 	.globl _ADCCON1
                                    190 	.globl _ENCCS
                                    191 	.globl _ENCDO
                                    192 	.globl _ENCDI
                                    193 	.globl __SFRB0
                                    194 	.globl _FWDATA
                                    195 	.globl _FCTL
                                    196 	.globl _FADDRH
                                    197 	.globl _FADDRL
                                    198 	.globl _FWT
                                    199 	.globl __SFRAA
                                    200 	.globl _IP0
                                    201 	.globl _IEN0
                                    202 	.globl __SFRA7
                                    203 	.globl _WORTIME1
                                    204 	.globl _WORTIME0
                                    205 	.globl _WOREVT1
                                    206 	.globl _WOREVT0
                                    207 	.globl _WORCTRL
                                    208 	.globl _WORIRQ
                                    209 	.globl _P2
                                    210 	.globl __SFR9F
                                    211 	.globl _T2CTL
                                    212 	.globl _T2PR
                                    213 	.globl _T2CT
                                    214 	.globl _S1CON
                                    215 	.globl _IEN2
                                    216 	.globl __SFR99
                                    217 	.globl _S0CON
                                    218 	.globl __SFR97
                                    219 	.globl __SFR96
                                    220 	.globl __SFR95
                                    221 	.globl __SFR94
                                    222 	.globl __XPAGE
                                    223 	.globl _MPAGE
                                    224 	.globl _DPS
                                    225 	.globl _RFIM
                                    226 	.globl _P1
                                    227 	.globl _P0INP
                                    228 	.globl __SFR8E
                                    229 	.globl _P1IEN
                                    230 	.globl _PICTL
                                    231 	.globl _P2IFG
                                    232 	.globl _P1IFG
                                    233 	.globl _P0IFG
                                    234 	.globl _TCON
                                    235 	.globl _PCON
                                    236 	.globl _U0CSR
                                    237 	.globl _DPH1
                                    238 	.globl _DPL1
                                    239 	.globl _DPH0
                                    240 	.globl _DPL0
                                    241 	.globl _SP
                                    242 	.globl _P0
                                    243 	.globl _spi_output_buf
                                    244 	.globl _spi_input_buf
                                    245 	.globl _USBF5
                                    246 	.globl _USBF4
                                    247 	.globl _USBF3
                                    248 	.globl _USBF2
                                    249 	.globl _USBF1
                                    250 	.globl _USBF0
                                    251 	.globl _USBCNTH
                                    252 	.globl _USBCNTL
                                    253 	.globl _USBCNT0
                                    254 	.globl _USBCSOH
                                    255 	.globl _USBCSOL
                                    256 	.globl _USBMAXO
                                    257 	.globl _USBCSIH
                                    258 	.globl _USBCSIL
                                    259 	.globl _USBCS0
                                    260 	.globl _USBMAXI
                                    261 	.globl _USBINDEX
                                    262 	.globl _USBFRMH
                                    263 	.globl _USBFRML
                                    264 	.globl _USBCIE
                                    265 	.globl _USBOIE
                                    266 	.globl _USBIIE
                                    267 	.globl _USBCIF
                                    268 	.globl _USBOIF
                                    269 	.globl _USBIIF
                                    270 	.globl _USBPOW
                                    271 	.globl _USBADDR
                                    272 	.globl _X_P2DIR
                                    273 	.globl _X_P1DIR
                                    274 	.globl _X_P0DIR
                                    275 	.globl _X_U1GCR
                                    276 	.globl _X_U1UCR
                                    277 	.globl _X_U1BAUD
                                    278 	.globl _X_U1DBUF
                                    279 	.globl _X_U1CSR
                                    280 	.globl _X_P2INP
                                    281 	.globl _X_P1INP
                                    282 	.globl _X_P2SEL
                                    283 	.globl _X_P1SEL
                                    284 	.globl _X_P0SEL
                                    285 	.globl _X_ADCCFG
                                    286 	.globl _X_PERCFG
                                    287 	.globl __NA_B
                                    288 	.globl _X_T4CC1
                                    289 	.globl _X_T4CCTL1
                                    290 	.globl _X_T4CC0
                                    291 	.globl _X_T4CCTL0
                                    292 	.globl _X_T4CTL
                                    293 	.globl _X_T4CNT
                                    294 	.globl _X_RFIF
                                    295 	.globl __NA_IRCON2
                                    296 	.globl _X_T1CCTL2
                                    297 	.globl _X_T1CCTL1
                                    298 	.globl _X_T1CCTL0
                                    299 	.globl _X_T1CTL
                                    300 	.globl _X_T1CNTH
                                    301 	.globl _X_T1CNTL
                                    302 	.globl _X_RFST
                                    303 	.globl __NA_ACC
                                    304 	.globl _X_T1CC2H
                                    305 	.globl _X_T1CC2L
                                    306 	.globl _X_T1CC1H
                                    307 	.globl _X_T1CC1L
                                    308 	.globl _X_T1CC0H
                                    309 	.globl _X_T1CC0L
                                    310 	.globl _X_RFD
                                    311 	.globl _X_TIMIF
                                    312 	.globl _X_DMAREQ
                                    313 	.globl _X_DMAARM
                                    314 	.globl _X_DMA0CFGH
                                    315 	.globl _X_DMA0CFGL
                                    316 	.globl _X_DMA1CFGH
                                    317 	.globl _X_DMA1CFGL
                                    318 	.globl _X_DMAIRQ
                                    319 	.globl __NA_PSW
                                    320 	.globl _X_T3CC1
                                    321 	.globl _X_T3CCTL1
                                    322 	.globl _X_T3CC0
                                    323 	.globl _X_T3CCTL0
                                    324 	.globl _X_T3CTL
                                    325 	.globl _X_T3CNT
                                    326 	.globl _X_WDCTL
                                    327 	.globl __X_SFRC8
                                    328 	.globl _X_MEMCTR
                                    329 	.globl _X_CLKCON
                                    330 	.globl _X_U0GCR
                                    331 	.globl _X_U0UCR
                                    332 	.globl __X_SFRC3
                                    333 	.globl _X_U0BAUD
                                    334 	.globl _X_U0DBUF
                                    335 	.globl __NA_IRCON
                                    336 	.globl __X_SFRBF
                                    337 	.globl _X_SLEEP
                                    338 	.globl _X_RNDH
                                    339 	.globl _X_RNDL
                                    340 	.globl _X_ADCH
                                    341 	.globl _X_ADCL
                                    342 	.globl __NA_IP1
                                    343 	.globl __NA_IEN1
                                    344 	.globl __X_SFRB7
                                    345 	.globl _X_ADCCON3
                                    346 	.globl _X_ADCCON2
                                    347 	.globl _X_ADCCON1
                                    348 	.globl _X_ENCCS
                                    349 	.globl _X_ENCDO
                                    350 	.globl _X_ENCDI
                                    351 	.globl __X_SFRB0
                                    352 	.globl _X_FWDATA
                                    353 	.globl _X_FCTL
                                    354 	.globl _X_FADDRH
                                    355 	.globl _X_FADDRL
                                    356 	.globl _X_FWT
                                    357 	.globl __X_SFRAA
                                    358 	.globl __NA_IP0
                                    359 	.globl __NA_IEN0
                                    360 	.globl __X_SFRA7
                                    361 	.globl _X_WORTIME1
                                    362 	.globl _X_WORTIME0
                                    363 	.globl _X_WOREVT1
                                    364 	.globl _X_WOREVT0
                                    365 	.globl _X_WORCTRL
                                    366 	.globl _X_WORIRQ
                                    367 	.globl __NA_P2
                                    368 	.globl __X_SFR9F
                                    369 	.globl _X_T2CTL
                                    370 	.globl _X_T2PR
                                    371 	.globl _X_T2CT
                                    372 	.globl __NA_S1CON
                                    373 	.globl __NA_IEN2
                                    374 	.globl __X_SFR99
                                    375 	.globl __NA_S0CON
                                    376 	.globl __X_SFR97
                                    377 	.globl __X_SFR96
                                    378 	.globl __X_SFR95
                                    379 	.globl __X_SFR94
                                    380 	.globl _X_MPAGE
                                    381 	.globl __NA_DPS
                                    382 	.globl _X_RFIM
                                    383 	.globl __NA_P1
                                    384 	.globl _X_P0INP
                                    385 	.globl __X_SFR8E
                                    386 	.globl _X_P1IEN
                                    387 	.globl _X_PICTL
                                    388 	.globl _X_P2IFG
                                    389 	.globl _X_P1IFG
                                    390 	.globl _X_P0IFG
                                    391 	.globl __NA_TCON
                                    392 	.globl __NA_PCON
                                    393 	.globl _X_U0CSR
                                    394 	.globl __NA_DPH1
                                    395 	.globl __NA_DPL1
                                    396 	.globl __NA_DPH0
                                    397 	.globl __NA_DPL0
                                    398 	.globl __NA_SP
                                    399 	.globl __NA_P0
                                    400 	.globl _I2SCLKF2
                                    401 	.globl _I2SCLKF1
                                    402 	.globl _I2SCLKF0
                                    403 	.globl _I2SSTAT
                                    404 	.globl _I2SWCNT
                                    405 	.globl _I2SDATH
                                    406 	.globl _I2SDATL
                                    407 	.globl _I2SCFG1
                                    408 	.globl _I2SCFG0
                                    409 	.globl _VCO_VC_DAC
                                    410 	.globl _PKTSTATUS
                                    411 	.globl _MARCSTATE
                                    412 	.globl _RSSI
                                    413 	.globl _LQI
                                    414 	.globl _FREQEST
                                    415 	.globl _VERSION
                                    416 	.globl _PARTNUM
                                    417 	.globl __XREGDF35
                                    418 	.globl __XREGDF34
                                    419 	.globl __XREGDF33
                                    420 	.globl __XREGDF32
                                    421 	.globl _IOCFG0
                                    422 	.globl _IOCFG1
                                    423 	.globl _IOCFG2
                                    424 	.globl _PA_TABLE0
                                    425 	.globl _PA_TABLE1
                                    426 	.globl _PA_TABLE2
                                    427 	.globl _PA_TABLE3
                                    428 	.globl _PA_TABLE4
                                    429 	.globl _PA_TABLE5
                                    430 	.globl _PA_TABLE6
                                    431 	.globl _PA_TABLE7
                                    432 	.globl __XREGDF26
                                    433 	.globl _TEST0
                                    434 	.globl _TEST1
                                    435 	.globl _TEST2
                                    436 	.globl __XREGDF22
                                    437 	.globl __XREGDF21
                                    438 	.globl __XREGDF20
                                    439 	.globl _FSCAL0
                                    440 	.globl _FSCAL1
                                    441 	.globl _FSCAL2
                                    442 	.globl _FSCAL3
                                    443 	.globl _FREND0
                                    444 	.globl _FREND1
                                    445 	.globl _AGCCTRL0
                                    446 	.globl _AGCCTRL1
                                    447 	.globl _AGCCTRL2
                                    448 	.globl _BSCFG
                                    449 	.globl _FOCCFG
                                    450 	.globl _MCSM0
                                    451 	.globl _MCSM1
                                    452 	.globl _MCSM2
                                    453 	.globl _DEVIATN
                                    454 	.globl _MDMCFG0
                                    455 	.globl _MDMCFG1
                                    456 	.globl _MDMCFG2
                                    457 	.globl _MDMCFG3
                                    458 	.globl _MDMCFG4
                                    459 	.globl _FREQ0
                                    460 	.globl _FREQ1
                                    461 	.globl _FREQ2
                                    462 	.globl _FSCTRL0
                                    463 	.globl _FSCTRL1
                                    464 	.globl _CHANNR
                                    465 	.globl _ADDR
                                    466 	.globl _PKTCTRL0
                                    467 	.globl _PKTCTRL1
                                    468 	.globl _PKTLEN
                                    469 	.globl _SYNC0
                                    470 	.globl _SYNC1
                                    471 	.globl _MDMCTRL0H
                                    472 	.globl _txdata_PARM_4
                                    473 	.globl _txdata_PARM_3
                                    474 	.globl _txdata_PARM_2
                                    475 	.globl _slave_send_size
                                    476 	.globl _master_send_size
                                    477 	.globl _spi_mode
                                    478 	.globl _serial_data_available
                                    479 	.globl _output_tail_idx
                                    480 	.globl _output_head_idx
                                    481 	.globl _output_size
                                    482 	.globl _input_tail_idx
                                    483 	.globl _input_head_idx
                                    484 	.globl _input_size
                                    485 	.globl _vcom_flush
                                    486 	.globl _vcom_putchar
                                    487 	.globl _vcom_getchar
                                    488 	.globl _vcom_enable
                                    489 	.globl _vcom_disable
                                    490 	.globl _initUSB
                                    491 	.globl _usbProcessEvents
                                    492 	.globl _vcom_putstr
                                    493 	.globl _usb_up
                                    494 	.globl _txdata
                                    495 	.globl _usbIntHandler
                                    496 	.globl _waitForUSBsetup
                                    497 ;--------------------------------------------------------
                                    498 ; special function registers
                                    499 ;--------------------------------------------------------
                                    500 	.area RSEG    (ABS,DATA)
      000000                        501 	.org 0x0000
                           000080   502 _P0	=	0x0080
                           000081   503 _SP	=	0x0081
                           000082   504 _DPL0	=	0x0082
                           000083   505 _DPH0	=	0x0083
                           000084   506 _DPL1	=	0x0084
                           000085   507 _DPH1	=	0x0085
                           000086   508 _U0CSR	=	0x0086
                           000087   509 _PCON	=	0x0087
                           000088   510 _TCON	=	0x0088
                           000089   511 _P0IFG	=	0x0089
                           00008A   512 _P1IFG	=	0x008a
                           00008B   513 _P2IFG	=	0x008b
                           00008C   514 _PICTL	=	0x008c
                           00008D   515 _P1IEN	=	0x008d
                           00008E   516 __SFR8E	=	0x008e
                           00008F   517 _P0INP	=	0x008f
                           000090   518 _P1	=	0x0090
                           000091   519 _RFIM	=	0x0091
                           000092   520 _DPS	=	0x0092
                           000093   521 _MPAGE	=	0x0093
                           000093   522 __XPAGE	=	0x0093
                           000094   523 __SFR94	=	0x0094
                           000095   524 __SFR95	=	0x0095
                           000096   525 __SFR96	=	0x0096
                           000097   526 __SFR97	=	0x0097
                           000098   527 _S0CON	=	0x0098
                           000099   528 __SFR99	=	0x0099
                           00009A   529 _IEN2	=	0x009a
                           00009B   530 _S1CON	=	0x009b
                           00009C   531 _T2CT	=	0x009c
                           00009D   532 _T2PR	=	0x009d
                           00009E   533 _T2CTL	=	0x009e
                           00009F   534 __SFR9F	=	0x009f
                           0000A0   535 _P2	=	0x00a0
                           0000A1   536 _WORIRQ	=	0x00a1
                           0000A2   537 _WORCTRL	=	0x00a2
                           0000A3   538 _WOREVT0	=	0x00a3
                           0000A4   539 _WOREVT1	=	0x00a4
                           0000A5   540 _WORTIME0	=	0x00a5
                           0000A6   541 _WORTIME1	=	0x00a6
                           0000A7   542 __SFRA7	=	0x00a7
                           0000A8   543 _IEN0	=	0x00a8
                           0000A9   544 _IP0	=	0x00a9
                           0000AA   545 __SFRAA	=	0x00aa
                           0000AB   546 _FWT	=	0x00ab
                           0000AC   547 _FADDRL	=	0x00ac
                           0000AD   548 _FADDRH	=	0x00ad
                           0000AE   549 _FCTL	=	0x00ae
                           0000AF   550 _FWDATA	=	0x00af
                           0000B0   551 __SFRB0	=	0x00b0
                           0000B1   552 _ENCDI	=	0x00b1
                           0000B2   553 _ENCDO	=	0x00b2
                           0000B3   554 _ENCCS	=	0x00b3
                           0000B4   555 _ADCCON1	=	0x00b4
                           0000B5   556 _ADCCON2	=	0x00b5
                           0000B6   557 _ADCCON3	=	0x00b6
                           0000B7   558 __SFRB7	=	0x00b7
                           0000B8   559 _IEN1	=	0x00b8
                           0000B9   560 _IP1	=	0x00b9
                           0000BA   561 _ADCL	=	0x00ba
                           0000BB   562 _ADCH	=	0x00bb
                           0000BC   563 _RNDL	=	0x00bc
                           0000BD   564 _RNDH	=	0x00bd
                           0000BE   565 _SLEEP	=	0x00be
                           0000BF   566 __SFRBF	=	0x00bf
                           0000C0   567 _IRCON	=	0x00c0
                           0000C1   568 _U0DBUF	=	0x00c1
                           0000C2   569 _U0BAUD	=	0x00c2
                           0000C3   570 __SFRC3	=	0x00c3
                           0000C4   571 _U0UCR	=	0x00c4
                           0000C5   572 _U0GCR	=	0x00c5
                           0000C6   573 _CLKCON	=	0x00c6
                           0000C7   574 _MEMCTR	=	0x00c7
                           0000C8   575 __SFRC8	=	0x00c8
                           0000C9   576 _WDCTL	=	0x00c9
                           0000CA   577 _T3CNT	=	0x00ca
                           0000CB   578 _T3CTL	=	0x00cb
                           0000CC   579 _T3CCTL0	=	0x00cc
                           0000CD   580 _T3CC0	=	0x00cd
                           0000CE   581 _T3CCTL1	=	0x00ce
                           0000CF   582 _T3CC1	=	0x00cf
                           0000D0   583 _PSW	=	0x00d0
                           0000D1   584 _DMAIRQ	=	0x00d1
                           0000D2   585 _DMA1CFGL	=	0x00d2
                           0000D3   586 _DMA1CFGH	=	0x00d3
                           0000D4   587 _DMA0CFGL	=	0x00d4
                           0000D5   588 _DMA0CFGH	=	0x00d5
                           0000D6   589 _DMAARM	=	0x00d6
                           0000D7   590 _DMAREQ	=	0x00d7
                           0000D8   591 _TIMIF	=	0x00d8
                           0000D9   592 _RFD	=	0x00d9
                           0000DA   593 _T1CC0L	=	0x00da
                           0000DB   594 _T1CC0H	=	0x00db
                           0000DC   595 _T1CC1L	=	0x00dc
                           0000DD   596 _T1CC1H	=	0x00dd
                           0000DE   597 _T1CC2L	=	0x00de
                           0000DF   598 _T1CC2H	=	0x00df
                           0000E0   599 _ACC	=	0x00e0
                           0000E1   600 _RFST	=	0x00e1
                           0000E2   601 _T1CNTL	=	0x00e2
                           0000E3   602 _T1CNTH	=	0x00e3
                           0000E4   603 _T1CTL	=	0x00e4
                           0000E5   604 _T1CCTL0	=	0x00e5
                           0000E6   605 _T1CCTL1	=	0x00e6
                           0000E7   606 _T1CCTL2	=	0x00e7
                           0000E8   607 _IRCON2	=	0x00e8
                           0000E9   608 _RFIF	=	0x00e9
                           0000EA   609 _T4CNT	=	0x00ea
                           0000EB   610 _T4CTL	=	0x00eb
                           0000EC   611 _T4CCTL0	=	0x00ec
                           0000ED   612 _T4CC0	=	0x00ed
                           0000EE   613 _T4CCTL1	=	0x00ee
                           0000EF   614 _T4CC1	=	0x00ef
                           0000F0   615 _B	=	0x00f0
                           0000F1   616 _PERCFG	=	0x00f1
                           0000F2   617 _ADCCFG	=	0x00f2
                           0000F3   618 _P0SEL	=	0x00f3
                           0000F4   619 _P1SEL	=	0x00f4
                           0000F5   620 _P2SEL	=	0x00f5
                           0000F6   621 _P1INP	=	0x00f6
                           0000F7   622 _P2INP	=	0x00f7
                           0000F8   623 _U1CSR	=	0x00f8
                           0000F9   624 _U1DBUF	=	0x00f9
                           0000FA   625 _U1BAUD	=	0x00fa
                           0000FB   626 _U1UCR	=	0x00fb
                           0000FC   627 _U1GCR	=	0x00fc
                           0000FD   628 _P0DIR	=	0x00fd
                           0000FE   629 _P1DIR	=	0x00fe
                           0000FF   630 _P2DIR	=	0x00ff
                                    631 ;--------------------------------------------------------
                                    632 ; special function bits
                                    633 ;--------------------------------------------------------
                                    634 	.area RSEG    (ABS,DATA)
      000000                        635 	.org 0x0000
                           000080   636 _P0_0	=	0x0080
                           000081   637 _P0_1	=	0x0081
                           000082   638 _P0_2	=	0x0082
                           000083   639 _P0_3	=	0x0083
                           000084   640 _P0_4	=	0x0084
                           000085   641 _P0_5	=	0x0085
                           000086   642 _P0_6	=	0x0086
                           000087   643 _P0_7	=	0x0087
                           000088   644 _IT0	=	0x0088
                           000089   645 _RFTXRXIF	=	0x0089
                           00008A   646 _IT1	=	0x008a
                           00008B   647 _URX0IF	=	0x008b
                           00008D   648 _ADCIF	=	0x008d
                           00008F   649 _URX1IF	=	0x008f
                           000090   650 _P1_0	=	0x0090
                           000091   651 _P1_1	=	0x0091
                           000092   652 _P1_2	=	0x0092
                           000093   653 _P1_3	=	0x0093
                           000094   654 _P1_4	=	0x0094
                           000095   655 _P1_5	=	0x0095
                           000096   656 _P1_6	=	0x0096
                           000097   657 _P1_7	=	0x0097
                           000098   658 _ENCIF_0	=	0x0098
                           000099   659 _ENCIF_1	=	0x0099
                           0000A0   660 _P2_0	=	0x00a0
                           0000A1   661 _P2_1	=	0x00a1
                           0000A2   662 _P2_2	=	0x00a2
                           0000A3   663 _P2_3	=	0x00a3
                           0000A4   664 _P2_4	=	0x00a4
                           0000A5   665 _P2_5	=	0x00a5
                           0000A6   666 _P2_6	=	0x00a6
                           0000A7   667 _P2_7	=	0x00a7
                           0000A8   668 _RFTXRXIE	=	0x00a8
                           0000A9   669 _ADCIE	=	0x00a9
                           0000AA   670 _URX0IE	=	0x00aa
                           0000AB   671 _URX1IE	=	0x00ab
                           0000AC   672 _ENCIE	=	0x00ac
                           0000AD   673 _STIE	=	0x00ad
                           0000AF   674 _EA	=	0x00af
                           0000B8   675 _DMAIE	=	0x00b8
                           0000B9   676 _T1IE	=	0x00b9
                           0000BA   677 _T2IE	=	0x00ba
                           0000BB   678 _T3IE	=	0x00bb
                           0000BC   679 _T4IE	=	0x00bc
                           0000BD   680 _P0IE	=	0x00bd
                           0000C0   681 _DMAIF	=	0x00c0
                           0000C1   682 _T1IF	=	0x00c1
                           0000C2   683 _T2IF	=	0x00c2
                           0000C3   684 _T3IF	=	0x00c3
                           0000C4   685 _T4IF	=	0x00c4
                           0000C5   686 _P0IF	=	0x00c5
                           0000C7   687 _STIF	=	0x00c7
                           0000D0   688 _P	=	0x00d0
                           0000D1   689 _F1	=	0x00d1
                           0000D2   690 _OV	=	0x00d2
                           0000D3   691 _RS0	=	0x00d3
                           0000D4   692 _RS1	=	0x00d4
                           0000D5   693 _F0	=	0x00d5
                           0000D6   694 _AC	=	0x00d6
                           0000D7   695 _CY	=	0x00d7
                           0000D8   696 _T3OVFIF	=	0x00d8
                           0000D9   697 _T3CH0IF	=	0x00d9
                           0000DA   698 _T3CH1IF	=	0x00da
                           0000DB   699 _T4OVFIF	=	0x00db
                           0000DC   700 _T4CH0IF	=	0x00dc
                           0000DD   701 _T4CH1IF	=	0x00dd
                           0000DE   702 _OVFIM	=	0x00de
                           0000E0   703 _ACC_0	=	0x00e0
                           0000E1   704 _ACC_1	=	0x00e1
                           0000E2   705 _ACC_2	=	0x00e2
                           0000E3   706 _ACC_3	=	0x00e3
                           0000E4   707 _ACC_4	=	0x00e4
                           0000E5   708 _ACC_5	=	0x00e5
                           0000E6   709 _ACC_6	=	0x00e6
                           0000E7   710 _ACC_7	=	0x00e7
                           0000E8   711 _P2IF	=	0x00e8
                           0000E9   712 _UTX0IF	=	0x00e9
                           0000EA   713 _UTX1IF	=	0x00ea
                           0000EB   714 _P1IF	=	0x00eb
                           0000EC   715 _WDTIF	=	0x00ec
                           0000F0   716 _B_0	=	0x00f0
                           0000F1   717 _B_1	=	0x00f1
                           0000F2   718 _B_2	=	0x00f2
                           0000F3   719 _B_3	=	0x00f3
                           0000F4   720 _B_4	=	0x00f4
                           0000F5   721 _B_5	=	0x00f5
                           0000F6   722 _B_6	=	0x00f6
                           0000F7   723 _B_7	=	0x00f7
                           0000F8   724 _ACTIVE	=	0x00f8
                           0000F9   725 _TX_BYTE	=	0x00f9
                           0000FA   726 _RX_BYTE	=	0x00fa
                           0000FB   727 _ERR	=	0x00fb
                           0000FC   728 _FE	=	0x00fc
                           0000FD   729 _SLAVE	=	0x00fd
                           0000FE   730 _RE	=	0x00fe
                           0000FF   731 _MODE	=	0x00ff
                           0000E8   732 _USBIF	=	0x00e8
                                    733 ;--------------------------------------------------------
                                    734 ; overlayable register banks
                                    735 ;--------------------------------------------------------
                                    736 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        737 	.ds 8
                                    738 ;--------------------------------------------------------
                                    739 ; internal ram data
                                    740 ;--------------------------------------------------------
                                    741 	.area DSEG    (DATA)
      000008                        742 _input_size::
      000008                        743 	.ds 1
      000009                        744 _input_head_idx::
      000009                        745 	.ds 1
      00000A                        746 _input_tail_idx::
      00000A                        747 	.ds 1
      00000B                        748 _output_size::
      00000B                        749 	.ds 1
      00000C                        750 _output_head_idx::
      00000C                        751 	.ds 1
      00000D                        752 _output_tail_idx::
      00000D                        753 	.ds 1
      00000E                        754 _serial_data_available::
      00000E                        755 	.ds 1
      00000F                        756 _spi_mode::
      00000F                        757 	.ds 1
      000010                        758 _master_send_size::
      000010                        759 	.ds 1
      000011                        760 _slave_send_size::
      000011                        761 	.ds 1
      000012                        762 _txdata_PARM_2:
      000012                        763 	.ds 1
      000013                        764 _txdata_PARM_3:
      000013                        765 	.ds 2
      000015                        766 _txdata_PARM_4:
      000015                        767 	.ds 2
                                    768 ;--------------------------------------------------------
                                    769 ; overlayable items in internal ram 
                                    770 ;--------------------------------------------------------
                                    771 	.area	OSEG    (OVR,DATA)
                                    772 	.area	OSEG    (OVR,DATA)
                                    773 ;--------------------------------------------------------
                                    774 ; indirectly addressable internal ram data
                                    775 ;--------------------------------------------------------
                                    776 	.area ISEG    (DATA)
                                    777 ;--------------------------------------------------------
                                    778 ; absolute internal ram data
                                    779 ;--------------------------------------------------------
                                    780 	.area IABS    (ABS,DATA)
                                    781 	.area IABS    (ABS,DATA)
                                    782 ;--------------------------------------------------------
                                    783 ; bit data
                                    784 ;--------------------------------------------------------
                                    785 	.area BSEG    (BIT)
                                    786 ;--------------------------------------------------------
                                    787 ; paged external ram data
                                    788 ;--------------------------------------------------------
                                    789 	.area PSEG    (PAG,XDATA)
                                    790 ;--------------------------------------------------------
                                    791 ; external ram data
                                    792 ;--------------------------------------------------------
                                    793 	.area XSEG    (XDATA)
                           00DF02   794 _MDMCTRL0H	=	0xdf02
                           00DF00   795 _SYNC1	=	0xdf00
                           00DF01   796 _SYNC0	=	0xdf01
                           00DF02   797 _PKTLEN	=	0xdf02
                           00DF03   798 _PKTCTRL1	=	0xdf03
                           00DF04   799 _PKTCTRL0	=	0xdf04
                           00DF05   800 _ADDR	=	0xdf05
                           00DF06   801 _CHANNR	=	0xdf06
                           00DF07   802 _FSCTRL1	=	0xdf07
                           00DF08   803 _FSCTRL0	=	0xdf08
                           00DF09   804 _FREQ2	=	0xdf09
                           00DF0A   805 _FREQ1	=	0xdf0a
                           00DF0B   806 _FREQ0	=	0xdf0b
                           00DF0C   807 _MDMCFG4	=	0xdf0c
                           00DF0D   808 _MDMCFG3	=	0xdf0d
                           00DF0E   809 _MDMCFG2	=	0xdf0e
                           00DF0F   810 _MDMCFG1	=	0xdf0f
                           00DF10   811 _MDMCFG0	=	0xdf10
                           00DF11   812 _DEVIATN	=	0xdf11
                           00DF12   813 _MCSM2	=	0xdf12
                           00DF13   814 _MCSM1	=	0xdf13
                           00DF14   815 _MCSM0	=	0xdf14
                           00DF15   816 _FOCCFG	=	0xdf15
                           00DF16   817 _BSCFG	=	0xdf16
                           00DF17   818 _AGCCTRL2	=	0xdf17
                           00DF18   819 _AGCCTRL1	=	0xdf18
                           00DF19   820 _AGCCTRL0	=	0xdf19
                           00DF1A   821 _FREND1	=	0xdf1a
                           00DF1B   822 _FREND0	=	0xdf1b
                           00DF1C   823 _FSCAL3	=	0xdf1c
                           00DF1D   824 _FSCAL2	=	0xdf1d
                           00DF1E   825 _FSCAL1	=	0xdf1e
                           00DF1F   826 _FSCAL0	=	0xdf1f
                           00DF20   827 __XREGDF20	=	0xdf20
                           00DF21   828 __XREGDF21	=	0xdf21
                           00DF22   829 __XREGDF22	=	0xdf22
                           00DF23   830 _TEST2	=	0xdf23
                           00DF24   831 _TEST1	=	0xdf24
                           00DF25   832 _TEST0	=	0xdf25
                           00DF26   833 __XREGDF26	=	0xdf26
                           00DF27   834 _PA_TABLE7	=	0xdf27
                           00DF28   835 _PA_TABLE6	=	0xdf28
                           00DF29   836 _PA_TABLE5	=	0xdf29
                           00DF2A   837 _PA_TABLE4	=	0xdf2a
                           00DF2B   838 _PA_TABLE3	=	0xdf2b
                           00DF2C   839 _PA_TABLE2	=	0xdf2c
                           00DF2D   840 _PA_TABLE1	=	0xdf2d
                           00DF2E   841 _PA_TABLE0	=	0xdf2e
                           00DF2F   842 _IOCFG2	=	0xdf2f
                           00DF30   843 _IOCFG1	=	0xdf30
                           00DF31   844 _IOCFG0	=	0xdf31
                           00DF32   845 __XREGDF32	=	0xdf32
                           00DF33   846 __XREGDF33	=	0xdf33
                           00DF34   847 __XREGDF34	=	0xdf34
                           00DF35   848 __XREGDF35	=	0xdf35
                           00DF36   849 _PARTNUM	=	0xdf36
                           00DF37   850 _VERSION	=	0xdf37
                           00DF38   851 _FREQEST	=	0xdf38
                           00DF39   852 _LQI	=	0xdf39
                           00DF3A   853 _RSSI	=	0xdf3a
                           00DF3B   854 _MARCSTATE	=	0xdf3b
                           00DF3C   855 _PKTSTATUS	=	0xdf3c
                           00DF3D   856 _VCO_VC_DAC	=	0xdf3d
                           00DF40   857 _I2SCFG0	=	0xdf40
                           00DF41   858 _I2SCFG1	=	0xdf41
                           00DF42   859 _I2SDATL	=	0xdf42
                           00DF43   860 _I2SDATH	=	0xdf43
                           00DF44   861 _I2SWCNT	=	0xdf44
                           00DF45   862 _I2SSTAT	=	0xdf45
                           00DF46   863 _I2SCLKF0	=	0xdf46
                           00DF47   864 _I2SCLKF1	=	0xdf47
                           00DF48   865 _I2SCLKF2	=	0xdf48
                           00DF80   866 __NA_P0	=	0xdf80
                           00DF81   867 __NA_SP	=	0xdf81
                           00DF82   868 __NA_DPL0	=	0xdf82
                           00DF83   869 __NA_DPH0	=	0xdf83
                           00DF84   870 __NA_DPL1	=	0xdf84
                           00DF85   871 __NA_DPH1	=	0xdf85
                           00DF86   872 _X_U0CSR	=	0xdf86
                           00DF87   873 __NA_PCON	=	0xdf87
                           00DF88   874 __NA_TCON	=	0xdf88
                           00DF89   875 _X_P0IFG	=	0xdf89
                           00DF8A   876 _X_P1IFG	=	0xdf8a
                           00DF8B   877 _X_P2IFG	=	0xdf8b
                           00DF8C   878 _X_PICTL	=	0xdf8c
                           00DF8D   879 _X_P1IEN	=	0xdf8d
                           00DF8E   880 __X_SFR8E	=	0xdf8e
                           00DF8F   881 _X_P0INP	=	0xdf8f
                           00DF90   882 __NA_P1	=	0xdf90
                           00DF91   883 _X_RFIM	=	0xdf91
                           00DF92   884 __NA_DPS	=	0xdf92
                           00DF93   885 _X_MPAGE	=	0xdf93
                           00DF94   886 __X_SFR94	=	0xdf94
                           00DF95   887 __X_SFR95	=	0xdf95
                           00DF96   888 __X_SFR96	=	0xdf96
                           00DF97   889 __X_SFR97	=	0xdf97
                           00DF98   890 __NA_S0CON	=	0xdf98
                           00DF99   891 __X_SFR99	=	0xdf99
                           00DF9A   892 __NA_IEN2	=	0xdf9a
                           00DF9B   893 __NA_S1CON	=	0xdf9b
                           00DF9C   894 _X_T2CT	=	0xdf9c
                           00DF9D   895 _X_T2PR	=	0xdf9d
                           00DF9E   896 _X_T2CTL	=	0xdf9e
                           00DF9F   897 __X_SFR9F	=	0xdf9f
                           00DFA0   898 __NA_P2	=	0xdfa0
                           00DFA1   899 _X_WORIRQ	=	0xdfa1
                           00DFA2   900 _X_WORCTRL	=	0xdfa2
                           00DFA3   901 _X_WOREVT0	=	0xdfa3
                           00DFA4   902 _X_WOREVT1	=	0xdfa4
                           00DFA5   903 _X_WORTIME0	=	0xdfa5
                           00DFA6   904 _X_WORTIME1	=	0xdfa6
                           00DFA7   905 __X_SFRA7	=	0xdfa7
                           00DFA8   906 __NA_IEN0	=	0xdfa8
                           00DFA9   907 __NA_IP0	=	0xdfa9
                           00DFAA   908 __X_SFRAA	=	0xdfaa
                           00DFAB   909 _X_FWT	=	0xdfab
                           00DFAC   910 _X_FADDRL	=	0xdfac
                           00DFAD   911 _X_FADDRH	=	0xdfad
                           00DFAE   912 _X_FCTL	=	0xdfae
                           00DFAF   913 _X_FWDATA	=	0xdfaf
                           00DFB0   914 __X_SFRB0	=	0xdfb0
                           00DFB1   915 _X_ENCDI	=	0xdfb1
                           00DFB2   916 _X_ENCDO	=	0xdfb2
                           00DFB3   917 _X_ENCCS	=	0xdfb3
                           00DFB4   918 _X_ADCCON1	=	0xdfb4
                           00DFB5   919 _X_ADCCON2	=	0xdfb5
                           00DFB6   920 _X_ADCCON3	=	0xdfb6
                           00DFB7   921 __X_SFRB7	=	0xdfb7
                           00DFB8   922 __NA_IEN1	=	0xdfb8
                           00DFB9   923 __NA_IP1	=	0xdfb9
                           00DFBA   924 _X_ADCL	=	0xdfba
                           00DFBB   925 _X_ADCH	=	0xdfbb
                           00DFBC   926 _X_RNDL	=	0xdfbc
                           00DFBD   927 _X_RNDH	=	0xdfbd
                           00DFBE   928 _X_SLEEP	=	0xdfbe
                           00DFBF   929 __X_SFRBF	=	0xdfbf
                           00DFC0   930 __NA_IRCON	=	0xdfc0
                           00DFC1   931 _X_U0DBUF	=	0xdfc1
                           00DFC2   932 _X_U0BAUD	=	0xdfc2
                           00DFC3   933 __X_SFRC3	=	0xdfc3
                           00DFC4   934 _X_U0UCR	=	0xdfc4
                           00DFC5   935 _X_U0GCR	=	0xdfc5
                           00DFC6   936 _X_CLKCON	=	0xdfc6
                           00DFC7   937 _X_MEMCTR	=	0xdfc7
                           00DFC8   938 __X_SFRC8	=	0xdfc8
                           00DFC9   939 _X_WDCTL	=	0xdfc9
                           00DFCA   940 _X_T3CNT	=	0xdfca
                           00DFCB   941 _X_T3CTL	=	0xdfcb
                           00DFCC   942 _X_T3CCTL0	=	0xdfcc
                           00DFCD   943 _X_T3CC0	=	0xdfcd
                           00DFCE   944 _X_T3CCTL1	=	0xdfce
                           00DFCF   945 _X_T3CC1	=	0xdfcf
                           00DFD0   946 __NA_PSW	=	0xdfd0
                           00DFD1   947 _X_DMAIRQ	=	0xdfd1
                           00DFD2   948 _X_DMA1CFGL	=	0xdfd2
                           00DFD3   949 _X_DMA1CFGH	=	0xdfd3
                           00DFD4   950 _X_DMA0CFGL	=	0xdfd4
                           00DFD5   951 _X_DMA0CFGH	=	0xdfd5
                           00DFD6   952 _X_DMAARM	=	0xdfd6
                           00DFD7   953 _X_DMAREQ	=	0xdfd7
                           00DFD8   954 _X_TIMIF	=	0xdfd8
                           00DFD9   955 _X_RFD	=	0xdfd9
                           00DFDA   956 _X_T1CC0L	=	0xdfda
                           00DFDB   957 _X_T1CC0H	=	0xdfdb
                           00DFDC   958 _X_T1CC1L	=	0xdfdc
                           00DFDD   959 _X_T1CC1H	=	0xdfdd
                           00DFDE   960 _X_T1CC2L	=	0xdfde
                           00DFDF   961 _X_T1CC2H	=	0xdfdf
                           00DFE0   962 __NA_ACC	=	0xdfe0
                           00DFE1   963 _X_RFST	=	0xdfe1
                           00DFE2   964 _X_T1CNTL	=	0xdfe2
                           00DFE3   965 _X_T1CNTH	=	0xdfe3
                           00DFE4   966 _X_T1CTL	=	0xdfe4
                           00DFE5   967 _X_T1CCTL0	=	0xdfe5
                           00DFE6   968 _X_T1CCTL1	=	0xdfe6
                           00DFE7   969 _X_T1CCTL2	=	0xdfe7
                           00DFE8   970 __NA_IRCON2	=	0xdfe8
                           00DFE9   971 _X_RFIF	=	0xdfe9
                           00DFEA   972 _X_T4CNT	=	0xdfea
                           00DFEB   973 _X_T4CTL	=	0xdfeb
                           00DFEC   974 _X_T4CCTL0	=	0xdfec
                           00DFED   975 _X_T4CC0	=	0xdfed
                           00DFEE   976 _X_T4CCTL1	=	0xdfee
                           00DFEF   977 _X_T4CC1	=	0xdfef
                           00DFF0   978 __NA_B	=	0xdff0
                           00DFF1   979 _X_PERCFG	=	0xdff1
                           00DFF2   980 _X_ADCCFG	=	0xdff2
                           00DFF3   981 _X_P0SEL	=	0xdff3
                           00DFF4   982 _X_P1SEL	=	0xdff4
                           00DFF5   983 _X_P2SEL	=	0xdff5
                           00DFF6   984 _X_P1INP	=	0xdff6
                           00DFF7   985 _X_P2INP	=	0xdff7
                           00DFF8   986 _X_U1CSR	=	0xdff8
                           00DFF9   987 _X_U1DBUF	=	0xdff9
                           00DFFA   988 _X_U1BAUD	=	0xdffa
                           00DFFB   989 _X_U1UCR	=	0xdffb
                           00DFFC   990 _X_U1GCR	=	0xdffc
                           00DFFD   991 _X_P0DIR	=	0xdffd
                           00DFFE   992 _X_P1DIR	=	0xdffe
                           00DFFF   993 _X_P2DIR	=	0xdfff
                           00DE00   994 _USBADDR	=	0xde00
                           00DE01   995 _USBPOW	=	0xde01
                           00DE02   996 _USBIIF	=	0xde02
                           00DE04   997 _USBOIF	=	0xde04
                           00DE06   998 _USBCIF	=	0xde06
                           00DE07   999 _USBIIE	=	0xde07
                           00DE09  1000 _USBOIE	=	0xde09
                           00DE0B  1001 _USBCIE	=	0xde0b
                           00DE0C  1002 _USBFRML	=	0xde0c
                           00DE0D  1003 _USBFRMH	=	0xde0d
                           00DE0E  1004 _USBINDEX	=	0xde0e
                           00DE10  1005 _USBMAXI	=	0xde10
                           00DE11  1006 _USBCS0	=	0xde11
                           00DE11  1007 _USBCSIL	=	0xde11
                           00DE12  1008 _USBCSIH	=	0xde12
                           00DE13  1009 _USBMAXO	=	0xde13
                           00DE14  1010 _USBCSOL	=	0xde14
                           00DE15  1011 _USBCSOH	=	0xde15
                           00DE16  1012 _USBCNT0	=	0xde16
                           00DE16  1013 _USBCNTL	=	0xde16
                           00DE17  1014 _USBCNTH	=	0xde17
                           00DE20  1015 _USBF0	=	0xde20
                           00DE22  1016 _USBF1	=	0xde22
                           00DE24  1017 _USBF2	=	0xde24
                           00DE26  1018 _USBF3	=	0xde26
                           00DE28  1019 _USBF4	=	0xde28
                           00DE2A  1020 _USBF5	=	0xde2a
      00F586                       1021 _spi_input_buf::
      00F586                       1022 	.ds 220
      00F662                       1023 _spi_output_buf::
      00F662                       1024 	.ds 220
      00F73E                       1025 _vcom_putstr_buff_1_91:
      00F73E                       1026 	.ds 3
                                   1027 ;--------------------------------------------------------
                                   1028 ; absolute external ram data
                                   1029 ;--------------------------------------------------------
                                   1030 	.area XABS    (ABS,XDATA)
                                   1031 ;--------------------------------------------------------
                                   1032 ; external initialized ram data
                                   1033 ;--------------------------------------------------------
                                   1034 	.area XISEG   (XDATA)
                                   1035 	.area HOME    (CODE)
                                   1036 	.area GSINIT0 (CODE)
                                   1037 	.area GSINIT1 (CODE)
                                   1038 	.area GSINIT2 (CODE)
                                   1039 	.area GSINIT3 (CODE)
                                   1040 	.area GSINIT4 (CODE)
                                   1041 	.area GSINIT5 (CODE)
                                   1042 	.area GSINIT  (CODE)
                                   1043 	.area GSFINAL (CODE)
                                   1044 	.area CSEG    (CODE)
                                   1045 ;--------------------------------------------------------
                                   1046 ; global & static initialisations
                                   1047 ;--------------------------------------------------------
                                   1048 	.area HOME    (CODE)
                                   1049 	.area GSINIT  (CODE)
                                   1050 	.area GSFINAL (CODE)
                                   1051 	.area GSINIT  (CODE)
                                   1052 ;	cc1110_spicom.c:25: volatile uint8_t input_size = 0;
      0000E2 75 08 00         [24] 1053 	mov	_input_size,#0x00
                                   1054 ;	cc1110_spicom.c:26: volatile uint8_t input_head_idx = 0;
      0000E5 75 09 00         [24] 1055 	mov	_input_head_idx,#0x00
                                   1056 ;	cc1110_spicom.c:27: volatile uint8_t input_tail_idx = 0;
      0000E8 75 0A 00         [24] 1057 	mov	_input_tail_idx,#0x00
                                   1058 ;	cc1110_spicom.c:30: volatile uint8_t output_size = 0;
      0000EB 75 0B 00         [24] 1059 	mov	_output_size,#0x00
                                   1060 ;	cc1110_spicom.c:31: volatile uint8_t output_head_idx = 0;
      0000EE 75 0C 00         [24] 1061 	mov	_output_head_idx,#0x00
                                   1062 ;	cc1110_spicom.c:32: volatile uint8_t output_tail_idx = 0;
      0000F1 75 0D 00         [24] 1063 	mov	_output_tail_idx,#0x00
                                   1064 ;	cc1110_spicom.c:41: volatile uint8_t master_send_size = 0;
      0000F4 75 10 00         [24] 1065 	mov	_master_send_size,#0x00
                                   1066 ;	cc1110_spicom.c:42: volatile uint8_t slave_send_size = 0;
      0000F7 75 11 00         [24] 1067 	mov	_slave_send_size,#0x00
                                   1068 ;--------------------------------------------------------
                                   1069 ; Home
                                   1070 ;--------------------------------------------------------
                                   1071 	.area HOME    (CODE)
                                   1072 	.area HOME    (CODE)
                                   1073 ;--------------------------------------------------------
                                   1074 ; code
                                   1075 ;--------------------------------------------------------
                                   1076 	.area CSEG    (CODE)
                                   1077 ;------------------------------------------------------------
                                   1078 ;Allocation info for local variables in function 'rx1_isr'
                                   1079 ;------------------------------------------------------------
                                   1080 ;value                     Allocated to registers r7 
                                   1081 ;------------------------------------------------------------
                                   1082 ;	cc1110_spicom.c:54: void rx1_isr(void) __interrupt URX1_VECTOR {
                                   1083 ;	-----------------------------------------
                                   1084 ;	 function rx1_isr
                                   1085 ;	-----------------------------------------
      000F68                       1086 _rx1_isr:
                           000007  1087 	ar7 = 0x07
                           000006  1088 	ar6 = 0x06
                           000005  1089 	ar5 = 0x05
                           000004  1090 	ar4 = 0x04
                           000003  1091 	ar3 = 0x03
                           000002  1092 	ar2 = 0x02
                           000001  1093 	ar1 = 0x01
                           000000  1094 	ar0 = 0x00
      000F68 C0 E0            [24] 1095 	push	acc
      000F6A C0 82            [24] 1096 	push	dpl
      000F6C C0 83            [24] 1097 	push	dph
      000F6E C0 07            [24] 1098 	push	ar7
      000F70 C0 D0            [24] 1099 	push	psw
      000F72 75 D0 00         [24] 1100 	mov	psw,#0x00
                                   1101 ;	cc1110_spicom.c:56: value = U1DBUF;
      000F75 AF F9            [24] 1102 	mov	r7,_U1DBUF
                                   1103 ;	cc1110_spicom.c:58: if (spi_mode == SPI_MODE_WAIT && value == 0x99) {
      000F77 E5 0F            [12] 1104 	mov	a,_spi_mode
      000F79 70 0E            [24] 1105 	jnz	00102$
      000F7B BF 99 0B         [24] 1106 	cjne	r7,#0x99,00102$
                                   1107 ;	cc1110_spicom.c:59: slave_send_size = output_size;
      000F7E 85 0B 11         [24] 1108 	mov	_slave_send_size,_output_size
                                   1109 ;	cc1110_spicom.c:61: spi_mode = SPI_MODE_SIZE;
      000F81 75 0F 01         [24] 1110 	mov	_spi_mode,#0x01
                                   1111 ;	cc1110_spicom.c:62: U1DBUF = slave_send_size;
      000F84 85 11 F9         [24] 1112 	mov	_U1DBUF,_slave_send_size
                                   1113 ;	cc1110_spicom.c:63: return;
      000F87 80 5A            [24] 1114 	sjmp	00122$
      000F89                       1115 00102$:
                                   1116 ;	cc1110_spicom.c:66: if (spi_mode == SPI_MODE_SIZE) {
      000F89 74 01            [12] 1117 	mov	a,#0x01
      000F8B B5 0F 14         [24] 1118 	cjne	a,_spi_mode,00109$
                                   1119 ;	cc1110_spicom.c:67: master_send_size = value;
      000F8E 8F 10            [24] 1120 	mov	_master_send_size,r7
                                   1121 ;	cc1110_spicom.c:68: if (master_send_size > 0 || slave_send_size > 0) {
      000F90 E5 10            [12] 1122 	mov	a,_master_send_size
      000F92 70 04            [24] 1123 	jnz	00104$
      000F94 E5 11            [12] 1124 	mov	a,_slave_send_size
      000F96 60 05            [24] 1125 	jz	00105$
      000F98                       1126 00104$:
                                   1127 ;	cc1110_spicom.c:69: spi_mode = SPI_MODE_XFER;
      000F98 75 0F 02         [24] 1128 	mov	_spi_mode,#0x02
      000F9B 80 03            [24] 1129 	sjmp	00106$
      000F9D                       1130 00105$:
                                   1131 ;	cc1110_spicom.c:71: spi_mode = SPI_MODE_WAIT;
      000F9D 75 0F 00         [24] 1132 	mov	_spi_mode,#0x00
      000FA0                       1133 00106$:
                                   1134 ;	cc1110_spicom.c:73: return;
      000FA0 80 41            [24] 1135 	sjmp	00122$
      000FA2                       1136 00109$:
                                   1137 ;	cc1110_spicom.c:76: if (spi_mode == SPI_MODE_XFER && input_size < master_send_size) {
      000FA2 74 02            [12] 1138 	mov	a,#0x02
      000FA4 B5 0F 3C         [24] 1139 	cjne	a,_spi_mode,00122$
      000FA7 C3               [12] 1140 	clr	c
      000FA8 E5 08            [12] 1141 	mov	a,_input_size
      000FAA 95 10            [12] 1142 	subb	a,_master_send_size
      000FAC 50 35            [24] 1143 	jnc	00122$
                                   1144 ;	cc1110_spicom.c:77: if (input_size < SPI_BUF_LEN) {
      000FAE 74 24            [12] 1145 	mov	a,#0x100 - 0xDC
      000FB0 25 08            [12] 1146 	add	a,_input_size
      000FB2 40 25            [24] 1147 	jc	00115$
                                   1148 ;	cc1110_spicom.c:78: spi_input_buf[input_head_idx] = value;
      000FB4 E5 09            [12] 1149 	mov	a,_input_head_idx
      000FB6 24 86            [12] 1150 	add	a,#_spi_input_buf
      000FB8 F5 82            [12] 1151 	mov	dpl,a
      000FBA E4               [12] 1152 	clr	a
      000FBB 34 F5            [12] 1153 	addc	a,#(_spi_input_buf >> 8)
      000FBD F5 83            [12] 1154 	mov	dph,a
      000FBF EF               [12] 1155 	mov	a,r7
      000FC0 F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	cc1110_spicom.c:79: input_head_idx++;
      000FC1 05 09            [12] 1158 	inc	_input_head_idx
                                   1159 ;	cc1110_spicom.c:80: if (input_head_idx >= SPI_BUF_LEN) {
      000FC3 74 24            [12] 1160 	mov	a,#0x100 - 0xDC
      000FC5 25 09            [12] 1161 	add	a,_input_head_idx
      000FC7 50 03            [24] 1162 	jnc	00111$
                                   1163 ;	cc1110_spicom.c:81: input_head_idx = 0;
      000FC9 75 09 00         [24] 1164 	mov	_input_head_idx,#0x00
      000FCC                       1165 00111$:
                                   1166 ;	cc1110_spicom.c:83: input_size++;
      000FCC 05 08            [12] 1167 	inc	_input_size
                                   1168 ;	cc1110_spicom.c:84: if (input_size == master_send_size) {
      000FCE E5 10            [12] 1169 	mov	a,_master_send_size
      000FD0 B5 08 06         [24] 1170 	cjne	a,_input_size,00115$
                                   1171 ;	cc1110_spicom.c:85: master_send_size = 0;
      000FD3 75 10 00         [24] 1172 	mov	_master_send_size,#0x00
                                   1173 ;	cc1110_spicom.c:86: serial_data_available = 1;
      000FD6 75 0E 01         [24] 1174 	mov	_serial_data_available,#0x01
      000FD9                       1175 00115$:
                                   1176 ;	cc1110_spicom.c:89: if (slave_send_size == 0 && master_send_size == 0) {
      000FD9 E5 11            [12] 1177 	mov	a,_slave_send_size
      000FDB 70 06            [24] 1178 	jnz	00122$
      000FDD E5 10            [12] 1179 	mov	a,_master_send_size
                                   1180 ;	cc1110_spicom.c:90: spi_mode = SPI_MODE_WAIT;
      000FDF 70 02            [24] 1181 	jnz	00122$
      000FE1 F5 0F            [12] 1182 	mov	_spi_mode,a
      000FE3                       1183 00122$:
      000FE3 D0 D0            [24] 1184 	pop	psw
      000FE5 D0 07            [24] 1185 	pop	ar7
      000FE7 D0 83            [24] 1186 	pop	dph
      000FE9 D0 82            [24] 1187 	pop	dpl
      000FEB D0 E0            [24] 1188 	pop	acc
      000FED 32               [24] 1189 	reti
                                   1190 ;	eliminated unneeded push/pop b
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'tx1_isr'
                                   1193 ;------------------------------------------------------------
                                   1194 ;	cc1110_spicom.c:95: void tx1_isr(void) __interrupt UTX1_VECTOR {
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function tx1_isr
                                   1197 ;	-----------------------------------------
      000FEE                       1198 _tx1_isr:
      000FEE C0 E0            [24] 1199 	push	acc
      000FF0 C0 82            [24] 1200 	push	dpl
      000FF2 C0 83            [24] 1201 	push	dph
      000FF4 C0 07            [24] 1202 	push	ar7
      000FF6 C0 D0            [24] 1203 	push	psw
      000FF8 75 D0 00         [24] 1204 	mov	psw,#0x00
                                   1205 ;	cc1110_spicom.c:96: IRCON2 &= ~BIT2; // Clear UTX1IF
      000FFB AF E8            [24] 1206 	mov	r7,_IRCON2
      000FFD 74 FB            [12] 1207 	mov	a,#0xFB
      000FFF 5F               [12] 1208 	anl	a,r7
      001000 F5 E8            [12] 1209 	mov	_IRCON2,a
                                   1210 ;	cc1110_spicom.c:97: if (spi_mode == SPI_MODE_SIZE || spi_mode == SPI_MODE_XFER) {
      001002 74 01            [12] 1211 	mov	a,#0x01
      001004 B5 0F 02         [24] 1212 	cjne	a,_spi_mode,00134$
      001007 80 05            [24] 1213 	sjmp	00110$
      001009                       1214 00134$:
      001009 74 02            [12] 1215 	mov	a,#0x02
      00100B B5 0F 36         [24] 1216 	cjne	a,_spi_mode,00111$
      00100E                       1217 00110$:
                                   1218 ;	cc1110_spicom.c:98: if (slave_send_size > 0 && output_size > 0) {
      00100E E5 11            [12] 1219 	mov	a,_slave_send_size
      001010 60 2D            [24] 1220 	jz	00107$
      001012 E5 0B            [12] 1221 	mov	a,_output_size
      001014 60 29            [24] 1222 	jz	00107$
                                   1223 ;	cc1110_spicom.c:99: slave_send_size--;
      001016 15 11            [12] 1224 	dec	_slave_send_size
                                   1225 ;	cc1110_spicom.c:100: if (slave_send_size == 0 && master_send_size == 0) {
      001018 E5 11            [12] 1226 	mov	a,_slave_send_size
      00101A 70 06            [24] 1227 	jnz	00102$
      00101C E5 10            [12] 1228 	mov	a,_master_send_size
                                   1229 ;	cc1110_spicom.c:101: spi_mode = SPI_MODE_WAIT;
      00101E 70 02            [24] 1230 	jnz	00102$
      001020 F5 0F            [12] 1231 	mov	_spi_mode,a
      001022                       1232 00102$:
                                   1233 ;	cc1110_spicom.c:103: U1DBUF = spi_output_buf[output_tail_idx];
      001022 E5 0D            [12] 1234 	mov	a,_output_tail_idx
      001024 24 62            [12] 1235 	add	a,#_spi_output_buf
      001026 F5 82            [12] 1236 	mov	dpl,a
      001028 E4               [12] 1237 	clr	a
      001029 34 F6            [12] 1238 	addc	a,#(_spi_output_buf >> 8)
      00102B F5 83            [12] 1239 	mov	dph,a
      00102D E0               [24] 1240 	movx	a,@dptr
      00102E F5 F9            [12] 1241 	mov	_U1DBUF,a
                                   1242 ;	cc1110_spicom.c:104: output_size--;
      001030 15 0B            [12] 1243 	dec	_output_size
                                   1244 ;	cc1110_spicom.c:105: output_tail_idx++;
      001032 05 0D            [12] 1245 	inc	_output_tail_idx
                                   1246 ;	cc1110_spicom.c:106: if (output_tail_idx >= SPI_BUF_LEN) {
      001034 74 24            [12] 1247 	mov	a,#0x100 - 0xDC
      001036 25 0D            [12] 1248 	add	a,_output_tail_idx
      001038 50 0D            [24] 1249 	jnc	00114$
                                   1250 ;	cc1110_spicom.c:107: output_tail_idx = 0;
      00103A 75 0D 00         [24] 1251 	mov	_output_tail_idx,#0x00
      00103D 80 08            [24] 1252 	sjmp	00114$
      00103F                       1253 00107$:
                                   1254 ;	cc1110_spicom.c:110: U1DBUF = 0x99;
      00103F 75 F9 99         [24] 1255 	mov	_U1DBUF,#0x99
      001042 80 03            [24] 1256 	sjmp	00114$
      001044                       1257 00111$:
                                   1258 ;	cc1110_spicom.c:113: U1DBUF = 0x99;
      001044 75 F9 99         [24] 1259 	mov	_U1DBUF,#0x99
      001047                       1260 00114$:
      001047 D0 D0            [24] 1261 	pop	psw
      001049 D0 07            [24] 1262 	pop	ar7
      00104B D0 83            [24] 1263 	pop	dph
      00104D D0 82            [24] 1264 	pop	dpl
      00104F D0 E0            [24] 1265 	pop	acc
      001051 32               [24] 1266 	reti
                                   1267 ;	eliminated unneeded push/pop b
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'vcom_flush'
                                   1270 ;------------------------------------------------------------
                                   1271 ;	cc1110_spicom.c:117: void vcom_flush()
                                   1272 ;	-----------------------------------------
                                   1273 ;	 function vcom_flush
                                   1274 ;	-----------------------------------------
      001052                       1275 _vcom_flush:
                                   1276 ;	cc1110_spicom.c:120: return;
      001052 22               [24] 1277 	ret
                                   1278 ;------------------------------------------------------------
                                   1279 ;Allocation info for local variables in function 'vcom_putchar'
                                   1280 ;------------------------------------------------------------
                                   1281 ;c                         Allocated to registers r7 
                                   1282 ;------------------------------------------------------------
                                   1283 ;	cc1110_spicom.c:123: void vcom_putchar(char c)
                                   1284 ;	-----------------------------------------
                                   1285 ;	 function vcom_putchar
                                   1286 ;	-----------------------------------------
      001053                       1287 _vcom_putchar:
      001053 AF 82            [24] 1288 	mov	r7,dpl
                                   1289 ;	cc1110_spicom.c:125: if (output_size >= SPI_BUF_LEN) {
      001055 74 24            [12] 1290 	mov	a,#0x100 - 0xDC
      001057 25 0B            [12] 1291 	add	a,_output_size
      001059 50 0D            [24] 1292 	jnc	00104$
                                   1293 ;	cc1110_spicom.c:127: output_size--;
      00105B 15 0B            [12] 1294 	dec	_output_size
                                   1295 ;	cc1110_spicom.c:128: output_tail_idx++;
      00105D 05 0D            [12] 1296 	inc	_output_tail_idx
                                   1297 ;	cc1110_spicom.c:129: if (output_tail_idx >= SPI_BUF_LEN) {
      00105F 74 24            [12] 1298 	mov	a,#0x100 - 0xDC
      001061 25 0D            [12] 1299 	add	a,_output_tail_idx
      001063 50 03            [24] 1300 	jnc	00104$
                                   1301 ;	cc1110_spicom.c:130: output_tail_idx = 0;
      001065 75 0D 00         [24] 1302 	mov	_output_tail_idx,#0x00
      001068                       1303 00104$:
                                   1304 ;	cc1110_spicom.c:133: spi_output_buf[output_head_idx] = c;
      001068 E5 0C            [12] 1305 	mov	a,_output_head_idx
      00106A 24 62            [12] 1306 	add	a,#_spi_output_buf
      00106C F5 82            [12] 1307 	mov	dpl,a
      00106E E4               [12] 1308 	clr	a
      00106F 34 F6            [12] 1309 	addc	a,#(_spi_output_buf >> 8)
      001071 F5 83            [12] 1310 	mov	dph,a
      001073 EF               [12] 1311 	mov	a,r7
      001074 F0               [24] 1312 	movx	@dptr,a
                                   1313 ;	cc1110_spicom.c:135: output_head_idx++;
      001075 05 0C            [12] 1314 	inc	_output_head_idx
                                   1315 ;	cc1110_spicom.c:136: if (output_head_idx >= SPI_BUF_LEN) {
      001077 74 24            [12] 1316 	mov	a,#0x100 - 0xDC
      001079 25 0C            [12] 1317 	add	a,_output_head_idx
      00107B 50 03            [24] 1318 	jnc	00106$
                                   1319 ;	cc1110_spicom.c:137: output_head_idx = 0;
      00107D 75 0C 00         [24] 1320 	mov	_output_head_idx,#0x00
      001080                       1321 00106$:
                                   1322 ;	cc1110_spicom.c:139: output_size++;
      001080 05 0B            [12] 1323 	inc	_output_size
      001082 22               [24] 1324 	ret
                                   1325 ;------------------------------------------------------------
                                   1326 ;Allocation info for local variables in function 'vcom_pollchar'
                                   1327 ;------------------------------------------------------------
                                   1328 ;	cc1110_spicom.c:142: char vcom_pollchar()
                                   1329 ;	-----------------------------------------
                                   1330 ;	 function vcom_pollchar
                                   1331 ;	-----------------------------------------
      001083                       1332 _vcom_pollchar:
                                   1333 ;	cc1110_spicom.c:144: if (serial_data_available == 0) {
      001083 E5 0E            [12] 1334 	mov	a,_serial_data_available
      001085 70 04            [24] 1335 	jnz	00102$
                                   1336 ;	cc1110_spicom.c:145: return USB_READ_AGAIN;
      001087 75 82 FF         [24] 1337 	mov	dpl,#0xFF
      00108A 22               [24] 1338 	ret
      00108B                       1339 00102$:
                                   1340 ;	cc1110_spicom.c:147: return spi_input_buf[input_tail_idx];
      00108B E5 0A            [12] 1341 	mov	a,_input_tail_idx
      00108D 24 86            [12] 1342 	add	a,#_spi_input_buf
      00108F F5 82            [12] 1343 	mov	dpl,a
      001091 E4               [12] 1344 	clr	a
      001092 34 F5            [12] 1345 	addc	a,#(_spi_input_buf >> 8)
      001094 F5 83            [12] 1346 	mov	dph,a
      001096 E0               [24] 1347 	movx	a,@dptr
      001097 F5 82            [12] 1348 	mov	dpl,a
      001099 22               [24] 1349 	ret
                                   1350 ;------------------------------------------------------------
                                   1351 ;Allocation info for local variables in function 'vcom_getchar'
                                   1352 ;------------------------------------------------------------
                                   1353 ;s_data                    Allocated to registers r7 
                                   1354 ;------------------------------------------------------------
                                   1355 ;	cc1110_spicom.c:150: char vcom_getchar()
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function vcom_getchar
                                   1358 ;	-----------------------------------------
      00109A                       1359 _vcom_getchar:
                                   1360 ;	cc1110_spicom.c:154: if (serial_data_available == 0) {
      00109A E5 0E            [12] 1361 	mov	a,_serial_data_available
      00109C 70 04            [24] 1362 	jnz	00102$
                                   1363 ;	cc1110_spicom.c:155: return USB_READ_AGAIN;
      00109E 75 82 FF         [24] 1364 	mov	dpl,#0xFF
      0010A1 22               [24] 1365 	ret
      0010A2                       1366 00102$:
                                   1367 ;	cc1110_spicom.c:158: s_data = spi_input_buf[input_tail_idx];
      0010A2 E5 0A            [12] 1368 	mov	a,_input_tail_idx
      0010A4 24 86            [12] 1369 	add	a,#_spi_input_buf
      0010A6 F5 82            [12] 1370 	mov	dpl,a
      0010A8 E4               [12] 1371 	clr	a
      0010A9 34 F5            [12] 1372 	addc	a,#(_spi_input_buf >> 8)
      0010AB F5 83            [12] 1373 	mov	dph,a
      0010AD E0               [24] 1374 	movx	a,@dptr
      0010AE FF               [12] 1375 	mov	r7,a
                                   1376 ;	cc1110_spicom.c:159: input_tail_idx++;
      0010AF 05 0A            [12] 1377 	inc	_input_tail_idx
                                   1378 ;	cc1110_spicom.c:160: if (input_tail_idx >= SPI_BUF_LEN) {
      0010B1 74 24            [12] 1379 	mov	a,#0x100 - 0xDC
      0010B3 25 0A            [12] 1380 	add	a,_input_tail_idx
      0010B5 50 03            [24] 1381 	jnc	00104$
                                   1382 ;	cc1110_spicom.c:161: input_tail_idx = 0;
      0010B7 75 0A 00         [24] 1383 	mov	_input_tail_idx,#0x00
      0010BA                       1384 00104$:
                                   1385 ;	cc1110_spicom.c:163: input_size--;
      0010BA 15 08            [12] 1386 	dec	_input_size
                                   1387 ;	cc1110_spicom.c:164: if (input_size == 0) {
      0010BC E5 08            [12] 1388 	mov	a,_input_size
                                   1389 ;	cc1110_spicom.c:165: serial_data_available = 0;
      0010BE 70 02            [24] 1390 	jnz	00106$
      0010C0 F5 0E            [12] 1391 	mov	_serial_data_available,a
      0010C2                       1392 00106$:
                                   1393 ;	cc1110_spicom.c:167: return s_data;
      0010C2 8F 82            [24] 1394 	mov	dpl,r7
      0010C4 22               [24] 1395 	ret
                                   1396 ;------------------------------------------------------------
                                   1397 ;Allocation info for local variables in function 'vcom_enable'
                                   1398 ;------------------------------------------------------------
                                   1399 ;	cc1110_spicom.c:170: void vcom_enable()
                                   1400 ;	-----------------------------------------
                                   1401 ;	 function vcom_enable
                                   1402 ;	-----------------------------------------
      0010C5                       1403 _vcom_enable:
                                   1404 ;	cc1110_spicom.c:172: TCON &= ~BIT3; // Clear URX1IF
      0010C5 AF 88            [24] 1405 	mov	r7,_TCON
      0010C7 74 F7            [12] 1406 	mov	a,#0xF7
      0010C9 5F               [12] 1407 	anl	a,r7
      0010CA F5 88            [12] 1408 	mov	_TCON,a
                                   1409 ;	cc1110_spicom.c:173: URX1IE = 1;    // Enable URX1IE interrupt
      0010CC D2 AB            [12] 1410 	setb	_URX1IE
                                   1411 ;	cc1110_spicom.c:175: IRCON2 &= ~BIT2; // Clear UTX1IF
      0010CE AF E8            [24] 1412 	mov	r7,_IRCON2
      0010D0 74 FB            [12] 1413 	mov	a,#0xFB
      0010D2 5F               [12] 1414 	anl	a,r7
      0010D3 F5 E8            [12] 1415 	mov	_IRCON2,a
                                   1416 ;	cc1110_spicom.c:176: IEN2 |= BIT3;    // Enable UTX1IE interrupt
      0010D5 43 9A 08         [24] 1417 	orl	_IEN2,#0x08
      0010D8 22               [24] 1418 	ret
                                   1419 ;------------------------------------------------------------
                                   1420 ;Allocation info for local variables in function 'vcom_disable'
                                   1421 ;------------------------------------------------------------
                                   1422 ;	cc1110_spicom.c:179: void vcom_disable()
                                   1423 ;	-----------------------------------------
                                   1424 ;	 function vcom_disable
                                   1425 ;	-----------------------------------------
      0010D9                       1426 _vcom_disable:
                                   1427 ;	cc1110_spicom.c:181: TCON &= ~BIT3; // Clear URX1IF
      0010D9 AF 88            [24] 1428 	mov	r7,_TCON
      0010DB 74 F7            [12] 1429 	mov	a,#0xF7
      0010DD 5F               [12] 1430 	anl	a,r7
      0010DE F5 88            [12] 1431 	mov	_TCON,a
                                   1432 ;	cc1110_spicom.c:182: URX1IE = 0;    // Disable URX1IE interrupt
      0010E0 C2 AB            [12] 1433 	clr	_URX1IE
                                   1434 ;	cc1110_spicom.c:184: IRCON2 &= ~BIT2; // Clear UTX1IF
      0010E2 AF E8            [24] 1435 	mov	r7,_IRCON2
      0010E4 74 FB            [12] 1436 	mov	a,#0xFB
      0010E6 5F               [12] 1437 	anl	a,r7
      0010E7 F5 E8            [12] 1438 	mov	_IRCON2,a
                                   1439 ;	cc1110_spicom.c:185: IEN2 &= ~BIT3;    // Disable UTX1IE interrupt
      0010E9 AF 9A            [24] 1440 	mov	r7,_IEN2
      0010EB 74 F7            [12] 1441 	mov	a,#0xF7
      0010ED 5F               [12] 1442 	anl	a,r7
      0010EE F5 9A            [12] 1443 	mov	_IEN2,a
      0010F0 22               [24] 1444 	ret
                                   1445 ;------------------------------------------------------------
                                   1446 ;Allocation info for local variables in function 'initUSB'
                                   1447 ;------------------------------------------------------------
                                   1448 ;	cc1110_spicom.c:188: void initUSB()
                                   1449 ;	-----------------------------------------
                                   1450 ;	 function initUSB
                                   1451 ;	-----------------------------------------
      0010F1                       1452 _initUSB:
                                   1453 ;	cc1110_spicom.c:202: PERCFG = (PERCFG & ~PERCFG_U0CFG) | PERCFG_U1CFG;
      0010F1 AF F1            [24] 1454 	mov	r7,_PERCFG
      0010F3 74 FE            [12] 1455 	mov	a,#0xFE
      0010F5 5F               [12] 1456 	anl	a,r7
      0010F6 44 02            [12] 1457 	orl	a,#0x02
      0010F8 F5 F1            [12] 1458 	mov	_PERCFG,a
                                   1459 ;	cc1110_spicom.c:205: P1SEL = P1SEL | BIT4 | BIT5 | BIT6 | BIT7;
      0010FA 43 F4 F0         [24] 1460 	orl	_P1SEL,#0xF0
                                   1461 ;	cc1110_spicom.c:206: P1DIR = P1DIR & ~(BIT4 | BIT5 | BIT6 | BIT7);
      0010FD AF FE            [24] 1462 	mov	r7,_P1DIR
      0010FF 74 0F            [12] 1463 	mov	a,#0x0F
      001101 5F               [12] 1464 	anl	a,r7
      001102 F5 FE            [12] 1465 	mov	_P1DIR,a
                                   1466 ;	cc1110_spicom.c:213: U1CSR = (U1CSR & ~U1CSR_MODE) | U1CSR_SLAVE;
      001104 AF F8            [24] 1467 	mov	r7,_U1CSR
      001106 74 7F            [12] 1468 	mov	a,#0x7F
      001108 5F               [12] 1469 	anl	a,r7
      001109 44 20            [12] 1470 	orl	a,#0x20
      00110B F5 F8            [12] 1471 	mov	_U1CSR,a
                                   1472 ;	cc1110_spicom.c:226: U1BAUD = SPI_BAUD_M;
      00110D 75 FA 3B         [24] 1473 	mov	_U1BAUD,#0x3B
                                   1474 ;	cc1110_spicom.c:227: U1GCR = (U1GCR & ~(U1GCR_BAUD_E | U1GCR_CPOL | U1GCR_CPHA | U1GCR_ORDER))
      001110 E5 FC            [12] 1475 	mov	a,_U1GCR
      001112 75 FC 0B         [24] 1476 	mov	_U1GCR,#0x0B
                                   1477 ;	cc1110_spicom.c:230: TCON &= ~BIT3; // Clear URX1IF
      001115 AF 88            [24] 1478 	mov	r7,_TCON
      001117 74 F7            [12] 1479 	mov	a,#0xF7
      001119 5F               [12] 1480 	anl	a,r7
      00111A F5 88            [12] 1481 	mov	_TCON,a
                                   1482 ;	cc1110_spicom.c:231: URX1IE = 1;    // Enable URX1IE interrupt
      00111C D2 AB            [12] 1483 	setb	_URX1IE
                                   1484 ;	cc1110_spicom.c:233: IRCON2 &= ~BIT2; // Clear UTX1IF
      00111E AF E8            [24] 1485 	mov	r7,_IRCON2
      001120 74 FB            [12] 1486 	mov	a,#0xFB
      001122 5F               [12] 1487 	anl	a,r7
      001123 F5 E8            [12] 1488 	mov	_IRCON2,a
                                   1489 ;	cc1110_spicom.c:234: IEN2 |= BIT3;    // Enable UTX1IE interrupt
      001125 43 9A 08         [24] 1490 	orl	_IEN2,#0x08
      001128 22               [24] 1491 	ret
                                   1492 ;------------------------------------------------------------
                                   1493 ;Allocation info for local variables in function 'usbProcessEvents'
                                   1494 ;------------------------------------------------------------
                                   1495 ;	cc1110_spicom.c:238: void usbProcessEvents()
                                   1496 ;	-----------------------------------------
                                   1497 ;	 function usbProcessEvents
                                   1498 ;	-----------------------------------------
      001129                       1499 _usbProcessEvents:
                                   1500 ;	cc1110_spicom.c:240: return; /* dummy function */
      001129 22               [24] 1501 	ret
                                   1502 ;------------------------------------------------------------
                                   1503 ;Allocation info for local variables in function 'vcom_readline'
                                   1504 ;------------------------------------------------------------
                                   1505 ;buff                      Allocated to registers 
                                   1506 ;c                         Allocated to registers r3 
                                   1507 ;------------------------------------------------------------
                                   1508 ;	cc1110_spicom.c:243: void vcom_readline(char* buff) {
                                   1509 ;	-----------------------------------------
                                   1510 ;	 function vcom_readline
                                   1511 ;	-----------------------------------------
      00112A                       1512 _vcom_readline:
      00112A AD 82            [24] 1513 	mov	r5,dpl
      00112C AE 83            [24] 1514 	mov	r6,dph
      00112E AF F0            [24] 1515 	mov	r7,b
                                   1516 ;	cc1110_spicom.c:245: while ((c = vcom_getchar()) != '\n') {
      001130                       1517 00101$:
      001130 C0 07            [24] 1518 	push	ar7
      001132 C0 06            [24] 1519 	push	ar6
      001134 C0 05            [24] 1520 	push	ar5
      001136 12 10 9A         [24] 1521 	lcall	_vcom_getchar
      001139 AC 82            [24] 1522 	mov	r4,dpl
      00113B D0 05            [24] 1523 	pop	ar5
      00113D D0 06            [24] 1524 	pop	ar6
      00113F D0 07            [24] 1525 	pop	ar7
      001141 8C 03            [24] 1526 	mov	ar3,r4
      001143 BC 0A 02         [24] 1527 	cjne	r4,#0x0A,00113$
      001146 80 11            [24] 1528 	sjmp	00103$
      001148                       1529 00113$:
                                   1530 ;	cc1110_spicom.c:246: *buff++ = c;
      001148 8D 82            [24] 1531 	mov	dpl,r5
      00114A 8E 83            [24] 1532 	mov	dph,r6
      00114C 8F F0            [24] 1533 	mov	b,r7
      00114E EB               [12] 1534 	mov	a,r3
      00114F 12 24 5B         [24] 1535 	lcall	__gptrput
      001152 A3               [24] 1536 	inc	dptr
      001153 AD 82            [24] 1537 	mov	r5,dpl
      001155 AE 83            [24] 1538 	mov	r6,dph
      001157 80 D7            [24] 1539 	sjmp	00101$
      001159                       1540 00103$:
                                   1541 ;	cc1110_spicom.c:248: *buff = 0;
      001159 8D 82            [24] 1542 	mov	dpl,r5
      00115B 8E 83            [24] 1543 	mov	dph,r6
      00115D 8F F0            [24] 1544 	mov	b,r7
      00115F E4               [12] 1545 	clr	a
      001160 02 24 5B         [24] 1546 	ljmp	__gptrput
                                   1547 ;------------------------------------------------------------
                                   1548 ;Allocation info for local variables in function 'vcom_putstr'
                                   1549 ;------------------------------------------------------------
                                   1550 ;buff                      Allocated with name '_vcom_putstr_buff_1_91'
                                   1551 ;------------------------------------------------------------
                                   1552 ;	cc1110_spicom.c:251: void vcom_putstr(char* __xdata buff) {
                                   1553 ;	-----------------------------------------
                                   1554 ;	 function vcom_putstr
                                   1555 ;	-----------------------------------------
      001163                       1556 _vcom_putstr:
      001163 AF F0            [24] 1557 	mov	r7,b
      001165 AE 83            [24] 1558 	mov	r6,dph
      001167 E5 82            [12] 1559 	mov	a,dpl
      001169 90 F7 3E         [24] 1560 	mov	dptr,#_vcom_putstr_buff_1_91
      00116C F0               [24] 1561 	movx	@dptr,a
      00116D EE               [12] 1562 	mov	a,r6
      00116E A3               [24] 1563 	inc	dptr
      00116F F0               [24] 1564 	movx	@dptr,a
      001170 EF               [12] 1565 	mov	a,r7
      001171 A3               [24] 1566 	inc	dptr
      001172 F0               [24] 1567 	movx	@dptr,a
                                   1568 ;	cc1110_spicom.c:252: while (*buff) {
      001173 90 F7 3E         [24] 1569 	mov	dptr,#_vcom_putstr_buff_1_91
      001176 E0               [24] 1570 	movx	a,@dptr
      001177 FD               [12] 1571 	mov	r5,a
      001178 A3               [24] 1572 	inc	dptr
      001179 E0               [24] 1573 	movx	a,@dptr
      00117A FE               [12] 1574 	mov	r6,a
      00117B A3               [24] 1575 	inc	dptr
      00117C E0               [24] 1576 	movx	a,@dptr
      00117D FF               [12] 1577 	mov	r7,a
      00117E                       1578 00101$:
      00117E 8D 82            [24] 1579 	mov	dpl,r5
      001180 8E 83            [24] 1580 	mov	dph,r6
      001182 8F F0            [24] 1581 	mov	b,r7
      001184 12 25 F2         [24] 1582 	lcall	__gptrget
      001187 FC               [12] 1583 	mov	r4,a
      001188 60 23            [24] 1584 	jz	00108$
                                   1585 ;	cc1110_spicom.c:253: vcom_putchar(*buff++);
      00118A 0D               [12] 1586 	inc	r5
      00118B BD 00 01         [24] 1587 	cjne	r5,#0x00,00114$
      00118E 0E               [12] 1588 	inc	r6
      00118F                       1589 00114$:
      00118F 90 F7 3E         [24] 1590 	mov	dptr,#_vcom_putstr_buff_1_91
      001192 ED               [12] 1591 	mov	a,r5
      001193 F0               [24] 1592 	movx	@dptr,a
      001194 EE               [12] 1593 	mov	a,r6
      001195 A3               [24] 1594 	inc	dptr
      001196 F0               [24] 1595 	movx	@dptr,a
      001197 EF               [12] 1596 	mov	a,r7
      001198 A3               [24] 1597 	inc	dptr
      001199 F0               [24] 1598 	movx	@dptr,a
      00119A 8C 82            [24] 1599 	mov	dpl,r4
      00119C C0 07            [24] 1600 	push	ar7
      00119E C0 06            [24] 1601 	push	ar6
      0011A0 C0 05            [24] 1602 	push	ar5
      0011A2 12 10 53         [24] 1603 	lcall	_vcom_putchar
      0011A5 D0 05            [24] 1604 	pop	ar5
      0011A7 D0 06            [24] 1605 	pop	ar6
      0011A9 D0 07            [24] 1606 	pop	ar7
      0011AB 80 D1            [24] 1607 	sjmp	00101$
      0011AD                       1608 00108$:
      0011AD 90 F7 3E         [24] 1609 	mov	dptr,#_vcom_putstr_buff_1_91
      0011B0 ED               [12] 1610 	mov	a,r5
      0011B1 F0               [24] 1611 	movx	@dptr,a
      0011B2 EE               [12] 1612 	mov	a,r6
      0011B3 A3               [24] 1613 	inc	dptr
      0011B4 F0               [24] 1614 	movx	@dptr,a
      0011B5 EF               [12] 1615 	mov	a,r7
      0011B6 A3               [24] 1616 	inc	dptr
      0011B7 F0               [24] 1617 	movx	@dptr,a
                                   1618 ;	cc1110_spicom.c:255: vcom_flush();
      0011B8 02 10 52         [24] 1619 	ljmp	_vcom_flush
                                   1620 ;------------------------------------------------------------
                                   1621 ;Allocation info for local variables in function 'usb_up'
                                   1622 ;------------------------------------------------------------
                                   1623 ;	cc1110_spicom.c:258: void usb_up() {
                                   1624 ;	-----------------------------------------
                                   1625 ;	 function usb_up
                                   1626 ;	-----------------------------------------
      0011BB                       1627 _usb_up:
                                   1628 ;	cc1110_spicom.c:260: vcom_enable();
      0011BB 02 10 C5         [24] 1629 	ljmp	_vcom_enable
                                   1630 ;------------------------------------------------------------
                                   1631 ;Allocation info for local variables in function 'vcom_down'
                                   1632 ;------------------------------------------------------------
                                   1633 ;	cc1110_spicom.c:263: void vcom_down() {
                                   1634 ;	-----------------------------------------
                                   1635 ;	 function vcom_down
                                   1636 ;	-----------------------------------------
      0011BE                       1637 _vcom_down:
                                   1638 ;	cc1110_spicom.c:265: vcom_disable();
      0011BE 02 10 D9         [24] 1639 	ljmp	_vcom_disable
                                   1640 ;------------------------------------------------------------
                                   1641 ;Allocation info for local variables in function 'txdata'
                                   1642 ;------------------------------------------------------------
                                   1643 ;cmd                       Allocated with name '_txdata_PARM_2'
                                   1644 ;len                       Allocated with name '_txdata_PARM_3'
                                   1645 ;dataptr                   Allocated with name '_txdata_PARM_4'
                                   1646 ;app                       Allocated to registers 
                                   1647 ;test                      Allocated to registers 
                                   1648 ;------------------------------------------------------------
                                   1649 ;	cc1110_spicom.c:268: int txdata(u8 app, u8 cmd, u16 len, __xdata u8* dataptr)
                                   1650 ;	-----------------------------------------
                                   1651 ;	 function txdata
                                   1652 ;	-----------------------------------------
      0011C1                       1653 _txdata:
                                   1654 ;	cc1110_spicom.c:276: while (*dataptr) 
      0011C1 AE 15            [24] 1655 	mov	r6,_txdata_PARM_4
      0011C3 AF 16            [24] 1656 	mov	r7,(_txdata_PARM_4 + 1)
      0011C5                       1657 00101$:
      0011C5 8E 82            [24] 1658 	mov	dpl,r6
      0011C7 8F 83            [24] 1659 	mov	dph,r7
      0011C9 E0               [24] 1660 	movx	a,@dptr
      0011CA FD               [12] 1661 	mov	r5,a
      0011CB 60 14            [24] 1662 	jz	00103$
                                   1663 ;	cc1110_spicom.c:278: vcom_putchar(*dataptr++);
      0011CD 8D 82            [24] 1664 	mov	dpl,r5
      0011CF 0E               [12] 1665 	inc	r6
      0011D0 BE 00 01         [24] 1666 	cjne	r6,#0x00,00114$
      0011D3 0F               [12] 1667 	inc	r7
      0011D4                       1668 00114$:
      0011D4 C0 07            [24] 1669 	push	ar7
      0011D6 C0 06            [24] 1670 	push	ar6
      0011D8 12 10 53         [24] 1671 	lcall	_vcom_putchar
      0011DB D0 06            [24] 1672 	pop	ar6
      0011DD D0 07            [24] 1673 	pop	ar7
      0011DF 80 E4            [24] 1674 	sjmp	00101$
      0011E1                       1675 00103$:
                                   1676 ;	cc1110_spicom.c:280: vcom_flush();
      0011E1 12 10 52         [24] 1677 	lcall	_vcom_flush
                                   1678 ;	cc1110_spicom.c:282: return 0;
      0011E4 90 00 00         [24] 1679 	mov	dptr,#0x0000
      0011E7 22               [24] 1680 	ret
                                   1681 ;------------------------------------------------------------
                                   1682 ;Allocation info for local variables in function 'usbIntHandler'
                                   1683 ;------------------------------------------------------------
                                   1684 ;	cc1110_spicom.c:287: void usbIntHandler(void) __interrupt P2INT_VECTOR
                                   1685 ;	-----------------------------------------
                                   1686 ;	 function usbIntHandler
                                   1687 ;	-----------------------------------------
      0011E8                       1688 _usbIntHandler:
                                   1689 ;	cc1110_spicom.c:289: return;
      0011E8 32               [24] 1690 	reti
                                   1691 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1692 ;	eliminated unneeded push/pop psw
                                   1693 ;	eliminated unneeded push/pop dpl
                                   1694 ;	eliminated unneeded push/pop dph
                                   1695 ;	eliminated unneeded push/pop b
                                   1696 ;	eliminated unneeded push/pop acc
                                   1697 ;------------------------------------------------------------
                                   1698 ;Allocation info for local variables in function 'waitForUSBsetup'
                                   1699 ;------------------------------------------------------------
                                   1700 ;	cc1110_spicom.c:293: void waitForUSBsetup()
                                   1701 ;	-----------------------------------------
                                   1702 ;	 function waitForUSBsetup
                                   1703 ;	-----------------------------------------
      0011E9                       1704 _waitForUSBsetup:
                                   1705 ;	cc1110_spicom.c:295: return;
      0011E9 22               [24] 1706 	ret
                                   1707 	.area CSEG    (CODE)
                                   1708 	.area CONST   (CODE)
                                   1709 	.area XINIT   (CODE)
                                   1710 	.area CABS    (ABS,CODE)
