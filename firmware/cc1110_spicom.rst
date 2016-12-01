                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
                                      4 ; This file was generated Wed Nov 30 16:38:13 2016
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
                                    243 	.globl _appReturn_PARM_2
                                    244 	.globl _ep5
                                    245 	.globl _usb_ep5_OUTbuf
                                    246 	.globl _spi_output_buf
                                    247 	.globl _spi_input_buf
                                    248 	.globl _USBF5
                                    249 	.globl _USBF4
                                    250 	.globl _USBF3
                                    251 	.globl _USBF2
                                    252 	.globl _USBF1
                                    253 	.globl _USBF0
                                    254 	.globl _USBCNTH
                                    255 	.globl _USBCNTL
                                    256 	.globl _USBCNT0
                                    257 	.globl _USBCSOH
                                    258 	.globl _USBCSOL
                                    259 	.globl _USBMAXO
                                    260 	.globl _USBCSIH
                                    261 	.globl _USBCSIL
                                    262 	.globl _USBCS0
                                    263 	.globl _USBMAXI
                                    264 	.globl _USBINDEX
                                    265 	.globl _USBFRMH
                                    266 	.globl _USBFRML
                                    267 	.globl _USBCIE
                                    268 	.globl _USBOIE
                                    269 	.globl _USBIIE
                                    270 	.globl _USBCIF
                                    271 	.globl _USBOIF
                                    272 	.globl _USBIIF
                                    273 	.globl _USBPOW
                                    274 	.globl _USBADDR
                                    275 	.globl _X_P2DIR
                                    276 	.globl _X_P1DIR
                                    277 	.globl _X_P0DIR
                                    278 	.globl _X_U1GCR
                                    279 	.globl _X_U1UCR
                                    280 	.globl _X_U1BAUD
                                    281 	.globl _X_U1DBUF
                                    282 	.globl _X_U1CSR
                                    283 	.globl _X_P2INP
                                    284 	.globl _X_P1INP
                                    285 	.globl _X_P2SEL
                                    286 	.globl _X_P1SEL
                                    287 	.globl _X_P0SEL
                                    288 	.globl _X_ADCCFG
                                    289 	.globl _X_PERCFG
                                    290 	.globl __NA_B
                                    291 	.globl _X_T4CC1
                                    292 	.globl _X_T4CCTL1
                                    293 	.globl _X_T4CC0
                                    294 	.globl _X_T4CCTL0
                                    295 	.globl _X_T4CTL
                                    296 	.globl _X_T4CNT
                                    297 	.globl _X_RFIF
                                    298 	.globl __NA_IRCON2
                                    299 	.globl _X_T1CCTL2
                                    300 	.globl _X_T1CCTL1
                                    301 	.globl _X_T1CCTL0
                                    302 	.globl _X_T1CTL
                                    303 	.globl _X_T1CNTH
                                    304 	.globl _X_T1CNTL
                                    305 	.globl _X_RFST
                                    306 	.globl __NA_ACC
                                    307 	.globl _X_T1CC2H
                                    308 	.globl _X_T1CC2L
                                    309 	.globl _X_T1CC1H
                                    310 	.globl _X_T1CC1L
                                    311 	.globl _X_T1CC0H
                                    312 	.globl _X_T1CC0L
                                    313 	.globl _X_RFD
                                    314 	.globl _X_TIMIF
                                    315 	.globl _X_DMAREQ
                                    316 	.globl _X_DMAARM
                                    317 	.globl _X_DMA0CFGH
                                    318 	.globl _X_DMA0CFGL
                                    319 	.globl _X_DMA1CFGH
                                    320 	.globl _X_DMA1CFGL
                                    321 	.globl _X_DMAIRQ
                                    322 	.globl __NA_PSW
                                    323 	.globl _X_T3CC1
                                    324 	.globl _X_T3CCTL1
                                    325 	.globl _X_T3CC0
                                    326 	.globl _X_T3CCTL0
                                    327 	.globl _X_T3CTL
                                    328 	.globl _X_T3CNT
                                    329 	.globl _X_WDCTL
                                    330 	.globl __X_SFRC8
                                    331 	.globl _X_MEMCTR
                                    332 	.globl _X_CLKCON
                                    333 	.globl _X_U0GCR
                                    334 	.globl _X_U0UCR
                                    335 	.globl __X_SFRC3
                                    336 	.globl _X_U0BAUD
                                    337 	.globl _X_U0DBUF
                                    338 	.globl __NA_IRCON
                                    339 	.globl __X_SFRBF
                                    340 	.globl _X_SLEEP
                                    341 	.globl _X_RNDH
                                    342 	.globl _X_RNDL
                                    343 	.globl _X_ADCH
                                    344 	.globl _X_ADCL
                                    345 	.globl __NA_IP1
                                    346 	.globl __NA_IEN1
                                    347 	.globl __X_SFRB7
                                    348 	.globl _X_ADCCON3
                                    349 	.globl _X_ADCCON2
                                    350 	.globl _X_ADCCON1
                                    351 	.globl _X_ENCCS
                                    352 	.globl _X_ENCDO
                                    353 	.globl _X_ENCDI
                                    354 	.globl __X_SFRB0
                                    355 	.globl _X_FWDATA
                                    356 	.globl _X_FCTL
                                    357 	.globl _X_FADDRH
                                    358 	.globl _X_FADDRL
                                    359 	.globl _X_FWT
                                    360 	.globl __X_SFRAA
                                    361 	.globl __NA_IP0
                                    362 	.globl __NA_IEN0
                                    363 	.globl __X_SFRA7
                                    364 	.globl _X_WORTIME1
                                    365 	.globl _X_WORTIME0
                                    366 	.globl _X_WOREVT1
                                    367 	.globl _X_WOREVT0
                                    368 	.globl _X_WORCTRL
                                    369 	.globl _X_WORIRQ
                                    370 	.globl __NA_P2
                                    371 	.globl __X_SFR9F
                                    372 	.globl _X_T2CTL
                                    373 	.globl _X_T2PR
                                    374 	.globl _X_T2CT
                                    375 	.globl __NA_S1CON
                                    376 	.globl __NA_IEN2
                                    377 	.globl __X_SFR99
                                    378 	.globl __NA_S0CON
                                    379 	.globl __X_SFR97
                                    380 	.globl __X_SFR96
                                    381 	.globl __X_SFR95
                                    382 	.globl __X_SFR94
                                    383 	.globl _X_MPAGE
                                    384 	.globl __NA_DPS
                                    385 	.globl _X_RFIM
                                    386 	.globl __NA_P1
                                    387 	.globl _X_P0INP
                                    388 	.globl __X_SFR8E
                                    389 	.globl _X_P1IEN
                                    390 	.globl _X_PICTL
                                    391 	.globl _X_P2IFG
                                    392 	.globl _X_P1IFG
                                    393 	.globl _X_P0IFG
                                    394 	.globl __NA_TCON
                                    395 	.globl __NA_PCON
                                    396 	.globl _X_U0CSR
                                    397 	.globl __NA_DPH1
                                    398 	.globl __NA_DPL1
                                    399 	.globl __NA_DPH0
                                    400 	.globl __NA_DPL0
                                    401 	.globl __NA_SP
                                    402 	.globl __NA_P0
                                    403 	.globl _I2SCLKF2
                                    404 	.globl _I2SCLKF1
                                    405 	.globl _I2SCLKF0
                                    406 	.globl _I2SSTAT
                                    407 	.globl _I2SWCNT
                                    408 	.globl _I2SDATH
                                    409 	.globl _I2SDATL
                                    410 	.globl _I2SCFG1
                                    411 	.globl _I2SCFG0
                                    412 	.globl _VCO_VC_DAC
                                    413 	.globl _PKTSTATUS
                                    414 	.globl _MARCSTATE
                                    415 	.globl _RSSI
                                    416 	.globl _LQI
                                    417 	.globl _FREQEST
                                    418 	.globl _VERSION
                                    419 	.globl _PARTNUM
                                    420 	.globl __XREGDF35
                                    421 	.globl __XREGDF34
                                    422 	.globl __XREGDF33
                                    423 	.globl __XREGDF32
                                    424 	.globl _IOCFG0
                                    425 	.globl _IOCFG1
                                    426 	.globl _IOCFG2
                                    427 	.globl _PA_TABLE0
                                    428 	.globl _PA_TABLE1
                                    429 	.globl _PA_TABLE2
                                    430 	.globl _PA_TABLE3
                                    431 	.globl _PA_TABLE4
                                    432 	.globl _PA_TABLE5
                                    433 	.globl _PA_TABLE6
                                    434 	.globl _PA_TABLE7
                                    435 	.globl __XREGDF26
                                    436 	.globl _TEST0
                                    437 	.globl _TEST1
                                    438 	.globl _TEST2
                                    439 	.globl __XREGDF22
                                    440 	.globl __XREGDF21
                                    441 	.globl __XREGDF20
                                    442 	.globl _FSCAL0
                                    443 	.globl _FSCAL1
                                    444 	.globl _FSCAL2
                                    445 	.globl _FSCAL3
                                    446 	.globl _FREND0
                                    447 	.globl _FREND1
                                    448 	.globl _AGCCTRL0
                                    449 	.globl _AGCCTRL1
                                    450 	.globl _AGCCTRL2
                                    451 	.globl _BSCFG
                                    452 	.globl _FOCCFG
                                    453 	.globl _MCSM0
                                    454 	.globl _MCSM1
                                    455 	.globl _MCSM2
                                    456 	.globl _DEVIATN
                                    457 	.globl _MDMCFG0
                                    458 	.globl _MDMCFG1
                                    459 	.globl _MDMCFG2
                                    460 	.globl _MDMCFG3
                                    461 	.globl _MDMCFG4
                                    462 	.globl _FREQ0
                                    463 	.globl _FREQ1
                                    464 	.globl _FREQ2
                                    465 	.globl _FSCTRL0
                                    466 	.globl _FSCTRL1
                                    467 	.globl _CHANNR
                                    468 	.globl _ADDR
                                    469 	.globl _PKTCTRL0
                                    470 	.globl _PKTCTRL1
                                    471 	.globl _PKTLEN
                                    472 	.globl _SYNC0
                                    473 	.globl _SYNC1
                                    474 	.globl _MDMCTRL0H
                                    475 	.globl _txdata_PARM_4
                                    476 	.globl _txdata_PARM_3
                                    477 	.globl _txdata_PARM_2
                                    478 	.globl _cb_ep5
                                    479 	.globl _slave_send_size
                                    480 	.globl _master_send_size
                                    481 	.globl _spi_mode
                                    482 	.globl _serial_data_available
                                    483 	.globl _output_tail_idx
                                    484 	.globl _output_head_idx
                                    485 	.globl _output_size
                                    486 	.globl _input_tail_idx
                                    487 	.globl _input_head_idx
                                    488 	.globl _input_size
                                    489 	.globl _vcom_flush
                                    490 	.globl _vcom_putchar
                                    491 	.globl _vcom_getchar
                                    492 	.globl _vcom_enable
                                    493 	.globl _vcom_disable
                                    494 	.globl _initUSB
                                    495 	.globl _usbProcessEvents
                                    496 	.globl _vcom_putstr
                                    497 	.globl _usb_up
                                    498 	.globl _txdata
                                    499 	.globl _usbIntHandler
                                    500 	.globl _p0IntHandler
                                    501 	.globl _waitForUSBsetup
                                    502 	.globl _registerCb_ep5
                                    503 	.globl _appReturn
                                    504 ;--------------------------------------------------------
                                    505 ; special function registers
                                    506 ;--------------------------------------------------------
                                    507 	.area RSEG    (ABS,DATA)
      000000                        508 	.org 0x0000
                           000080   509 _P0	=	0x0080
                           000081   510 _SP	=	0x0081
                           000082   511 _DPL0	=	0x0082
                           000083   512 _DPH0	=	0x0083
                           000084   513 _DPL1	=	0x0084
                           000085   514 _DPH1	=	0x0085
                           000086   515 _U0CSR	=	0x0086
                           000087   516 _PCON	=	0x0087
                           000088   517 _TCON	=	0x0088
                           000089   518 _P0IFG	=	0x0089
                           00008A   519 _P1IFG	=	0x008a
                           00008B   520 _P2IFG	=	0x008b
                           00008C   521 _PICTL	=	0x008c
                           00008D   522 _P1IEN	=	0x008d
                           00008E   523 __SFR8E	=	0x008e
                           00008F   524 _P0INP	=	0x008f
                           000090   525 _P1	=	0x0090
                           000091   526 _RFIM	=	0x0091
                           000092   527 _DPS	=	0x0092
                           000093   528 _MPAGE	=	0x0093
                           000093   529 __XPAGE	=	0x0093
                           000094   530 __SFR94	=	0x0094
                           000095   531 __SFR95	=	0x0095
                           000096   532 __SFR96	=	0x0096
                           000097   533 __SFR97	=	0x0097
                           000098   534 _S0CON	=	0x0098
                           000099   535 __SFR99	=	0x0099
                           00009A   536 _IEN2	=	0x009a
                           00009B   537 _S1CON	=	0x009b
                           00009C   538 _T2CT	=	0x009c
                           00009D   539 _T2PR	=	0x009d
                           00009E   540 _T2CTL	=	0x009e
                           00009F   541 __SFR9F	=	0x009f
                           0000A0   542 _P2	=	0x00a0
                           0000A1   543 _WORIRQ	=	0x00a1
                           0000A2   544 _WORCTRL	=	0x00a2
                           0000A3   545 _WOREVT0	=	0x00a3
                           0000A4   546 _WOREVT1	=	0x00a4
                           0000A5   547 _WORTIME0	=	0x00a5
                           0000A6   548 _WORTIME1	=	0x00a6
                           0000A7   549 __SFRA7	=	0x00a7
                           0000A8   550 _IEN0	=	0x00a8
                           0000A9   551 _IP0	=	0x00a9
                           0000AA   552 __SFRAA	=	0x00aa
                           0000AB   553 _FWT	=	0x00ab
                           0000AC   554 _FADDRL	=	0x00ac
                           0000AD   555 _FADDRH	=	0x00ad
                           0000AE   556 _FCTL	=	0x00ae
                           0000AF   557 _FWDATA	=	0x00af
                           0000B0   558 __SFRB0	=	0x00b0
                           0000B1   559 _ENCDI	=	0x00b1
                           0000B2   560 _ENCDO	=	0x00b2
                           0000B3   561 _ENCCS	=	0x00b3
                           0000B4   562 _ADCCON1	=	0x00b4
                           0000B5   563 _ADCCON2	=	0x00b5
                           0000B6   564 _ADCCON3	=	0x00b6
                           0000B7   565 __SFRB7	=	0x00b7
                           0000B8   566 _IEN1	=	0x00b8
                           0000B9   567 _IP1	=	0x00b9
                           0000BA   568 _ADCL	=	0x00ba
                           0000BB   569 _ADCH	=	0x00bb
                           0000BC   570 _RNDL	=	0x00bc
                           0000BD   571 _RNDH	=	0x00bd
                           0000BE   572 _SLEEP	=	0x00be
                           0000BF   573 __SFRBF	=	0x00bf
                           0000C0   574 _IRCON	=	0x00c0
                           0000C1   575 _U0DBUF	=	0x00c1
                           0000C2   576 _U0BAUD	=	0x00c2
                           0000C3   577 __SFRC3	=	0x00c3
                           0000C4   578 _U0UCR	=	0x00c4
                           0000C5   579 _U0GCR	=	0x00c5
                           0000C6   580 _CLKCON	=	0x00c6
                           0000C7   581 _MEMCTR	=	0x00c7
                           0000C8   582 __SFRC8	=	0x00c8
                           0000C9   583 _WDCTL	=	0x00c9
                           0000CA   584 _T3CNT	=	0x00ca
                           0000CB   585 _T3CTL	=	0x00cb
                           0000CC   586 _T3CCTL0	=	0x00cc
                           0000CD   587 _T3CC0	=	0x00cd
                           0000CE   588 _T3CCTL1	=	0x00ce
                           0000CF   589 _T3CC1	=	0x00cf
                           0000D0   590 _PSW	=	0x00d0
                           0000D1   591 _DMAIRQ	=	0x00d1
                           0000D2   592 _DMA1CFGL	=	0x00d2
                           0000D3   593 _DMA1CFGH	=	0x00d3
                           0000D4   594 _DMA0CFGL	=	0x00d4
                           0000D5   595 _DMA0CFGH	=	0x00d5
                           0000D6   596 _DMAARM	=	0x00d6
                           0000D7   597 _DMAREQ	=	0x00d7
                           0000D8   598 _TIMIF	=	0x00d8
                           0000D9   599 _RFD	=	0x00d9
                           0000DA   600 _T1CC0L	=	0x00da
                           0000DB   601 _T1CC0H	=	0x00db
                           0000DC   602 _T1CC1L	=	0x00dc
                           0000DD   603 _T1CC1H	=	0x00dd
                           0000DE   604 _T1CC2L	=	0x00de
                           0000DF   605 _T1CC2H	=	0x00df
                           0000E0   606 _ACC	=	0x00e0
                           0000E1   607 _RFST	=	0x00e1
                           0000E2   608 _T1CNTL	=	0x00e2
                           0000E3   609 _T1CNTH	=	0x00e3
                           0000E4   610 _T1CTL	=	0x00e4
                           0000E5   611 _T1CCTL0	=	0x00e5
                           0000E6   612 _T1CCTL1	=	0x00e6
                           0000E7   613 _T1CCTL2	=	0x00e7
                           0000E8   614 _IRCON2	=	0x00e8
                           0000E9   615 _RFIF	=	0x00e9
                           0000EA   616 _T4CNT	=	0x00ea
                           0000EB   617 _T4CTL	=	0x00eb
                           0000EC   618 _T4CCTL0	=	0x00ec
                           0000ED   619 _T4CC0	=	0x00ed
                           0000EE   620 _T4CCTL1	=	0x00ee
                           0000EF   621 _T4CC1	=	0x00ef
                           0000F0   622 _B	=	0x00f0
                           0000F1   623 _PERCFG	=	0x00f1
                           0000F2   624 _ADCCFG	=	0x00f2
                           0000F3   625 _P0SEL	=	0x00f3
                           0000F4   626 _P1SEL	=	0x00f4
                           0000F5   627 _P2SEL	=	0x00f5
                           0000F6   628 _P1INP	=	0x00f6
                           0000F7   629 _P2INP	=	0x00f7
                           0000F8   630 _U1CSR	=	0x00f8
                           0000F9   631 _U1DBUF	=	0x00f9
                           0000FA   632 _U1BAUD	=	0x00fa
                           0000FB   633 _U1UCR	=	0x00fb
                           0000FC   634 _U1GCR	=	0x00fc
                           0000FD   635 _P0DIR	=	0x00fd
                           0000FE   636 _P1DIR	=	0x00fe
                           0000FF   637 _P2DIR	=	0x00ff
                                    638 ;--------------------------------------------------------
                                    639 ; special function bits
                                    640 ;--------------------------------------------------------
                                    641 	.area RSEG    (ABS,DATA)
      000000                        642 	.org 0x0000
                           000080   643 _P0_0	=	0x0080
                           000081   644 _P0_1	=	0x0081
                           000082   645 _P0_2	=	0x0082
                           000083   646 _P0_3	=	0x0083
                           000084   647 _P0_4	=	0x0084
                           000085   648 _P0_5	=	0x0085
                           000086   649 _P0_6	=	0x0086
                           000087   650 _P0_7	=	0x0087
                           000088   651 _IT0	=	0x0088
                           000089   652 _RFTXRXIF	=	0x0089
                           00008A   653 _IT1	=	0x008a
                           00008B   654 _URX0IF	=	0x008b
                           00008D   655 _ADCIF	=	0x008d
                           00008F   656 _URX1IF	=	0x008f
                           000090   657 _P1_0	=	0x0090
                           000091   658 _P1_1	=	0x0091
                           000092   659 _P1_2	=	0x0092
                           000093   660 _P1_3	=	0x0093
                           000094   661 _P1_4	=	0x0094
                           000095   662 _P1_5	=	0x0095
                           000096   663 _P1_6	=	0x0096
                           000097   664 _P1_7	=	0x0097
                           000098   665 _ENCIF_0	=	0x0098
                           000099   666 _ENCIF_1	=	0x0099
                           0000A0   667 _P2_0	=	0x00a0
                           0000A1   668 _P2_1	=	0x00a1
                           0000A2   669 _P2_2	=	0x00a2
                           0000A3   670 _P2_3	=	0x00a3
                           0000A4   671 _P2_4	=	0x00a4
                           0000A5   672 _P2_5	=	0x00a5
                           0000A6   673 _P2_6	=	0x00a6
                           0000A7   674 _P2_7	=	0x00a7
                           0000A8   675 _RFTXRXIE	=	0x00a8
                           0000A9   676 _ADCIE	=	0x00a9
                           0000AA   677 _URX0IE	=	0x00aa
                           0000AB   678 _URX1IE	=	0x00ab
                           0000AC   679 _ENCIE	=	0x00ac
                           0000AD   680 _STIE	=	0x00ad
                           0000AF   681 _EA	=	0x00af
                           0000B8   682 _DMAIE	=	0x00b8
                           0000B9   683 _T1IE	=	0x00b9
                           0000BA   684 _T2IE	=	0x00ba
                           0000BB   685 _T3IE	=	0x00bb
                           0000BC   686 _T4IE	=	0x00bc
                           0000BD   687 _P0IE	=	0x00bd
                           0000C0   688 _DMAIF	=	0x00c0
                           0000C1   689 _T1IF	=	0x00c1
                           0000C2   690 _T2IF	=	0x00c2
                           0000C3   691 _T3IF	=	0x00c3
                           0000C4   692 _T4IF	=	0x00c4
                           0000C5   693 _P0IF	=	0x00c5
                           0000C7   694 _STIF	=	0x00c7
                           0000D0   695 _P	=	0x00d0
                           0000D1   696 _F1	=	0x00d1
                           0000D2   697 _OV	=	0x00d2
                           0000D3   698 _RS0	=	0x00d3
                           0000D4   699 _RS1	=	0x00d4
                           0000D5   700 _F0	=	0x00d5
                           0000D6   701 _AC	=	0x00d6
                           0000D7   702 _CY	=	0x00d7
                           0000D8   703 _T3OVFIF	=	0x00d8
                           0000D9   704 _T3CH0IF	=	0x00d9
                           0000DA   705 _T3CH1IF	=	0x00da
                           0000DB   706 _T4OVFIF	=	0x00db
                           0000DC   707 _T4CH0IF	=	0x00dc
                           0000DD   708 _T4CH1IF	=	0x00dd
                           0000DE   709 _OVFIM	=	0x00de
                           0000E0   710 _ACC_0	=	0x00e0
                           0000E1   711 _ACC_1	=	0x00e1
                           0000E2   712 _ACC_2	=	0x00e2
                           0000E3   713 _ACC_3	=	0x00e3
                           0000E4   714 _ACC_4	=	0x00e4
                           0000E5   715 _ACC_5	=	0x00e5
                           0000E6   716 _ACC_6	=	0x00e6
                           0000E7   717 _ACC_7	=	0x00e7
                           0000E8   718 _P2IF	=	0x00e8
                           0000E9   719 _UTX0IF	=	0x00e9
                           0000EA   720 _UTX1IF	=	0x00ea
                           0000EB   721 _P1IF	=	0x00eb
                           0000EC   722 _WDTIF	=	0x00ec
                           0000F0   723 _B_0	=	0x00f0
                           0000F1   724 _B_1	=	0x00f1
                           0000F2   725 _B_2	=	0x00f2
                           0000F3   726 _B_3	=	0x00f3
                           0000F4   727 _B_4	=	0x00f4
                           0000F5   728 _B_5	=	0x00f5
                           0000F6   729 _B_6	=	0x00f6
                           0000F7   730 _B_7	=	0x00f7
                           0000F8   731 _ACTIVE	=	0x00f8
                           0000F9   732 _TX_BYTE	=	0x00f9
                           0000FA   733 _RX_BYTE	=	0x00fa
                           0000FB   734 _ERR	=	0x00fb
                           0000FC   735 _FE	=	0x00fc
                           0000FD   736 _SLAVE	=	0x00fd
                           0000FE   737 _RE	=	0x00fe
                           0000FF   738 _MODE	=	0x00ff
                           0000E8   739 _USBIF	=	0x00e8
                                    740 ;--------------------------------------------------------
                                    741 ; overlayable register banks
                                    742 ;--------------------------------------------------------
                                    743 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        744 	.ds 8
                                    745 ;--------------------------------------------------------
                                    746 ; overlayable bit register bank
                                    747 ;--------------------------------------------------------
                                    748 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        749 bits:
      000021                        750 	.ds 1
                           008000   751 	b0 = bits[0]
                           008100   752 	b1 = bits[1]
                           008200   753 	b2 = bits[2]
                           008300   754 	b3 = bits[3]
                           008400   755 	b4 = bits[4]
                           008500   756 	b5 = bits[5]
                           008600   757 	b6 = bits[6]
                           008700   758 	b7 = bits[7]
                                    759 ;--------------------------------------------------------
                                    760 ; internal ram data
                                    761 ;--------------------------------------------------------
                                    762 	.area DSEG    (DATA)
      00000D                        763 _input_size::
      00000D                        764 	.ds 1
      00000E                        765 _input_head_idx::
      00000E                        766 	.ds 1
      00000F                        767 _input_tail_idx::
      00000F                        768 	.ds 1
      000010                        769 _output_size::
      000010                        770 	.ds 1
      000011                        771 _output_head_idx::
      000011                        772 	.ds 1
      000012                        773 _output_tail_idx::
      000012                        774 	.ds 1
      000013                        775 _serial_data_available::
      000013                        776 	.ds 1
      000014                        777 _spi_mode::
      000014                        778 	.ds 1
      000015                        779 _master_send_size::
      000015                        780 	.ds 1
      000016                        781 _slave_send_size::
      000016                        782 	.ds 1
      000017                        783 _cb_ep5::
      000017                        784 	.ds 2
      000019                        785 _txdata_PARM_2:
      000019                        786 	.ds 1
      00001A                        787 _txdata_PARM_3:
      00001A                        788 	.ds 2
      00001C                        789 _txdata_PARM_4:
      00001C                        790 	.ds 2
                                    791 ;--------------------------------------------------------
                                    792 ; overlayable items in internal ram 
                                    793 ;--------------------------------------------------------
                                    794 	.area	OSEG    (OVR,DATA)
                                    795 	.area	OSEG    (OVR,DATA)
                                    796 	.area	OSEG    (OVR,DATA)
                                    797 ;--------------------------------------------------------
                                    798 ; indirectly addressable internal ram data
                                    799 ;--------------------------------------------------------
                                    800 	.area ISEG    (DATA)
                                    801 ;--------------------------------------------------------
                                    802 ; absolute internal ram data
                                    803 ;--------------------------------------------------------
                                    804 	.area IABS    (ABS,DATA)
                                    805 	.area IABS    (ABS,DATA)
                                    806 ;--------------------------------------------------------
                                    807 ; bit data
                                    808 ;--------------------------------------------------------
                                    809 	.area BSEG    (BIT)
                                    810 ;--------------------------------------------------------
                                    811 ; paged external ram data
                                    812 ;--------------------------------------------------------
                                    813 	.area PSEG    (PAG,XDATA)
                                    814 ;--------------------------------------------------------
                                    815 ; external ram data
                                    816 ;--------------------------------------------------------
                                    817 	.area XSEG    (XDATA)
                           00DF02   818 _MDMCTRL0H	=	0xdf02
                           00DF00   819 _SYNC1	=	0xdf00
                           00DF01   820 _SYNC0	=	0xdf01
                           00DF02   821 _PKTLEN	=	0xdf02
                           00DF03   822 _PKTCTRL1	=	0xdf03
                           00DF04   823 _PKTCTRL0	=	0xdf04
                           00DF05   824 _ADDR	=	0xdf05
                           00DF06   825 _CHANNR	=	0xdf06
                           00DF07   826 _FSCTRL1	=	0xdf07
                           00DF08   827 _FSCTRL0	=	0xdf08
                           00DF09   828 _FREQ2	=	0xdf09
                           00DF0A   829 _FREQ1	=	0xdf0a
                           00DF0B   830 _FREQ0	=	0xdf0b
                           00DF0C   831 _MDMCFG4	=	0xdf0c
                           00DF0D   832 _MDMCFG3	=	0xdf0d
                           00DF0E   833 _MDMCFG2	=	0xdf0e
                           00DF0F   834 _MDMCFG1	=	0xdf0f
                           00DF10   835 _MDMCFG0	=	0xdf10
                           00DF11   836 _DEVIATN	=	0xdf11
                           00DF12   837 _MCSM2	=	0xdf12
                           00DF13   838 _MCSM1	=	0xdf13
                           00DF14   839 _MCSM0	=	0xdf14
                           00DF15   840 _FOCCFG	=	0xdf15
                           00DF16   841 _BSCFG	=	0xdf16
                           00DF17   842 _AGCCTRL2	=	0xdf17
                           00DF18   843 _AGCCTRL1	=	0xdf18
                           00DF19   844 _AGCCTRL0	=	0xdf19
                           00DF1A   845 _FREND1	=	0xdf1a
                           00DF1B   846 _FREND0	=	0xdf1b
                           00DF1C   847 _FSCAL3	=	0xdf1c
                           00DF1D   848 _FSCAL2	=	0xdf1d
                           00DF1E   849 _FSCAL1	=	0xdf1e
                           00DF1F   850 _FSCAL0	=	0xdf1f
                           00DF20   851 __XREGDF20	=	0xdf20
                           00DF21   852 __XREGDF21	=	0xdf21
                           00DF22   853 __XREGDF22	=	0xdf22
                           00DF23   854 _TEST2	=	0xdf23
                           00DF24   855 _TEST1	=	0xdf24
                           00DF25   856 _TEST0	=	0xdf25
                           00DF26   857 __XREGDF26	=	0xdf26
                           00DF27   858 _PA_TABLE7	=	0xdf27
                           00DF28   859 _PA_TABLE6	=	0xdf28
                           00DF29   860 _PA_TABLE5	=	0xdf29
                           00DF2A   861 _PA_TABLE4	=	0xdf2a
                           00DF2B   862 _PA_TABLE3	=	0xdf2b
                           00DF2C   863 _PA_TABLE2	=	0xdf2c
                           00DF2D   864 _PA_TABLE1	=	0xdf2d
                           00DF2E   865 _PA_TABLE0	=	0xdf2e
                           00DF2F   866 _IOCFG2	=	0xdf2f
                           00DF30   867 _IOCFG1	=	0xdf30
                           00DF31   868 _IOCFG0	=	0xdf31
                           00DF32   869 __XREGDF32	=	0xdf32
                           00DF33   870 __XREGDF33	=	0xdf33
                           00DF34   871 __XREGDF34	=	0xdf34
                           00DF35   872 __XREGDF35	=	0xdf35
                           00DF36   873 _PARTNUM	=	0xdf36
                           00DF37   874 _VERSION	=	0xdf37
                           00DF38   875 _FREQEST	=	0xdf38
                           00DF39   876 _LQI	=	0xdf39
                           00DF3A   877 _RSSI	=	0xdf3a
                           00DF3B   878 _MARCSTATE	=	0xdf3b
                           00DF3C   879 _PKTSTATUS	=	0xdf3c
                           00DF3D   880 _VCO_VC_DAC	=	0xdf3d
                           00DF40   881 _I2SCFG0	=	0xdf40
                           00DF41   882 _I2SCFG1	=	0xdf41
                           00DF42   883 _I2SDATL	=	0xdf42
                           00DF43   884 _I2SDATH	=	0xdf43
                           00DF44   885 _I2SWCNT	=	0xdf44
                           00DF45   886 _I2SSTAT	=	0xdf45
                           00DF46   887 _I2SCLKF0	=	0xdf46
                           00DF47   888 _I2SCLKF1	=	0xdf47
                           00DF48   889 _I2SCLKF2	=	0xdf48
                           00DF80   890 __NA_P0	=	0xdf80
                           00DF81   891 __NA_SP	=	0xdf81
                           00DF82   892 __NA_DPL0	=	0xdf82
                           00DF83   893 __NA_DPH0	=	0xdf83
                           00DF84   894 __NA_DPL1	=	0xdf84
                           00DF85   895 __NA_DPH1	=	0xdf85
                           00DF86   896 _X_U0CSR	=	0xdf86
                           00DF87   897 __NA_PCON	=	0xdf87
                           00DF88   898 __NA_TCON	=	0xdf88
                           00DF89   899 _X_P0IFG	=	0xdf89
                           00DF8A   900 _X_P1IFG	=	0xdf8a
                           00DF8B   901 _X_P2IFG	=	0xdf8b
                           00DF8C   902 _X_PICTL	=	0xdf8c
                           00DF8D   903 _X_P1IEN	=	0xdf8d
                           00DF8E   904 __X_SFR8E	=	0xdf8e
                           00DF8F   905 _X_P0INP	=	0xdf8f
                           00DF90   906 __NA_P1	=	0xdf90
                           00DF91   907 _X_RFIM	=	0xdf91
                           00DF92   908 __NA_DPS	=	0xdf92
                           00DF93   909 _X_MPAGE	=	0xdf93
                           00DF94   910 __X_SFR94	=	0xdf94
                           00DF95   911 __X_SFR95	=	0xdf95
                           00DF96   912 __X_SFR96	=	0xdf96
                           00DF97   913 __X_SFR97	=	0xdf97
                           00DF98   914 __NA_S0CON	=	0xdf98
                           00DF99   915 __X_SFR99	=	0xdf99
                           00DF9A   916 __NA_IEN2	=	0xdf9a
                           00DF9B   917 __NA_S1CON	=	0xdf9b
                           00DF9C   918 _X_T2CT	=	0xdf9c
                           00DF9D   919 _X_T2PR	=	0xdf9d
                           00DF9E   920 _X_T2CTL	=	0xdf9e
                           00DF9F   921 __X_SFR9F	=	0xdf9f
                           00DFA0   922 __NA_P2	=	0xdfa0
                           00DFA1   923 _X_WORIRQ	=	0xdfa1
                           00DFA2   924 _X_WORCTRL	=	0xdfa2
                           00DFA3   925 _X_WOREVT0	=	0xdfa3
                           00DFA4   926 _X_WOREVT1	=	0xdfa4
                           00DFA5   927 _X_WORTIME0	=	0xdfa5
                           00DFA6   928 _X_WORTIME1	=	0xdfa6
                           00DFA7   929 __X_SFRA7	=	0xdfa7
                           00DFA8   930 __NA_IEN0	=	0xdfa8
                           00DFA9   931 __NA_IP0	=	0xdfa9
                           00DFAA   932 __X_SFRAA	=	0xdfaa
                           00DFAB   933 _X_FWT	=	0xdfab
                           00DFAC   934 _X_FADDRL	=	0xdfac
                           00DFAD   935 _X_FADDRH	=	0xdfad
                           00DFAE   936 _X_FCTL	=	0xdfae
                           00DFAF   937 _X_FWDATA	=	0xdfaf
                           00DFB0   938 __X_SFRB0	=	0xdfb0
                           00DFB1   939 _X_ENCDI	=	0xdfb1
                           00DFB2   940 _X_ENCDO	=	0xdfb2
                           00DFB3   941 _X_ENCCS	=	0xdfb3
                           00DFB4   942 _X_ADCCON1	=	0xdfb4
                           00DFB5   943 _X_ADCCON2	=	0xdfb5
                           00DFB6   944 _X_ADCCON3	=	0xdfb6
                           00DFB7   945 __X_SFRB7	=	0xdfb7
                           00DFB8   946 __NA_IEN1	=	0xdfb8
                           00DFB9   947 __NA_IP1	=	0xdfb9
                           00DFBA   948 _X_ADCL	=	0xdfba
                           00DFBB   949 _X_ADCH	=	0xdfbb
                           00DFBC   950 _X_RNDL	=	0xdfbc
                           00DFBD   951 _X_RNDH	=	0xdfbd
                           00DFBE   952 _X_SLEEP	=	0xdfbe
                           00DFBF   953 __X_SFRBF	=	0xdfbf
                           00DFC0   954 __NA_IRCON	=	0xdfc0
                           00DFC1   955 _X_U0DBUF	=	0xdfc1
                           00DFC2   956 _X_U0BAUD	=	0xdfc2
                           00DFC3   957 __X_SFRC3	=	0xdfc3
                           00DFC4   958 _X_U0UCR	=	0xdfc4
                           00DFC5   959 _X_U0GCR	=	0xdfc5
                           00DFC6   960 _X_CLKCON	=	0xdfc6
                           00DFC7   961 _X_MEMCTR	=	0xdfc7
                           00DFC8   962 __X_SFRC8	=	0xdfc8
                           00DFC9   963 _X_WDCTL	=	0xdfc9
                           00DFCA   964 _X_T3CNT	=	0xdfca
                           00DFCB   965 _X_T3CTL	=	0xdfcb
                           00DFCC   966 _X_T3CCTL0	=	0xdfcc
                           00DFCD   967 _X_T3CC0	=	0xdfcd
                           00DFCE   968 _X_T3CCTL1	=	0xdfce
                           00DFCF   969 _X_T3CC1	=	0xdfcf
                           00DFD0   970 __NA_PSW	=	0xdfd0
                           00DFD1   971 _X_DMAIRQ	=	0xdfd1
                           00DFD2   972 _X_DMA1CFGL	=	0xdfd2
                           00DFD3   973 _X_DMA1CFGH	=	0xdfd3
                           00DFD4   974 _X_DMA0CFGL	=	0xdfd4
                           00DFD5   975 _X_DMA0CFGH	=	0xdfd5
                           00DFD6   976 _X_DMAARM	=	0xdfd6
                           00DFD7   977 _X_DMAREQ	=	0xdfd7
                           00DFD8   978 _X_TIMIF	=	0xdfd8
                           00DFD9   979 _X_RFD	=	0xdfd9
                           00DFDA   980 _X_T1CC0L	=	0xdfda
                           00DFDB   981 _X_T1CC0H	=	0xdfdb
                           00DFDC   982 _X_T1CC1L	=	0xdfdc
                           00DFDD   983 _X_T1CC1H	=	0xdfdd
                           00DFDE   984 _X_T1CC2L	=	0xdfde
                           00DFDF   985 _X_T1CC2H	=	0xdfdf
                           00DFE0   986 __NA_ACC	=	0xdfe0
                           00DFE1   987 _X_RFST	=	0xdfe1
                           00DFE2   988 _X_T1CNTL	=	0xdfe2
                           00DFE3   989 _X_T1CNTH	=	0xdfe3
                           00DFE4   990 _X_T1CTL	=	0xdfe4
                           00DFE5   991 _X_T1CCTL0	=	0xdfe5
                           00DFE6   992 _X_T1CCTL1	=	0xdfe6
                           00DFE7   993 _X_T1CCTL2	=	0xdfe7
                           00DFE8   994 __NA_IRCON2	=	0xdfe8
                           00DFE9   995 _X_RFIF	=	0xdfe9
                           00DFEA   996 _X_T4CNT	=	0xdfea
                           00DFEB   997 _X_T4CTL	=	0xdfeb
                           00DFEC   998 _X_T4CCTL0	=	0xdfec
                           00DFED   999 _X_T4CC0	=	0xdfed
                           00DFEE  1000 _X_T4CCTL1	=	0xdfee
                           00DFEF  1001 _X_T4CC1	=	0xdfef
                           00DFF0  1002 __NA_B	=	0xdff0
                           00DFF1  1003 _X_PERCFG	=	0xdff1
                           00DFF2  1004 _X_ADCCFG	=	0xdff2
                           00DFF3  1005 _X_P0SEL	=	0xdff3
                           00DFF4  1006 _X_P1SEL	=	0xdff4
                           00DFF5  1007 _X_P2SEL	=	0xdff5
                           00DFF6  1008 _X_P1INP	=	0xdff6
                           00DFF7  1009 _X_P2INP	=	0xdff7
                           00DFF8  1010 _X_U1CSR	=	0xdff8
                           00DFF9  1011 _X_U1DBUF	=	0xdff9
                           00DFFA  1012 _X_U1BAUD	=	0xdffa
                           00DFFB  1013 _X_U1UCR	=	0xdffb
                           00DFFC  1014 _X_U1GCR	=	0xdffc
                           00DFFD  1015 _X_P0DIR	=	0xdffd
                           00DFFE  1016 _X_P1DIR	=	0xdffe
                           00DFFF  1017 _X_P2DIR	=	0xdfff
                           00DE00  1018 _USBADDR	=	0xde00
                           00DE01  1019 _USBPOW	=	0xde01
                           00DE02  1020 _USBIIF	=	0xde02
                           00DE04  1021 _USBOIF	=	0xde04
                           00DE06  1022 _USBCIF	=	0xde06
                           00DE07  1023 _USBIIE	=	0xde07
                           00DE09  1024 _USBOIE	=	0xde09
                           00DE0B  1025 _USBCIE	=	0xde0b
                           00DE0C  1026 _USBFRML	=	0xde0c
                           00DE0D  1027 _USBFRMH	=	0xde0d
                           00DE0E  1028 _USBINDEX	=	0xde0e
                           00DE10  1029 _USBMAXI	=	0xde10
                           00DE11  1030 _USBCS0	=	0xde11
                           00DE11  1031 _USBCSIL	=	0xde11
                           00DE12  1032 _USBCSIH	=	0xde12
                           00DE13  1033 _USBMAXO	=	0xde13
                           00DE14  1034 _USBCSOL	=	0xde14
                           00DE15  1035 _USBCSOH	=	0xde15
                           00DE16  1036 _USBCNT0	=	0xde16
                           00DE16  1037 _USBCNTL	=	0xde16
                           00DE17  1038 _USBCNTH	=	0xde17
                           00DE20  1039 _USBF0	=	0xde20
                           00DE22  1040 _USBF1	=	0xde22
                           00DE24  1041 _USBF2	=	0xde24
                           00DE26  1042 _USBF3	=	0xde26
                           00DE28  1043 _USBF4	=	0xde28
                           00DE2A  1044 _USBF5	=	0xde2a
      00F588                       1045 _spi_input_buf::
      00F588                       1046 	.ds 220
      00F664                       1047 _spi_output_buf::
      00F664                       1048 	.ds 220
      00F740                       1049 _usb_ep5_OUTbuf::
      00F740                       1050 	.ds 516
      00F944                       1051 _ep5::
      00F944                       1052 	.ds 18
      00F956                       1053 _vcom_putstr_buff_1_98:
      00F956                       1054 	.ds 3
      00F959                       1055 _appReturn_PARM_2:
      00F959                       1056 	.ds 2
      00F95B                       1057 _appReturn_len_1_114:
      00F95B                       1058 	.ds 1
                                   1059 ;--------------------------------------------------------
                                   1060 ; absolute external ram data
                                   1061 ;--------------------------------------------------------
                                   1062 	.area XABS    (ABS,XDATA)
                                   1063 ;--------------------------------------------------------
                                   1064 ; external initialized ram data
                                   1065 ;--------------------------------------------------------
                                   1066 	.area XISEG   (XDATA)
                                   1067 	.area HOME    (CODE)
                                   1068 	.area GSINIT0 (CODE)
                                   1069 	.area GSINIT1 (CODE)
                                   1070 	.area GSINIT2 (CODE)
                                   1071 	.area GSINIT3 (CODE)
                                   1072 	.area GSINIT4 (CODE)
                                   1073 	.area GSINIT5 (CODE)
                                   1074 	.area GSINIT  (CODE)
                                   1075 	.area GSFINAL (CODE)
                                   1076 	.area CSEG    (CODE)
                                   1077 ;--------------------------------------------------------
                                   1078 ; global & static initialisations
                                   1079 ;--------------------------------------------------------
                                   1080 	.area HOME    (CODE)
                                   1081 	.area GSINIT  (CODE)
                                   1082 	.area GSFINAL (CODE)
                                   1083 	.area GSINIT  (CODE)
                                   1084 ;	cc1110_spicom.c:24: volatile uint8_t input_size = 0;
      0000E4 75 0D 00         [24] 1085 	mov	_input_size,#0x00
                                   1086 ;	cc1110_spicom.c:25: volatile uint8_t input_head_idx = 0;
      0000E7 75 0E 00         [24] 1087 	mov	_input_head_idx,#0x00
                                   1088 ;	cc1110_spicom.c:26: volatile uint8_t input_tail_idx = 0;
      0000EA 75 0F 00         [24] 1089 	mov	_input_tail_idx,#0x00
                                   1090 ;	cc1110_spicom.c:29: volatile uint8_t output_size = 0;
      0000ED 75 10 00         [24] 1091 	mov	_output_size,#0x00
                                   1092 ;	cc1110_spicom.c:30: volatile uint8_t output_head_idx = 0;
      0000F0 75 11 00         [24] 1093 	mov	_output_head_idx,#0x00
                                   1094 ;	cc1110_spicom.c:31: volatile uint8_t output_tail_idx = 0;
      0000F3 75 12 00         [24] 1095 	mov	_output_tail_idx,#0x00
                                   1096 ;	cc1110_spicom.c:40: volatile uint8_t master_send_size = 0;
      0000F6 75 15 00         [24] 1097 	mov	_master_send_size,#0x00
                                   1098 ;	cc1110_spicom.c:41: volatile uint8_t slave_send_size = 0;
      0000F9 75 16 00         [24] 1099 	mov	_slave_send_size,#0x00
                                   1100 ;--------------------------------------------------------
                                   1101 ; Home
                                   1102 ;--------------------------------------------------------
                                   1103 	.area HOME    (CODE)
                                   1104 	.area HOME    (CODE)
                                   1105 ;--------------------------------------------------------
                                   1106 ; code
                                   1107 ;--------------------------------------------------------
                                   1108 	.area CSEG    (CODE)
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'rx1_isr'
                                   1111 ;------------------------------------------------------------
                                   1112 ;value                     Allocated to registers r7 
                                   1113 ;------------------------------------------------------------
                                   1114 ;	cc1110_spicom.c:73: void rx1_isr(void) __interrupt URX1_VECTOR {
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function rx1_isr
                                   1117 ;	-----------------------------------------
      001905                       1118 _rx1_isr:
                           000007  1119 	ar7 = 0x07
                           000006  1120 	ar6 = 0x06
                           000005  1121 	ar5 = 0x05
                           000004  1122 	ar4 = 0x04
                           000003  1123 	ar3 = 0x03
                           000002  1124 	ar2 = 0x02
                           000001  1125 	ar1 = 0x01
                           000000  1126 	ar0 = 0x00
      001905 C0 21            [24] 1127 	push	bits
      001907 C0 E0            [24] 1128 	push	acc
      001909 C0 F0            [24] 1129 	push	b
      00190B C0 82            [24] 1130 	push	dpl
      00190D C0 83            [24] 1131 	push	dph
      00190F C0 07            [24] 1132 	push	(0+7)
      001911 C0 06            [24] 1133 	push	(0+6)
      001913 C0 05            [24] 1134 	push	(0+5)
      001915 C0 04            [24] 1135 	push	(0+4)
      001917 C0 03            [24] 1136 	push	(0+3)
      001919 C0 02            [24] 1137 	push	(0+2)
      00191B C0 01            [24] 1138 	push	(0+1)
      00191D C0 00            [24] 1139 	push	(0+0)
      00191F C0 D0            [24] 1140 	push	psw
      001921 75 D0 00         [24] 1141 	mov	psw,#0x00
                                   1142 ;	cc1110_spicom.c:75: value = U1DBUF;
      001924 AF F9            [24] 1143 	mov	r7,_U1DBUF
                                   1144 ;	cc1110_spicom.c:77: if (spi_mode == SPI_MODE_WAIT && value == 0x99) {
      001926 E5 14            [12] 1145 	mov	a,_spi_mode
      001928 70 0F            [24] 1146 	jnz	00102$
      00192A BF 99 0C         [24] 1147 	cjne	r7,#0x99,00102$
                                   1148 ;	cc1110_spicom.c:78: slave_send_size = output_size;
      00192D 85 10 16         [24] 1149 	mov	_slave_send_size,_output_size
                                   1150 ;	cc1110_spicom.c:80: spi_mode = SPI_MODE_SIZE;
      001930 75 14 01         [24] 1151 	mov	_spi_mode,#0x01
                                   1152 ;	cc1110_spicom.c:81: U1DBUF = slave_send_size;
      001933 85 16 F9         [24] 1153 	mov	_U1DBUF,_slave_send_size
                                   1154 ;	cc1110_spicom.c:82: return;
      001936 02 19 FD         [24] 1155 	ljmp	00128$
      001939                       1156 00102$:
                                   1157 ;	cc1110_spicom.c:85: if (spi_mode == SPI_MODE_SIZE) {
      001939 74 01            [12] 1158 	mov	a,#0x01
      00193B B5 14 21         [24] 1159 	cjne	a,_spi_mode,00109$
                                   1160 ;	cc1110_spicom.c:86: master_send_size = value;
      00193E 8F 15            [24] 1161 	mov	_master_send_size,r7
                                   1162 ;	cc1110_spicom.c:87: ep5.OUTlen = value;
      001940 8F 05            [24] 1163 	mov	ar5,r7
      001942 7E 00            [12] 1164 	mov	r6,#0x00
      001944 90 F9 4C         [24] 1165 	mov	dptr,#(_ep5 + 0x0008)
      001947 ED               [12] 1166 	mov	a,r5
      001948 F0               [24] 1167 	movx	@dptr,a
      001949 EE               [12] 1168 	mov	a,r6
      00194A A3               [24] 1169 	inc	dptr
      00194B F0               [24] 1170 	movx	@dptr,a
                                   1171 ;	cc1110_spicom.c:88: if (master_send_size > 0 || slave_send_size > 0) {
      00194C E5 15            [12] 1172 	mov	a,_master_send_size
      00194E 70 04            [24] 1173 	jnz	00104$
      001950 E5 16            [12] 1174 	mov	a,_slave_send_size
      001952 60 05            [24] 1175 	jz	00105$
      001954                       1176 00104$:
                                   1177 ;	cc1110_spicom.c:89: spi_mode = SPI_MODE_XFER;
      001954 75 14 02         [24] 1178 	mov	_spi_mode,#0x02
      001957 80 03            [24] 1179 	sjmp	00106$
      001959                       1180 00105$:
                                   1181 ;	cc1110_spicom.c:91: spi_mode = SPI_MODE_WAIT;
      001959 75 14 00         [24] 1182 	mov	_spi_mode,#0x00
      00195C                       1183 00106$:
                                   1184 ;	cc1110_spicom.c:93: return;
      00195C 02 19 FD         [24] 1185 	ljmp	00128$
      00195F                       1186 00109$:
                                   1187 ;	cc1110_spicom.c:96: if (spi_mode == SPI_MODE_XFER && input_size < master_send_size) {
      00195F 74 02            [12] 1188 	mov	a,#0x02
      001961 B5 14 02         [24] 1189 	cjne	a,_spi_mode,00173$
      001964 80 03            [24] 1190 	sjmp	00174$
      001966                       1191 00173$:
      001966 02 19 FD         [24] 1192 	ljmp	00128$
      001969                       1193 00174$:
      001969 C3               [12] 1194 	clr	c
      00196A E5 0D            [12] 1195 	mov	a,_input_size
      00196C 95 15            [12] 1196 	subb	a,_master_send_size
      00196E 40 03            [24] 1197 	jc	00175$
      001970 02 19 FD         [24] 1198 	ljmp	00128$
      001973                       1199 00175$:
                                   1200 ;	cc1110_spicom.c:97: if (input_size == 0) {
      001973 E5 0D            [12] 1201 	mov	a,_input_size
      001975 70 1D            [24] 1202 	jnz	00114$
                                   1203 ;	cc1110_spicom.c:99: ep5.OUTapp = value;
      001977 90 F9 4E         [24] 1204 	mov	dptr,#(_ep5 + 0x000a)
      00197A EF               [12] 1205 	mov	a,r7
      00197B F0               [24] 1206 	movx	@dptr,a
                                   1207 ;	cc1110_spicom.c:100: ep5.OUTbuf[0] = 0x40; // backwards compatibility
      00197C 90 F9 49         [24] 1208 	mov	dptr,#(_ep5 + 0x0005)
      00197F E0               [24] 1209 	movx	a,@dptr
      001980 FC               [12] 1210 	mov	r4,a
      001981 A3               [24] 1211 	inc	dptr
      001982 E0               [24] 1212 	movx	a,@dptr
      001983 FD               [12] 1213 	mov	r5,a
      001984 A3               [24] 1214 	inc	dptr
      001985 E0               [24] 1215 	movx	a,@dptr
      001986 FE               [12] 1216 	mov	r6,a
      001987 8C 82            [24] 1217 	mov	dpl,r4
      001989 8D 83            [24] 1218 	mov	dph,r5
      00198B 8E F0            [24] 1219 	mov	b,r6
      00198D 74 40            [12] 1220 	mov	a,#0x40
      00198F 12 2E E2         [24] 1221 	lcall	__gptrput
      001992 80 43            [24] 1222 	sjmp	00115$
      001994                       1223 00114$:
                                   1224 ;	cc1110_spicom.c:101: } else if (input_size == 1) {
      001994 74 01            [12] 1225 	mov	a,#0x01
      001996 B5 0D 22         [24] 1226 	cjne	a,_input_size,00111$
                                   1227 ;	cc1110_spicom.c:103: ep5.OUTcmd = value;
      001999 90 F9 4F         [24] 1228 	mov	dptr,#(_ep5 + 0x000b)
      00199C EF               [12] 1229 	mov	a,r7
      00199D F0               [24] 1230 	movx	@dptr,a
                                   1231 ;	cc1110_spicom.c:104: ep5.OUTbuf[1] = 0xe0; // backwards compatibility
      00199E 90 F9 49         [24] 1232 	mov	dptr,#(_ep5 + 0x0005)
      0019A1 E0               [24] 1233 	movx	a,@dptr
      0019A2 FC               [12] 1234 	mov	r4,a
      0019A3 A3               [24] 1235 	inc	dptr
      0019A4 E0               [24] 1236 	movx	a,@dptr
      0019A5 FD               [12] 1237 	mov	r5,a
      0019A6 A3               [24] 1238 	inc	dptr
      0019A7 E0               [24] 1239 	movx	a,@dptr
      0019A8 FE               [12] 1240 	mov	r6,a
      0019A9 0C               [12] 1241 	inc	r4
      0019AA BC 00 01         [24] 1242 	cjne	r4,#0x00,00179$
      0019AD 0D               [12] 1243 	inc	r5
      0019AE                       1244 00179$:
      0019AE 8C 82            [24] 1245 	mov	dpl,r4
      0019B0 8D 83            [24] 1246 	mov	dph,r5
      0019B2 8E F0            [24] 1247 	mov	b,r6
      0019B4 74 E0            [12] 1248 	mov	a,#0xE0
      0019B6 12 2E E2         [24] 1249 	lcall	__gptrput
      0019B9 80 1C            [24] 1250 	sjmp	00115$
      0019BB                       1251 00111$:
                                   1252 ;	cc1110_spicom.c:107: ep5.OUTbuf[input_size] = value;
      0019BB 90 F9 49         [24] 1253 	mov	dptr,#(_ep5 + 0x0005)
      0019BE E0               [24] 1254 	movx	a,@dptr
      0019BF FC               [12] 1255 	mov	r4,a
      0019C0 A3               [24] 1256 	inc	dptr
      0019C1 E0               [24] 1257 	movx	a,@dptr
      0019C2 FD               [12] 1258 	mov	r5,a
      0019C3 A3               [24] 1259 	inc	dptr
      0019C4 E0               [24] 1260 	movx	a,@dptr
      0019C5 FE               [12] 1261 	mov	r6,a
      0019C6 E5 0D            [12] 1262 	mov	a,_input_size
      0019C8 2C               [12] 1263 	add	a,r4
      0019C9 FC               [12] 1264 	mov	r4,a
      0019CA E4               [12] 1265 	clr	a
      0019CB 3D               [12] 1266 	addc	a,r5
      0019CC FD               [12] 1267 	mov	r5,a
      0019CD 8C 82            [24] 1268 	mov	dpl,r4
      0019CF 8D 83            [24] 1269 	mov	dph,r5
      0019D1 8E F0            [24] 1270 	mov	b,r6
      0019D3 EF               [12] 1271 	mov	a,r7
      0019D4 12 2E E2         [24] 1272 	lcall	__gptrput
      0019D7                       1273 00115$:
                                   1274 ;	cc1110_spicom.c:109: input_size++;
      0019D7 05 0D            [12] 1275 	inc	_input_size
                                   1276 ;	cc1110_spicom.c:110: if (input_size == master_send_size) {
      0019D9 E5 15            [12] 1277 	mov	a,_master_send_size
      0019DB B5 0D 06         [24] 1278 	cjne	a,_input_size,00117$
                                   1279 ;	cc1110_spicom.c:111: master_send_size = 0;
      0019DE 75 15 00         [24] 1280 	mov	_master_send_size,#0x00
                                   1281 ;	cc1110_spicom.c:112: serial_data_available = 1;
      0019E1 75 13 01         [24] 1282 	mov	_serial_data_available,#0x01
      0019E4                       1283 00117$:
                                   1284 ;	cc1110_spicom.c:114: if (slave_send_size == 0 && master_send_size == 0) {
      0019E4 E5 16            [12] 1285 	mov	a,_slave_send_size
      0019E6 70 15            [24] 1286 	jnz	00128$
      0019E8 E5 15            [12] 1287 	mov	a,_master_send_size
                                   1288 ;	cc1110_spicom.c:115: spi_mode = SPI_MODE_WAIT;
      0019EA 70 11            [24] 1289 	jnz	00128$
      0019EC F5 14            [12] 1290 	mov	_spi_mode,a
                                   1291 ;	cc1110_spicom.c:116: if (cb_ep5)
      0019EE E5 17            [12] 1292 	mov	a,_cb_ep5
      0019F0 45 18            [12] 1293 	orl	a,(_cb_ep5 + 1)
      0019F2 60 09            [24] 1294 	jz	00128$
                                   1295 ;	cc1110_spicom.c:118: if(!cb_ep5()) {
      0019F4 85 17 82         [24] 1296 	mov	dpl,_cb_ep5
      0019F7 85 18 83         [24] 1297 	mov	dph,(_cb_ep5 + 1)
      0019FA 12 00 89         [24] 1298 	lcall	__sdcc_call_dptr
      0019FD                       1299 00128$:
      0019FD D0 D0            [24] 1300 	pop	psw
      0019FF D0 00            [24] 1301 	pop	(0+0)
      001A01 D0 01            [24] 1302 	pop	(0+1)
      001A03 D0 02            [24] 1303 	pop	(0+2)
      001A05 D0 03            [24] 1304 	pop	(0+3)
      001A07 D0 04            [24] 1305 	pop	(0+4)
      001A09 D0 05            [24] 1306 	pop	(0+5)
      001A0B D0 06            [24] 1307 	pop	(0+6)
      001A0D D0 07            [24] 1308 	pop	(0+7)
      001A0F D0 83            [24] 1309 	pop	dph
      001A11 D0 82            [24] 1310 	pop	dpl
      001A13 D0 F0            [24] 1311 	pop	b
      001A15 D0 E0            [24] 1312 	pop	acc
      001A17 D0 21            [24] 1313 	pop	bits
      001A19 32               [24] 1314 	reti
                                   1315 ;------------------------------------------------------------
                                   1316 ;Allocation info for local variables in function 'tx1_isr'
                                   1317 ;------------------------------------------------------------
                                   1318 ;	cc1110_spicom.c:126: void tx1_isr(void) __interrupt UTX1_VECTOR {
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function tx1_isr
                                   1321 ;	-----------------------------------------
      001A1A                       1322 _tx1_isr:
      001A1A C0 E0            [24] 1323 	push	acc
      001A1C C0 82            [24] 1324 	push	dpl
      001A1E C0 83            [24] 1325 	push	dph
      001A20 C0 07            [24] 1326 	push	ar7
      001A22 C0 D0            [24] 1327 	push	psw
      001A24 75 D0 00         [24] 1328 	mov	psw,#0x00
                                   1329 ;	cc1110_spicom.c:127: IRCON2 &= ~BIT2; // Clear UTX1IF
      001A27 AF E8            [24] 1330 	mov	r7,_IRCON2
      001A29 74 FB            [12] 1331 	mov	a,#0xFB
      001A2B 5F               [12] 1332 	anl	a,r7
      001A2C F5 E8            [12] 1333 	mov	_IRCON2,a
                                   1334 ;	cc1110_spicom.c:128: if (spi_mode == SPI_MODE_SIZE || spi_mode == SPI_MODE_XFER) {
      001A2E 74 01            [12] 1335 	mov	a,#0x01
      001A30 B5 14 02         [24] 1336 	cjne	a,_spi_mode,00139$
      001A33 80 05            [24] 1337 	sjmp	00112$
      001A35                       1338 00139$:
      001A35 74 02            [12] 1339 	mov	a,#0x02
      001A37 B5 14 42         [24] 1340 	cjne	a,_spi_mode,00113$
      001A3A                       1341 00112$:
                                   1342 ;	cc1110_spicom.c:129: if (slave_send_size > 0 && output_size > 0) {
      001A3A E5 16            [12] 1343 	mov	a,_slave_send_size
      001A3C 60 39            [24] 1344 	jz	00109$
      001A3E E5 10            [12] 1345 	mov	a,_output_size
      001A40 60 35            [24] 1346 	jz	00109$
                                   1347 ;	cc1110_spicom.c:130: slave_send_size--;
      001A42 15 16            [12] 1348 	dec	_slave_send_size
                                   1349 ;	cc1110_spicom.c:131: if (slave_send_size == 0 && master_send_size == 0) {
      001A44 E5 16            [12] 1350 	mov	a,_slave_send_size
      001A46 70 06            [24] 1351 	jnz	00102$
      001A48 E5 15            [12] 1352 	mov	a,_master_send_size
                                   1353 ;	cc1110_spicom.c:132: spi_mode = SPI_MODE_WAIT;
      001A4A 70 02            [24] 1354 	jnz	00102$
      001A4C F5 14            [12] 1355 	mov	_spi_mode,a
      001A4E                       1356 00102$:
                                   1357 ;	cc1110_spicom.c:134: U1DBUF = spi_output_buf[output_tail_idx];
      001A4E E5 12            [12] 1358 	mov	a,_output_tail_idx
      001A50 24 64            [12] 1359 	add	a,#_spi_output_buf
      001A52 F5 82            [12] 1360 	mov	dpl,a
      001A54 E4               [12] 1361 	clr	a
      001A55 34 F6            [12] 1362 	addc	a,#(_spi_output_buf >> 8)
      001A57 F5 83            [12] 1363 	mov	dph,a
      001A59 E0               [24] 1364 	movx	a,@dptr
      001A5A F5 F9            [12] 1365 	mov	_U1DBUF,a
                                   1366 ;	cc1110_spicom.c:135: output_size--;
      001A5C 15 10            [12] 1367 	dec	_output_size
                                   1368 ;	cc1110_spicom.c:136: if (output_size == 0) {
      001A5E E5 10            [12] 1369 	mov	a,_output_size
      001A60 70 08            [24] 1370 	jnz	00105$
                                   1371 ;	cc1110_spicom.c:137: ep5.flags &= ~EP_INBUF_WRITTEN;
      001A62 90 F9 52         [24] 1372 	mov	dptr,#(_ep5 + 0x000e)
      001A65 E0               [24] 1373 	movx	a,@dptr
      001A66 54 FE            [12] 1374 	anl	a,#0xFE
      001A68 FF               [12] 1375 	mov	r7,a
      001A69 F0               [24] 1376 	movx	@dptr,a
      001A6A                       1377 00105$:
                                   1378 ;	cc1110_spicom.c:139: output_tail_idx++;
      001A6A 05 12            [12] 1379 	inc	_output_tail_idx
                                   1380 ;	cc1110_spicom.c:140: if (output_tail_idx >= SPI_BUF_LEN) {
      001A6C 74 24            [12] 1381 	mov	a,#0x100 - 0xDC
      001A6E 25 12            [12] 1382 	add	a,_output_tail_idx
      001A70 50 0D            [24] 1383 	jnc	00116$
                                   1384 ;	cc1110_spicom.c:141: output_tail_idx = 0;
      001A72 75 12 00         [24] 1385 	mov	_output_tail_idx,#0x00
      001A75 80 08            [24] 1386 	sjmp	00116$
      001A77                       1387 00109$:
                                   1388 ;	cc1110_spicom.c:144: U1DBUF = 0x99;
      001A77 75 F9 99         [24] 1389 	mov	_U1DBUF,#0x99
      001A7A 80 03            [24] 1390 	sjmp	00116$
      001A7C                       1391 00113$:
                                   1392 ;	cc1110_spicom.c:147: U1DBUF = 0x99;
      001A7C 75 F9 99         [24] 1393 	mov	_U1DBUF,#0x99
      001A7F                       1394 00116$:
      001A7F D0 D0            [24] 1395 	pop	psw
      001A81 D0 07            [24] 1396 	pop	ar7
      001A83 D0 83            [24] 1397 	pop	dph
      001A85 D0 82            [24] 1398 	pop	dpl
      001A87 D0 E0            [24] 1399 	pop	acc
      001A89 32               [24] 1400 	reti
                                   1401 ;	eliminated unneeded push/pop b
                                   1402 ;------------------------------------------------------------
                                   1403 ;Allocation info for local variables in function 'vcom_flush'
                                   1404 ;------------------------------------------------------------
                                   1405 ;	cc1110_spicom.c:151: void vcom_flush()
                                   1406 ;	-----------------------------------------
                                   1407 ;	 function vcom_flush
                                   1408 ;	-----------------------------------------
      001A8A                       1409 _vcom_flush:
                                   1410 ;	cc1110_spicom.c:154: return;
      001A8A 22               [24] 1411 	ret
                                   1412 ;------------------------------------------------------------
                                   1413 ;Allocation info for local variables in function 'vcom_putchar'
                                   1414 ;------------------------------------------------------------
                                   1415 ;c                         Allocated to registers r7 
                                   1416 ;------------------------------------------------------------
                                   1417 ;	cc1110_spicom.c:157: void vcom_putchar(char c)
                                   1418 ;	-----------------------------------------
                                   1419 ;	 function vcom_putchar
                                   1420 ;	-----------------------------------------
      001A8B                       1421 _vcom_putchar:
      001A8B AF 82            [24] 1422 	mov	r7,dpl
                                   1423 ;	cc1110_spicom.c:159: if (output_size >= SPI_BUF_LEN) {
      001A8D 74 24            [12] 1424 	mov	a,#0x100 - 0xDC
      001A8F 25 10            [12] 1425 	add	a,_output_size
      001A91 50 0D            [24] 1426 	jnc	00104$
                                   1427 ;	cc1110_spicom.c:161: output_size--;
      001A93 15 10            [12] 1428 	dec	_output_size
                                   1429 ;	cc1110_spicom.c:162: output_tail_idx++;
      001A95 05 12            [12] 1430 	inc	_output_tail_idx
                                   1431 ;	cc1110_spicom.c:163: if (output_tail_idx >= SPI_BUF_LEN) {
      001A97 74 24            [12] 1432 	mov	a,#0x100 - 0xDC
      001A99 25 12            [12] 1433 	add	a,_output_tail_idx
      001A9B 50 03            [24] 1434 	jnc	00104$
                                   1435 ;	cc1110_spicom.c:164: output_tail_idx = 0;
      001A9D 75 12 00         [24] 1436 	mov	_output_tail_idx,#0x00
      001AA0                       1437 00104$:
                                   1438 ;	cc1110_spicom.c:167: spi_output_buf[output_head_idx] = c;
      001AA0 E5 11            [12] 1439 	mov	a,_output_head_idx
      001AA2 24 64            [12] 1440 	add	a,#_spi_output_buf
      001AA4 F5 82            [12] 1441 	mov	dpl,a
      001AA6 E4               [12] 1442 	clr	a
      001AA7 34 F6            [12] 1443 	addc	a,#(_spi_output_buf >> 8)
      001AA9 F5 83            [12] 1444 	mov	dph,a
      001AAB EF               [12] 1445 	mov	a,r7
      001AAC F0               [24] 1446 	movx	@dptr,a
                                   1447 ;	cc1110_spicom.c:169: output_head_idx++;
      001AAD 05 11            [12] 1448 	inc	_output_head_idx
                                   1449 ;	cc1110_spicom.c:170: if (output_head_idx >= SPI_BUF_LEN) {
      001AAF 74 24            [12] 1450 	mov	a,#0x100 - 0xDC
      001AB1 25 11            [12] 1451 	add	a,_output_head_idx
      001AB3 50 03            [24] 1452 	jnc	00106$
                                   1453 ;	cc1110_spicom.c:171: output_head_idx = 0;
      001AB5 75 11 00         [24] 1454 	mov	_output_head_idx,#0x00
      001AB8                       1455 00106$:
                                   1456 ;	cc1110_spicom.c:173: output_size++;
      001AB8 05 10            [12] 1457 	inc	_output_size
                                   1458 ;	cc1110_spicom.c:175: ep5.flags |= EP_INBUF_WRITTEN;
      001ABA 90 F9 52         [24] 1459 	mov	dptr,#(_ep5 + 0x000e)
      001ABD E0               [24] 1460 	movx	a,@dptr
      001ABE 44 01            [12] 1461 	orl	a,#0x01
      001AC0 F0               [24] 1462 	movx	@dptr,a
      001AC1 22               [24] 1463 	ret
                                   1464 ;------------------------------------------------------------
                                   1465 ;Allocation info for local variables in function 'vcom_pollchar'
                                   1466 ;------------------------------------------------------------
                                   1467 ;	cc1110_spicom.c:178: char vcom_pollchar()
                                   1468 ;	-----------------------------------------
                                   1469 ;	 function vcom_pollchar
                                   1470 ;	-----------------------------------------
      001AC2                       1471 _vcom_pollchar:
                                   1472 ;	cc1110_spicom.c:180: if (serial_data_available == 0) {
      001AC2 E5 13            [12] 1473 	mov	a,_serial_data_available
      001AC4 70 04            [24] 1474 	jnz	00102$
                                   1475 ;	cc1110_spicom.c:181: return USB_READ_AGAIN;
      001AC6 75 82 FF         [24] 1476 	mov	dpl,#0xFF
      001AC9 22               [24] 1477 	ret
      001ACA                       1478 00102$:
                                   1479 ;	cc1110_spicom.c:183: return spi_input_buf[input_tail_idx];
      001ACA E5 0F            [12] 1480 	mov	a,_input_tail_idx
      001ACC 24 88            [12] 1481 	add	a,#_spi_input_buf
      001ACE F5 82            [12] 1482 	mov	dpl,a
      001AD0 E4               [12] 1483 	clr	a
      001AD1 34 F5            [12] 1484 	addc	a,#(_spi_input_buf >> 8)
      001AD3 F5 83            [12] 1485 	mov	dph,a
      001AD5 E0               [24] 1486 	movx	a,@dptr
      001AD6 F5 82            [12] 1487 	mov	dpl,a
      001AD8 22               [24] 1488 	ret
                                   1489 ;------------------------------------------------------------
                                   1490 ;Allocation info for local variables in function 'vcom_getchar'
                                   1491 ;------------------------------------------------------------
                                   1492 ;s_data                    Allocated to registers r7 
                                   1493 ;------------------------------------------------------------
                                   1494 ;	cc1110_spicom.c:186: char vcom_getchar()
                                   1495 ;	-----------------------------------------
                                   1496 ;	 function vcom_getchar
                                   1497 ;	-----------------------------------------
      001AD9                       1498 _vcom_getchar:
                                   1499 ;	cc1110_spicom.c:190: if (serial_data_available == 0) {
      001AD9 E5 13            [12] 1500 	mov	a,_serial_data_available
      001ADB 70 04            [24] 1501 	jnz	00102$
                                   1502 ;	cc1110_spicom.c:191: return USB_READ_AGAIN;
      001ADD 75 82 FF         [24] 1503 	mov	dpl,#0xFF
      001AE0 22               [24] 1504 	ret
      001AE1                       1505 00102$:
                                   1506 ;	cc1110_spicom.c:194: s_data = spi_input_buf[input_tail_idx];
      001AE1 E5 0F            [12] 1507 	mov	a,_input_tail_idx
      001AE3 24 88            [12] 1508 	add	a,#_spi_input_buf
      001AE5 F5 82            [12] 1509 	mov	dpl,a
      001AE7 E4               [12] 1510 	clr	a
      001AE8 34 F5            [12] 1511 	addc	a,#(_spi_input_buf >> 8)
      001AEA F5 83            [12] 1512 	mov	dph,a
      001AEC E0               [24] 1513 	movx	a,@dptr
      001AED FF               [12] 1514 	mov	r7,a
                                   1515 ;	cc1110_spicom.c:195: input_tail_idx++;
      001AEE 05 0F            [12] 1516 	inc	_input_tail_idx
                                   1517 ;	cc1110_spicom.c:196: if (input_tail_idx >= SPI_BUF_LEN) {
      001AF0 74 24            [12] 1518 	mov	a,#0x100 - 0xDC
      001AF2 25 0F            [12] 1519 	add	a,_input_tail_idx
      001AF4 50 03            [24] 1520 	jnc	00104$
                                   1521 ;	cc1110_spicom.c:197: input_tail_idx = 0;
      001AF6 75 0F 00         [24] 1522 	mov	_input_tail_idx,#0x00
      001AF9                       1523 00104$:
                                   1524 ;	cc1110_spicom.c:199: input_size--;
      001AF9 15 0D            [12] 1525 	dec	_input_size
                                   1526 ;	cc1110_spicom.c:200: if (input_size == 0) {
      001AFB E5 0D            [12] 1527 	mov	a,_input_size
                                   1528 ;	cc1110_spicom.c:201: serial_data_available = 0;
      001AFD 70 02            [24] 1529 	jnz	00106$
      001AFF F5 13            [12] 1530 	mov	_serial_data_available,a
      001B01                       1531 00106$:
                                   1532 ;	cc1110_spicom.c:203: return s_data;
      001B01 8F 82            [24] 1533 	mov	dpl,r7
      001B03 22               [24] 1534 	ret
                                   1535 ;------------------------------------------------------------
                                   1536 ;Allocation info for local variables in function 'vcom_enable'
                                   1537 ;------------------------------------------------------------
                                   1538 ;	cc1110_spicom.c:206: void vcom_enable()
                                   1539 ;	-----------------------------------------
                                   1540 ;	 function vcom_enable
                                   1541 ;	-----------------------------------------
      001B04                       1542 _vcom_enable:
                                   1543 ;	cc1110_spicom.c:208: TCON &= ~BIT3; // Clear URX1IF
      001B04 AF 88            [24] 1544 	mov	r7,_TCON
      001B06 74 F7            [12] 1545 	mov	a,#0xF7
      001B08 5F               [12] 1546 	anl	a,r7
      001B09 F5 88            [12] 1547 	mov	_TCON,a
                                   1548 ;	cc1110_spicom.c:209: URX1IE = 1;    // Enable URX1IE interrupt
      001B0B D2 AB            [12] 1549 	setb	_URX1IE
                                   1550 ;	cc1110_spicom.c:211: IRCON2 &= ~BIT2; // Clear UTX1IF
      001B0D AF E8            [24] 1551 	mov	r7,_IRCON2
      001B0F 74 FB            [12] 1552 	mov	a,#0xFB
      001B11 5F               [12] 1553 	anl	a,r7
      001B12 F5 E8            [12] 1554 	mov	_IRCON2,a
                                   1555 ;	cc1110_spicom.c:212: IEN2 |= BIT3;    // Enable UTX1IE interrupt
      001B14 43 9A 08         [24] 1556 	orl	_IEN2,#0x08
      001B17 22               [24] 1557 	ret
                                   1558 ;------------------------------------------------------------
                                   1559 ;Allocation info for local variables in function 'vcom_disable'
                                   1560 ;------------------------------------------------------------
                                   1561 ;	cc1110_spicom.c:215: void vcom_disable()
                                   1562 ;	-----------------------------------------
                                   1563 ;	 function vcom_disable
                                   1564 ;	-----------------------------------------
      001B18                       1565 _vcom_disable:
                                   1566 ;	cc1110_spicom.c:217: TCON &= ~BIT3; // Clear URX1IF
      001B18 AF 88            [24] 1567 	mov	r7,_TCON
      001B1A 74 F7            [12] 1568 	mov	a,#0xF7
      001B1C 5F               [12] 1569 	anl	a,r7
      001B1D F5 88            [12] 1570 	mov	_TCON,a
                                   1571 ;	cc1110_spicom.c:218: URX1IE = 0;    // Disable URX1IE interrupt
      001B1F C2 AB            [12] 1572 	clr	_URX1IE
                                   1573 ;	cc1110_spicom.c:220: IRCON2 &= ~BIT2; // Clear UTX1IF
      001B21 AF E8            [24] 1574 	mov	r7,_IRCON2
      001B23 74 FB            [12] 1575 	mov	a,#0xFB
      001B25 5F               [12] 1576 	anl	a,r7
      001B26 F5 E8            [12] 1577 	mov	_IRCON2,a
                                   1578 ;	cc1110_spicom.c:221: IEN2 &= ~BIT3;    // Disable UTX1IE interrupt
      001B28 AF 9A            [24] 1579 	mov	r7,_IEN2
      001B2A 74 F7            [12] 1580 	mov	a,#0xF7
      001B2C 5F               [12] 1581 	anl	a,r7
      001B2D F5 9A            [12] 1582 	mov	_IEN2,a
      001B2F 22               [24] 1583 	ret
                                   1584 ;------------------------------------------------------------
                                   1585 ;Allocation info for local variables in function 'initUSB'
                                   1586 ;------------------------------------------------------------
                                   1587 ;	cc1110_spicom.c:224: void initUSB()
                                   1588 ;	-----------------------------------------
                                   1589 ;	 function initUSB
                                   1590 ;	-----------------------------------------
      001B30                       1591 _initUSB:
                                   1592 ;	cc1110_spicom.c:238: PERCFG = (PERCFG & ~PERCFG_U0CFG) | PERCFG_U1CFG;
      001B30 AF F1            [24] 1593 	mov	r7,_PERCFG
      001B32 74 FE            [12] 1594 	mov	a,#0xFE
      001B34 5F               [12] 1595 	anl	a,r7
      001B35 44 02            [12] 1596 	orl	a,#0x02
      001B37 F5 F1            [12] 1597 	mov	_PERCFG,a
                                   1598 ;	cc1110_spicom.c:241: P1SEL = P1SEL | BIT4 | BIT5 | BIT6 | BIT7;
      001B39 43 F4 F0         [24] 1599 	orl	_P1SEL,#0xF0
                                   1600 ;	cc1110_spicom.c:242: P1DIR = P1DIR & ~(BIT4 | BIT5 | BIT6 | BIT7);
      001B3C AF FE            [24] 1601 	mov	r7,_P1DIR
      001B3E 74 0F            [12] 1602 	mov	a,#0x0F
      001B40 5F               [12] 1603 	anl	a,r7
      001B41 F5 FE            [12] 1604 	mov	_P1DIR,a
                                   1605 ;	cc1110_spicom.c:249: U1CSR = (U1CSR & ~U1CSR_MODE) | U1CSR_SLAVE;
      001B43 AF F8            [24] 1606 	mov	r7,_U1CSR
      001B45 74 7F            [12] 1607 	mov	a,#0x7F
      001B47 5F               [12] 1608 	anl	a,r7
      001B48 44 20            [12] 1609 	orl	a,#0x20
      001B4A F5 F8            [12] 1610 	mov	_U1CSR,a
                                   1611 ;	cc1110_spicom.c:262: U1BAUD = SPI_BAUD_M;
      001B4C 75 FA 3B         [24] 1612 	mov	_U1BAUD,#0x3B
                                   1613 ;	cc1110_spicom.c:263: U1GCR = (U1GCR & ~(U1GCR_BAUD_E | U1GCR_CPOL | U1GCR_CPHA | U1GCR_ORDER))
      001B4F E5 FC            [12] 1614 	mov	a,_U1GCR
      001B51 75 FC 0B         [24] 1615 	mov	_U1GCR,#0x0B
                                   1616 ;	cc1110_spicom.c:266: TCON &= ~BIT3; // Clear URX1IF
      001B54 AF 88            [24] 1617 	mov	r7,_TCON
      001B56 74 F7            [12] 1618 	mov	a,#0xF7
      001B58 5F               [12] 1619 	anl	a,r7
      001B59 F5 88            [12] 1620 	mov	_TCON,a
                                   1621 ;	cc1110_spicom.c:267: URX1IE = 1;    // Enable URX1IE interrupt
      001B5B D2 AB            [12] 1622 	setb	_URX1IE
                                   1623 ;	cc1110_spicom.c:269: IRCON2 &= ~BIT2; // Clear UTX1IF
      001B5D AF E8            [24] 1624 	mov	r7,_IRCON2
      001B5F 74 FB            [12] 1625 	mov	a,#0xFB
      001B61 5F               [12] 1626 	anl	a,r7
      001B62 F5 E8            [12] 1627 	mov	_IRCON2,a
                                   1628 ;	cc1110_spicom.c:270: IEN2 |= BIT3;    // Enable UTX1IE interrupt
      001B64 43 9A 08         [24] 1629 	orl	_IEN2,#0x08
      001B67 22               [24] 1630 	ret
                                   1631 ;------------------------------------------------------------
                                   1632 ;Allocation info for local variables in function 'usbProcessEvents'
                                   1633 ;------------------------------------------------------------
                                   1634 ;	cc1110_spicom.c:274: void usbProcessEvents()
                                   1635 ;	-----------------------------------------
                                   1636 ;	 function usbProcessEvents
                                   1637 ;	-----------------------------------------
      001B68                       1638 _usbProcessEvents:
                                   1639 ;	cc1110_spicom.c:276: return; /* dummy function */
      001B68 22               [24] 1640 	ret
                                   1641 ;------------------------------------------------------------
                                   1642 ;Allocation info for local variables in function 'vcom_readline'
                                   1643 ;------------------------------------------------------------
                                   1644 ;buff                      Allocated to registers 
                                   1645 ;c                         Allocated to registers r3 
                                   1646 ;------------------------------------------------------------
                                   1647 ;	cc1110_spicom.c:279: void vcom_readline(char* buff) {
                                   1648 ;	-----------------------------------------
                                   1649 ;	 function vcom_readline
                                   1650 ;	-----------------------------------------
      001B69                       1651 _vcom_readline:
      001B69 AD 82            [24] 1652 	mov	r5,dpl
      001B6B AE 83            [24] 1653 	mov	r6,dph
      001B6D AF F0            [24] 1654 	mov	r7,b
                                   1655 ;	cc1110_spicom.c:281: while ((c = vcom_getchar()) != '\n') {
      001B6F                       1656 00101$:
      001B6F C0 07            [24] 1657 	push	ar7
      001B71 C0 06            [24] 1658 	push	ar6
      001B73 C0 05            [24] 1659 	push	ar5
      001B75 12 1A D9         [24] 1660 	lcall	_vcom_getchar
      001B78 AC 82            [24] 1661 	mov	r4,dpl
      001B7A D0 05            [24] 1662 	pop	ar5
      001B7C D0 06            [24] 1663 	pop	ar6
      001B7E D0 07            [24] 1664 	pop	ar7
      001B80 8C 03            [24] 1665 	mov	ar3,r4
      001B82 BC 0A 02         [24] 1666 	cjne	r4,#0x0A,00113$
      001B85 80 11            [24] 1667 	sjmp	00103$
      001B87                       1668 00113$:
                                   1669 ;	cc1110_spicom.c:282: *buff++ = c;
      001B87 8D 82            [24] 1670 	mov	dpl,r5
      001B89 8E 83            [24] 1671 	mov	dph,r6
      001B8B 8F F0            [24] 1672 	mov	b,r7
      001B8D EB               [12] 1673 	mov	a,r3
      001B8E 12 2E E2         [24] 1674 	lcall	__gptrput
      001B91 A3               [24] 1675 	inc	dptr
      001B92 AD 82            [24] 1676 	mov	r5,dpl
      001B94 AE 83            [24] 1677 	mov	r6,dph
      001B96 80 D7            [24] 1678 	sjmp	00101$
      001B98                       1679 00103$:
                                   1680 ;	cc1110_spicom.c:284: *buff = 0;
      001B98 8D 82            [24] 1681 	mov	dpl,r5
      001B9A 8E 83            [24] 1682 	mov	dph,r6
      001B9C 8F F0            [24] 1683 	mov	b,r7
      001B9E E4               [12] 1684 	clr	a
      001B9F 02 2E E2         [24] 1685 	ljmp	__gptrput
                                   1686 ;------------------------------------------------------------
                                   1687 ;Allocation info for local variables in function 'vcom_putstr'
                                   1688 ;------------------------------------------------------------
                                   1689 ;buff                      Allocated with name '_vcom_putstr_buff_1_98'
                                   1690 ;------------------------------------------------------------
                                   1691 ;	cc1110_spicom.c:287: void vcom_putstr(char* __xdata buff) {
                                   1692 ;	-----------------------------------------
                                   1693 ;	 function vcom_putstr
                                   1694 ;	-----------------------------------------
      001BA2                       1695 _vcom_putstr:
      001BA2 AF F0            [24] 1696 	mov	r7,b
      001BA4 AE 83            [24] 1697 	mov	r6,dph
      001BA6 E5 82            [12] 1698 	mov	a,dpl
      001BA8 90 F9 56         [24] 1699 	mov	dptr,#_vcom_putstr_buff_1_98
      001BAB F0               [24] 1700 	movx	@dptr,a
      001BAC EE               [12] 1701 	mov	a,r6
      001BAD A3               [24] 1702 	inc	dptr
      001BAE F0               [24] 1703 	movx	@dptr,a
      001BAF EF               [12] 1704 	mov	a,r7
      001BB0 A3               [24] 1705 	inc	dptr
      001BB1 F0               [24] 1706 	movx	@dptr,a
                                   1707 ;	cc1110_spicom.c:288: while (*buff) {
      001BB2 90 F9 56         [24] 1708 	mov	dptr,#_vcom_putstr_buff_1_98
      001BB5 E0               [24] 1709 	movx	a,@dptr
      001BB6 FD               [12] 1710 	mov	r5,a
      001BB7 A3               [24] 1711 	inc	dptr
      001BB8 E0               [24] 1712 	movx	a,@dptr
      001BB9 FE               [12] 1713 	mov	r6,a
      001BBA A3               [24] 1714 	inc	dptr
      001BBB E0               [24] 1715 	movx	a,@dptr
      001BBC FF               [12] 1716 	mov	r7,a
      001BBD                       1717 00101$:
      001BBD 8D 82            [24] 1718 	mov	dpl,r5
      001BBF 8E 83            [24] 1719 	mov	dph,r6
      001BC1 8F F0            [24] 1720 	mov	b,r7
      001BC3 12 30 79         [24] 1721 	lcall	__gptrget
      001BC6 FC               [12] 1722 	mov	r4,a
      001BC7 60 23            [24] 1723 	jz	00108$
                                   1724 ;	cc1110_spicom.c:289: vcom_putchar(*buff++);
      001BC9 0D               [12] 1725 	inc	r5
      001BCA BD 00 01         [24] 1726 	cjne	r5,#0x00,00114$
      001BCD 0E               [12] 1727 	inc	r6
      001BCE                       1728 00114$:
      001BCE 90 F9 56         [24] 1729 	mov	dptr,#_vcom_putstr_buff_1_98
      001BD1 ED               [12] 1730 	mov	a,r5
      001BD2 F0               [24] 1731 	movx	@dptr,a
      001BD3 EE               [12] 1732 	mov	a,r6
      001BD4 A3               [24] 1733 	inc	dptr
      001BD5 F0               [24] 1734 	movx	@dptr,a
      001BD6 EF               [12] 1735 	mov	a,r7
      001BD7 A3               [24] 1736 	inc	dptr
      001BD8 F0               [24] 1737 	movx	@dptr,a
      001BD9 8C 82            [24] 1738 	mov	dpl,r4
      001BDB C0 07            [24] 1739 	push	ar7
      001BDD C0 06            [24] 1740 	push	ar6
      001BDF C0 05            [24] 1741 	push	ar5
      001BE1 12 1A 8B         [24] 1742 	lcall	_vcom_putchar
      001BE4 D0 05            [24] 1743 	pop	ar5
      001BE6 D0 06            [24] 1744 	pop	ar6
      001BE8 D0 07            [24] 1745 	pop	ar7
      001BEA 80 D1            [24] 1746 	sjmp	00101$
      001BEC                       1747 00108$:
      001BEC 90 F9 56         [24] 1748 	mov	dptr,#_vcom_putstr_buff_1_98
      001BEF ED               [12] 1749 	mov	a,r5
      001BF0 F0               [24] 1750 	movx	@dptr,a
      001BF1 EE               [12] 1751 	mov	a,r6
      001BF2 A3               [24] 1752 	inc	dptr
      001BF3 F0               [24] 1753 	movx	@dptr,a
      001BF4 EF               [12] 1754 	mov	a,r7
      001BF5 A3               [24] 1755 	inc	dptr
      001BF6 F0               [24] 1756 	movx	@dptr,a
                                   1757 ;	cc1110_spicom.c:291: vcom_flush();
      001BF7 02 1A 8A         [24] 1758 	ljmp	_vcom_flush
                                   1759 ;------------------------------------------------------------
                                   1760 ;Allocation info for local variables in function 'usb_up'
                                   1761 ;------------------------------------------------------------
                                   1762 ;	cc1110_spicom.c:294: void usb_up() {
                                   1763 ;	-----------------------------------------
                                   1764 ;	 function usb_up
                                   1765 ;	-----------------------------------------
      001BFA                       1766 _usb_up:
                                   1767 ;	cc1110_spicom.c:296: vcom_enable();
      001BFA 02 1B 04         [24] 1768 	ljmp	_vcom_enable
                                   1769 ;------------------------------------------------------------
                                   1770 ;Allocation info for local variables in function 'vcom_down'
                                   1771 ;------------------------------------------------------------
                                   1772 ;	cc1110_spicom.c:299: void vcom_down() {
                                   1773 ;	-----------------------------------------
                                   1774 ;	 function vcom_down
                                   1775 ;	-----------------------------------------
      001BFD                       1776 _vcom_down:
                                   1777 ;	cc1110_spicom.c:301: vcom_disable();
      001BFD 02 1B 18         [24] 1778 	ljmp	_vcom_disable
                                   1779 ;------------------------------------------------------------
                                   1780 ;Allocation info for local variables in function 'txdata'
                                   1781 ;------------------------------------------------------------
                                   1782 ;cmd                       Allocated with name '_txdata_PARM_2'
                                   1783 ;len                       Allocated with name '_txdata_PARM_3'
                                   1784 ;dataptr                   Allocated with name '_txdata_PARM_4'
                                   1785 ;app                       Allocated to registers 
                                   1786 ;test                      Allocated to registers 
                                   1787 ;------------------------------------------------------------
                                   1788 ;	cc1110_spicom.c:304: int txdata(u8 app, u8 cmd, u16 len, __xdata u8* dataptr)
                                   1789 ;	-----------------------------------------
                                   1790 ;	 function txdata
                                   1791 ;	-----------------------------------------
      001C00                       1792 _txdata:
                                   1793 ;	cc1110_spicom.c:310: vcom_putchar(app);
      001C00 12 1A 8B         [24] 1794 	lcall	_vcom_putchar
                                   1795 ;	cc1110_spicom.c:311: vcom_putchar(cmd);
      001C03 85 19 82         [24] 1796 	mov	dpl,_txdata_PARM_2
      001C06 12 1A 8B         [24] 1797 	lcall	_vcom_putchar
                                   1798 ;	cc1110_spicom.c:314: while (*dataptr) 
      001C09 AE 1C            [24] 1799 	mov	r6,_txdata_PARM_4
      001C0B AF 1D            [24] 1800 	mov	r7,(_txdata_PARM_4 + 1)
      001C0D                       1801 00101$:
      001C0D 8E 82            [24] 1802 	mov	dpl,r6
      001C0F 8F 83            [24] 1803 	mov	dph,r7
      001C11 E0               [24] 1804 	movx	a,@dptr
      001C12 FD               [12] 1805 	mov	r5,a
      001C13 60 14            [24] 1806 	jz	00103$
                                   1807 ;	cc1110_spicom.c:316: vcom_putchar(*dataptr++);
      001C15 8D 82            [24] 1808 	mov	dpl,r5
      001C17 0E               [12] 1809 	inc	r6
      001C18 BE 00 01         [24] 1810 	cjne	r6,#0x00,00114$
      001C1B 0F               [12] 1811 	inc	r7
      001C1C                       1812 00114$:
      001C1C C0 07            [24] 1813 	push	ar7
      001C1E C0 06            [24] 1814 	push	ar6
      001C20 12 1A 8B         [24] 1815 	lcall	_vcom_putchar
      001C23 D0 06            [24] 1816 	pop	ar6
      001C25 D0 07            [24] 1817 	pop	ar7
      001C27 80 E4            [24] 1818 	sjmp	00101$
      001C29                       1819 00103$:
                                   1820 ;	cc1110_spicom.c:318: vcom_putchar(0);
      001C29 75 82 00         [24] 1821 	mov	dpl,#0x00
      001C2C 12 1A 8B         [24] 1822 	lcall	_vcom_putchar
                                   1823 ;	cc1110_spicom.c:319: vcom_flush();
      001C2F 12 1A 8A         [24] 1824 	lcall	_vcom_flush
                                   1825 ;	cc1110_spicom.c:323: return 0;
      001C32 90 00 00         [24] 1826 	mov	dptr,#0x0000
      001C35 22               [24] 1827 	ret
                                   1828 ;------------------------------------------------------------
                                   1829 ;Allocation info for local variables in function 'usbIntHandler'
                                   1830 ;------------------------------------------------------------
                                   1831 ;	cc1110_spicom.c:328: void usbIntHandler(void) __interrupt P2INT_VECTOR
                                   1832 ;	-----------------------------------------
                                   1833 ;	 function usbIntHandler
                                   1834 ;	-----------------------------------------
      001C36                       1835 _usbIntHandler:
                                   1836 ;	cc1110_spicom.c:330: return;
      001C36 32               [24] 1837 	reti
                                   1838 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1839 ;	eliminated unneeded push/pop psw
                                   1840 ;	eliminated unneeded push/pop dpl
                                   1841 ;	eliminated unneeded push/pop dph
                                   1842 ;	eliminated unneeded push/pop b
                                   1843 ;	eliminated unneeded push/pop acc
                                   1844 ;------------------------------------------------------------
                                   1845 ;Allocation info for local variables in function 'p0IntHandler'
                                   1846 ;------------------------------------------------------------
                                   1847 ;	cc1110_spicom.c:333: void p0IntHandler(void) __interrupt P0INT_VECTOR
                                   1848 ;	-----------------------------------------
                                   1849 ;	 function p0IntHandler
                                   1850 ;	-----------------------------------------
      001C37                       1851 _p0IntHandler:
                                   1852 ;	cc1110_spicom.c:335: return;
      001C37 32               [24] 1853 	reti
                                   1854 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1855 ;	eliminated unneeded push/pop psw
                                   1856 ;	eliminated unneeded push/pop dpl
                                   1857 ;	eliminated unneeded push/pop dph
                                   1858 ;	eliminated unneeded push/pop b
                                   1859 ;	eliminated unneeded push/pop acc
                                   1860 ;------------------------------------------------------------
                                   1861 ;Allocation info for local variables in function 'waitForUSBsetup'
                                   1862 ;------------------------------------------------------------
                                   1863 ;	cc1110_spicom.c:338: void waitForUSBsetup()
                                   1864 ;	-----------------------------------------
                                   1865 ;	 function waitForUSBsetup
                                   1866 ;	-----------------------------------------
      001C38                       1867 _waitForUSBsetup:
                                   1868 ;	cc1110_spicom.c:340: return;
      001C38 22               [24] 1869 	ret
                                   1870 ;------------------------------------------------------------
                                   1871 ;Allocation info for local variables in function 'registerCb_ep5'
                                   1872 ;------------------------------------------------------------
                                   1873 ;callback                  Allocated to registers 
                                   1874 ;------------------------------------------------------------
                                   1875 ;	cc1110_spicom.c:343: void registerCb_ep5(int (*callback)(void))
                                   1876 ;	-----------------------------------------
                                   1877 ;	 function registerCb_ep5
                                   1878 ;	-----------------------------------------
      001C39                       1879 _registerCb_ep5:
      001C39 85 82 17         [24] 1880 	mov	_cb_ep5,dpl
      001C3C 85 83 18         [24] 1881 	mov	(_cb_ep5 + 1),dph
                                   1882 ;	cc1110_spicom.c:345: cb_ep5 = callback;
      001C3F 22               [24] 1883 	ret
                                   1884 ;------------------------------------------------------------
                                   1885 ;Allocation info for local variables in function 'appReturn'
                                   1886 ;------------------------------------------------------------
                                   1887 ;response                  Allocated with name '_appReturn_PARM_2'
                                   1888 ;len                       Allocated with name '_appReturn_len_1_114'
                                   1889 ;------------------------------------------------------------
                                   1890 ;	cc1110_spicom.c:348: void appReturn(__xdata u8 len, __xdata u8* __xdata  response)
                                   1891 ;	-----------------------------------------
                                   1892 ;	 function appReturn
                                   1893 ;	-----------------------------------------
      001C40                       1894 _appReturn:
      001C40 E5 82            [12] 1895 	mov	a,dpl
      001C42 90 F9 5B         [24] 1896 	mov	dptr,#_appReturn_len_1_114
      001C45 F0               [24] 1897 	movx	@dptr,a
                                   1898 ;	cc1110_spicom.c:350: ep5.flags &= ~EP_OUTBUF_WRITTEN;                       // this should be superfluous... but could be causing problems?
      001C46 90 F9 52         [24] 1899 	mov	dptr,#(_ep5 + 0x000e)
      001C49 E0               [24] 1900 	movx	a,@dptr
      001C4A 54 FD            [12] 1901 	anl	a,#0xFD
      001C4C F0               [24] 1902 	movx	@dptr,a
                                   1903 ;	cc1110_spicom.c:351: txdata(ep5.OUTapp,ep5.OUTcmd, len, response);
      001C4D 90 F9 4E         [24] 1904 	mov	dptr,#(_ep5 + 0x000a)
      001C50 E0               [24] 1905 	movx	a,@dptr
      001C51 FF               [12] 1906 	mov	r7,a
      001C52 90 F9 4F         [24] 1907 	mov	dptr,#(_ep5 + 0x000b)
      001C55 E0               [24] 1908 	movx	a,@dptr
      001C56 F5 19            [12] 1909 	mov	_txdata_PARM_2,a
      001C58 90 F9 5B         [24] 1910 	mov	dptr,#_appReturn_len_1_114
      001C5B E0               [24] 1911 	movx	a,@dptr
      001C5C FE               [12] 1912 	mov	r6,a
      001C5D 8E 1A            [24] 1913 	mov	_txdata_PARM_3,r6
      001C5F 75 1B 00         [24] 1914 	mov	(_txdata_PARM_3 + 1),#0x00
      001C62 90 F9 59         [24] 1915 	mov	dptr,#_appReturn_PARM_2
      001C65 E0               [24] 1916 	movx	a,@dptr
      001C66 F5 1C            [12] 1917 	mov	_txdata_PARM_4,a
      001C68 A3               [24] 1918 	inc	dptr
      001C69 E0               [24] 1919 	movx	a,@dptr
      001C6A F5 1D            [12] 1920 	mov	(_txdata_PARM_4 + 1),a
      001C6C 8F 82            [24] 1921 	mov	dpl,r7
      001C6E 02 1C 00         [24] 1922 	ljmp	_txdata
                                   1923 	.area CSEG    (CODE)
                                   1924 	.area CONST   (CODE)
                                   1925 	.area XINIT   (CODE)
                                   1926 	.area CABS    (ABS,CODE)
