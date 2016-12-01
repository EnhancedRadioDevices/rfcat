                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
                                      4 ; This file was generated Wed Nov 30 16:38:16 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module appFHSSNIC
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _initBoard
                                     14 	.globl _appHandleEP0
                                     15 	.globl _appHandleEP0OUT
                                     16 	.globl _appHandleEP0OUTdone
                                     17 	.globl _appMainLoop
                                     18 	.globl _appMainInit
                                     19 	.globl _init_MAC
                                     20 	.globl _init_FHSS
                                     21 	.globl _MAC_set_NIC_ID
                                     22 	.globl _MAC_do_Master_scanny_thingy
                                     23 	.globl _MAC_become_master
                                     24 	.globl _MAC_stop_sync
                                     25 	.globl _transmit_long
                                     26 	.globl _registerCb_ep5
                                     27 	.globl _usb_up
                                     28 	.globl _usbProcessEvents
                                     29 	.globl _waitForUSBsetup
                                     30 	.globl _initUSB
                                     31 	.globl _memcpy
                                     32 	.globl _decAES
                                     33 	.globl _encAES
                                     34 	.globl _padAES
                                     35 	.globl _setAES
                                     36 	.globl _initAES
                                     37 	.globl _resetRFSTATE
                                     38 	.globl _init_RF
                                     39 	.globl _transmit
                                     40 	.globl _IdleMode
                                     41 	.globl _RxMode
                                     42 	.globl _initDMA
                                     43 	.globl _appReturn
                                     44 	.globl _txdata
                                     45 	.globl _clock_init
                                     46 	.globl _debughex16
                                     47 	.globl _debughex
                                     48 	.globl _debugx
                                     49 	.globl _debug
                                     50 	.globl _io_init
                                     51 	.globl _sleepMillis
                                     52 	.globl _USBIF
                                     53 	.globl _MODE
                                     54 	.globl _RE
                                     55 	.globl _SLAVE
                                     56 	.globl _FE
                                     57 	.globl _ERR
                                     58 	.globl _RX_BYTE
                                     59 	.globl _TX_BYTE
                                     60 	.globl _ACTIVE
                                     61 	.globl _B_7
                                     62 	.globl _B_6
                                     63 	.globl _B_5
                                     64 	.globl _B_4
                                     65 	.globl _B_3
                                     66 	.globl _B_2
                                     67 	.globl _B_1
                                     68 	.globl _B_0
                                     69 	.globl _WDTIF
                                     70 	.globl _P1IF
                                     71 	.globl _UTX1IF
                                     72 	.globl _UTX0IF
                                     73 	.globl _P2IF
                                     74 	.globl _ACC_7
                                     75 	.globl _ACC_6
                                     76 	.globl _ACC_5
                                     77 	.globl _ACC_4
                                     78 	.globl _ACC_3
                                     79 	.globl _ACC_2
                                     80 	.globl _ACC_1
                                     81 	.globl _ACC_0
                                     82 	.globl _OVFIM
                                     83 	.globl _T4CH1IF
                                     84 	.globl _T4CH0IF
                                     85 	.globl _T4OVFIF
                                     86 	.globl _T3CH1IF
                                     87 	.globl _T3CH0IF
                                     88 	.globl _T3OVFIF
                                     89 	.globl _CY
                                     90 	.globl _AC
                                     91 	.globl _F0
                                     92 	.globl _RS1
                                     93 	.globl _RS0
                                     94 	.globl _OV
                                     95 	.globl _F1
                                     96 	.globl _P
                                     97 	.globl _STIF
                                     98 	.globl _P0IF
                                     99 	.globl _T4IF
                                    100 	.globl _T3IF
                                    101 	.globl _T2IF
                                    102 	.globl _T1IF
                                    103 	.globl _DMAIF
                                    104 	.globl _P0IE
                                    105 	.globl _T4IE
                                    106 	.globl _T3IE
                                    107 	.globl _T2IE
                                    108 	.globl _T1IE
                                    109 	.globl _DMAIE
                                    110 	.globl _EA
                                    111 	.globl _STIE
                                    112 	.globl _ENCIE
                                    113 	.globl _URX1IE
                                    114 	.globl _URX0IE
                                    115 	.globl _ADCIE
                                    116 	.globl _RFTXRXIE
                                    117 	.globl _P2_7
                                    118 	.globl _P2_6
                                    119 	.globl _P2_5
                                    120 	.globl _P2_4
                                    121 	.globl _P2_3
                                    122 	.globl _P2_2
                                    123 	.globl _P2_1
                                    124 	.globl _P2_0
                                    125 	.globl _ENCIF_1
                                    126 	.globl _ENCIF_0
                                    127 	.globl _P1_7
                                    128 	.globl _P1_6
                                    129 	.globl _P1_5
                                    130 	.globl _P1_4
                                    131 	.globl _P1_3
                                    132 	.globl _P1_2
                                    133 	.globl _P1_1
                                    134 	.globl _P1_0
                                    135 	.globl _URX1IF
                                    136 	.globl _ADCIF
                                    137 	.globl _URX0IF
                                    138 	.globl _IT1
                                    139 	.globl _RFTXRXIF
                                    140 	.globl _IT0
                                    141 	.globl _P0_7
                                    142 	.globl _P0_6
                                    143 	.globl _P0_5
                                    144 	.globl _P0_4
                                    145 	.globl _P0_3
                                    146 	.globl _P0_2
                                    147 	.globl _P0_1
                                    148 	.globl _P0_0
                                    149 	.globl _P2DIR
                                    150 	.globl _P1DIR
                                    151 	.globl _P0DIR
                                    152 	.globl _U1GCR
                                    153 	.globl _U1UCR
                                    154 	.globl _U1BAUD
                                    155 	.globl _U1DBUF
                                    156 	.globl _U1CSR
                                    157 	.globl _P2INP
                                    158 	.globl _P1INP
                                    159 	.globl _P2SEL
                                    160 	.globl _P1SEL
                                    161 	.globl _P0SEL
                                    162 	.globl _ADCCFG
                                    163 	.globl _PERCFG
                                    164 	.globl _B
                                    165 	.globl _T4CC1
                                    166 	.globl _T4CCTL1
                                    167 	.globl _T4CC0
                                    168 	.globl _T4CCTL0
                                    169 	.globl _T4CTL
                                    170 	.globl _T4CNT
                                    171 	.globl _RFIF
                                    172 	.globl _IRCON2
                                    173 	.globl _T1CCTL2
                                    174 	.globl _T1CCTL1
                                    175 	.globl _T1CCTL0
                                    176 	.globl _T1CTL
                                    177 	.globl _T1CNTH
                                    178 	.globl _T1CNTL
                                    179 	.globl _RFST
                                    180 	.globl _ACC
                                    181 	.globl _T1CC2H
                                    182 	.globl _T1CC2L
                                    183 	.globl _T1CC1H
                                    184 	.globl _T1CC1L
                                    185 	.globl _T1CC0H
                                    186 	.globl _T1CC0L
                                    187 	.globl _RFD
                                    188 	.globl _TIMIF
                                    189 	.globl _DMAREQ
                                    190 	.globl _DMAARM
                                    191 	.globl _DMA0CFGH
                                    192 	.globl _DMA0CFGL
                                    193 	.globl _DMA1CFGH
                                    194 	.globl _DMA1CFGL
                                    195 	.globl _DMAIRQ
                                    196 	.globl _PSW
                                    197 	.globl _T3CC1
                                    198 	.globl _T3CCTL1
                                    199 	.globl _T3CC0
                                    200 	.globl _T3CCTL0
                                    201 	.globl _T3CTL
                                    202 	.globl _T3CNT
                                    203 	.globl _WDCTL
                                    204 	.globl __SFRC8
                                    205 	.globl _MEMCTR
                                    206 	.globl _CLKCON
                                    207 	.globl _U0GCR
                                    208 	.globl _U0UCR
                                    209 	.globl __SFRC3
                                    210 	.globl _U0BAUD
                                    211 	.globl _U0DBUF
                                    212 	.globl _IRCON
                                    213 	.globl __SFRBF
                                    214 	.globl _SLEEP
                                    215 	.globl _RNDH
                                    216 	.globl _RNDL
                                    217 	.globl _ADCH
                                    218 	.globl _ADCL
                                    219 	.globl _IP1
                                    220 	.globl _IEN1
                                    221 	.globl __SFRB7
                                    222 	.globl _ADCCON3
                                    223 	.globl _ADCCON2
                                    224 	.globl _ADCCON1
                                    225 	.globl _ENCCS
                                    226 	.globl _ENCDO
                                    227 	.globl _ENCDI
                                    228 	.globl __SFRB0
                                    229 	.globl _FWDATA
                                    230 	.globl _FCTL
                                    231 	.globl _FADDRH
                                    232 	.globl _FADDRL
                                    233 	.globl _FWT
                                    234 	.globl __SFRAA
                                    235 	.globl _IP0
                                    236 	.globl _IEN0
                                    237 	.globl __SFRA7
                                    238 	.globl _WORTIME1
                                    239 	.globl _WORTIME0
                                    240 	.globl _WOREVT1
                                    241 	.globl _WOREVT0
                                    242 	.globl _WORCTRL
                                    243 	.globl _WORIRQ
                                    244 	.globl _P2
                                    245 	.globl __SFR9F
                                    246 	.globl _T2CTL
                                    247 	.globl _T2PR
                                    248 	.globl _T2CT
                                    249 	.globl _S1CON
                                    250 	.globl _IEN2
                                    251 	.globl __SFR99
                                    252 	.globl _S0CON
                                    253 	.globl __SFR97
                                    254 	.globl __SFR96
                                    255 	.globl __SFR95
                                    256 	.globl __SFR94
                                    257 	.globl __XPAGE
                                    258 	.globl _MPAGE
                                    259 	.globl _DPS
                                    260 	.globl _RFIM
                                    261 	.globl _P1
                                    262 	.globl _P0INP
                                    263 	.globl __SFR8E
                                    264 	.globl _P1IEN
                                    265 	.globl _PICTL
                                    266 	.globl _P2IFG
                                    267 	.globl _P1IFG
                                    268 	.globl _P0IFG
                                    269 	.globl _TCON
                                    270 	.globl _PCON
                                    271 	.globl _U0CSR
                                    272 	.globl _DPH1
                                    273 	.globl _DPL1
                                    274 	.globl _DPH0
                                    275 	.globl _DPL0
                                    276 	.globl _SP
                                    277 	.globl _P0
                                    278 	.globl _chan_table
                                    279 	.globl _processbuffer
                                    280 	.globl _MAC_rx_handle_PARM_2
                                    281 	.globl _MAC_tx_PARM_2
                                    282 	.globl _transmit_long_PARM_3
                                    283 	.globl _transmit_long_PARM_2
                                    284 	.globl _g_txMsgQueue
                                    285 	.globl _g_NIC_ID
                                    286 	.globl _g_Channels
                                    287 	.globl _USBF5
                                    288 	.globl _USBF4
                                    289 	.globl _USBF3
                                    290 	.globl _USBF2
                                    291 	.globl _USBF1
                                    292 	.globl _USBF0
                                    293 	.globl _USBCNTH
                                    294 	.globl _USBCNTL
                                    295 	.globl _USBCNT0
                                    296 	.globl _USBCSOH
                                    297 	.globl _USBCSOL
                                    298 	.globl _USBMAXO
                                    299 	.globl _USBCSIH
                                    300 	.globl _USBCSIL
                                    301 	.globl _USBCS0
                                    302 	.globl _USBMAXI
                                    303 	.globl _USBINDEX
                                    304 	.globl _USBFRMH
                                    305 	.globl _USBFRML
                                    306 	.globl _USBCIE
                                    307 	.globl _USBOIE
                                    308 	.globl _USBIIE
                                    309 	.globl _USBCIF
                                    310 	.globl _USBOIF
                                    311 	.globl _USBIIF
                                    312 	.globl _USBPOW
                                    313 	.globl _USBADDR
                                    314 	.globl _X_P2DIR
                                    315 	.globl _X_P1DIR
                                    316 	.globl _X_P0DIR
                                    317 	.globl _X_U1GCR
                                    318 	.globl _X_U1UCR
                                    319 	.globl _X_U1BAUD
                                    320 	.globl _X_U1DBUF
                                    321 	.globl _X_U1CSR
                                    322 	.globl _X_P2INP
                                    323 	.globl _X_P1INP
                                    324 	.globl _X_P2SEL
                                    325 	.globl _X_P1SEL
                                    326 	.globl _X_P0SEL
                                    327 	.globl _X_ADCCFG
                                    328 	.globl _X_PERCFG
                                    329 	.globl __NA_B
                                    330 	.globl _X_T4CC1
                                    331 	.globl _X_T4CCTL1
                                    332 	.globl _X_T4CC0
                                    333 	.globl _X_T4CCTL0
                                    334 	.globl _X_T4CTL
                                    335 	.globl _X_T4CNT
                                    336 	.globl _X_RFIF
                                    337 	.globl __NA_IRCON2
                                    338 	.globl _X_T1CCTL2
                                    339 	.globl _X_T1CCTL1
                                    340 	.globl _X_T1CCTL0
                                    341 	.globl _X_T1CTL
                                    342 	.globl _X_T1CNTH
                                    343 	.globl _X_T1CNTL
                                    344 	.globl _X_RFST
                                    345 	.globl __NA_ACC
                                    346 	.globl _X_T1CC2H
                                    347 	.globl _X_T1CC2L
                                    348 	.globl _X_T1CC1H
                                    349 	.globl _X_T1CC1L
                                    350 	.globl _X_T1CC0H
                                    351 	.globl _X_T1CC0L
                                    352 	.globl _X_RFD
                                    353 	.globl _X_TIMIF
                                    354 	.globl _X_DMAREQ
                                    355 	.globl _X_DMAARM
                                    356 	.globl _X_DMA0CFGH
                                    357 	.globl _X_DMA0CFGL
                                    358 	.globl _X_DMA1CFGH
                                    359 	.globl _X_DMA1CFGL
                                    360 	.globl _X_DMAIRQ
                                    361 	.globl __NA_PSW
                                    362 	.globl _X_T3CC1
                                    363 	.globl _X_T3CCTL1
                                    364 	.globl _X_T3CC0
                                    365 	.globl _X_T3CCTL0
                                    366 	.globl _X_T3CTL
                                    367 	.globl _X_T3CNT
                                    368 	.globl _X_WDCTL
                                    369 	.globl __X_SFRC8
                                    370 	.globl _X_MEMCTR
                                    371 	.globl _X_CLKCON
                                    372 	.globl _X_U0GCR
                                    373 	.globl _X_U0UCR
                                    374 	.globl __X_SFRC3
                                    375 	.globl _X_U0BAUD
                                    376 	.globl _X_U0DBUF
                                    377 	.globl __NA_IRCON
                                    378 	.globl __X_SFRBF
                                    379 	.globl _X_SLEEP
                                    380 	.globl _X_RNDH
                                    381 	.globl _X_RNDL
                                    382 	.globl _X_ADCH
                                    383 	.globl _X_ADCL
                                    384 	.globl __NA_IP1
                                    385 	.globl __NA_IEN1
                                    386 	.globl __X_SFRB7
                                    387 	.globl _X_ADCCON3
                                    388 	.globl _X_ADCCON2
                                    389 	.globl _X_ADCCON1
                                    390 	.globl _X_ENCCS
                                    391 	.globl _X_ENCDO
                                    392 	.globl _X_ENCDI
                                    393 	.globl __X_SFRB0
                                    394 	.globl _X_FWDATA
                                    395 	.globl _X_FCTL
                                    396 	.globl _X_FADDRH
                                    397 	.globl _X_FADDRL
                                    398 	.globl _X_FWT
                                    399 	.globl __X_SFRAA
                                    400 	.globl __NA_IP0
                                    401 	.globl __NA_IEN0
                                    402 	.globl __X_SFRA7
                                    403 	.globl _X_WORTIME1
                                    404 	.globl _X_WORTIME0
                                    405 	.globl _X_WOREVT1
                                    406 	.globl _X_WOREVT0
                                    407 	.globl _X_WORCTRL
                                    408 	.globl _X_WORIRQ
                                    409 	.globl __NA_P2
                                    410 	.globl __X_SFR9F
                                    411 	.globl _X_T2CTL
                                    412 	.globl _X_T2PR
                                    413 	.globl _X_T2CT
                                    414 	.globl __NA_S1CON
                                    415 	.globl __NA_IEN2
                                    416 	.globl __X_SFR99
                                    417 	.globl __NA_S0CON
                                    418 	.globl __X_SFR97
                                    419 	.globl __X_SFR96
                                    420 	.globl __X_SFR95
                                    421 	.globl __X_SFR94
                                    422 	.globl _X_MPAGE
                                    423 	.globl __NA_DPS
                                    424 	.globl _X_RFIM
                                    425 	.globl __NA_P1
                                    426 	.globl _X_P0INP
                                    427 	.globl __X_SFR8E
                                    428 	.globl _X_P1IEN
                                    429 	.globl _X_PICTL
                                    430 	.globl _X_P2IFG
                                    431 	.globl _X_P1IFG
                                    432 	.globl _X_P0IFG
                                    433 	.globl __NA_TCON
                                    434 	.globl __NA_PCON
                                    435 	.globl _X_U0CSR
                                    436 	.globl __NA_DPH1
                                    437 	.globl __NA_DPL1
                                    438 	.globl __NA_DPH0
                                    439 	.globl __NA_DPL0
                                    440 	.globl __NA_SP
                                    441 	.globl __NA_P0
                                    442 	.globl _I2SCLKF2
                                    443 	.globl _I2SCLKF1
                                    444 	.globl _I2SCLKF0
                                    445 	.globl _I2SSTAT
                                    446 	.globl _I2SWCNT
                                    447 	.globl _I2SDATH
                                    448 	.globl _I2SDATL
                                    449 	.globl _I2SCFG1
                                    450 	.globl _I2SCFG0
                                    451 	.globl _VCO_VC_DAC
                                    452 	.globl _PKTSTATUS
                                    453 	.globl _MARCSTATE
                                    454 	.globl _RSSI
                                    455 	.globl _LQI
                                    456 	.globl _FREQEST
                                    457 	.globl _VERSION
                                    458 	.globl _PARTNUM
                                    459 	.globl __XREGDF35
                                    460 	.globl __XREGDF34
                                    461 	.globl __XREGDF33
                                    462 	.globl __XREGDF32
                                    463 	.globl _IOCFG0
                                    464 	.globl _IOCFG1
                                    465 	.globl _IOCFG2
                                    466 	.globl _PA_TABLE0
                                    467 	.globl _PA_TABLE1
                                    468 	.globl _PA_TABLE2
                                    469 	.globl _PA_TABLE3
                                    470 	.globl _PA_TABLE4
                                    471 	.globl _PA_TABLE5
                                    472 	.globl _PA_TABLE6
                                    473 	.globl _PA_TABLE7
                                    474 	.globl __XREGDF26
                                    475 	.globl _TEST0
                                    476 	.globl _TEST1
                                    477 	.globl _TEST2
                                    478 	.globl __XREGDF22
                                    479 	.globl __XREGDF21
                                    480 	.globl __XREGDF20
                                    481 	.globl _FSCAL0
                                    482 	.globl _FSCAL1
                                    483 	.globl _FSCAL2
                                    484 	.globl _FSCAL3
                                    485 	.globl _FREND0
                                    486 	.globl _FREND1
                                    487 	.globl _AGCCTRL0
                                    488 	.globl _AGCCTRL1
                                    489 	.globl _AGCCTRL2
                                    490 	.globl _BSCFG
                                    491 	.globl _FOCCFG
                                    492 	.globl _MCSM0
                                    493 	.globl _MCSM1
                                    494 	.globl _MCSM2
                                    495 	.globl _DEVIATN
                                    496 	.globl _MDMCFG0
                                    497 	.globl _MDMCFG1
                                    498 	.globl _MDMCFG2
                                    499 	.globl _MDMCFG3
                                    500 	.globl _MDMCFG4
                                    501 	.globl _FREQ0
                                    502 	.globl _FREQ1
                                    503 	.globl _FREQ2
                                    504 	.globl _FSCTRL0
                                    505 	.globl _FSCTRL1
                                    506 	.globl _CHANNR
                                    507 	.globl _ADDR
                                    508 	.globl _PKTCTRL0
                                    509 	.globl _PKTCTRL1
                                    510 	.globl _PKTLEN
                                    511 	.globl _SYNC0
                                    512 	.globl _SYNC1
                                    513 	.globl _MDMCTRL0H
                                    514 	.globl _PHY_set_channel
                                    515 	.globl _MAC_initChannels
                                    516 	.globl _begin_hopping
                                    517 	.globl _stop_hopping
                                    518 	.globl _MAC_tx
                                    519 	.globl _MAC_sync
                                    520 	.globl _MAC_set_chanidx
                                    521 	.globl _MAC_rx_handle
                                    522 	.globl _MAC_getNextChannel
                                    523 	.globl _t2IntHandler
                                    524 	.globl _t3IntHandler
                                    525 	.globl _appHandleEP5
                                    526 	.globl _appInitRf
                                    527 ;--------------------------------------------------------
                                    528 ; special function registers
                                    529 ;--------------------------------------------------------
                                    530 	.area RSEG    (ABS,DATA)
      000000                        531 	.org 0x0000
                           000080   532 _P0	=	0x0080
                           000081   533 _SP	=	0x0081
                           000082   534 _DPL0	=	0x0082
                           000083   535 _DPH0	=	0x0083
                           000084   536 _DPL1	=	0x0084
                           000085   537 _DPH1	=	0x0085
                           000086   538 _U0CSR	=	0x0086
                           000087   539 _PCON	=	0x0087
                           000088   540 _TCON	=	0x0088
                           000089   541 _P0IFG	=	0x0089
                           00008A   542 _P1IFG	=	0x008a
                           00008B   543 _P2IFG	=	0x008b
                           00008C   544 _PICTL	=	0x008c
                           00008D   545 _P1IEN	=	0x008d
                           00008E   546 __SFR8E	=	0x008e
                           00008F   547 _P0INP	=	0x008f
                           000090   548 _P1	=	0x0090
                           000091   549 _RFIM	=	0x0091
                           000092   550 _DPS	=	0x0092
                           000093   551 _MPAGE	=	0x0093
                           000093   552 __XPAGE	=	0x0093
                           000094   553 __SFR94	=	0x0094
                           000095   554 __SFR95	=	0x0095
                           000096   555 __SFR96	=	0x0096
                           000097   556 __SFR97	=	0x0097
                           000098   557 _S0CON	=	0x0098
                           000099   558 __SFR99	=	0x0099
                           00009A   559 _IEN2	=	0x009a
                           00009B   560 _S1CON	=	0x009b
                           00009C   561 _T2CT	=	0x009c
                           00009D   562 _T2PR	=	0x009d
                           00009E   563 _T2CTL	=	0x009e
                           00009F   564 __SFR9F	=	0x009f
                           0000A0   565 _P2	=	0x00a0
                           0000A1   566 _WORIRQ	=	0x00a1
                           0000A2   567 _WORCTRL	=	0x00a2
                           0000A3   568 _WOREVT0	=	0x00a3
                           0000A4   569 _WOREVT1	=	0x00a4
                           0000A5   570 _WORTIME0	=	0x00a5
                           0000A6   571 _WORTIME1	=	0x00a6
                           0000A7   572 __SFRA7	=	0x00a7
                           0000A8   573 _IEN0	=	0x00a8
                           0000A9   574 _IP0	=	0x00a9
                           0000AA   575 __SFRAA	=	0x00aa
                           0000AB   576 _FWT	=	0x00ab
                           0000AC   577 _FADDRL	=	0x00ac
                           0000AD   578 _FADDRH	=	0x00ad
                           0000AE   579 _FCTL	=	0x00ae
                           0000AF   580 _FWDATA	=	0x00af
                           0000B0   581 __SFRB0	=	0x00b0
                           0000B1   582 _ENCDI	=	0x00b1
                           0000B2   583 _ENCDO	=	0x00b2
                           0000B3   584 _ENCCS	=	0x00b3
                           0000B4   585 _ADCCON1	=	0x00b4
                           0000B5   586 _ADCCON2	=	0x00b5
                           0000B6   587 _ADCCON3	=	0x00b6
                           0000B7   588 __SFRB7	=	0x00b7
                           0000B8   589 _IEN1	=	0x00b8
                           0000B9   590 _IP1	=	0x00b9
                           0000BA   591 _ADCL	=	0x00ba
                           0000BB   592 _ADCH	=	0x00bb
                           0000BC   593 _RNDL	=	0x00bc
                           0000BD   594 _RNDH	=	0x00bd
                           0000BE   595 _SLEEP	=	0x00be
                           0000BF   596 __SFRBF	=	0x00bf
                           0000C0   597 _IRCON	=	0x00c0
                           0000C1   598 _U0DBUF	=	0x00c1
                           0000C2   599 _U0BAUD	=	0x00c2
                           0000C3   600 __SFRC3	=	0x00c3
                           0000C4   601 _U0UCR	=	0x00c4
                           0000C5   602 _U0GCR	=	0x00c5
                           0000C6   603 _CLKCON	=	0x00c6
                           0000C7   604 _MEMCTR	=	0x00c7
                           0000C8   605 __SFRC8	=	0x00c8
                           0000C9   606 _WDCTL	=	0x00c9
                           0000CA   607 _T3CNT	=	0x00ca
                           0000CB   608 _T3CTL	=	0x00cb
                           0000CC   609 _T3CCTL0	=	0x00cc
                           0000CD   610 _T3CC0	=	0x00cd
                           0000CE   611 _T3CCTL1	=	0x00ce
                           0000CF   612 _T3CC1	=	0x00cf
                           0000D0   613 _PSW	=	0x00d0
                           0000D1   614 _DMAIRQ	=	0x00d1
                           0000D2   615 _DMA1CFGL	=	0x00d2
                           0000D3   616 _DMA1CFGH	=	0x00d3
                           0000D4   617 _DMA0CFGL	=	0x00d4
                           0000D5   618 _DMA0CFGH	=	0x00d5
                           0000D6   619 _DMAARM	=	0x00d6
                           0000D7   620 _DMAREQ	=	0x00d7
                           0000D8   621 _TIMIF	=	0x00d8
                           0000D9   622 _RFD	=	0x00d9
                           0000DA   623 _T1CC0L	=	0x00da
                           0000DB   624 _T1CC0H	=	0x00db
                           0000DC   625 _T1CC1L	=	0x00dc
                           0000DD   626 _T1CC1H	=	0x00dd
                           0000DE   627 _T1CC2L	=	0x00de
                           0000DF   628 _T1CC2H	=	0x00df
                           0000E0   629 _ACC	=	0x00e0
                           0000E1   630 _RFST	=	0x00e1
                           0000E2   631 _T1CNTL	=	0x00e2
                           0000E3   632 _T1CNTH	=	0x00e3
                           0000E4   633 _T1CTL	=	0x00e4
                           0000E5   634 _T1CCTL0	=	0x00e5
                           0000E6   635 _T1CCTL1	=	0x00e6
                           0000E7   636 _T1CCTL2	=	0x00e7
                           0000E8   637 _IRCON2	=	0x00e8
                           0000E9   638 _RFIF	=	0x00e9
                           0000EA   639 _T4CNT	=	0x00ea
                           0000EB   640 _T4CTL	=	0x00eb
                           0000EC   641 _T4CCTL0	=	0x00ec
                           0000ED   642 _T4CC0	=	0x00ed
                           0000EE   643 _T4CCTL1	=	0x00ee
                           0000EF   644 _T4CC1	=	0x00ef
                           0000F0   645 _B	=	0x00f0
                           0000F1   646 _PERCFG	=	0x00f1
                           0000F2   647 _ADCCFG	=	0x00f2
                           0000F3   648 _P0SEL	=	0x00f3
                           0000F4   649 _P1SEL	=	0x00f4
                           0000F5   650 _P2SEL	=	0x00f5
                           0000F6   651 _P1INP	=	0x00f6
                           0000F7   652 _P2INP	=	0x00f7
                           0000F8   653 _U1CSR	=	0x00f8
                           0000F9   654 _U1DBUF	=	0x00f9
                           0000FA   655 _U1BAUD	=	0x00fa
                           0000FB   656 _U1UCR	=	0x00fb
                           0000FC   657 _U1GCR	=	0x00fc
                           0000FD   658 _P0DIR	=	0x00fd
                           0000FE   659 _P1DIR	=	0x00fe
                           0000FF   660 _P2DIR	=	0x00ff
                                    661 ;--------------------------------------------------------
                                    662 ; special function bits
                                    663 ;--------------------------------------------------------
                                    664 	.area RSEG    (ABS,DATA)
      000000                        665 	.org 0x0000
                           000080   666 _P0_0	=	0x0080
                           000081   667 _P0_1	=	0x0081
                           000082   668 _P0_2	=	0x0082
                           000083   669 _P0_3	=	0x0083
                           000084   670 _P0_4	=	0x0084
                           000085   671 _P0_5	=	0x0085
                           000086   672 _P0_6	=	0x0086
                           000087   673 _P0_7	=	0x0087
                           000088   674 _IT0	=	0x0088
                           000089   675 _RFTXRXIF	=	0x0089
                           00008A   676 _IT1	=	0x008a
                           00008B   677 _URX0IF	=	0x008b
                           00008D   678 _ADCIF	=	0x008d
                           00008F   679 _URX1IF	=	0x008f
                           000090   680 _P1_0	=	0x0090
                           000091   681 _P1_1	=	0x0091
                           000092   682 _P1_2	=	0x0092
                           000093   683 _P1_3	=	0x0093
                           000094   684 _P1_4	=	0x0094
                           000095   685 _P1_5	=	0x0095
                           000096   686 _P1_6	=	0x0096
                           000097   687 _P1_7	=	0x0097
                           000098   688 _ENCIF_0	=	0x0098
                           000099   689 _ENCIF_1	=	0x0099
                           0000A0   690 _P2_0	=	0x00a0
                           0000A1   691 _P2_1	=	0x00a1
                           0000A2   692 _P2_2	=	0x00a2
                           0000A3   693 _P2_3	=	0x00a3
                           0000A4   694 _P2_4	=	0x00a4
                           0000A5   695 _P2_5	=	0x00a5
                           0000A6   696 _P2_6	=	0x00a6
                           0000A7   697 _P2_7	=	0x00a7
                           0000A8   698 _RFTXRXIE	=	0x00a8
                           0000A9   699 _ADCIE	=	0x00a9
                           0000AA   700 _URX0IE	=	0x00aa
                           0000AB   701 _URX1IE	=	0x00ab
                           0000AC   702 _ENCIE	=	0x00ac
                           0000AD   703 _STIE	=	0x00ad
                           0000AF   704 _EA	=	0x00af
                           0000B8   705 _DMAIE	=	0x00b8
                           0000B9   706 _T1IE	=	0x00b9
                           0000BA   707 _T2IE	=	0x00ba
                           0000BB   708 _T3IE	=	0x00bb
                           0000BC   709 _T4IE	=	0x00bc
                           0000BD   710 _P0IE	=	0x00bd
                           0000C0   711 _DMAIF	=	0x00c0
                           0000C1   712 _T1IF	=	0x00c1
                           0000C2   713 _T2IF	=	0x00c2
                           0000C3   714 _T3IF	=	0x00c3
                           0000C4   715 _T4IF	=	0x00c4
                           0000C5   716 _P0IF	=	0x00c5
                           0000C7   717 _STIF	=	0x00c7
                           0000D0   718 _P	=	0x00d0
                           0000D1   719 _F1	=	0x00d1
                           0000D2   720 _OV	=	0x00d2
                           0000D3   721 _RS0	=	0x00d3
                           0000D4   722 _RS1	=	0x00d4
                           0000D5   723 _F0	=	0x00d5
                           0000D6   724 _AC	=	0x00d6
                           0000D7   725 _CY	=	0x00d7
                           0000D8   726 _T3OVFIF	=	0x00d8
                           0000D9   727 _T3CH0IF	=	0x00d9
                           0000DA   728 _T3CH1IF	=	0x00da
                           0000DB   729 _T4OVFIF	=	0x00db
                           0000DC   730 _T4CH0IF	=	0x00dc
                           0000DD   731 _T4CH1IF	=	0x00dd
                           0000DE   732 _OVFIM	=	0x00de
                           0000E0   733 _ACC_0	=	0x00e0
                           0000E1   734 _ACC_1	=	0x00e1
                           0000E2   735 _ACC_2	=	0x00e2
                           0000E3   736 _ACC_3	=	0x00e3
                           0000E4   737 _ACC_4	=	0x00e4
                           0000E5   738 _ACC_5	=	0x00e5
                           0000E6   739 _ACC_6	=	0x00e6
                           0000E7   740 _ACC_7	=	0x00e7
                           0000E8   741 _P2IF	=	0x00e8
                           0000E9   742 _UTX0IF	=	0x00e9
                           0000EA   743 _UTX1IF	=	0x00ea
                           0000EB   744 _P1IF	=	0x00eb
                           0000EC   745 _WDTIF	=	0x00ec
                           0000F0   746 _B_0	=	0x00f0
                           0000F1   747 _B_1	=	0x00f1
                           0000F2   748 _B_2	=	0x00f2
                           0000F3   749 _B_3	=	0x00f3
                           0000F4   750 _B_4	=	0x00f4
                           0000F5   751 _B_5	=	0x00f5
                           0000F6   752 _B_6	=	0x00f6
                           0000F7   753 _B_7	=	0x00f7
                           0000F8   754 _ACTIVE	=	0x00f8
                           0000F9   755 _TX_BYTE	=	0x00f9
                           0000FA   756 _RX_BYTE	=	0x00fa
                           0000FB   757 _ERR	=	0x00fb
                           0000FC   758 _FE	=	0x00fc
                           0000FD   759 _SLAVE	=	0x00fd
                           0000FE   760 _RE	=	0x00fe
                           0000FF   761 _MODE	=	0x00ff
                           0000E8   762 _USBIF	=	0x00e8
                                    763 ;--------------------------------------------------------
                                    764 ; overlayable register banks
                                    765 ;--------------------------------------------------------
                                    766 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        767 	.ds 8
                                    768 ;--------------------------------------------------------
                                    769 ; overlayable bit register bank
                                    770 ;--------------------------------------------------------
                                    771 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        772 bits:
      000021                        773 	.ds 1
                           008000   774 	b0 = bits[0]
                           008100   775 	b1 = bits[1]
                           008200   776 	b2 = bits[2]
                           008300   777 	b3 = bits[3]
                           008400   778 	b4 = bits[4]
                           008500   779 	b5 = bits[5]
                           008600   780 	b6 = bits[6]
                           008700   781 	b7 = bits[7]
                                    782 ;--------------------------------------------------------
                                    783 ; internal ram data
                                    784 ;--------------------------------------------------------
                                    785 	.area DSEG    (DATA)
      000008                        786 _appHandleEP5_sloc0_1_0:
      000008                        787 	.ds 2
      00000A                        788 _appHandleEP5_sloc1_1_0:
      00000A                        789 	.ds 3
                                    790 ;--------------------------------------------------------
                                    791 ; overlayable items in internal ram 
                                    792 ;--------------------------------------------------------
                                    793 	.area	OSEG    (OVR,DATA)
                                    794 ;--------------------------------------------------------
                                    795 ; Stack segment in internal ram 
                                    796 ;--------------------------------------------------------
                                    797 	.area	SSEG
      000032                        798 __start__stack:
      000032                        799 	.ds	1
                                    800 
                                    801 ;--------------------------------------------------------
                                    802 ; indirectly addressable internal ram data
                                    803 ;--------------------------------------------------------
                                    804 	.area ISEG    (DATA)
                                    805 ;--------------------------------------------------------
                                    806 ; absolute internal ram data
                                    807 ;--------------------------------------------------------
                                    808 	.area IABS    (ABS,DATA)
                                    809 	.area IABS    (ABS,DATA)
                                    810 ;--------------------------------------------------------
                                    811 ; bit data
                                    812 ;--------------------------------------------------------
                                    813 	.area BSEG    (BIT)
      000000                        814 _appMainLoop_sloc0_1_0:
      000000                        815 	.ds 1
                                    816 ;--------------------------------------------------------
                                    817 ; paged external ram data
                                    818 ;--------------------------------------------------------
                                    819 	.area PSEG    (PAG,XDATA)
                                    820 ;--------------------------------------------------------
                                    821 ; external ram data
                                    822 ;--------------------------------------------------------
                                    823 	.area XSEG    (XDATA)
                           00DF02   824 _MDMCTRL0H	=	0xdf02
                           00DF00   825 _SYNC1	=	0xdf00
                           00DF01   826 _SYNC0	=	0xdf01
                           00DF02   827 _PKTLEN	=	0xdf02
                           00DF03   828 _PKTCTRL1	=	0xdf03
                           00DF04   829 _PKTCTRL0	=	0xdf04
                           00DF05   830 _ADDR	=	0xdf05
                           00DF06   831 _CHANNR	=	0xdf06
                           00DF07   832 _FSCTRL1	=	0xdf07
                           00DF08   833 _FSCTRL0	=	0xdf08
                           00DF09   834 _FREQ2	=	0xdf09
                           00DF0A   835 _FREQ1	=	0xdf0a
                           00DF0B   836 _FREQ0	=	0xdf0b
                           00DF0C   837 _MDMCFG4	=	0xdf0c
                           00DF0D   838 _MDMCFG3	=	0xdf0d
                           00DF0E   839 _MDMCFG2	=	0xdf0e
                           00DF0F   840 _MDMCFG1	=	0xdf0f
                           00DF10   841 _MDMCFG0	=	0xdf10
                           00DF11   842 _DEVIATN	=	0xdf11
                           00DF12   843 _MCSM2	=	0xdf12
                           00DF13   844 _MCSM1	=	0xdf13
                           00DF14   845 _MCSM0	=	0xdf14
                           00DF15   846 _FOCCFG	=	0xdf15
                           00DF16   847 _BSCFG	=	0xdf16
                           00DF17   848 _AGCCTRL2	=	0xdf17
                           00DF18   849 _AGCCTRL1	=	0xdf18
                           00DF19   850 _AGCCTRL0	=	0xdf19
                           00DF1A   851 _FREND1	=	0xdf1a
                           00DF1B   852 _FREND0	=	0xdf1b
                           00DF1C   853 _FSCAL3	=	0xdf1c
                           00DF1D   854 _FSCAL2	=	0xdf1d
                           00DF1E   855 _FSCAL1	=	0xdf1e
                           00DF1F   856 _FSCAL0	=	0xdf1f
                           00DF20   857 __XREGDF20	=	0xdf20
                           00DF21   858 __XREGDF21	=	0xdf21
                           00DF22   859 __XREGDF22	=	0xdf22
                           00DF23   860 _TEST2	=	0xdf23
                           00DF24   861 _TEST1	=	0xdf24
                           00DF25   862 _TEST0	=	0xdf25
                           00DF26   863 __XREGDF26	=	0xdf26
                           00DF27   864 _PA_TABLE7	=	0xdf27
                           00DF28   865 _PA_TABLE6	=	0xdf28
                           00DF29   866 _PA_TABLE5	=	0xdf29
                           00DF2A   867 _PA_TABLE4	=	0xdf2a
                           00DF2B   868 _PA_TABLE3	=	0xdf2b
                           00DF2C   869 _PA_TABLE2	=	0xdf2c
                           00DF2D   870 _PA_TABLE1	=	0xdf2d
                           00DF2E   871 _PA_TABLE0	=	0xdf2e
                           00DF2F   872 _IOCFG2	=	0xdf2f
                           00DF30   873 _IOCFG1	=	0xdf30
                           00DF31   874 _IOCFG0	=	0xdf31
                           00DF32   875 __XREGDF32	=	0xdf32
                           00DF33   876 __XREGDF33	=	0xdf33
                           00DF34   877 __XREGDF34	=	0xdf34
                           00DF35   878 __XREGDF35	=	0xdf35
                           00DF36   879 _PARTNUM	=	0xdf36
                           00DF37   880 _VERSION	=	0xdf37
                           00DF38   881 _FREQEST	=	0xdf38
                           00DF39   882 _LQI	=	0xdf39
                           00DF3A   883 _RSSI	=	0xdf3a
                           00DF3B   884 _MARCSTATE	=	0xdf3b
                           00DF3C   885 _PKTSTATUS	=	0xdf3c
                           00DF3D   886 _VCO_VC_DAC	=	0xdf3d
                           00DF40   887 _I2SCFG0	=	0xdf40
                           00DF41   888 _I2SCFG1	=	0xdf41
                           00DF42   889 _I2SDATL	=	0xdf42
                           00DF43   890 _I2SDATH	=	0xdf43
                           00DF44   891 _I2SWCNT	=	0xdf44
                           00DF45   892 _I2SSTAT	=	0xdf45
                           00DF46   893 _I2SCLKF0	=	0xdf46
                           00DF47   894 _I2SCLKF1	=	0xdf47
                           00DF48   895 _I2SCLKF2	=	0xdf48
                           00DF80   896 __NA_P0	=	0xdf80
                           00DF81   897 __NA_SP	=	0xdf81
                           00DF82   898 __NA_DPL0	=	0xdf82
                           00DF83   899 __NA_DPH0	=	0xdf83
                           00DF84   900 __NA_DPL1	=	0xdf84
                           00DF85   901 __NA_DPH1	=	0xdf85
                           00DF86   902 _X_U0CSR	=	0xdf86
                           00DF87   903 __NA_PCON	=	0xdf87
                           00DF88   904 __NA_TCON	=	0xdf88
                           00DF89   905 _X_P0IFG	=	0xdf89
                           00DF8A   906 _X_P1IFG	=	0xdf8a
                           00DF8B   907 _X_P2IFG	=	0xdf8b
                           00DF8C   908 _X_PICTL	=	0xdf8c
                           00DF8D   909 _X_P1IEN	=	0xdf8d
                           00DF8E   910 __X_SFR8E	=	0xdf8e
                           00DF8F   911 _X_P0INP	=	0xdf8f
                           00DF90   912 __NA_P1	=	0xdf90
                           00DF91   913 _X_RFIM	=	0xdf91
                           00DF92   914 __NA_DPS	=	0xdf92
                           00DF93   915 _X_MPAGE	=	0xdf93
                           00DF94   916 __X_SFR94	=	0xdf94
                           00DF95   917 __X_SFR95	=	0xdf95
                           00DF96   918 __X_SFR96	=	0xdf96
                           00DF97   919 __X_SFR97	=	0xdf97
                           00DF98   920 __NA_S0CON	=	0xdf98
                           00DF99   921 __X_SFR99	=	0xdf99
                           00DF9A   922 __NA_IEN2	=	0xdf9a
                           00DF9B   923 __NA_S1CON	=	0xdf9b
                           00DF9C   924 _X_T2CT	=	0xdf9c
                           00DF9D   925 _X_T2PR	=	0xdf9d
                           00DF9E   926 _X_T2CTL	=	0xdf9e
                           00DF9F   927 __X_SFR9F	=	0xdf9f
                           00DFA0   928 __NA_P2	=	0xdfa0
                           00DFA1   929 _X_WORIRQ	=	0xdfa1
                           00DFA2   930 _X_WORCTRL	=	0xdfa2
                           00DFA3   931 _X_WOREVT0	=	0xdfa3
                           00DFA4   932 _X_WOREVT1	=	0xdfa4
                           00DFA5   933 _X_WORTIME0	=	0xdfa5
                           00DFA6   934 _X_WORTIME1	=	0xdfa6
                           00DFA7   935 __X_SFRA7	=	0xdfa7
                           00DFA8   936 __NA_IEN0	=	0xdfa8
                           00DFA9   937 __NA_IP0	=	0xdfa9
                           00DFAA   938 __X_SFRAA	=	0xdfaa
                           00DFAB   939 _X_FWT	=	0xdfab
                           00DFAC   940 _X_FADDRL	=	0xdfac
                           00DFAD   941 _X_FADDRH	=	0xdfad
                           00DFAE   942 _X_FCTL	=	0xdfae
                           00DFAF   943 _X_FWDATA	=	0xdfaf
                           00DFB0   944 __X_SFRB0	=	0xdfb0
                           00DFB1   945 _X_ENCDI	=	0xdfb1
                           00DFB2   946 _X_ENCDO	=	0xdfb2
                           00DFB3   947 _X_ENCCS	=	0xdfb3
                           00DFB4   948 _X_ADCCON1	=	0xdfb4
                           00DFB5   949 _X_ADCCON2	=	0xdfb5
                           00DFB6   950 _X_ADCCON3	=	0xdfb6
                           00DFB7   951 __X_SFRB7	=	0xdfb7
                           00DFB8   952 __NA_IEN1	=	0xdfb8
                           00DFB9   953 __NA_IP1	=	0xdfb9
                           00DFBA   954 _X_ADCL	=	0xdfba
                           00DFBB   955 _X_ADCH	=	0xdfbb
                           00DFBC   956 _X_RNDL	=	0xdfbc
                           00DFBD   957 _X_RNDH	=	0xdfbd
                           00DFBE   958 _X_SLEEP	=	0xdfbe
                           00DFBF   959 __X_SFRBF	=	0xdfbf
                           00DFC0   960 __NA_IRCON	=	0xdfc0
                           00DFC1   961 _X_U0DBUF	=	0xdfc1
                           00DFC2   962 _X_U0BAUD	=	0xdfc2
                           00DFC3   963 __X_SFRC3	=	0xdfc3
                           00DFC4   964 _X_U0UCR	=	0xdfc4
                           00DFC5   965 _X_U0GCR	=	0xdfc5
                           00DFC6   966 _X_CLKCON	=	0xdfc6
                           00DFC7   967 _X_MEMCTR	=	0xdfc7
                           00DFC8   968 __X_SFRC8	=	0xdfc8
                           00DFC9   969 _X_WDCTL	=	0xdfc9
                           00DFCA   970 _X_T3CNT	=	0xdfca
                           00DFCB   971 _X_T3CTL	=	0xdfcb
                           00DFCC   972 _X_T3CCTL0	=	0xdfcc
                           00DFCD   973 _X_T3CC0	=	0xdfcd
                           00DFCE   974 _X_T3CCTL1	=	0xdfce
                           00DFCF   975 _X_T3CC1	=	0xdfcf
                           00DFD0   976 __NA_PSW	=	0xdfd0
                           00DFD1   977 _X_DMAIRQ	=	0xdfd1
                           00DFD2   978 _X_DMA1CFGL	=	0xdfd2
                           00DFD3   979 _X_DMA1CFGH	=	0xdfd3
                           00DFD4   980 _X_DMA0CFGL	=	0xdfd4
                           00DFD5   981 _X_DMA0CFGH	=	0xdfd5
                           00DFD6   982 _X_DMAARM	=	0xdfd6
                           00DFD7   983 _X_DMAREQ	=	0xdfd7
                           00DFD8   984 _X_TIMIF	=	0xdfd8
                           00DFD9   985 _X_RFD	=	0xdfd9
                           00DFDA   986 _X_T1CC0L	=	0xdfda
                           00DFDB   987 _X_T1CC0H	=	0xdfdb
                           00DFDC   988 _X_T1CC1L	=	0xdfdc
                           00DFDD   989 _X_T1CC1H	=	0xdfdd
                           00DFDE   990 _X_T1CC2L	=	0xdfde
                           00DFDF   991 _X_T1CC2H	=	0xdfdf
                           00DFE0   992 __NA_ACC	=	0xdfe0
                           00DFE1   993 _X_RFST	=	0xdfe1
                           00DFE2   994 _X_T1CNTL	=	0xdfe2
                           00DFE3   995 _X_T1CNTH	=	0xdfe3
                           00DFE4   996 _X_T1CTL	=	0xdfe4
                           00DFE5   997 _X_T1CCTL0	=	0xdfe5
                           00DFE6   998 _X_T1CCTL1	=	0xdfe6
                           00DFE7   999 _X_T1CCTL2	=	0xdfe7
                           00DFE8  1000 __NA_IRCON2	=	0xdfe8
                           00DFE9  1001 _X_RFIF	=	0xdfe9
                           00DFEA  1002 _X_T4CNT	=	0xdfea
                           00DFEB  1003 _X_T4CTL	=	0xdfeb
                           00DFEC  1004 _X_T4CCTL0	=	0xdfec
                           00DFED  1005 _X_T4CC0	=	0xdfed
                           00DFEE  1006 _X_T4CCTL1	=	0xdfee
                           00DFEF  1007 _X_T4CC1	=	0xdfef
                           00DFF0  1008 __NA_B	=	0xdff0
                           00DFF1  1009 _X_PERCFG	=	0xdff1
                           00DFF2  1010 _X_ADCCFG	=	0xdff2
                           00DFF3  1011 _X_P0SEL	=	0xdff3
                           00DFF4  1012 _X_P1SEL	=	0xdff4
                           00DFF5  1013 _X_P2SEL	=	0xdff5
                           00DFF6  1014 _X_P1INP	=	0xdff6
                           00DFF7  1015 _X_P2INP	=	0xdff7
                           00DFF8  1016 _X_U1CSR	=	0xdff8
                           00DFF9  1017 _X_U1DBUF	=	0xdff9
                           00DFFA  1018 _X_U1BAUD	=	0xdffa
                           00DFFB  1019 _X_U1UCR	=	0xdffb
                           00DFFC  1020 _X_U1GCR	=	0xdffc
                           00DFFD  1021 _X_P0DIR	=	0xdffd
                           00DFFE  1022 _X_P1DIR	=	0xdffe
                           00DFFF  1023 _X_P2DIR	=	0xdfff
                           00DE00  1024 _USBADDR	=	0xde00
                           00DE01  1025 _USBPOW	=	0xde01
                           00DE02  1026 _USBIIF	=	0xde02
                           00DE04  1027 _USBOIF	=	0xde04
                           00DE06  1028 _USBCIF	=	0xde06
                           00DE07  1029 _USBIIE	=	0xde07
                           00DE09  1030 _USBOIE	=	0xde09
                           00DE0B  1031 _USBCIE	=	0xde0b
                           00DE0C  1032 _USBFRML	=	0xde0c
                           00DE0D  1033 _USBFRMH	=	0xde0d
                           00DE0E  1034 _USBINDEX	=	0xde0e
                           00DE10  1035 _USBMAXI	=	0xde10
                           00DE11  1036 _USBCS0	=	0xde11
                           00DE11  1037 _USBCSIL	=	0xde11
                           00DE12  1038 _USBCSIH	=	0xde12
                           00DE13  1039 _USBMAXO	=	0xde13
                           00DE14  1040 _USBCSOL	=	0xde14
                           00DE15  1041 _USBCSOH	=	0xde15
                           00DE16  1042 _USBCNT0	=	0xde16
                           00DE16  1043 _USBCNTL	=	0xde16
                           00DE17  1044 _USBCNTH	=	0xde17
                           00DE20  1045 _USBF0	=	0xde20
                           00DE22  1046 _USBF1	=	0xde22
                           00DE24  1047 _USBF2	=	0xde24
                           00DE26  1048 _USBF3	=	0xde26
                           00DE28  1049 _USBF4	=	0xde28
                           00DE2A  1050 _USBF5	=	0xde2a
      00F000                       1051 _g_Channels::
      00F000                       1052 	.ds 880
      00F370                       1053 _g_NIC_ID::
      00F370                       1054 	.ds 2
      00F372                       1055 _g_txMsgQueue::
      00F372                       1056 	.ds 482
      00F554                       1057 _PHY_set_channel_chan_1_90:
      00F554                       1058 	.ds 2
      00F556                       1059 _begin_hopping_T2_offset_1_96:
      00F556                       1060 	.ds 1
      00F557                       1061 _transmit_long_PARM_2:
      00F557                       1062 	.ds 2
      00F559                       1063 _transmit_long_PARM_3:
      00F559                       1064 	.ds 1
      00F55A                       1065 _transmit_long_buf_1_100:
      00F55A                       1066 	.ds 2
      00F55C                       1067 _MAC_tx_PARM_2:
      00F55C                       1068 	.ds 1
      00F55D                       1069 _MAC_tx_msg_1_111:
      00F55D                       1070 	.ds 2
      00F55F                       1071 _MAC_sync_CellID_1_121:
      00F55F                       1072 	.ds 2
      00F561                       1073 _MAC_set_chanidx_chanidx_1_129:
      00F561                       1074 	.ds 2
      00F563                       1075 _MAC_set_NIC_ID_NIC_ID_1_131:
      00F563                       1076 	.ds 2
      00F565                       1077 _MAC_rx_handle_PARM_2:
      00F565                       1078 	.ds 2
      00F567                       1079 _t2IntHandler_packet_1_138:
      00F567                       1080 	.ds 28
      00F583                       1081 _processbuffer::
      00F583                       1082 	.ds 1
      00F584                       1083 _chan_table::
      00F584                       1084 	.ds 2
      00F586                       1085 _appHandleEP5_len_1_178:
      00F586                       1086 	.ds 2
                                   1087 ;--------------------------------------------------------
                                   1088 ; absolute external ram data
                                   1089 ;--------------------------------------------------------
                                   1090 	.area XABS    (ABS,XDATA)
                                   1091 ;--------------------------------------------------------
                                   1092 ; external initialized ram data
                                   1093 ;--------------------------------------------------------
                                   1094 	.area XISEG   (XDATA)
                                   1095 	.area HOME    (CODE)
                                   1096 	.area GSINIT0 (CODE)
                                   1097 	.area GSINIT1 (CODE)
                                   1098 	.area GSINIT2 (CODE)
                                   1099 	.area GSINIT3 (CODE)
                                   1100 	.area GSINIT4 (CODE)
                                   1101 	.area GSINIT5 (CODE)
                                   1102 	.area GSINIT  (CODE)
                                   1103 	.area GSFINAL (CODE)
                                   1104 	.area CSEG    (CODE)
                                   1105 ;--------------------------------------------------------
                                   1106 ; interrupt vector 
                                   1107 ;--------------------------------------------------------
                                   1108 	.area HOME    (CODE)
      000000                       1109 __interrupt_vect:
      000000 02 00 8B         [24] 1110 	ljmp	__sdcc_gsinit_startup
      000003 02 22 BA         [24] 1111 	ljmp	_rfTxRxIntHandler
      000006                       1112 	.ds	5
      00000B 32               [24] 1113 	reti
      00000C                       1114 	.ds	7
      000013 32               [24] 1115 	reti
      000014                       1116 	.ds	7
      00001B 32               [24] 1117 	reti
      00001C                       1118 	.ds	7
      000023 32               [24] 1119 	reti
      000024                       1120 	.ds	7
      00002B 32               [24] 1121 	reti
      00002C                       1122 	.ds	7
      000033 02 1C 36         [24] 1123 	ljmp	_usbIntHandler
      000036                       1124 	.ds	5
      00003B 32               [24] 1125 	reti
      00003C                       1126 	.ds	7
      000043 32               [24] 1127 	reti
      000044                       1128 	.ds	7
      00004B 02 29 E5         [24] 1129 	ljmp	_t1IntHandler
      00004E                       1130 	.ds	5
      000053 02 06 AD         [24] 1131 	ljmp	_t2IntHandler
      000056                       1132 	.ds	5
      00005B 02 09 87         [24] 1133 	ljmp	_t3IntHandler
      00005E                       1134 	.ds	5
      000063 32               [24] 1135 	reti
      000064                       1136 	.ds	7
      00006B 02 1C 37         [24] 1137 	ljmp	_p0IntHandler
      00006E                       1138 	.ds	5
      000073 32               [24] 1139 	reti
      000074                       1140 	.ds	7
      00007B 32               [24] 1141 	reti
      00007C                       1142 	.ds	7
      000083 02 25 DE         [24] 1143 	ljmp	_rfIntHandler
                                   1144 ;--------------------------------------------------------
                                   1145 ; global & static initialisations
                                   1146 ;--------------------------------------------------------
                                   1147 	.area HOME    (CODE)
                                   1148 	.area GSINIT  (CODE)
                                   1149 	.area GSFINAL (CODE)
                                   1150 	.area GSINIT  (CODE)
                                   1151 	.globl __sdcc_gsinit_startup
                                   1152 	.globl __sdcc_program_startup
                                   1153 	.globl __start__stack
                                   1154 	.globl __mcs51_genXINIT
                                   1155 	.globl __mcs51_genXRAMCLEAR
                                   1156 	.globl __mcs51_genRAMCLEAR
                                   1157 	.area GSFINAL (CODE)
      000101 02 00 86         [24] 1158 	ljmp	__sdcc_program_startup
                                   1159 ;--------------------------------------------------------
                                   1160 ; Home
                                   1161 ;--------------------------------------------------------
                                   1162 	.area HOME    (CODE)
                                   1163 	.area HOME    (CODE)
      000086                       1164 __sdcc_program_startup:
      000086 02 18 D3         [24] 1165 	ljmp	_main
                                   1166 ;	return from main will return to caller
                                   1167 ;--------------------------------------------------------
                                   1168 ; code
                                   1169 ;--------------------------------------------------------
                                   1170 	.area CSEG    (CODE)
                                   1171 ;------------------------------------------------------------
                                   1172 ;Allocation info for local variables in function 'PHY_set_channel'
                                   1173 ;------------------------------------------------------------
                                   1174 ;chan                      Allocated with name '_PHY_set_channel_chan_1_90'
                                   1175 ;------------------------------------------------------------
                                   1176 ;	appFHSSNIC.c:72: void PHY_set_channel(__xdata u16 chan)
                                   1177 ;	-----------------------------------------
                                   1178 ;	 function PHY_set_channel
                                   1179 ;	-----------------------------------------
      000104                       1180 _PHY_set_channel:
                           000007  1181 	ar7 = 0x07
                           000006  1182 	ar6 = 0x06
                           000005  1183 	ar5 = 0x05
                           000004  1184 	ar4 = 0x04
                           000003  1185 	ar3 = 0x03
                           000002  1186 	ar2 = 0x02
                           000001  1187 	ar1 = 0x01
                           000000  1188 	ar0 = 0x00
      000104 AF 83            [24] 1189 	mov	r7,dph
      000106 E5 82            [12] 1190 	mov	a,dpl
      000108 90 F5 54         [24] 1191 	mov	dptr,#_PHY_set_channel_chan_1_90
      00010B F0               [24] 1192 	movx	@dptr,a
      00010C EF               [12] 1193 	mov	a,r7
      00010D A3               [24] 1194 	inc	dptr
      00010E F0               [24] 1195 	movx	@dptr,a
                                   1196 ;	appFHSSNIC.c:75: RFOFF;
      00010F 75 E1 04         [24] 1197 	mov	_RFST,#0x04
      000112                       1198 00101$:
      000112 90 DF 3B         [24] 1199 	mov	dptr,#_MARCSTATE
      000115 E0               [24] 1200 	movx	a,@dptr
      000116 FF               [12] 1201 	mov	r7,a
      000117 BF 01 F8         [24] 1202 	cjne	r7,#0x01,00101$
                                   1203 ;	appFHSSNIC.c:77: CHANNR = chan;
      00011A 90 F5 54         [24] 1204 	mov	dptr,#_PHY_set_channel_chan_1_90
      00011D E0               [24] 1205 	movx	a,@dptr
      00011E FE               [12] 1206 	mov	r6,a
      00011F A3               [24] 1207 	inc	dptr
      000120 E0               [24] 1208 	movx	a,@dptr
      000121 FF               [12] 1209 	mov	r7,a
      000122 90 DF 06         [24] 1210 	mov	dptr,#_CHANNR
      000125 EE               [12] 1211 	mov	a,r6
      000126 F0               [24] 1212 	movx	@dptr,a
                                   1213 ;	appFHSSNIC.c:79: RFRX;
      000127 75 E1 02         [24] 1214 	mov	_RFST,#0x02
      00012A                       1215 00107$:
      00012A 90 DF 3B         [24] 1216 	mov	dptr,#_MARCSTATE
      00012D E0               [24] 1217 	movx	a,@dptr
      00012E FF               [12] 1218 	mov	r7,a
      00012F BF 0D F8         [24] 1219 	cjne	r7,#0x0D,00107$
      000132 22               [24] 1220 	ret
                                   1221 ;------------------------------------------------------------
                                   1222 ;Allocation info for local variables in function 'MAC_initChannels'
                                   1223 ;------------------------------------------------------------
                                   1224 ;loop                      Allocated to registers r6 r7 
                                   1225 ;------------------------------------------------------------
                                   1226 ;	appFHSSNIC.c:86: void MAC_initChannels()
                                   1227 ;	-----------------------------------------
                                   1228 ;	 function MAC_initChannels
                                   1229 ;	-----------------------------------------
      000133                       1230 _MAC_initChannels:
                                   1231 ;	appFHSSNIC.c:90: for (loop=0; loop<macdata.NumChannelHops; loop++)
      000133 7E 00            [12] 1232 	mov	r6,#0x00
      000135 7F 00            [12] 1233 	mov	r7,#0x00
      000137                       1234 00103$:
      000137 90 FD 96         [24] 1235 	mov	dptr,#(_macdata + 0x0007)
      00013A E0               [24] 1236 	movx	a,@dptr
      00013B FC               [12] 1237 	mov	r4,a
      00013C A3               [24] 1238 	inc	dptr
      00013D E0               [24] 1239 	movx	a,@dptr
      00013E FD               [12] 1240 	mov	r5,a
      00013F 8E 02            [24] 1241 	mov	ar2,r6
      000141 8F 03            [24] 1242 	mov	ar3,r7
      000143 C3               [12] 1243 	clr	c
      000144 EA               [12] 1244 	mov	a,r2
      000145 9C               [12] 1245 	subb	a,r4
      000146 EB               [12] 1246 	mov	a,r3
      000147 9D               [12] 1247 	subb	a,r5
      000148 50 3A            [24] 1248 	jnc	00105$
                                   1249 ;	appFHSSNIC.c:92: g_Channels[loop] = loop % macdata.NumChannels;
      00014A EE               [12] 1250 	mov	a,r6
      00014B 24 00            [12] 1251 	add	a,#_g_Channels
      00014D FC               [12] 1252 	mov	r4,a
      00014E EF               [12] 1253 	mov	a,r7
      00014F 34 F0            [12] 1254 	addc	a,#(_g_Channels >> 8)
      000151 FD               [12] 1255 	mov	r5,a
      000152 90 FD 94         [24] 1256 	mov	dptr,#(_macdata + 0x0005)
      000155 E0               [24] 1257 	movx	a,@dptr
      000156 F5 27            [12] 1258 	mov	__moduint_PARM_2,a
      000158 A3               [24] 1259 	inc	dptr
      000159 E0               [24] 1260 	movx	a,@dptr
      00015A F5 28            [12] 1261 	mov	(__moduint_PARM_2 + 1),a
      00015C 8A 82            [24] 1262 	mov	dpl,r2
      00015E 8B 83            [24] 1263 	mov	dph,r3
      000160 C0 07            [24] 1264 	push	ar7
      000162 C0 06            [24] 1265 	push	ar6
      000164 C0 05            [24] 1266 	push	ar5
      000166 C0 04            [24] 1267 	push	ar4
      000168 12 2F 1A         [24] 1268 	lcall	__moduint
      00016B AA 82            [24] 1269 	mov	r2,dpl
      00016D AB 83            [24] 1270 	mov	r3,dph
      00016F D0 04            [24] 1271 	pop	ar4
      000171 D0 05            [24] 1272 	pop	ar5
      000173 D0 06            [24] 1273 	pop	ar6
      000175 D0 07            [24] 1274 	pop	ar7
      000177 8C 82            [24] 1275 	mov	dpl,r4
      000179 8D 83            [24] 1276 	mov	dph,r5
      00017B EA               [12] 1277 	mov	a,r2
      00017C F0               [24] 1278 	movx	@dptr,a
                                   1279 ;	appFHSSNIC.c:90: for (loop=0; loop<macdata.NumChannelHops; loop++)
      00017D 0E               [12] 1280 	inc	r6
      00017E BE 00 B6         [24] 1281 	cjne	r6,#0x00,00103$
      000181 0F               [12] 1282 	inc	r7
      000182 80 B3            [24] 1283 	sjmp	00103$
      000184                       1284 00105$:
      000184 22               [24] 1285 	ret
                                   1286 ;------------------------------------------------------------
                                   1287 ;Allocation info for local variables in function 'begin_hopping'
                                   1288 ;------------------------------------------------------------
                                   1289 ;T2_offset                 Allocated with name '_begin_hopping_T2_offset_1_96'
                                   1290 ;------------------------------------------------------------
                                   1291 ;	appFHSSNIC.c:97: void begin_hopping(__xdata u8 T2_offset)
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function begin_hopping
                                   1294 ;	-----------------------------------------
      000185                       1295 _begin_hopping:
      000185 E5 82            [12] 1296 	mov	a,dpl
      000187 90 F5 56         [24] 1297 	mov	dptr,#_begin_hopping_T2_offset_1_96
      00018A F0               [24] 1298 	movx	@dptr,a
                                   1299 ;	appFHSSNIC.c:100: T2CT -= T2_offset;
      00018B E0               [24] 1300 	movx	a,@dptr
      00018C FF               [12] 1301 	mov	r7,a
      00018D E5 9C            [12] 1302 	mov	a,_T2CT
      00018F C3               [12] 1303 	clr	c
      000190 9F               [12] 1304 	subb	a,r7
      000191 F5 9C            [12] 1305 	mov	_T2CT,a
                                   1306 ;	appFHSSNIC.c:101: T2CT -= MAC_TIMER_STATIC_DIFF;
      000193 E5 9C            [12] 1307 	mov	a,_T2CT
      000195 24 FA            [12] 1308 	add	a,#0xFA
      000197 F5 9C            [12] 1309 	mov	_T2CT,a
                                   1310 ;	appFHSSNIC.c:103: T2CTL |= T2CTL_INT;
      000199 43 9E 10         [24] 1311 	orl	_T2CTL,#0x10
                                   1312 ;	appFHSSNIC.c:104: T2IE = 1;
      00019C D2 BA            [12] 1313 	setb	_T2IE
      00019E 22               [24] 1314 	ret
                                   1315 ;------------------------------------------------------------
                                   1316 ;Allocation info for local variables in function 'stop_hopping'
                                   1317 ;------------------------------------------------------------
                                   1318 ;	appFHSSNIC.c:108: void stop_hopping(void)
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function stop_hopping
                                   1321 ;	-----------------------------------------
      00019F                       1322 _stop_hopping:
                                   1323 ;	appFHSSNIC.c:111: T2CTL &= ~T2CTL_INT;
      00019F AF 9E            [24] 1324 	mov	r7,_T2CTL
      0001A1 74 EF            [12] 1325 	mov	a,#0xEF
      0001A3 5F               [12] 1326 	anl	a,r7
      0001A4 F5 9E            [12] 1327 	mov	_T2CTL,a
      0001A6 22               [24] 1328 	ret
                                   1329 ;------------------------------------------------------------
                                   1330 ;Allocation info for local variables in function 'transmit_long'
                                   1331 ;------------------------------------------------------------
                                   1332 ;len                       Allocated with name '_transmit_long_PARM_2'
                                   1333 ;blocks                    Allocated with name '_transmit_long_PARM_3'
                                   1334 ;buf                       Allocated with name '_transmit_long_buf_1_100'
                                   1335 ;countdown                 Allocated with name '_transmit_long_countdown_1_101'
                                   1336 ;err                       Allocated with name '_transmit_long_err_1_101'
                                   1337 ;------------------------------------------------------------
                                   1338 ;	appFHSSNIC.c:116: __xdata u8 transmit_long(__xdata u8* __xdata buf, __xdata u16 len, __xdata u8 blocks)
                                   1339 ;	-----------------------------------------
                                   1340 ;	 function transmit_long
                                   1341 ;	-----------------------------------------
      0001A7                       1342 _transmit_long:
      0001A7 AF 83            [24] 1343 	mov	r7,dph
      0001A9 E5 82            [12] 1344 	mov	a,dpl
      0001AB 90 F5 5A         [24] 1345 	mov	dptr,#_transmit_long_buf_1_100
      0001AE F0               [24] 1346 	movx	@dptr,a
      0001AF EF               [12] 1347 	mov	a,r7
      0001B0 A3               [24] 1348 	inc	dptr
      0001B1 F0               [24] 1349 	movx	@dptr,a
                                   1350 ;	appFHSSNIC.c:124: if (macdata.mac_state != MAC_STATE_NONHOPPING)
      0001B2 90 FD 8F         [24] 1351 	mov	dptr,#_macdata
      0001B5 E0               [24] 1352 	movx	a,@dptr
      0001B6 60 13            [24] 1353 	jz	00102$
                                   1354 ;	appFHSSNIC.c:126: debug("Cannot call transmit_long while FHSS Hopping or already processing transmit_long!");
      0001B8 90 30 DC         [24] 1355 	mov	dptr,#___str_0
      0001BB 12 1C B2         [24] 1356 	lcall	_debug
                                   1357 ;	appFHSSNIC.c:127: debughex(macdata.mac_state);
      0001BE 90 FD 8F         [24] 1358 	mov	dptr,#_macdata
      0001C1 E0               [24] 1359 	movx	a,@dptr
      0001C2 F5 82            [12] 1360 	mov	dpl,a
      0001C4 12 1C F4         [24] 1361 	lcall	_debughex
                                   1362 ;	appFHSSNIC.c:128: return RC_RF_MODE_INCOMPAT;
      0001C7 75 82 EF         [24] 1363 	mov	dpl,#0xEF
      0001CA 22               [24] 1364 	ret
      0001CB                       1365 00102$:
                                   1366 ;	appFHSSNIC.c:131: macdata.mac_state = MAC_STATE_LONG_XMIT;
      0001CB 90 FD 8F         [24] 1367 	mov	dptr,#_macdata
      0001CE 74 06            [12] 1368 	mov	a,#0x06
      0001D0 F0               [24] 1369 	movx	@dptr,a
                                   1370 ;	appFHSSNIC.c:132: while (MARCSTATE == MARC_STATE_TX)
      0001D1                       1371 00103$:
      0001D1 90 DF 3B         [24] 1372 	mov	dptr,#_MARCSTATE
      0001D4 E0               [24] 1373 	movx	a,@dptr
      0001D5 FF               [12] 1374 	mov	r7,a
      0001D6 BF 13 02         [24] 1375 	cjne	r7,#0x13,00164$
      0001D9 80 F6            [24] 1376 	sjmp	00103$
      0001DB                       1377 00164$:
                                   1378 ;	appFHSSNIC.c:137: LED = 0;
      0001DB C2 A4            [12] 1379 	clr	_P2_4
                                   1380 ;	appFHSSNIC.c:140: rfTxTotalTXLen = len;
      0001DD 90 F5 57         [24] 1381 	mov	dptr,#_transmit_long_PARM_2
      0001E0 E0               [24] 1382 	movx	a,@dptr
      0001E1 FE               [12] 1383 	mov	r6,a
      0001E2 A3               [24] 1384 	inc	dptr
      0001E3 E0               [24] 1385 	movx	a,@dptr
      0001E4 FF               [12] 1386 	mov	r7,a
      0001E5 90 FD F6         [24] 1387 	mov	dptr,#_rfTxTotalTXLen
      0001E8 EE               [12] 1388 	mov	a,r6
      0001E9 F0               [24] 1389 	movx	@dptr,a
      0001EA EF               [12] 1390 	mov	a,r7
      0001EB A3               [24] 1391 	inc	dptr
      0001EC F0               [24] 1392 	movx	@dptr,a
                                   1393 ;	appFHSSNIC.c:142: rfTxBufferEnd = MAX_TX_MSGLEN + 1; // add 1 for length byte
      0001ED 90 FD F0         [24] 1394 	mov	dptr,#_rfTxBufferEnd
      0001F0 74 F1            [12] 1395 	mov	a,#0xF1
      0001F2 F0               [24] 1396 	movx	@dptr,a
      0001F3 E4               [12] 1397 	clr	a
      0001F4 A3               [24] 1398 	inc	dptr
      0001F5 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	appFHSSNIC.c:144: rftxbuf = (volatile __xdata u8*)&g_txMsgQueue[0][0];
      0001F6 90 FD 86         [24] 1401 	mov	dptr,#_rftxbuf
      0001F9 74 72            [12] 1402 	mov	a,#_g_txMsgQueue
      0001FB F0               [24] 1403 	movx	@dptr,a
      0001FC 74 F3            [12] 1404 	mov	a,#(_g_txMsgQueue >> 8)
      0001FE A3               [24] 1405 	inc	dptr
      0001FF F0               [24] 1406 	movx	@dptr,a
                                   1407 ;	appFHSSNIC.c:145: rfTxRepeatCounter = 0;
      000200 90 FD EE         [24] 1408 	mov	dptr,#_rfTxRepeatCounter
      000203 E4               [12] 1409 	clr	a
      000204 F0               [24] 1410 	movx	@dptr,a
      000205 A3               [24] 1411 	inc	dptr
      000206 F0               [24] 1412 	movx	@dptr,a
                                   1413 ;	appFHSSNIC.c:146: rfTxCurBufIdx = macdata.txMsgIdxDone = 0;
      000207 90 FD A1         [24] 1414 	mov	dptr,#(_macdata + 0x0012)
      00020A F0               [24] 1415 	movx	@dptr,a
      00020B 90 FD EA         [24] 1416 	mov	dptr,#_rfTxCurBufIdx
      00020E F0               [24] 1417 	movx	@dptr,a
                                   1418 ;	appFHSSNIC.c:147: macdata.txMsgIdx = 0;
      00020F 90 FD A0         [24] 1419 	mov	dptr,#(_macdata + 0x0011)
      000212 F0               [24] 1420 	movx	@dptr,a
                                   1421 ;	appFHSSNIC.c:148: rfTxCounter = 1; // don't transmit length byte
      000213 90 FD EC         [24] 1422 	mov	dptr,#_rfTxCounter
      000216 04               [12] 1423 	inc	a
      000217 F0               [24] 1424 	movx	@dptr,a
      000218 E4               [12] 1425 	clr	a
      000219 A3               [24] 1426 	inc	dptr
      00021A F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	appFHSSNIC.c:149: rfTxBufCount = MAX_TX_MSGS;
      00021B 90 FD EB         [24] 1429 	mov	dptr,#_rfTxBufCount
      00021E 74 02            [12] 1430 	mov	a,#0x02
      000220 F0               [24] 1431 	movx	@dptr,a
                                   1432 ;	appFHSSNIC.c:152: MAC_tx(NULL, 0);
      000221 90 F5 5C         [24] 1433 	mov	dptr,#_MAC_tx_PARM_2
      000224 E4               [12] 1434 	clr	a
      000225 F0               [24] 1435 	movx	@dptr,a
      000226 90 00 00         [24] 1436 	mov	dptr,#0x0000
      000229 12 03 4C         [24] 1437 	lcall	_MAC_tx
                                   1438 ;	appFHSSNIC.c:155: for(countdown = 0 ; countdown < blocks ; ++countdown)
      00022C 90 F5 5A         [24] 1439 	mov	dptr,#_transmit_long_buf_1_100
      00022F E0               [24] 1440 	movx	a,@dptr
      000230 FE               [12] 1441 	mov	r6,a
      000231 A3               [24] 1442 	inc	dptr
      000232 E0               [24] 1443 	movx	a,@dptr
      000233 FF               [12] 1444 	mov	r7,a
      000234 90 F5 59         [24] 1445 	mov	dptr,#_transmit_long_PARM_3
      000237 E0               [24] 1446 	movx	a,@dptr
      000238 FD               [12] 1447 	mov	r5,a
      000239 7B 00            [12] 1448 	mov	r3,#0x00
      00023B 7C 00            [12] 1449 	mov	r4,#0x00
      00023D                       1450 00122$:
      00023D 8D 01            [24] 1451 	mov	ar1,r5
      00023F 7A 00            [12] 1452 	mov	r2,#0x00
      000241 C3               [12] 1453 	clr	c
      000242 EB               [12] 1454 	mov	a,r3
      000243 99               [12] 1455 	subb	a,r1
      000244 EC               [12] 1456 	mov	a,r4
      000245 9A               [12] 1457 	subb	a,r2
      000246 50 54            [24] 1458 	jnc	00108$
                                   1459 ;	appFHSSNIC.c:157: err = MAC_tx(buf + (u8) (countdown * MAX_TX_MSGLEN), (u8) MAX_TX_MSGLEN);
      000248 8B 02            [24] 1460 	mov	ar2,r3
      00024A EA               [12] 1461 	mov	a,r2
      00024B 75 F0 F0         [24] 1462 	mov	b,#0xF0
      00024E A4               [48] 1463 	mul	ab
      00024F 2E               [12] 1464 	add	a,r6
      000250 F9               [12] 1465 	mov	r1,a
      000251 E4               [12] 1466 	clr	a
      000252 3F               [12] 1467 	addc	a,r7
      000253 FA               [12] 1468 	mov	r2,a
      000254 90 F5 5C         [24] 1469 	mov	dptr,#_MAC_tx_PARM_2
      000257 74 F0            [12] 1470 	mov	a,#0xF0
      000259 F0               [24] 1471 	movx	@dptr,a
      00025A 89 82            [24] 1472 	mov	dpl,r1
      00025C 8A 83            [24] 1473 	mov	dph,r2
      00025E C0 07            [24] 1474 	push	ar7
      000260 C0 06            [24] 1475 	push	ar6
      000262 C0 05            [24] 1476 	push	ar5
      000264 C0 04            [24] 1477 	push	ar4
      000266 C0 03            [24] 1478 	push	ar3
      000268 12 03 4C         [24] 1479 	lcall	_MAC_tx
      00026B AA 82            [24] 1480 	mov	r2,dpl
      00026D D0 03            [24] 1481 	pop	ar3
      00026F D0 04            [24] 1482 	pop	ar4
      000271 D0 05            [24] 1483 	pop	ar5
      000273 D0 06            [24] 1484 	pop	ar6
      000275 D0 07            [24] 1485 	pop	ar7
                                   1486 ;	appFHSSNIC.c:158: if(err)
      000277 EA               [12] 1487 	mov	a,r2
      000278 60 1B            [24] 1488 	jz	00123$
                                   1489 ;	appFHSSNIC.c:160: debug("MAC_tx() returned error");
      00027A 90 31 2E         [24] 1490 	mov	dptr,#___str_1
      00027D C0 02            [24] 1491 	push	ar2
      00027F 12 1C B2         [24] 1492 	lcall	_debug
      000282 D0 02            [24] 1493 	pop	ar2
                                   1494 ;	appFHSSNIC.c:161: macdata.mac_state = MAC_STATE_NONHOPPING;
      000284 90 FD 8F         [24] 1495 	mov	dptr,#_macdata
      000287 E4               [12] 1496 	clr	a
      000288 F0               [24] 1497 	movx	@dptr,a
                                   1498 ;	appFHSSNIC.c:162: debughex(err);
      000289 8A 82            [24] 1499 	mov	dpl,r2
      00028B C0 02            [24] 1500 	push	ar2
      00028D 12 1C F4         [24] 1501 	lcall	_debughex
      000290 D0 02            [24] 1502 	pop	ar2
                                   1503 ;	appFHSSNIC.c:163: return err;
      000292 8A 82            [24] 1504 	mov	dpl,r2
      000294 22               [24] 1505 	ret
      000295                       1506 00123$:
                                   1507 ;	appFHSSNIC.c:155: for(countdown = 0 ; countdown < blocks ; ++countdown)
      000295 0B               [12] 1508 	inc	r3
      000296 BB 00 A4         [24] 1509 	cjne	r3,#0x00,00122$
      000299 0C               [12] 1510 	inc	r4
      00029A 80 A1            [24] 1511 	sjmp	00122$
      00029C                       1512 00108$:
                                   1513 ;	appFHSSNIC.c:168: if(rfAESMode & AES_CRYPTO_OUT_ENABLE && rfTxTotalTXLen % 16)
      00029C 90 FD F9         [24] 1514 	mov	dptr,#_rfAESMode
      00029F E0               [24] 1515 	movx	a,@dptr
      0002A0 FF               [12] 1516 	mov	r7,a
      0002A1 30 E3 33         [24] 1517 	jnb	acc.3,00110$
      0002A4 90 FD F6         [24] 1518 	mov	dptr,#_rfTxTotalTXLen
      0002A7 E0               [24] 1519 	movx	a,@dptr
      0002A8 FE               [12] 1520 	mov	r6,a
      0002A9 A3               [24] 1521 	inc	dptr
      0002AA E0               [24] 1522 	movx	a,@dptr
      0002AB FF               [12] 1523 	mov	r7,a
      0002AC EE               [12] 1524 	mov	a,r6
      0002AD 54 0F            [12] 1525 	anl	a,#0x0F
      0002AF 60 26            [24] 1526 	jz	00110$
                                   1527 ;	appFHSSNIC.c:171: rfTxTotalTXLen += 16 - (rfTxTotalTXLen % 16);
      0002B1 90 FD F6         [24] 1528 	mov	dptr,#_rfTxTotalTXLen
      0002B4 E0               [24] 1529 	movx	a,@dptr
      0002B5 FE               [12] 1530 	mov	r6,a
      0002B6 A3               [24] 1531 	inc	dptr
      0002B7 E0               [24] 1532 	movx	a,@dptr
      0002B8 53 06 0F         [24] 1533 	anl	ar6,#0x0F
      0002BB 7F 00            [12] 1534 	mov	r7,#0x00
      0002BD 74 10            [12] 1535 	mov	a,#0x10
      0002BF C3               [12] 1536 	clr	c
      0002C0 9E               [12] 1537 	subb	a,r6
      0002C1 FE               [12] 1538 	mov	r6,a
      0002C2 E4               [12] 1539 	clr	a
      0002C3 9F               [12] 1540 	subb	a,r7
      0002C4 FF               [12] 1541 	mov	r7,a
      0002C5 90 FD F6         [24] 1542 	mov	dptr,#_rfTxTotalTXLen
      0002C8 E0               [24] 1543 	movx	a,@dptr
      0002C9 FC               [12] 1544 	mov	r4,a
      0002CA A3               [24] 1545 	inc	dptr
      0002CB E0               [24] 1546 	movx	a,@dptr
      0002CC FD               [12] 1547 	mov	r5,a
      0002CD 90 FD F6         [24] 1548 	mov	dptr,#_rfTxTotalTXLen
      0002D0 EE               [12] 1549 	mov	a,r6
      0002D1 2C               [12] 1550 	add	a,r4
      0002D2 F0               [24] 1551 	movx	@dptr,a
      0002D3 EF               [12] 1552 	mov	a,r7
      0002D4 3D               [12] 1553 	addc	a,r5
      0002D5 A3               [24] 1554 	inc	dptr
      0002D6 F0               [24] 1555 	movx	@dptr,a
      0002D7                       1556 00110$:
                                   1557 ;	appFHSSNIC.c:175: if(rfTxTotalTXLen > RF_MAX_TX_BLOCK)
      0002D7 90 FD F6         [24] 1558 	mov	dptr,#_rfTxTotalTXLen
      0002DA E0               [24] 1559 	movx	a,@dptr
      0002DB FE               [12] 1560 	mov	r6,a
      0002DC A3               [24] 1561 	inc	dptr
      0002DD E0               [24] 1562 	movx	a,@dptr
      0002DE FF               [12] 1563 	mov	r7,a
      0002DF C3               [12] 1564 	clr	c
      0002E0 74 FF            [12] 1565 	mov	a,#0xFF
      0002E2 9E               [12] 1566 	subb	a,r6
      0002E3 E4               [12] 1567 	clr	a
      0002E4 9F               [12] 1568 	subb	a,r7
      0002E5 50 23            [24] 1569 	jnc	00113$
                                   1570 ;	appFHSSNIC.c:177: PKTLEN = (u8) (rfTxTotalTXLen % 256);
      0002E7 90 FD F6         [24] 1571 	mov	dptr,#_rfTxTotalTXLen
      0002EA E0               [24] 1572 	movx	a,@dptr
      0002EB FE               [12] 1573 	mov	r6,a
      0002EC A3               [24] 1574 	inc	dptr
      0002ED E0               [24] 1575 	movx	a,@dptr
      0002EE 90 DF 02         [24] 1576 	mov	dptr,#_PKTLEN
      0002F1 EE               [12] 1577 	mov	a,r6
      0002F2 F0               [24] 1578 	movx	@dptr,a
                                   1579 ;	appFHSSNIC.c:178: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
      0002F3 90 DF 04         [24] 1580 	mov	dptr,#_PKTCTRL0
      0002F6 E0               [24] 1581 	movx	a,@dptr
      0002F7 FF               [12] 1582 	mov	r7,a
      0002F8 74 FC            [12] 1583 	mov	a,#0xFC
      0002FA 5F               [12] 1584 	anl	a,r7
      0002FB F0               [24] 1585 	movx	@dptr,a
                                   1586 ;	appFHSSNIC.c:179: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
      0002FC E0               [24] 1587 	movx	a,@dptr
      0002FD FF               [12] 1588 	mov	r7,a
      0002FE 74 02            [12] 1589 	mov	a,#0x02
      000300 4F               [12] 1590 	orl	a,r7
      000301 F0               [24] 1591 	movx	@dptr,a
                                   1592 ;	appFHSSNIC.c:180: rfTxInfMode = 1;
      000302 90 FD F8         [24] 1593 	mov	dptr,#_rfTxInfMode
      000305 74 01            [12] 1594 	mov	a,#0x01
      000307 F0               [24] 1595 	movx	@dptr,a
      000308 80 12            [24] 1596 	sjmp	00114$
      00030A                       1597 00113$:
                                   1598 ;	appFHSSNIC.c:184: PKTLEN = (u8) rfTxTotalTXLen;
      00030A 90 FD F6         [24] 1599 	mov	dptr,#_rfTxTotalTXLen
      00030D E0               [24] 1600 	movx	a,@dptr
      00030E FE               [12] 1601 	mov	r6,a
      00030F A3               [24] 1602 	inc	dptr
      000310 E0               [24] 1603 	movx	a,@dptr
      000311 FF               [12] 1604 	mov	r7,a
      000312 90 DF 02         [24] 1605 	mov	dptr,#_PKTLEN
      000315 EE               [12] 1606 	mov	a,r6
      000316 F0               [24] 1607 	movx	@dptr,a
                                   1608 ;	appFHSSNIC.c:185: rfTxInfMode = 0;
      000317 90 FD F8         [24] 1609 	mov	dptr,#_rfTxInfMode
      00031A E4               [12] 1610 	clr	a
      00031B F0               [24] 1611 	movx	@dptr,a
      00031C                       1612 00114$:
                                   1613 ;	appFHSSNIC.c:192: RFST = RFST_STX;
      00031C 75 E1 03         [24] 1614 	mov	_RFST,#0x03
                                   1615 ;	appFHSSNIC.c:196: while (MARCSTATE != MARC_STATE_TX && --countdown)
      00031F 7E 60            [12] 1616 	mov	r6,#0x60
      000321 7F EA            [12] 1617 	mov	r7,#0xEA
      000323                       1618 00116$:
      000323 90 DF 3B         [24] 1619 	mov	dptr,#_MARCSTATE
      000326 E0               [24] 1620 	movx	a,@dptr
      000327 FD               [12] 1621 	mov	r5,a
      000328 BD 13 02         [24] 1622 	cjne	r5,#0x13,00171$
      00032B 80 09            [24] 1623 	sjmp	00118$
      00032D                       1624 00171$:
      00032D 1E               [12] 1625 	dec	r6
      00032E BE FF 01         [24] 1626 	cjne	r6,#0xFF,00172$
      000331 1F               [12] 1627 	dec	r7
      000332                       1628 00172$:
      000332 EE               [12] 1629 	mov	a,r6
      000333 4F               [12] 1630 	orl	a,r7
      000334 70 ED            [24] 1631 	jnz	00116$
      000336                       1632 00118$:
                                   1633 ;	appFHSSNIC.c:201: LED = 1;
      000336 D2 A4            [12] 1634 	setb	_P2_4
                                   1635 ;	appFHSSNIC.c:202: if (!countdown)
      000338 EE               [12] 1636 	mov	a,r6
      000339 4F               [12] 1637 	orl	a,r7
      00033A 70 0C            [24] 1638 	jnz	00120$
                                   1639 ;	appFHSSNIC.c:204: lastCode[1] = LCE_RFTX_NEVER_TX;
      00033C 90 FD B4         [24] 1640 	mov	dptr,#(_lastCode + 0x0001)
      00033F 74 13            [12] 1641 	mov	a,#0x13
      000341 F0               [24] 1642 	movx	@dptr,a
                                   1643 ;	appFHSSNIC.c:205: debug("never entered TX");
      000342 90 31 46         [24] 1644 	mov	dptr,#___str_2
      000345 12 1C B2         [24] 1645 	lcall	_debug
      000348                       1646 00120$:
                                   1647 ;	appFHSSNIC.c:208: return RC_NO_ERROR;
      000348 75 82 00         [24] 1648 	mov	dpl,#0x00
      00034B 22               [24] 1649 	ret
                                   1650 ;------------------------------------------------------------
                                   1651 ;Allocation info for local variables in function 'MAC_tx'
                                   1652 ;------------------------------------------------------------
                                   1653 ;len                       Allocated with name '_MAC_tx_PARM_2'
                                   1654 ;msg                       Allocated with name '_MAC_tx_msg_1_111'
                                   1655 ;------------------------------------------------------------
                                   1656 ;	appFHSSNIC.c:211: __xdata u8 MAC_tx(__xdata u8* __xdata msg, __xdata u8 len)
                                   1657 ;	-----------------------------------------
                                   1658 ;	 function MAC_tx
                                   1659 ;	-----------------------------------------
      00034C                       1660 _MAC_tx:
      00034C AF 83            [24] 1661 	mov	r7,dph
      00034E E5 82            [12] 1662 	mov	a,dpl
      000350 90 F5 5D         [24] 1663 	mov	dptr,#_MAC_tx_msg_1_111
      000353 F0               [24] 1664 	movx	@dptr,a
      000354 EF               [12] 1665 	mov	a,r7
      000355 A3               [24] 1666 	inc	dptr
      000356 F0               [24] 1667 	movx	@dptr,a
                                   1668 ;	appFHSSNIC.c:221: if (len > MAX_TX_MSGLEN)
      000357 90 F5 5C         [24] 1669 	mov	dptr,#_MAC_tx_PARM_2
      00035A E0               [24] 1670 	movx	a,@dptr
      00035B FF               [12] 1671 	mov  r7,a
      00035C 24 0F            [12] 1672 	add	a,#0xff - 0xF0
      00035E 50 0A            [24] 1673 	jnc	00102$
                                   1674 ;	appFHSSNIC.c:223: debug("FHSSxmit message too long");
      000360 90 31 57         [24] 1675 	mov	dptr,#___str_3
      000363 12 1C B2         [24] 1676 	lcall	_debug
                                   1677 ;	appFHSSNIC.c:224: return RC_ERR_BUFFER_SIZE_EXCEEDED;
      000366 75 82 FF         [24] 1678 	mov	dpl,#0xFF
      000369 22               [24] 1679 	ret
      00036A                       1680 00102$:
                                   1681 ;	appFHSSNIC.c:228: if(len == 0)
      00036A EF               [12] 1682 	mov	a,r7
      00036B 70 3E            [24] 1683 	jnz	00105$
                                   1684 ;	appFHSSNIC.c:231: for(macdata.txMsgIdx = 0 ; macdata.txMsgIdx < rfTxBufCount ; ++macdata.txMsgIdx)
      00036D 90 FD A0         [24] 1685 	mov	dptr,#(_macdata + 0x0011)
      000370 E4               [12] 1686 	clr	a
      000371 F0               [24] 1687 	movx	@dptr,a
      000372                       1688 00122$:
      000372 90 FD A0         [24] 1689 	mov	dptr,#(_macdata + 0x0011)
      000375 E0               [24] 1690 	movx	a,@dptr
      000376 FE               [12] 1691 	mov	r6,a
      000377 90 FD EB         [24] 1692 	mov	dptr,#_rfTxBufCount
      00037A E0               [24] 1693 	movx	a,@dptr
      00037B FD               [12] 1694 	mov	r5,a
      00037C C3               [12] 1695 	clr	c
      00037D EE               [12] 1696 	mov	a,r6
      00037E 9D               [12] 1697 	subb	a,r5
      00037F 50 21            [24] 1698 	jnc	00103$
                                   1699 ;	appFHSSNIC.c:233: g_txMsgQueue[macdata.txMsgIdx][0] = BUFFER_AVAILABLE;
      000381 90 FD A0         [24] 1700 	mov	dptr,#(_macdata + 0x0011)
      000384 E0               [24] 1701 	movx	a,@dptr
      000385 75 F0 F1         [24] 1702 	mov	b,#0xF1
      000388 A4               [48] 1703 	mul	ab
      000389 24 72            [12] 1704 	add	a,#_g_txMsgQueue
      00038B F5 82            [12] 1705 	mov	dpl,a
      00038D 74 F3            [12] 1706 	mov	a,#(_g_txMsgQueue >> 8)
      00038F 35 F0            [12] 1707 	addc	a,b
      000391 F5 83            [12] 1708 	mov	dph,a
      000393 E4               [12] 1709 	clr	a
      000394 F0               [24] 1710 	movx	@dptr,a
                                   1711 ;	appFHSSNIC.c:231: for(macdata.txMsgIdx = 0 ; macdata.txMsgIdx < rfTxBufCount ; ++macdata.txMsgIdx)
      000395 90 FD A0         [24] 1712 	mov	dptr,#(_macdata + 0x0011)
      000398 E0               [24] 1713 	movx	a,@dptr
      000399 FE               [12] 1714 	mov	r6,a
      00039A 0E               [12] 1715 	inc	r6
      00039B 90 FD A0         [24] 1716 	mov	dptr,#(_macdata + 0x0011)
      00039E EE               [12] 1717 	mov	a,r6
      00039F F0               [24] 1718 	movx	@dptr,a
      0003A0 80 D0            [24] 1719 	sjmp	00122$
      0003A2                       1720 00103$:
                                   1721 ;	appFHSSNIC.c:235: macdata.txMsgIdx = 0;
      0003A2 90 FD A0         [24] 1722 	mov	dptr,#(_macdata + 0x0011)
      0003A5 E4               [12] 1723 	clr	a
      0003A6 F0               [24] 1724 	movx	@dptr,a
                                   1725 ;	appFHSSNIC.c:236: return RC_NO_ERROR;
      0003A7 75 82 00         [24] 1726 	mov	dpl,#0x00
      0003AA 22               [24] 1727 	ret
      0003AB                       1728 00105$:
                                   1729 ;	appFHSSNIC.c:239: switch (macdata.mac_state)
      0003AB 90 FD 8F         [24] 1730 	mov	dptr,#_macdata
      0003AE E0               [24] 1731 	movx	a,@dptr
      0003AF FE               [12] 1732 	mov	r6,a
      0003B0 60 1D            [24] 1733 	jz	00110$
      0003B2 BE 06 1E         [24] 1734 	cjne	r6,#0x06,00111$
                                   1735 ;	appFHSSNIC.c:242: if (macdata.txMsgIdx && MARCSTATE != MARC_STATE_TX)
      0003B5 90 FD A0         [24] 1736 	mov	dptr,#(_macdata + 0x0011)
      0003B8 E0               [24] 1737 	movx	a,@dptr
      0003B9 60 18            [24] 1738 	jz	00111$
      0003BB 90 DF 3B         [24] 1739 	mov	dptr,#_MARCSTATE
      0003BE E0               [24] 1740 	movx	a,@dptr
      0003BF FE               [12] 1741 	mov	r6,a
      0003C0 BE 13 02         [24] 1742 	cjne	r6,#0x13,00169$
      0003C3 80 0E            [24] 1743 	sjmp	00111$
      0003C5                       1744 00169$:
                                   1745 ;	appFHSSNIC.c:244: macdata.mac_state = MAC_STATE_LONG_XMIT_FAIL;
      0003C5 90 FD 8F         [24] 1746 	mov	dptr,#_macdata
      0003C8 74 07            [12] 1747 	mov	a,#0x07
      0003CA F0               [24] 1748 	movx	@dptr,a
                                   1749 ;	appFHSSNIC.c:245: return RC_TX_ERROR;
      0003CB 75 82 ED         [24] 1750 	mov	dpl,#0xED
      0003CE 22               [24] 1751 	ret
                                   1752 ;	appFHSSNIC.c:248: case MAC_STATE_NONHOPPING:
      0003CF                       1753 00110$:
                                   1754 ;	appFHSSNIC.c:249: return RC_TX_ERROR;
      0003CF 75 82 ED         [24] 1755 	mov	dpl,#0xED
      0003D2 22               [24] 1756 	ret
                                   1757 ;	appFHSSNIC.c:250: }
      0003D3                       1758 00111$:
                                   1759 ;	appFHSSNIC.c:251: if (g_txMsgQueue[macdata.txMsgIdx][0] != BUFFER_AVAILABLE)
      0003D3 90 FD A0         [24] 1760 	mov	dptr,#(_macdata + 0x0011)
      0003D6 E0               [24] 1761 	movx	a,@dptr
      0003D7 75 F0 F1         [24] 1762 	mov	b,#0xF1
      0003DA A4               [48] 1763 	mul	ab
      0003DB 24 72            [12] 1764 	add	a,#_g_txMsgQueue
      0003DD FD               [12] 1765 	mov	r5,a
      0003DE 74 F3            [12] 1766 	mov	a,#(_g_txMsgQueue >> 8)
      0003E0 35 F0            [12] 1767 	addc	a,b
      0003E2 FE               [12] 1768 	mov	r6,a
      0003E3 8D 82            [24] 1769 	mov	dpl,r5
      0003E5 8E 83            [24] 1770 	mov	dph,r6
      0003E7 E0               [24] 1771 	movx	a,@dptr
      0003E8 60 0A            [24] 1772 	jz	00113$
                                   1773 ;	appFHSSNIC.c:254: lastCode[1] = LCE_RF_MULTI_BUFFER_NOT_FREE;
      0003EA 90 FD B4         [24] 1774 	mov	dptr,#(_lastCode + 0x0001)
      0003ED 74 18            [12] 1775 	mov	a,#0x18
      0003EF F0               [24] 1776 	movx	@dptr,a
                                   1777 ;	appFHSSNIC.c:255: return RC_ERR_BUFFER_NOT_AVAILABLE;
      0003F0 75 82 FE         [24] 1778 	mov	dpl,#0xFE
      0003F3 22               [24] 1779 	ret
      0003F4                       1780 00113$:
                                   1781 ;	appFHSSNIC.c:259: g_txMsgQueue[macdata.txMsgIdx][0] = BUFFER_FILLING;
      0003F4 8D 82            [24] 1782 	mov	dpl,r5
      0003F6 8E 83            [24] 1783 	mov	dph,r6
      0003F8 74 FF            [12] 1784 	mov	a,#0xFF
      0003FA F0               [24] 1785 	movx	@dptr,a
                                   1786 ;	appFHSSNIC.c:261: memcpy(&g_txMsgQueue[macdata.txMsgIdx][1], msg, len);
      0003FB 90 FD A0         [24] 1787 	mov	dptr,#(_macdata + 0x0011)
      0003FE E0               [24] 1788 	movx	a,@dptr
      0003FF 75 F0 F1         [24] 1789 	mov	b,#0xF1
      000402 A4               [48] 1790 	mul	ab
      000403 24 72            [12] 1791 	add	a,#_g_txMsgQueue
      000405 FD               [12] 1792 	mov	r5,a
      000406 74 F3            [12] 1793 	mov	a,#(_g_txMsgQueue >> 8)
      000408 35 F0            [12] 1794 	addc	a,b
      00040A FE               [12] 1795 	mov	r6,a
      00040B 0D               [12] 1796 	inc	r5
      00040C BD 00 01         [24] 1797 	cjne	r5,#0x00,00171$
      00040F 0E               [12] 1798 	inc	r6
      000410                       1799 00171$:
      000410 7C 00            [12] 1800 	mov	r4,#0x00
      000412 90 F5 5D         [24] 1801 	mov	dptr,#_MAC_tx_msg_1_111
      000415 E0               [24] 1802 	movx	a,@dptr
      000416 FA               [12] 1803 	mov	r2,a
      000417 A3               [24] 1804 	inc	dptr
      000418 E0               [24] 1805 	movx	a,@dptr
      000419 FB               [12] 1806 	mov	r3,a
      00041A 8A 27            [24] 1807 	mov	_memcpy_PARM_2,r2
      00041C 8B 28            [24] 1808 	mov	(_memcpy_PARM_2 + 1),r3
                                   1809 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      00041E 8C 29            [24] 1810 	mov	(_memcpy_PARM_2 + 2),r4
      000420 8F 03            [24] 1811 	mov	ar3,r7
      000422 7F 00            [12] 1812 	mov	r7,#0x00
      000424 8B 2A            [24] 1813 	mov	_memcpy_PARM_3,r3
      000426 8F 2B            [24] 1814 	mov	(_memcpy_PARM_3 + 1),r7
      000428 8D 82            [24] 1815 	mov	dpl,r5
      00042A 8E 83            [24] 1816 	mov	dph,r6
      00042C 8C F0            [24] 1817 	mov	b,r4
      00042E C0 07            [24] 1818 	push	ar7
      000430 C0 03            [24] 1819 	push	ar3
      000432 12 2E 41         [24] 1820 	lcall	_memcpy
      000435 D0 03            [24] 1821 	pop	ar3
      000437 D0 07            [24] 1822 	pop	ar7
                                   1823 ;	appFHSSNIC.c:266: if(rfAESMode & AES_CRYPTO_OUT_ENABLE)
      000439 90 FD F9         [24] 1824 	mov	dptr,#_rfAESMode
      00043C E0               [24] 1825 	movx	a,@dptr
      00043D FE               [12] 1826 	mov	r6,a
      00043E 20 E3 03         [24] 1827 	jb	acc.3,00172$
      000441 02 04 F4         [24] 1828 	ljmp	00118$
      000444                       1829 00172$:
                                   1830 ;	appFHSSNIC.c:268: len = padAES(&g_txMsgQueue[macdata.txMsgIdx][1], len);
      000444 90 FD A0         [24] 1831 	mov	dptr,#(_macdata + 0x0011)
      000447 E0               [24] 1832 	movx	a,@dptr
      000448 75 F0 F1         [24] 1833 	mov	b,#0xF1
      00044B A4               [48] 1834 	mul	ab
      00044C 24 72            [12] 1835 	add	a,#_g_txMsgQueue
      00044E FD               [12] 1836 	mov	r5,a
      00044F 74 F3            [12] 1837 	mov	a,#(_g_txMsgQueue >> 8)
      000451 35 F0            [12] 1838 	addc	a,b
      000453 FE               [12] 1839 	mov	r6,a
      000454 0D               [12] 1840 	inc	r5
      000455 BD 00 01         [24] 1841 	cjne	r5,#0x00,00173$
      000458 0E               [12] 1842 	inc	r6
      000459                       1843 00173$:
      000459 90 FD CB         [24] 1844 	mov	dptr,#_padAES_PARM_2
      00045C EB               [12] 1845 	mov	a,r3
      00045D F0               [24] 1846 	movx	@dptr,a
      00045E EF               [12] 1847 	mov	a,r7
      00045F A3               [24] 1848 	inc	dptr
      000460 F0               [24] 1849 	movx	@dptr,a
      000461 8D 82            [24] 1850 	mov	dpl,r5
      000463 8E 83            [24] 1851 	mov	dph,r6
      000465 12 2B 5F         [24] 1852 	lcall	_padAES
      000468 AE 82            [24] 1853 	mov	r6,dpl
      00046A 90 F5 5C         [24] 1854 	mov	dptr,#_MAC_tx_PARM_2
      00046D EE               [12] 1855 	mov	a,r6
      00046E F0               [24] 1856 	movx	@dptr,a
                                   1857 ;	appFHSSNIC.c:269: if((rfAESMode & AES_CRYPTO_OUT_TYPE) == AES_CRYPTO_OUT_ENCRYPT)
      00046F 90 FD F9         [24] 1858 	mov	dptr,#_rfAESMode
      000472 E0               [24] 1859 	movx	a,@dptr
      000473 FF               [12] 1860 	mov	r7,a
      000474 53 07 04         [24] 1861 	anl	ar7,#0x04
      000477 BF 04 3F         [24] 1862 	cjne	r7,#0x04,00115$
                                   1863 ;	appFHSSNIC.c:270: encAES(&g_txMsgQueue[macdata.txMsgIdx][1], &g_txMsgQueue[macdata.txMsgIdx][1], len, (rfAESMode & AES_CRYPTO_MODE));
      00047A 90 FD A0         [24] 1864 	mov	dptr,#(_macdata + 0x0011)
      00047D E0               [24] 1865 	movx	a,@dptr
      00047E 75 F0 F1         [24] 1866 	mov	b,#0xF1
      000481 A4               [48] 1867 	mul	ab
      000482 24 72            [12] 1868 	add	a,#_g_txMsgQueue
      000484 FD               [12] 1869 	mov	r5,a
      000485 74 F3            [12] 1870 	mov	a,#(_g_txMsgQueue >> 8)
      000487 35 F0            [12] 1871 	addc	a,b
      000489 FF               [12] 1872 	mov	r7,a
      00048A 0D               [12] 1873 	inc	r5
      00048B BD 00 01         [24] 1874 	cjne	r5,#0x00,00176$
      00048E 0F               [12] 1875 	inc	r7
      00048F                       1876 00176$:
      00048F 8E 03            [24] 1877 	mov	ar3,r6
      000491 7C 00            [12] 1878 	mov	r4,#0x00
      000493 90 FD F9         [24] 1879 	mov	dptr,#_rfAESMode
      000496 E0               [24] 1880 	movx	a,@dptr
      000497 FA               [12] 1881 	mov	r2,a
      000498 53 02 F0         [24] 1882 	anl	ar2,#0xF0
      00049B 90 FD CF         [24] 1883 	mov	dptr,#_encAES_PARM_2
      00049E ED               [12] 1884 	mov	a,r5
      00049F F0               [24] 1885 	movx	@dptr,a
      0004A0 EF               [12] 1886 	mov	a,r7
      0004A1 A3               [24] 1887 	inc	dptr
      0004A2 F0               [24] 1888 	movx	@dptr,a
      0004A3 90 FD D1         [24] 1889 	mov	dptr,#_encAES_PARM_3
      0004A6 EB               [12] 1890 	mov	a,r3
      0004A7 F0               [24] 1891 	movx	@dptr,a
      0004A8 EC               [12] 1892 	mov	a,r4
      0004A9 A3               [24] 1893 	inc	dptr
      0004AA F0               [24] 1894 	movx	@dptr,a
      0004AB 90 FD D3         [24] 1895 	mov	dptr,#_encAES_PARM_4
      0004AE EA               [12] 1896 	mov	a,r2
      0004AF F0               [24] 1897 	movx	@dptr,a
      0004B0 8D 82            [24] 1898 	mov	dpl,r5
      0004B2 8F 83            [24] 1899 	mov	dph,r7
      0004B4 12 2B 99         [24] 1900 	lcall	_encAES
      0004B7 80 3B            [24] 1901 	sjmp	00118$
      0004B9                       1902 00115$:
                                   1903 ;	appFHSSNIC.c:272: decAES(&g_txMsgQueue[macdata.txMsgIdx][1], &g_txMsgQueue[macdata.txMsgIdx][1], len, (rfAESMode & AES_CRYPTO_MODE));
      0004B9 90 FD A0         [24] 1904 	mov	dptr,#(_macdata + 0x0011)
      0004BC E0               [24] 1905 	movx	a,@dptr
      0004BD 75 F0 F1         [24] 1906 	mov	b,#0xF1
      0004C0 A4               [48] 1907 	mul	ab
      0004C1 24 72            [12] 1908 	add	a,#_g_txMsgQueue
      0004C3 FD               [12] 1909 	mov	r5,a
      0004C4 74 F3            [12] 1910 	mov	a,#(_g_txMsgQueue >> 8)
      0004C6 35 F0            [12] 1911 	addc	a,b
      0004C8 FF               [12] 1912 	mov	r7,a
      0004C9 0D               [12] 1913 	inc	r5
      0004CA BD 00 01         [24] 1914 	cjne	r5,#0x00,00177$
      0004CD 0F               [12] 1915 	inc	r7
      0004CE                       1916 00177$:
      0004CE 7C 00            [12] 1917 	mov	r4,#0x00
      0004D0 90 FD F9         [24] 1918 	mov	dptr,#_rfAESMode
      0004D3 E0               [24] 1919 	movx	a,@dptr
      0004D4 FB               [12] 1920 	mov	r3,a
      0004D5 53 03 F0         [24] 1921 	anl	ar3,#0xF0
      0004D8 90 FD D6         [24] 1922 	mov	dptr,#_decAES_PARM_2
      0004DB ED               [12] 1923 	mov	a,r5
      0004DC F0               [24] 1924 	movx	@dptr,a
      0004DD EF               [12] 1925 	mov	a,r7
      0004DE A3               [24] 1926 	inc	dptr
      0004DF F0               [24] 1927 	movx	@dptr,a
      0004E0 90 FD D8         [24] 1928 	mov	dptr,#_decAES_PARM_3
      0004E3 EE               [12] 1929 	mov	a,r6
      0004E4 F0               [24] 1930 	movx	@dptr,a
      0004E5 EC               [12] 1931 	mov	a,r4
      0004E6 A3               [24] 1932 	inc	dptr
      0004E7 F0               [24] 1933 	movx	@dptr,a
      0004E8 90 FD DA         [24] 1934 	mov	dptr,#_decAES_PARM_4
      0004EB EB               [12] 1935 	mov	a,r3
      0004EC F0               [24] 1936 	movx	@dptr,a
      0004ED 8D 82            [24] 1937 	mov	dpl,r5
      0004EF 8F 83            [24] 1938 	mov	dph,r7
      0004F1 12 2B E2         [24] 1939 	lcall	_decAES
      0004F4                       1940 00118$:
                                   1941 ;	appFHSSNIC.c:275: g_txMsgQueue[macdata.txMsgIdx][0] = len;
      0004F4 90 FD A0         [24] 1942 	mov	dptr,#(_macdata + 0x0011)
      0004F7 E0               [24] 1943 	movx	a,@dptr
      0004F8 75 F0 F1         [24] 1944 	mov	b,#0xF1
      0004FB A4               [48] 1945 	mul	ab
      0004FC 24 72            [12] 1946 	add	a,#_g_txMsgQueue
      0004FE FE               [12] 1947 	mov	r6,a
      0004FF 74 F3            [12] 1948 	mov	a,#(_g_txMsgQueue >> 8)
      000501 35 F0            [12] 1949 	addc	a,b
      000503 FF               [12] 1950 	mov	r7,a
      000504 90 F5 5C         [24] 1951 	mov	dptr,#_MAC_tx_PARM_2
      000507 E0               [24] 1952 	movx	a,@dptr
      000508 FD               [12] 1953 	mov	r5,a
      000509 8E 82            [24] 1954 	mov	dpl,r6
      00050B 8F 83            [24] 1955 	mov	dph,r7
      00050D F0               [24] 1956 	movx	@dptr,a
                                   1957 ;	appFHSSNIC.c:282: if (++macdata.txMsgIdx == rfTxBufCount)
      00050E 90 FD A0         [24] 1958 	mov	dptr,#(_macdata + 0x0011)
      000511 E0               [24] 1959 	movx	a,@dptr
      000512 FF               [12] 1960 	mov	r7,a
      000513 0F               [12] 1961 	inc	r7
      000514 90 FD A0         [24] 1962 	mov	dptr,#(_macdata + 0x0011)
      000517 EF               [12] 1963 	mov	a,r7
      000518 F0               [24] 1964 	movx	@dptr,a
      000519 90 FD EB         [24] 1965 	mov	dptr,#_rfTxBufCount
      00051C E0               [24] 1966 	movx	a,@dptr
      00051D FE               [12] 1967 	mov	r6,a
      00051E EF               [12] 1968 	mov	a,r7
      00051F B5 06 05         [24] 1969 	cjne	a,ar6,00120$
                                   1970 ;	appFHSSNIC.c:284: macdata.txMsgIdx = 0;
      000522 90 FD A0         [24] 1971 	mov	dptr,#(_macdata + 0x0011)
      000525 E4               [12] 1972 	clr	a
      000526 F0               [24] 1973 	movx	@dptr,a
      000527                       1974 00120$:
                                   1975 ;	appFHSSNIC.c:287: return RC_NO_ERROR;
      000527 75 82 00         [24] 1976 	mov	dpl,#0x00
      00052A 22               [24] 1977 	ret
                                   1978 ;------------------------------------------------------------
                                   1979 ;Allocation info for local variables in function 'MAC_sync'
                                   1980 ;------------------------------------------------------------
                                   1981 ;CellID                    Allocated with name '_MAC_sync_CellID_1_121'
                                   1982 ;------------------------------------------------------------
                                   1983 ;	appFHSSNIC.c:290: void MAC_sync(__xdata u16 CellID)
                                   1984 ;	-----------------------------------------
                                   1985 ;	 function MAC_sync
                                   1986 ;	-----------------------------------------
      00052B                       1987 _MAC_sync:
      00052B AF 83            [24] 1988 	mov	r7,dph
      00052D E5 82            [12] 1989 	mov	a,dpl
      00052F 90 F5 5F         [24] 1990 	mov	dptr,#_MAC_sync_CellID_1_121
      000532 F0               [24] 1991 	movx	@dptr,a
      000533 EF               [12] 1992 	mov	a,r7
      000534 A3               [24] 1993 	inc	dptr
      000535 F0               [24] 1994 	movx	@dptr,a
                                   1995 ;	appFHSSNIC.c:298: if (macdata.mac_state != MAC_STATE_NONHOPPING && macdata.mac_state != MAC_STATE_DISCOVERY)
      000536 90 FD 8F         [24] 1996 	mov	dptr,#_macdata
      000539 E0               [24] 1997 	movx	a,@dptr
      00053A FF               [12] 1998 	mov	r7,a
      00053B 60 14            [24] 1999 	jz	00102$
      00053D BF 01 02         [24] 2000 	cjne	r7,#0x01,00133$
      000540 80 0F            [24] 2001 	sjmp	00102$
      000542                       2002 00133$:
                                   2003 ;	appFHSSNIC.c:300: debug("FHSS state entering SYNCHING from wrong state");
      000542 90 31 71         [24] 2004 	mov	dptr,#___str_4
      000545 12 1C B2         [24] 2005 	lcall	_debug
                                   2006 ;	appFHSSNIC.c:301: debughex(macdata.mac_state);
      000548 90 FD 8F         [24] 2007 	mov	dptr,#_macdata
      00054B E0               [24] 2008 	movx	a,@dptr
      00054C F5 82            [12] 2009 	mov	dpl,a
      00054E 12 1C F4         [24] 2010 	lcall	_debughex
      000551                       2011 00102$:
                                   2012 ;	appFHSSNIC.c:305: stop_hopping();
      000551 12 01 9F         [24] 2013 	lcall	_stop_hopping
                                   2014 ;	appFHSSNIC.c:308: macdata.curChanIdx = 0;
      000554 90 FD 98         [24] 2015 	mov	dptr,#(_macdata + 0x0009)
      000557 E4               [12] 2016 	clr	a
      000558 F0               [24] 2017 	movx	@dptr,a
      000559 A3               [24] 2018 	inc	dptr
      00055A F0               [24] 2019 	movx	@dptr,a
                                   2020 ;	appFHSSNIC.c:309: while (1)
      00055B                       2021 00110$:
                                   2022 ;	appFHSSNIC.c:311: MAC_set_chanidx(macdata.curChanIdx);
      00055B 90 FD 98         [24] 2023 	mov	dptr,#(_macdata + 0x0009)
      00055E E0               [24] 2024 	movx	a,@dptr
      00055F FE               [12] 2025 	mov	r6,a
      000560 A3               [24] 2026 	inc	dptr
      000561 E0               [24] 2027 	movx	a,@dptr
      000562 FF               [12] 2028 	mov	r7,a
      000563 8E 82            [24] 2029 	mov	dpl,r6
      000565 8F 83            [24] 2030 	mov	dph,r7
      000567 12 06 2D         [24] 2031 	lcall	_MAC_set_chanidx
                                   2032 ;	appFHSSNIC.c:312: while (MARCSTATE != MARC_STATE_RX)
      00056A                       2033 00104$:
      00056A 90 DF 3B         [24] 2034 	mov	dptr,#_MARCSTATE
      00056D E0               [24] 2035 	movx	a,@dptr
      00056E FF               [12] 2036 	mov	r7,a
      00056F BF 0D F8         [24] 2037 	cjne	r7,#0x0D,00104$
                                   2038 ;	appFHSSNIC.c:314: if ((RSSI&0x7f) < 0x60)
      000572 90 DF 3A         [24] 2039 	mov	dptr,#_RSSI
      000575 E0               [24] 2040 	movx	a,@dptr
      000576 FF               [12] 2041 	mov	r7,a
      000577 53 07 7F         [24] 2042 	anl	ar7,#0x7F
      00057A BF 60 00         [24] 2043 	cjne	r7,#0x60,00136$
      00057D                       2044 00136$:
      00057D 40 27            [24] 2045 	jc	00111$
                                   2046 ;	appFHSSNIC.c:317: macdata.curChanIdx++;
      00057F 90 FD 98         [24] 2047 	mov	dptr,#(_macdata + 0x0009)
      000582 E0               [24] 2048 	movx	a,@dptr
      000583 FE               [12] 2049 	mov	r6,a
      000584 A3               [24] 2050 	inc	dptr
      000585 E0               [24] 2051 	movx	a,@dptr
      000586 FF               [12] 2052 	mov	r7,a
      000587 0E               [12] 2053 	inc	r6
      000588 BE 00 01         [24] 2054 	cjne	r6,#0x00,00138$
      00058B 0F               [12] 2055 	inc	r7
      00058C                       2056 00138$:
      00058C 90 FD 98         [24] 2057 	mov	dptr,#(_macdata + 0x0009)
      00058F EE               [12] 2058 	mov	a,r6
      000590 F0               [24] 2059 	movx	@dptr,a
      000591 EF               [12] 2060 	mov	a,r7
      000592 A3               [24] 2061 	inc	dptr
      000593 F0               [24] 2062 	movx	@dptr,a
                                   2063 ;	appFHSSNIC.c:318: blink(10,10);
      000594 D2 A4            [12] 2064 	setb	_P2_4
      000596 90 00 0A         [24] 2065 	mov	dptr,#0x000A
      000599 12 28 65         [24] 2066 	lcall	_sleepMillis
      00059C C2 A4            [12] 2067 	clr	_P2_4
      00059E 90 00 0A         [24] 2068 	mov	dptr,#0x000A
      0005A1 12 28 65         [24] 2069 	lcall	_sleepMillis
      0005A4 80 B5            [24] 2070 	sjmp	00110$
      0005A6                       2071 00111$:
                                   2072 ;	appFHSSNIC.c:322: macdata.mac_state = MAC_STATE_SYNCHING;
      0005A6 90 FD 8F         [24] 2073 	mov	dptr,#_macdata
      0005A9 74 02            [12] 2074 	mov	a,#0x02
      0005AB F0               [24] 2075 	movx	@dptr,a
                                   2076 ;	appFHSSNIC.c:325: macdata.tLastStateChange = clock;
      0005AC 90 FD B5         [24] 2077 	mov	dptr,#_clock
      0005AF E0               [24] 2078 	movx	a,@dptr
      0005B0 FC               [12] 2079 	mov	r4,a
      0005B1 A3               [24] 2080 	inc	dptr
      0005B2 E0               [24] 2081 	movx	a,@dptr
      0005B3 FD               [12] 2082 	mov	r5,a
      0005B4 A3               [24] 2083 	inc	dptr
      0005B5 E0               [24] 2084 	movx	a,@dptr
      0005B6 A3               [24] 2085 	inc	dptr
      0005B7 E0               [24] 2086 	movx	a,@dptr
      0005B8 90 FD 9A         [24] 2087 	mov	dptr,#(_macdata + 0x000b)
      0005BB EC               [12] 2088 	mov	a,r4
      0005BC F0               [24] 2089 	movx	@dptr,a
      0005BD ED               [12] 2090 	mov	a,r5
      0005BE A3               [24] 2091 	inc	dptr
      0005BF F0               [24] 2092 	movx	@dptr,a
                                   2093 ;	appFHSSNIC.c:328: macdata.desperatelySeeking = CellID;
      0005C0 90 F5 5F         [24] 2094 	mov	dptr,#_MAC_sync_CellID_1_121
      0005C3 E0               [24] 2095 	movx	a,@dptr
      0005C4 FE               [12] 2096 	mov	r6,a
      0005C5 A3               [24] 2097 	inc	dptr
      0005C6 E0               [24] 2098 	movx	a,@dptr
      0005C7 FF               [12] 2099 	mov	r7,a
      0005C8 90 FD 9E         [24] 2100 	mov	dptr,#(_macdata + 0x000f)
      0005CB EE               [12] 2101 	mov	a,r6
      0005CC F0               [24] 2102 	movx	@dptr,a
      0005CD EF               [12] 2103 	mov	a,r7
      0005CE A3               [24] 2104 	inc	dptr
      0005CF F0               [24] 2105 	movx	@dptr,a
      0005D0 22               [24] 2106 	ret
                                   2107 ;------------------------------------------------------------
                                   2108 ;Allocation info for local variables in function 'MAC_stop_sync'
                                   2109 ;------------------------------------------------------------
                                   2110 ;	appFHSSNIC.c:333: void MAC_stop_sync()
                                   2111 ;	-----------------------------------------
                                   2112 ;	 function MAC_stop_sync
                                   2113 ;	-----------------------------------------
      0005D1                       2114 _MAC_stop_sync:
                                   2115 ;	appFHSSNIC.c:336: macdata.mac_state = MAC_STATE_NONHOPPING;
      0005D1 90 FD 8F         [24] 2116 	mov	dptr,#_macdata
      0005D4 E4               [12] 2117 	clr	a
      0005D5 F0               [24] 2118 	movx	@dptr,a
                                   2119 ;	appFHSSNIC.c:337: macdata.tLastStateChange = clock;
      0005D6 90 FD B5         [24] 2120 	mov	dptr,#_clock
      0005D9 E0               [24] 2121 	movx	a,@dptr
      0005DA FC               [12] 2122 	mov	r4,a
      0005DB A3               [24] 2123 	inc	dptr
      0005DC E0               [24] 2124 	movx	a,@dptr
      0005DD FD               [12] 2125 	mov	r5,a
      0005DE A3               [24] 2126 	inc	dptr
      0005DF E0               [24] 2127 	movx	a,@dptr
      0005E0 A3               [24] 2128 	inc	dptr
      0005E1 E0               [24] 2129 	movx	a,@dptr
      0005E2 90 FD 9A         [24] 2130 	mov	dptr,#(_macdata + 0x000b)
      0005E5 EC               [12] 2131 	mov	a,r4
      0005E6 F0               [24] 2132 	movx	@dptr,a
      0005E7 ED               [12] 2133 	mov	a,r5
      0005E8 A3               [24] 2134 	inc	dptr
      0005E9 F0               [24] 2135 	movx	@dptr,a
      0005EA 22               [24] 2136 	ret
                                   2137 ;------------------------------------------------------------
                                   2138 ;Allocation info for local variables in function 'MAC_become_master'
                                   2139 ;------------------------------------------------------------
                                   2140 ;	appFHSSNIC.c:341: void MAC_become_master()
                                   2141 ;	-----------------------------------------
                                   2142 ;	 function MAC_become_master
                                   2143 ;	-----------------------------------------
      0005EB                       2144 _MAC_become_master:
                                   2145 ;	appFHSSNIC.c:344: macdata.mac_state = MAC_STATE_SYNC_MASTER;
      0005EB 90 FD 8F         [24] 2146 	mov	dptr,#_macdata
      0005EE 74 04            [12] 2147 	mov	a,#0x04
      0005F0 F0               [24] 2148 	movx	@dptr,a
                                   2149 ;	appFHSSNIC.c:345: macdata.tLastStateChange = clock;
      0005F1 90 FD B5         [24] 2150 	mov	dptr,#_clock
      0005F4 E0               [24] 2151 	movx	a,@dptr
      0005F5 FC               [12] 2152 	mov	r4,a
      0005F6 A3               [24] 2153 	inc	dptr
      0005F7 E0               [24] 2154 	movx	a,@dptr
      0005F8 FD               [12] 2155 	mov	r5,a
      0005F9 A3               [24] 2156 	inc	dptr
      0005FA E0               [24] 2157 	movx	a,@dptr
      0005FB A3               [24] 2158 	inc	dptr
      0005FC E0               [24] 2159 	movx	a,@dptr
      0005FD 90 FD 9A         [24] 2160 	mov	dptr,#(_macdata + 0x000b)
      000600 EC               [12] 2161 	mov	a,r4
      000601 F0               [24] 2162 	movx	@dptr,a
      000602 ED               [12] 2163 	mov	a,r5
      000603 A3               [24] 2164 	inc	dptr
      000604 F0               [24] 2165 	movx	@dptr,a
      000605 22               [24] 2166 	ret
                                   2167 ;------------------------------------------------------------
                                   2168 ;Allocation info for local variables in function 'MAC_do_Master_scanny_thingy'
                                   2169 ;------------------------------------------------------------
                                   2170 ;	appFHSSNIC.c:349: void MAC_do_Master_scanny_thingy()
                                   2171 ;	-----------------------------------------
                                   2172 ;	 function MAC_do_Master_scanny_thingy
                                   2173 ;	-----------------------------------------
      000606                       2174 _MAC_do_Master_scanny_thingy:
                                   2175 ;	appFHSSNIC.c:351: macdata.mac_state = MAC_STATE_SYNCINGMASTER;
      000606 90 FD 8F         [24] 2176 	mov	dptr,#_macdata
      000609 74 05            [12] 2177 	mov	a,#0x05
      00060B F0               [24] 2178 	movx	@dptr,a
                                   2179 ;	appFHSSNIC.c:352: macdata.synched_chans = 0;
      00060C 90 FD A2         [24] 2180 	mov	dptr,#(_macdata + 0x0013)
      00060F E4               [12] 2181 	clr	a
      000610 F0               [24] 2182 	movx	@dptr,a
      000611 A3               [24] 2183 	inc	dptr
      000612 F0               [24] 2184 	movx	@dptr,a
                                   2185 ;	appFHSSNIC.c:353: macdata.tLastStateChange = clock;
      000613 90 FD B5         [24] 2186 	mov	dptr,#_clock
      000616 E0               [24] 2187 	movx	a,@dptr
      000617 FC               [12] 2188 	mov	r4,a
      000618 A3               [24] 2189 	inc	dptr
      000619 E0               [24] 2190 	movx	a,@dptr
      00061A FD               [12] 2191 	mov	r5,a
      00061B A3               [24] 2192 	inc	dptr
      00061C E0               [24] 2193 	movx	a,@dptr
      00061D A3               [24] 2194 	inc	dptr
      00061E E0               [24] 2195 	movx	a,@dptr
      00061F 90 FD 9A         [24] 2196 	mov	dptr,#(_macdata + 0x000b)
      000622 EC               [12] 2197 	mov	a,r4
      000623 F0               [24] 2198 	movx	@dptr,a
      000624 ED               [12] 2199 	mov	a,r5
      000625 A3               [24] 2200 	inc	dptr
      000626 F0               [24] 2201 	movx	@dptr,a
                                   2202 ;	appFHSSNIC.c:354: begin_hopping(0);
      000627 75 82 00         [24] 2203 	mov	dpl,#0x00
      00062A 02 01 85         [24] 2204 	ljmp	_begin_hopping
                                   2205 ;------------------------------------------------------------
                                   2206 ;Allocation info for local variables in function 'MAC_set_chanidx'
                                   2207 ;------------------------------------------------------------
                                   2208 ;chanidx                   Allocated with name '_MAC_set_chanidx_chanidx_1_129'
                                   2209 ;------------------------------------------------------------
                                   2210 ;	appFHSSNIC.c:358: void MAC_set_chanidx(__xdata u16 chanidx)
                                   2211 ;	-----------------------------------------
                                   2212 ;	 function MAC_set_chanidx
                                   2213 ;	-----------------------------------------
      00062D                       2214 _MAC_set_chanidx:
      00062D AF 83            [24] 2215 	mov	r7,dph
      00062F E5 82            [12] 2216 	mov	a,dpl
      000631 90 F5 61         [24] 2217 	mov	dptr,#_MAC_set_chanidx_chanidx_1_129
      000634 F0               [24] 2218 	movx	@dptr,a
      000635 EF               [12] 2219 	mov	a,r7
      000636 A3               [24] 2220 	inc	dptr
      000637 F0               [24] 2221 	movx	@dptr,a
                                   2222 ;	appFHSSNIC.c:360: PHY_set_channel( g_Channels[ chanidx ] );
      000638 90 F5 61         [24] 2223 	mov	dptr,#_MAC_set_chanidx_chanidx_1_129
      00063B E0               [24] 2224 	movx	a,@dptr
      00063C FE               [12] 2225 	mov	r6,a
      00063D A3               [24] 2226 	inc	dptr
      00063E E0               [24] 2227 	movx	a,@dptr
      00063F FF               [12] 2228 	mov	r7,a
      000640 EE               [12] 2229 	mov	a,r6
      000641 24 00            [12] 2230 	add	a,#_g_Channels
      000643 F5 82            [12] 2231 	mov	dpl,a
      000645 EF               [12] 2232 	mov	a,r7
      000646 34 F0            [12] 2233 	addc	a,#(_g_Channels >> 8)
      000648 F5 83            [12] 2234 	mov	dph,a
      00064A E0               [24] 2235 	movx	a,@dptr
      00064B FF               [12] 2236 	mov	r7,a
      00064C 7E 00            [12] 2237 	mov	r6,#0x00
      00064E 8F 82            [24] 2238 	mov	dpl,r7
      000650 8E 83            [24] 2239 	mov	dph,r6
      000652 02 01 04         [24] 2240 	ljmp	_PHY_set_channel
                                   2241 ;------------------------------------------------------------
                                   2242 ;Allocation info for local variables in function 'MAC_set_NIC_ID'
                                   2243 ;------------------------------------------------------------
                                   2244 ;NIC_ID                    Allocated with name '_MAC_set_NIC_ID_NIC_ID_1_131'
                                   2245 ;------------------------------------------------------------
                                   2246 ;	appFHSSNIC.c:364: void MAC_set_NIC_ID(__xdata u16 NIC_ID)
                                   2247 ;	-----------------------------------------
                                   2248 ;	 function MAC_set_NIC_ID
                                   2249 ;	-----------------------------------------
      000655                       2250 _MAC_set_NIC_ID:
      000655 AF 83            [24] 2251 	mov	r7,dph
      000657 E5 82            [12] 2252 	mov	a,dpl
      000659 90 F5 63         [24] 2253 	mov	dptr,#_MAC_set_NIC_ID_NIC_ID_1_131
      00065C F0               [24] 2254 	movx	@dptr,a
      00065D EF               [12] 2255 	mov	a,r7
      00065E A3               [24] 2256 	inc	dptr
      00065F F0               [24] 2257 	movx	@dptr,a
                                   2258 ;	appFHSSNIC.c:367: g_NIC_ID = NIC_ID;
      000660 90 F5 63         [24] 2259 	mov	dptr,#_MAC_set_NIC_ID_NIC_ID_1_131
      000663 E0               [24] 2260 	movx	a,@dptr
      000664 FE               [12] 2261 	mov	r6,a
      000665 A3               [24] 2262 	inc	dptr
      000666 E0               [24] 2263 	movx	a,@dptr
      000667 FF               [12] 2264 	mov	r7,a
      000668 90 F3 70         [24] 2265 	mov	dptr,#_g_NIC_ID
      00066B EE               [12] 2266 	mov	a,r6
      00066C F0               [24] 2267 	movx	@dptr,a
      00066D EF               [12] 2268 	mov	a,r7
      00066E A3               [24] 2269 	inc	dptr
      00066F F0               [24] 2270 	movx	@dptr,a
      000670 22               [24] 2271 	ret
                                   2272 ;------------------------------------------------------------
                                   2273 ;Allocation info for local variables in function 'MAC_rx_handle'
                                   2274 ;------------------------------------------------------------
                                   2275 ;message                   Allocated with name '_MAC_rx_handle_PARM_2'
                                   2276 ;len                       Allocated with name '_MAC_rx_handle_len_1_133'
                                   2277 ;------------------------------------------------------------
                                   2278 ;	appFHSSNIC.c:370: void MAC_rx_handle(__xdata u8 len, __xdata u8* __xdata message)
                                   2279 ;	-----------------------------------------
                                   2280 ;	 function MAC_rx_handle
                                   2281 ;	-----------------------------------------
      000671                       2282 _MAC_rx_handle:
                                   2283 ;	appFHSSNIC.c:373: message;
      000671 22               [24] 2284 	ret
                                   2285 ;------------------------------------------------------------
                                   2286 ;Allocation info for local variables in function 'MAC_getNextChannel'
                                   2287 ;------------------------------------------------------------
                                   2288 ;	appFHSSNIC.c:379: __xdata u8 MAC_getNextChannel()
                                   2289 ;	-----------------------------------------
                                   2290 ;	 function MAC_getNextChannel
                                   2291 ;	-----------------------------------------
      000672                       2292 _MAC_getNextChannel:
                                   2293 ;	appFHSSNIC.c:381: macdata.curChanIdx++;
      000672 90 FD 98         [24] 2294 	mov	dptr,#(_macdata + 0x0009)
      000675 E0               [24] 2295 	movx	a,@dptr
      000676 FE               [12] 2296 	mov	r6,a
      000677 A3               [24] 2297 	inc	dptr
      000678 E0               [24] 2298 	movx	a,@dptr
      000679 FF               [12] 2299 	mov	r7,a
      00067A 0E               [12] 2300 	inc	r6
      00067B BE 00 01         [24] 2301 	cjne	r6,#0x00,00108$
      00067E 0F               [12] 2302 	inc	r7
      00067F                       2303 00108$:
      00067F 90 FD 98         [24] 2304 	mov	dptr,#(_macdata + 0x0009)
      000682 EE               [12] 2305 	mov	a,r6
      000683 F0               [24] 2306 	movx	@dptr,a
      000684 EF               [12] 2307 	mov	a,r7
      000685 A3               [24] 2308 	inc	dptr
      000686 F0               [24] 2309 	movx	@dptr,a
                                   2310 ;	appFHSSNIC.c:382: if (macdata.curChanIdx >= MAX_CHANNELS)
      000687 C3               [12] 2311 	clr	c
      000688 EE               [12] 2312 	mov	a,r6
      000689 94 70            [12] 2313 	subb	a,#0x70
      00068B EF               [12] 2314 	mov	a,r7
      00068C 94 03            [12] 2315 	subb	a,#0x03
      00068E 40 07            [24] 2316 	jc	00102$
                                   2317 ;	appFHSSNIC.c:384: macdata.curChanIdx = 0;
      000690 90 FD 98         [24] 2318 	mov	dptr,#(_macdata + 0x0009)
      000693 E4               [12] 2319 	clr	a
      000694 F0               [24] 2320 	movx	@dptr,a
      000695 A3               [24] 2321 	inc	dptr
      000696 F0               [24] 2322 	movx	@dptr,a
      000697                       2323 00102$:
                                   2324 ;	appFHSSNIC.c:386: return g_Channels[macdata.curChanIdx];
      000697 90 FD 98         [24] 2325 	mov	dptr,#(_macdata + 0x0009)
      00069A E0               [24] 2326 	movx	a,@dptr
      00069B FE               [12] 2327 	mov	r6,a
      00069C A3               [24] 2328 	inc	dptr
      00069D E0               [24] 2329 	movx	a,@dptr
      00069E FF               [12] 2330 	mov	r7,a
      00069F EE               [12] 2331 	mov	a,r6
      0006A0 24 00            [12] 2332 	add	a,#_g_Channels
      0006A2 F5 82            [12] 2333 	mov	dpl,a
      0006A4 EF               [12] 2334 	mov	a,r7
      0006A5 34 F0            [12] 2335 	addc	a,#(_g_Channels >> 8)
      0006A7 F5 83            [12] 2336 	mov	dph,a
      0006A9 E0               [24] 2337 	movx	a,@dptr
      0006AA F5 82            [12] 2338 	mov	dpl,a
      0006AC 22               [24] 2339 	ret
                                   2340 ;------------------------------------------------------------
                                   2341 ;Allocation info for local variables in function 't2IntHandler'
                                   2342 ;------------------------------------------------------------
                                   2343 ;packet                    Allocated with name '_t2IntHandler_packet_1_138'
                                   2344 ;------------------------------------------------------------
                                   2345 ;	appFHSSNIC.c:393: void t2IntHandler(void) __interrupt T2_VECTOR  // interrupt handler should trigger on T2 overflow
                                   2346 ;	-----------------------------------------
                                   2347 ;	 function t2IntHandler
                                   2348 ;	-----------------------------------------
      0006AD                       2349 _t2IntHandler:
      0006AD C0 21            [24] 2350 	push	bits
      0006AF C0 E0            [24] 2351 	push	acc
      0006B1 C0 F0            [24] 2352 	push	b
      0006B3 C0 82            [24] 2353 	push	dpl
      0006B5 C0 83            [24] 2354 	push	dph
      0006B7 C0 07            [24] 2355 	push	(0+7)
      0006B9 C0 06            [24] 2356 	push	(0+6)
      0006BB C0 05            [24] 2357 	push	(0+5)
      0006BD C0 04            [24] 2358 	push	(0+4)
      0006BF C0 03            [24] 2359 	push	(0+3)
      0006C1 C0 02            [24] 2360 	push	(0+2)
      0006C3 C0 01            [24] 2361 	push	(0+1)
      0006C5 C0 00            [24] 2362 	push	(0+0)
      0006C7 C0 D0            [24] 2363 	push	psw
      0006C9 75 D0 00         [24] 2364 	mov	psw,#0x00
                                   2365 ;	appFHSSNIC.c:402: if (++rf_MAC_timer == macdata.MAC_threshold)
      0006CC 90 FD 8B         [24] 2366 	mov	dptr,#_rf_MAC_timer
      0006CF E0               [24] 2367 	movx	a,@dptr
      0006D0 24 01            [12] 2368 	add	a,#0x01
      0006D2 F0               [24] 2369 	movx	@dptr,a
      0006D3 A3               [24] 2370 	inc	dptr
      0006D4 E0               [24] 2371 	movx	a,@dptr
      0006D5 34 00            [12] 2372 	addc	a,#0x00
      0006D7 F0               [24] 2373 	movx	@dptr,a
      0006D8 90 FD 90         [24] 2374 	mov	dptr,#(_macdata + 0x0001)
      0006DB E0               [24] 2375 	movx	a,@dptr
      0006DC FE               [12] 2376 	mov	r6,a
      0006DD A3               [24] 2377 	inc	dptr
      0006DE E0               [24] 2378 	movx	a,@dptr
      0006DF FF               [12] 2379 	mov	r7,a
      0006E0 90 FD 8B         [24] 2380 	mov	dptr,#_rf_MAC_timer
      0006E3 E0               [24] 2381 	movx	a,@dptr
      0006E4 FC               [12] 2382 	mov	r4,a
      0006E5 A3               [24] 2383 	inc	dptr
      0006E6 E0               [24] 2384 	movx	a,@dptr
      0006E7 FD               [12] 2385 	mov	r5,a
      0006E8 EC               [12] 2386 	mov	a,r4
      0006E9 B5 06 0B         [24] 2387 	cjne	a,ar6,00102$
      0006EC ED               [12] 2388 	mov	a,r5
      0006ED B5 07 07         [24] 2389 	cjne	a,ar7,00102$
                                   2390 ;	appFHSSNIC.c:403: rf_MAC_timer = 0;   // since we're 0-based, MAC_threshold is actually past the end of our state machine, which makes it 0 *right now*
      0006F0 90 FD 8B         [24] 2391 	mov	dptr,#_rf_MAC_timer
      0006F3 E4               [12] 2392 	clr	a
      0006F4 F0               [24] 2393 	movx	@dptr,a
      0006F5 A3               [24] 2394 	inc	dptr
      0006F6 F0               [24] 2395 	movx	@dptr,a
      0006F7                       2396 00102$:
                                   2397 ;	appFHSSNIC.c:405: switch (rf_MAC_timer)
      0006F7 90 FD 8B         [24] 2398 	mov	dptr,#_rf_MAC_timer
      0006FA E0               [24] 2399 	movx	a,@dptr
      0006FB FE               [12] 2400 	mov	r6,a
      0006FC A3               [24] 2401 	inc	dptr
      0006FD E0               [24] 2402 	movx	a,@dptr
      0006FE FF               [12] 2403 	mov	r7,a
      0006FF BE 00 05         [24] 2404 	cjne	r6,#0x00,00160$
      000702 BF 00 02         [24] 2405 	cjne	r7,#0x00,00160$
      000705 80 0B            [24] 2406 	sjmp	00103$
      000707                       2407 00160$:
      000707 BE 01 05         [24] 2408 	cjne	r6,#0x01,00161$
      00070A BF 00 02         [24] 2409 	cjne	r7,#0x00,00161$
      00070D 80 68            [24] 2410 	sjmp	00108$
      00070F                       2411 00161$:
      00070F 02 08 6F         [24] 2412 	ljmp	00111$
                                   2413 ;	appFHSSNIC.c:407: case 0:     // change channels
      000712                       2414 00103$:
                                   2415 ;	appFHSSNIC.c:409: macdata.tLastHop = T2CT | (rf_MAC_timer<<8);        // should this be based on clock and T1?
      000712 90 FD 8B         [24] 2416 	mov	dptr,#_rf_MAC_timer
      000715 E0               [24] 2417 	movx	a,@dptr
      000716 FE               [12] 2418 	mov	r6,a
      000717 A3               [24] 2419 	inc	dptr
      000718 E0               [24] 2420 	movx	a,@dptr
      000719 8E 07            [24] 2421 	mov	ar7,r6
      00071B 7E 00            [12] 2422 	mov	r6,#0x00
      00071D AC 9C            [24] 2423 	mov	r4,_T2CT
      00071F 7D 00            [12] 2424 	mov	r5,#0x00
      000721 EC               [12] 2425 	mov	a,r4
      000722 42 06            [12] 2426 	orl	ar6,a
      000724 ED               [12] 2427 	mov	a,r5
      000725 42 07            [12] 2428 	orl	ar7,a
      000727 90 FD 9C         [24] 2429 	mov	dptr,#(_macdata + 0x000d)
      00072A EE               [12] 2430 	mov	a,r6
      00072B F0               [24] 2431 	movx	@dptr,a
      00072C EF               [12] 2432 	mov	a,r7
      00072D A3               [24] 2433 	inc	dptr
      00072E F0               [24] 2434 	movx	@dptr,a
                                   2435 ;	appFHSSNIC.c:412: if (++macdata.curChanIdx >= macdata.NumChannelHops)
      00072F 90 FD 98         [24] 2436 	mov	dptr,#(_macdata + 0x0009)
      000732 E0               [24] 2437 	movx	a,@dptr
      000733 FE               [12] 2438 	mov	r6,a
      000734 A3               [24] 2439 	inc	dptr
      000735 E0               [24] 2440 	movx	a,@dptr
      000736 FF               [12] 2441 	mov	r7,a
      000737 0E               [12] 2442 	inc	r6
      000738 BE 00 01         [24] 2443 	cjne	r6,#0x00,00162$
      00073B 0F               [12] 2444 	inc	r7
      00073C                       2445 00162$:
      00073C 90 FD 98         [24] 2446 	mov	dptr,#(_macdata + 0x0009)
      00073F EE               [12] 2447 	mov	a,r6
      000740 F0               [24] 2448 	movx	@dptr,a
      000741 EF               [12] 2449 	mov	a,r7
      000742 A3               [24] 2450 	inc	dptr
      000743 F0               [24] 2451 	movx	@dptr,a
      000744 90 FD 96         [24] 2452 	mov	dptr,#(_macdata + 0x0007)
      000747 E0               [24] 2453 	movx	a,@dptr
      000748 FC               [12] 2454 	mov	r4,a
      000749 A3               [24] 2455 	inc	dptr
      00074A E0               [24] 2456 	movx	a,@dptr
      00074B FD               [12] 2457 	mov	r5,a
      00074C C3               [12] 2458 	clr	c
      00074D EE               [12] 2459 	mov	a,r6
      00074E 9C               [12] 2460 	subb	a,r4
      00074F EF               [12] 2461 	mov	a,r7
      000750 9D               [12] 2462 	subb	a,r5
      000751 40 07            [24] 2463 	jc	00105$
                                   2464 ;	appFHSSNIC.c:414: macdata.curChanIdx = 0;
      000753 90 FD 98         [24] 2465 	mov	dptr,#(_macdata + 0x0009)
      000756 E4               [12] 2466 	clr	a
      000757 F0               [24] 2467 	movx	@dptr,a
      000758 A3               [24] 2468 	inc	dptr
      000759 F0               [24] 2469 	movx	@dptr,a
      00075A                       2470 00105$:
                                   2471 ;	appFHSSNIC.c:419: if (MARCSTATE == MARC_STATE_TX)
      00075A 90 DF 3B         [24] 2472 	mov	dptr,#_MARCSTATE
      00075D E0               [24] 2473 	movx	a,@dptr
      00075E FF               [12] 2474 	mov	r7,a
      00075F BF 13 03         [24] 2475 	cjne	r7,#0x13,00107$
                                   2476 ;	appFHSSNIC.c:420: return;
      000762 02 09 6A         [24] 2477 	ljmp	00123$
      000765                       2478 00107$:
                                   2479 ;	appFHSSNIC.c:424: MAC_set_chanidx(macdata.curChanIdx);
      000765 90 FD 98         [24] 2480 	mov	dptr,#(_macdata + 0x0009)
      000768 E0               [24] 2481 	movx	a,@dptr
      000769 FE               [12] 2482 	mov	r6,a
      00076A A3               [24] 2483 	inc	dptr
      00076B E0               [24] 2484 	movx	a,@dptr
      00076C FF               [12] 2485 	mov	r7,a
      00076D 8E 82            [24] 2486 	mov	dpl,r6
      00076F 8F 83            [24] 2487 	mov	dph,r7
      000771 12 06 2D         [24] 2488 	lcall	_MAC_set_chanidx
                                   2489 ;	appFHSSNIC.c:435: break;
      000774 02 09 6A         [24] 2490 	ljmp	00123$
                                   2491 ;	appFHSSNIC.c:437: case 1:
      000777                       2492 00108$:
                                   2493 ;	appFHSSNIC.c:439: if (macdata.mac_state == MAC_STATE_SYNCINGMASTER)
      000777 90 FD 8F         [24] 2494 	mov	dptr,#_macdata
      00077A E0               [24] 2495 	movx	a,@dptr
      00077B FF               [12] 2496 	mov	r7,a
      00077C BF 05 02         [24] 2497 	cjne	r7,#0x05,00166$
      00077F 80 03            [24] 2498 	sjmp	00167$
      000781                       2499 00166$:
      000781 02 09 6A         [24] 2500 	ljmp	00123$
      000784                       2501 00167$:
                                   2502 ;	appFHSSNIC.c:441: sleepMillis(FHSS_TX_SLEEP_DELAY);
      000784 90 00 19         [24] 2503 	mov	dptr,#0x0019
      000787 12 28 65         [24] 2504 	lcall	_sleepMillis
                                   2505 ;	appFHSSNIC.c:442: packet[0] = 28;
      00078A 90 F5 67         [24] 2506 	mov	dptr,#_t2IntHandler_packet_1_138
      00078D 74 1C            [12] 2507 	mov	a,#0x1C
      00078F F0               [24] 2508 	movx	@dptr,a
                                   2509 ;	appFHSSNIC.c:443: packet[1] = macdata.curChanIdx & 0xff;
      000790 90 FD 98         [24] 2510 	mov	dptr,#(_macdata + 0x0009)
      000793 E0               [24] 2511 	movx	a,@dptr
      000794 FE               [12] 2512 	mov	r6,a
      000795 A3               [24] 2513 	inc	dptr
      000796 E0               [24] 2514 	movx	a,@dptr
      000797 90 F5 68         [24] 2515 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0001)
      00079A EE               [12] 2516 	mov	a,r6
      00079B F0               [24] 2517 	movx	@dptr,a
                                   2518 ;	appFHSSNIC.c:444: packet[2] = macdata.curChanIdx >> 8;
      00079C 90 FD 98         [24] 2519 	mov	dptr,#(_macdata + 0x0009)
      00079F E0               [24] 2520 	movx	a,@dptr
      0007A0 A3               [24] 2521 	inc	dptr
      0007A1 E0               [24] 2522 	movx	a,@dptr
      0007A2 90 F5 69         [24] 2523 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0002)
      0007A5 F0               [24] 2524 	movx	@dptr,a
                                   2525 ;	appFHSSNIC.c:445: packet[3] =  'B';
      0007A6 90 F5 6A         [24] 2526 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0003)
      0007A9 74 42            [12] 2527 	mov	a,#0x42
      0007AB F0               [24] 2528 	movx	@dptr,a
                                   2529 ;	appFHSSNIC.c:446: packet[4] =  'L';
      0007AC 90 F5 6B         [24] 2530 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0004)
      0007AF 74 4C            [12] 2531 	mov	a,#0x4C
      0007B1 F0               [24] 2532 	movx	@dptr,a
                                   2533 ;	appFHSSNIC.c:447: packet[5] =  'A';
      0007B2 90 F5 6C         [24] 2534 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0005)
      0007B5 74 41            [12] 2535 	mov	a,#0x41
      0007B7 F0               [24] 2536 	movx	@dptr,a
                                   2537 ;	appFHSSNIC.c:448: packet[6] =  'H';
      0007B8 90 F5 6D         [24] 2538 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0006)
      0007BB 74 48            [12] 2539 	mov	a,#0x48
      0007BD F0               [24] 2540 	movx	@dptr,a
                                   2541 ;	appFHSSNIC.c:449: packet[7] =  'B';
      0007BE 90 F5 6E         [24] 2542 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0007)
      0007C1 74 42            [12] 2543 	mov	a,#0x42
      0007C3 F0               [24] 2544 	movx	@dptr,a
                                   2545 ;	appFHSSNIC.c:450: packet[8] =  'L';
      0007C4 90 F5 6F         [24] 2546 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0008)
      0007C7 74 4C            [12] 2547 	mov	a,#0x4C
      0007C9 F0               [24] 2548 	movx	@dptr,a
                                   2549 ;	appFHSSNIC.c:451: packet[9] =  'A';
      0007CA 90 F5 70         [24] 2550 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0009)
      0007CD 74 41            [12] 2551 	mov	a,#0x41
      0007CF F0               [24] 2552 	movx	@dptr,a
                                   2553 ;	appFHSSNIC.c:452: packet[10] = 'H';
      0007D0 90 F5 71         [24] 2554 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000a)
      0007D3 74 48            [12] 2555 	mov	a,#0x48
      0007D5 F0               [24] 2556 	movx	@dptr,a
                                   2557 ;	appFHSSNIC.c:453: packet[11] = 'B';
      0007D6 90 F5 72         [24] 2558 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000b)
      0007D9 74 42            [12] 2559 	mov	a,#0x42
      0007DB F0               [24] 2560 	movx	@dptr,a
                                   2561 ;	appFHSSNIC.c:454: packet[12] = 'L';
      0007DC 90 F5 73         [24] 2562 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000c)
      0007DF 74 4C            [12] 2563 	mov	a,#0x4C
      0007E1 F0               [24] 2564 	movx	@dptr,a
                                   2565 ;	appFHSSNIC.c:455: packet[13] = 'A';
      0007E2 90 F5 74         [24] 2566 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000d)
      0007E5 74 41            [12] 2567 	mov	a,#0x41
      0007E7 F0               [24] 2568 	movx	@dptr,a
                                   2569 ;	appFHSSNIC.c:456: packet[14] = 'H';
      0007E8 90 F5 75         [24] 2570 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000e)
      0007EB 74 48            [12] 2571 	mov	a,#0x48
      0007ED F0               [24] 2572 	movx	@dptr,a
                                   2573 ;	appFHSSNIC.c:457: packet[15] = 'B';
      0007EE 90 F5 76         [24] 2574 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x000f)
      0007F1 74 42            [12] 2575 	mov	a,#0x42
      0007F3 F0               [24] 2576 	movx	@dptr,a
                                   2577 ;	appFHSSNIC.c:458: packet[16] = 'L';
      0007F4 90 F5 77         [24] 2578 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0010)
      0007F7 74 4C            [12] 2579 	mov	a,#0x4C
      0007F9 F0               [24] 2580 	movx	@dptr,a
                                   2581 ;	appFHSSNIC.c:459: packet[17] = 'A';
      0007FA 90 F5 78         [24] 2582 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0011)
      0007FD 74 41            [12] 2583 	mov	a,#0x41
      0007FF F0               [24] 2584 	movx	@dptr,a
                                   2585 ;	appFHSSNIC.c:460: packet[18] = 'H';
      000800 90 F5 79         [24] 2586 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0012)
      000803 74 48            [12] 2587 	mov	a,#0x48
      000805 F0               [24] 2588 	movx	@dptr,a
                                   2589 ;	appFHSSNIC.c:461: packet[19] = 'B';
      000806 90 F5 7A         [24] 2590 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0013)
      000809 74 42            [12] 2591 	mov	a,#0x42
      00080B F0               [24] 2592 	movx	@dptr,a
                                   2593 ;	appFHSSNIC.c:462: packet[20] = 'L';
      00080C 90 F5 7B         [24] 2594 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0014)
      00080F 74 4C            [12] 2595 	mov	a,#0x4C
      000811 F0               [24] 2596 	movx	@dptr,a
                                   2597 ;	appFHSSNIC.c:463: packet[21] = 'A';
      000812 90 F5 7C         [24] 2598 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0015)
      000815 74 41            [12] 2599 	mov	a,#0x41
      000817 F0               [24] 2600 	movx	@dptr,a
                                   2601 ;	appFHSSNIC.c:464: packet[22] = 'H';
      000818 90 F5 7D         [24] 2602 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0016)
      00081B 74 48            [12] 2603 	mov	a,#0x48
      00081D F0               [24] 2604 	movx	@dptr,a
                                   2605 ;	appFHSSNIC.c:465: packet[23] = 'B';
      00081E 90 F5 7E         [24] 2606 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0017)
      000821 74 42            [12] 2607 	mov	a,#0x42
      000823 F0               [24] 2608 	movx	@dptr,a
                                   2609 ;	appFHSSNIC.c:466: packet[24] = 'L';
      000824 90 F5 7F         [24] 2610 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0018)
      000827 74 4C            [12] 2611 	mov	a,#0x4C
      000829 F0               [24] 2612 	movx	@dptr,a
                                   2613 ;	appFHSSNIC.c:467: packet[25] = 'A';
      00082A 90 F5 80         [24] 2614 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0019)
      00082D 74 41            [12] 2615 	mov	a,#0x41
      00082F F0               [24] 2616 	movx	@dptr,a
                                   2617 ;	appFHSSNIC.c:468: packet[26] = 'H';
      000830 90 F5 81         [24] 2618 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x001a)
      000833 74 48            [12] 2619 	mov	a,#0x48
      000835 F0               [24] 2620 	movx	@dptr,a
                                   2621 ;	appFHSSNIC.c:469: packet[27] = ' ';
      000836 90 F5 82         [24] 2622 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x001b)
      000839 74 20            [12] 2623 	mov	a,#0x20
      00083B F0               [24] 2624 	movx	@dptr,a
                                   2625 ;	appFHSSNIC.c:471: transmit((__xdata u8*)&packet[1], 28, 0, 0);
      00083C 90 FD A4         [24] 2626 	mov	dptr,#_transmit_PARM_2
      00083F 74 1C            [12] 2627 	mov	a,#0x1C
      000841 F0               [24] 2628 	movx	@dptr,a
      000842 E4               [12] 2629 	clr	a
      000843 A3               [24] 2630 	inc	dptr
      000844 F0               [24] 2631 	movx	@dptr,a
      000845 90 FD A6         [24] 2632 	mov	dptr,#_transmit_PARM_3
      000848 F0               [24] 2633 	movx	@dptr,a
      000849 A3               [24] 2634 	inc	dptr
      00084A F0               [24] 2635 	movx	@dptr,a
      00084B 90 FD A8         [24] 2636 	mov	dptr,#_transmit_PARM_4
      00084E F0               [24] 2637 	movx	@dptr,a
      00084F A3               [24] 2638 	inc	dptr
      000850 F0               [24] 2639 	movx	@dptr,a
      000851 90 F5 68         [24] 2640 	mov	dptr,#(_t2IntHandler_packet_1_138 + 0x0001)
      000854 12 1F 49         [24] 2641 	lcall	_transmit
                                   2642 ;	appFHSSNIC.c:472: macdata.synched_chans++;
      000857 90 FD A2         [24] 2643 	mov	dptr,#(_macdata + 0x0013)
      00085A E0               [24] 2644 	movx	a,@dptr
      00085B FE               [12] 2645 	mov	r6,a
      00085C A3               [24] 2646 	inc	dptr
      00085D E0               [24] 2647 	movx	a,@dptr
      00085E FF               [12] 2648 	mov	r7,a
      00085F 0E               [12] 2649 	inc	r6
      000860 BE 00 01         [24] 2650 	cjne	r6,#0x00,00168$
      000863 0F               [12] 2651 	inc	r7
      000864                       2652 00168$:
      000864 90 FD A2         [24] 2653 	mov	dptr,#(_macdata + 0x0013)
      000867 EE               [12] 2654 	mov	a,r6
      000868 F0               [24] 2655 	movx	@dptr,a
      000869 EF               [12] 2656 	mov	a,r7
      00086A A3               [24] 2657 	inc	dptr
      00086B F0               [24] 2658 	movx	@dptr,a
                                   2659 ;	appFHSSNIC.c:473: break;      // don't want to do anything else if we're in this state.
      00086C 02 09 6A         [24] 2660 	ljmp	00123$
                                   2661 ;	appFHSSNIC.c:477: default:    // all other ticks we can transmit
      00086F                       2662 00111$:
                                   2663 ;	appFHSSNIC.c:480: switch (macdata.mac_state)
      00086F 90 FD 8F         [24] 2664 	mov	dptr,#_macdata
      000872 E0               [24] 2665 	movx	a,@dptr
      000873 FF               [12] 2666 	mov	r7,a
      000874 BF 03 02         [24] 2667 	cjne	r7,#0x03,00169$
      000877 80 65            [24] 2668 	sjmp	00116$
      000879                       2669 00169$:
      000879 BF 04 02         [24] 2670 	cjne	r7,#0x04,00170$
      00087C 80 08            [24] 2671 	sjmp	00113$
      00087E                       2672 00170$:
      00087E BF 05 02         [24] 2673 	cjne	r7,#0x05,00171$
      000881 80 03            [24] 2674 	sjmp	00172$
      000883                       2675 00171$:
      000883 02 09 6A         [24] 2676 	ljmp	00123$
      000886                       2677 00172$:
                                   2678 ;	appFHSSNIC.c:483: case MAC_STATE_SYNC_MASTER:
      000886                       2679 00113$:
                                   2680 ;	appFHSSNIC.c:484: if (100 < (clock - macdata.tLastStateChange))   // periodically shift back to beaconing
      000886 90 FD 9A         [24] 2681 	mov	dptr,#(_macdata + 0x000b)
      000889 E0               [24] 2682 	movx	a,@dptr
      00088A FE               [12] 2683 	mov	r6,a
      00088B A3               [24] 2684 	inc	dptr
      00088C E0               [24] 2685 	movx	a,@dptr
      00088D FF               [12] 2686 	mov	r7,a
      00088E 90 FD B5         [24] 2687 	mov	dptr,#_clock
      000891 E0               [24] 2688 	movx	a,@dptr
      000892 FA               [12] 2689 	mov	r2,a
      000893 A3               [24] 2690 	inc	dptr
      000894 E0               [24] 2691 	movx	a,@dptr
      000895 FB               [12] 2692 	mov	r3,a
      000896 A3               [24] 2693 	inc	dptr
      000897 E0               [24] 2694 	movx	a,@dptr
      000898 FC               [12] 2695 	mov	r4,a
      000899 A3               [24] 2696 	inc	dptr
      00089A E0               [24] 2697 	movx	a,@dptr
      00089B FD               [12] 2698 	mov	r5,a
      00089C 8E 00            [24] 2699 	mov	ar0,r6
      00089E 8F 01            [24] 2700 	mov	ar1,r7
      0008A0 E4               [12] 2701 	clr	a
      0008A1 FE               [12] 2702 	mov	r6,a
      0008A2 FF               [12] 2703 	mov	r7,a
      0008A3 EA               [12] 2704 	mov	a,r2
      0008A4 C3               [12] 2705 	clr	c
      0008A5 98               [12] 2706 	subb	a,r0
      0008A6 FA               [12] 2707 	mov	r2,a
      0008A7 EB               [12] 2708 	mov	a,r3
      0008A8 99               [12] 2709 	subb	a,r1
      0008A9 FB               [12] 2710 	mov	r3,a
      0008AA EC               [12] 2711 	mov	a,r4
      0008AB 9E               [12] 2712 	subb	a,r6
      0008AC FC               [12] 2713 	mov	r4,a
      0008AD ED               [12] 2714 	mov	a,r5
      0008AE 9F               [12] 2715 	subb	a,r7
      0008AF FD               [12] 2716 	mov	r5,a
      0008B0 C3               [12] 2717 	clr	c
      0008B1 74 64            [12] 2718 	mov	a,#0x64
      0008B3 9A               [12] 2719 	subb	a,r2
      0008B4 E4               [12] 2720 	clr	a
      0008B5 9B               [12] 2721 	subb	a,r3
      0008B6 E4               [12] 2722 	clr	a
      0008B7 9C               [12] 2723 	subb	a,r4
      0008B8 E4               [12] 2724 	clr	a
      0008B9 9D               [12] 2725 	subb	a,r5
      0008BA 50 22            [24] 2726 	jnc	00116$
                                   2727 ;	appFHSSNIC.c:486: debug("SYNCH_MASTER -> SYNCINGMASTER");
      0008BC 90 31 9F         [24] 2728 	mov	dptr,#___str_5
      0008BF 12 1C B2         [24] 2729 	lcall	_debug
                                   2730 ;	appFHSSNIC.c:487: macdata.mac_state = MAC_STATE_SYNCINGMASTER;
      0008C2 90 FD 8F         [24] 2731 	mov	dptr,#_macdata
      0008C5 74 05            [12] 2732 	mov	a,#0x05
      0008C7 F0               [24] 2733 	movx	@dptr,a
                                   2734 ;	appFHSSNIC.c:488: macdata.tLastStateChange = clock;
      0008C8 90 FD B5         [24] 2735 	mov	dptr,#_clock
      0008CB E0               [24] 2736 	movx	a,@dptr
      0008CC FC               [12] 2737 	mov	r4,a
      0008CD A3               [24] 2738 	inc	dptr
      0008CE E0               [24] 2739 	movx	a,@dptr
      0008CF FD               [12] 2740 	mov	r5,a
      0008D0 A3               [24] 2741 	inc	dptr
      0008D1 E0               [24] 2742 	movx	a,@dptr
      0008D2 FE               [12] 2743 	mov	r6,a
      0008D3 A3               [24] 2744 	inc	dptr
      0008D4 E0               [24] 2745 	movx	a,@dptr
      0008D5 FF               [12] 2746 	mov	r7,a
      0008D6 90 FD 9A         [24] 2747 	mov	dptr,#(_macdata + 0x000b)
      0008D9 EC               [12] 2748 	mov	a,r4
      0008DA F0               [24] 2749 	movx	@dptr,a
      0008DB ED               [12] 2750 	mov	a,r5
      0008DC A3               [24] 2751 	inc	dptr
      0008DD F0               [24] 2752 	movx	@dptr,a
                                   2753 ;	appFHSSNIC.c:491: case MAC_STATE_SYNCHED:
      0008DE                       2754 00116$:
                                   2755 ;	appFHSSNIC.c:501: if ( g_txMsgQueue[macdata.txMsgIdxDone][0])      // if length byte >0
      0008DE 90 FD A1         [24] 2756 	mov	dptr,#(_macdata + 0x0012)
      0008E1 E0               [24] 2757 	movx	a,@dptr
      0008E2 75 F0 F1         [24] 2758 	mov	b,#0xF1
      0008E5 A4               [48] 2759 	mul	ab
      0008E6 24 72            [12] 2760 	add	a,#_g_txMsgQueue
      0008E8 FE               [12] 2761 	mov	r6,a
      0008E9 74 F3            [12] 2762 	mov	a,#(_g_txMsgQueue >> 8)
      0008EB 35 F0            [12] 2763 	addc	a,b
      0008ED FF               [12] 2764 	mov	r7,a
      0008EE 8E 82            [24] 2765 	mov	dpl,r6
      0008F0 8F 83            [24] 2766 	mov	dph,r7
      0008F2 E0               [24] 2767 	movx	a,@dptr
      0008F3 60 75            [24] 2768 	jz	00123$
                                   2769 ;	appFHSSNIC.c:504: sleepMillis(FHSS_TX_SLEEP_DELAY);
      0008F5 90 00 19         [24] 2770 	mov	dptr,#0x0019
      0008F8 12 28 65         [24] 2771 	lcall	_sleepMillis
                                   2772 ;	appFHSSNIC.c:505: transmit(&g_txMsgQueue[macdata.txMsgIdxDone][!(PKTCTRL0&1)], g_txMsgQueue[macdata.txMsgIdxDone][0], 0, 0);
      0008FB 90 FD A1         [24] 2773 	mov	dptr,#(_macdata + 0x0012)
      0008FE E0               [24] 2774 	movx	a,@dptr
      0008FF 75 F0 F1         [24] 2775 	mov	b,#0xF1
      000902 A4               [48] 2776 	mul	ab
      000903 24 72            [12] 2777 	add	a,#_g_txMsgQueue
      000905 FE               [12] 2778 	mov	r6,a
      000906 74 F3            [12] 2779 	mov	a,#(_g_txMsgQueue >> 8)
      000908 35 F0            [12] 2780 	addc	a,b
      00090A FF               [12] 2781 	mov	r7,a
      00090B 90 DF 04         [24] 2782 	mov	dptr,#_PKTCTRL0
      00090E E0               [24] 2783 	movx	a,@dptr
      00090F 54 01            [12] 2784 	anl	a,#0x01
      000911 FD               [12] 2785 	mov	r5,a
      000912 B4 01 00         [24] 2786 	cjne	a,#0x01,00175$
      000915                       2787 00175$:
      000915 E4               [12] 2788 	clr	a
      000916 33               [12] 2789 	rlc	a
      000917 2E               [12] 2790 	add	a,r6
      000918 FD               [12] 2791 	mov	r5,a
      000919 E4               [12] 2792 	clr	a
      00091A 3F               [12] 2793 	addc	a,r7
      00091B FC               [12] 2794 	mov	r4,a
      00091C 8E 82            [24] 2795 	mov	dpl,r6
      00091E 8F 83            [24] 2796 	mov	dph,r7
      000920 E0               [24] 2797 	movx	a,@dptr
      000921 90 FD A4         [24] 2798 	mov	dptr,#_transmit_PARM_2
      000924 F0               [24] 2799 	movx	@dptr,a
      000925 E4               [12] 2800 	clr	a
      000926 A3               [24] 2801 	inc	dptr
      000927 F0               [24] 2802 	movx	@dptr,a
      000928 90 FD A6         [24] 2803 	mov	dptr,#_transmit_PARM_3
      00092B F0               [24] 2804 	movx	@dptr,a
      00092C A3               [24] 2805 	inc	dptr
      00092D F0               [24] 2806 	movx	@dptr,a
      00092E 90 FD A8         [24] 2807 	mov	dptr,#_transmit_PARM_4
      000931 F0               [24] 2808 	movx	@dptr,a
      000932 A3               [24] 2809 	inc	dptr
      000933 F0               [24] 2810 	movx	@dptr,a
      000934 8D 82            [24] 2811 	mov	dpl,r5
      000936 8C 83            [24] 2812 	mov	dph,r4
      000938 12 1F 49         [24] 2813 	lcall	_transmit
                                   2814 ;	appFHSSNIC.c:507: g_txMsgQueue[macdata.txMsgIdxDone][0] = 0;
      00093B 90 FD A1         [24] 2815 	mov	dptr,#(_macdata + 0x0012)
      00093E E0               [24] 2816 	movx	a,@dptr
      00093F 75 F0 F1         [24] 2817 	mov	b,#0xF1
      000942 A4               [48] 2818 	mul	ab
      000943 24 72            [12] 2819 	add	a,#_g_txMsgQueue
      000945 F5 82            [12] 2820 	mov	dpl,a
      000947 74 F3            [12] 2821 	mov	a,#(_g_txMsgQueue >> 8)
      000949 35 F0            [12] 2822 	addc	a,b
      00094B F5 83            [12] 2823 	mov	dph,a
      00094D E4               [12] 2824 	clr	a
      00094E F0               [24] 2825 	movx	@dptr,a
                                   2826 ;	appFHSSNIC.c:509: if (++macdata.txMsgIdxDone >= MAX_TX_MSGS)
      00094F 90 FD A1         [24] 2827 	mov	dptr,#(_macdata + 0x0012)
      000952 E0               [24] 2828 	movx	a,@dptr
      000953 FF               [12] 2829 	mov	r7,a
      000954 0F               [12] 2830 	inc	r7
      000955 90 FD A1         [24] 2831 	mov	dptr,#(_macdata + 0x0012)
      000958 EF               [12] 2832 	mov	a,r7
      000959 F0               [24] 2833 	movx	@dptr,a
      00095A BF 02 00         [24] 2834 	cjne	r7,#0x02,00176$
      00095D                       2835 00176$:
      00095D 40 05            [24] 2836 	jc	00118$
                                   2837 ;	appFHSSNIC.c:511: macdata.txMsgIdxDone = 0;
      00095F 90 FD A1         [24] 2838 	mov	dptr,#(_macdata + 0x0012)
      000962 E4               [12] 2839 	clr	a
      000963 F0               [24] 2840 	movx	@dptr,a
      000964                       2841 00118$:
                                   2842 ;	appFHSSNIC.c:513: debug("FHSSxmit done");
      000964 90 31 BD         [24] 2843 	mov	dptr,#___str_6
      000967 12 1C B2         [24] 2844 	lcall	_debug
                                   2845 ;	appFHSSNIC.c:516: }
      00096A                       2846 00123$:
      00096A D0 D0            [24] 2847 	pop	psw
      00096C D0 00            [24] 2848 	pop	(0+0)
      00096E D0 01            [24] 2849 	pop	(0+1)
      000970 D0 02            [24] 2850 	pop	(0+2)
      000972 D0 03            [24] 2851 	pop	(0+3)
      000974 D0 04            [24] 2852 	pop	(0+4)
      000976 D0 05            [24] 2853 	pop	(0+5)
      000978 D0 06            [24] 2854 	pop	(0+6)
      00097A D0 07            [24] 2855 	pop	(0+7)
      00097C D0 83            [24] 2856 	pop	dph
      00097E D0 82            [24] 2857 	pop	dpl
      000980 D0 F0            [24] 2858 	pop	b
      000982 D0 E0            [24] 2859 	pop	acc
      000984 D0 21            [24] 2860 	pop	bits
      000986 32               [24] 2861 	reti
                                   2862 ;------------------------------------------------------------
                                   2863 ;Allocation info for local variables in function 't3IntHandler'
                                   2864 ;------------------------------------------------------------
                                   2865 ;	appFHSSNIC.c:519: void t3IntHandler(void) __interrupt T3_VECTOR
                                   2866 ;	-----------------------------------------
                                   2867 ;	 function t3IntHandler
                                   2868 ;	-----------------------------------------
      000987                       2869 _t3IntHandler:
                                   2870 ;	appFHSSNIC.c:523: }
      000987 32               [24] 2871 	reti
                                   2872 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2873 ;	eliminated unneeded push/pop psw
                                   2874 ;	eliminated unneeded push/pop dpl
                                   2875 ;	eliminated unneeded push/pop dph
                                   2876 ;	eliminated unneeded push/pop b
                                   2877 ;	eliminated unneeded push/pop acc
                                   2878 ;------------------------------------------------------------
                                   2879 ;Allocation info for local variables in function 'init_FHSS'
                                   2880 ;------------------------------------------------------------
                                   2881 ;	appFHSSNIC.c:525: void init_FHSS(void)
                                   2882 ;	-----------------------------------------
                                   2883 ;	 function init_FHSS
                                   2884 ;	-----------------------------------------
      000988                       2885 _init_FHSS:
                                   2886 ;	appFHSSNIC.c:527: macdata.mac_state = 0;
      000988 90 FD 8F         [24] 2887 	mov	dptr,#_macdata
      00098B E4               [12] 2888 	clr	a
      00098C F0               [24] 2889 	movx	@dptr,a
                                   2890 ;	appFHSSNIC.c:528: macdata.txMsgIdx = 0;
      00098D 90 FD A0         [24] 2891 	mov	dptr,#(_macdata + 0x0011)
      000990 F0               [24] 2892 	movx	@dptr,a
                                   2893 ;	appFHSSNIC.c:529: macdata.txMsgIdxDone = 0;
      000991 90 FD A1         [24] 2894 	mov	dptr,#(_macdata + 0x0012)
      000994 F0               [24] 2895 	movx	@dptr,a
                                   2896 ;	appFHSSNIC.c:530: macdata.curChanIdx = 0;
      000995 90 FD 98         [24] 2897 	mov	dptr,#(_macdata + 0x0009)
      000998 F0               [24] 2898 	movx	@dptr,a
      000999 A3               [24] 2899 	inc	dptr
      00099A F0               [24] 2900 	movx	@dptr,a
                                   2901 ;	appFHSSNIC.c:531: macdata.NumChannels = DEFAULT_NUM_CHANS;
      00099B 90 FD 94         [24] 2902 	mov	dptr,#(_macdata + 0x0005)
      00099E 74 53            [12] 2903 	mov	a,#0x53
      0009A0 F0               [24] 2904 	movx	@dptr,a
      0009A1 E4               [12] 2905 	clr	a
      0009A2 A3               [24] 2906 	inc	dptr
      0009A3 F0               [24] 2907 	movx	@dptr,a
                                   2908 ;	appFHSSNIC.c:532: macdata.NumChannelHops = DEFAULT_NUM_CHANHOPS;
      0009A4 90 FD 96         [24] 2909 	mov	dptr,#(_macdata + 0x0007)
      0009A7 74 53            [12] 2910 	mov	a,#0x53
      0009A9 F0               [24] 2911 	movx	@dptr,a
      0009AA E4               [12] 2912 	clr	a
      0009AB A3               [24] 2913 	inc	dptr
      0009AC F0               [24] 2914 	movx	@dptr,a
                                   2915 ;	appFHSSNIC.c:533: macdata.tLastHop = 0;
      0009AD 90 FD 9C         [24] 2916 	mov	dptr,#(_macdata + 0x000d)
      0009B0 F0               [24] 2917 	movx	@dptr,a
      0009B1 A3               [24] 2918 	inc	dptr
      0009B2 F0               [24] 2919 	movx	@dptr,a
                                   2920 ;	appFHSSNIC.c:534: macdata.tLastStateChange = 0;
      0009B3 90 FD 9A         [24] 2921 	mov	dptr,#(_macdata + 0x000b)
      0009B6 F0               [24] 2922 	movx	@dptr,a
      0009B7 A3               [24] 2923 	inc	dptr
      0009B8 F0               [24] 2924 	movx	@dptr,a
                                   2925 ;	appFHSSNIC.c:535: macdata.MAC_threshold = 6;
      0009B9 90 FD 90         [24] 2926 	mov	dptr,#(_macdata + 0x0001)
      0009BC 74 06            [12] 2927 	mov	a,#0x06
      0009BE F0               [24] 2928 	movx	@dptr,a
      0009BF E4               [12] 2929 	clr	a
      0009C0 A3               [24] 2930 	inc	dptr
      0009C1 F0               [24] 2931 	movx	@dptr,a
                                   2932 ;	appFHSSNIC.c:536: macdata.MAC_timer = 0;
      0009C2 90 FD 92         [24] 2933 	mov	dptr,#(_macdata + 0x0003)
      0009C5 F0               [24] 2934 	movx	@dptr,a
      0009C6 A3               [24] 2935 	inc	dptr
      0009C7 F0               [24] 2936 	movx	@dptr,a
                                   2937 ;	appFHSSNIC.c:537: macdata.desperatelySeeking = 0;
      0009C8 90 FD 9E         [24] 2938 	mov	dptr,#(_macdata + 0x000f)
      0009CB F0               [24] 2939 	movx	@dptr,a
      0009CC A3               [24] 2940 	inc	dptr
      0009CD F0               [24] 2941 	movx	@dptr,a
                                   2942 ;	appFHSSNIC.c:538: macdata.synched_chans = 0;
      0009CE 90 FD A2         [24] 2943 	mov	dptr,#(_macdata + 0x0013)
      0009D1 F0               [24] 2944 	movx	@dptr,a
      0009D2 A3               [24] 2945 	inc	dptr
      0009D3 F0               [24] 2946 	movx	@dptr,a
                                   2947 ;	appFHSSNIC.c:540: MAC_initChannels();
      0009D4 12 01 33         [24] 2948 	lcall	_MAC_initChannels
                                   2949 ;	appFHSSNIC.c:542: macdata.mac_state = MAC_STATE_NONHOPPING;   // this is basic NIC functionality
      0009D7 90 FD 8F         [24] 2950 	mov	dptr,#_macdata
      0009DA E4               [12] 2951 	clr	a
      0009DB F0               [24] 2952 	movx	@dptr,a
                                   2953 ;	appFHSSNIC.c:552: T2PR = 0xdc;        
      0009DC 75 9D DC         [24] 2954 	mov	_T2PR,#0xDC
                                   2955 ;	appFHSSNIC.c:553: T2CTL |= T2CTL_TIP_64;  // 64, 128, 256, 1024
      0009DF 85 9E 9E         [24] 2956 	mov	_T2CTL,_T2CTL
                                   2957 ;	appFHSSNIC.c:587: T2CTL |= T2CTL_TIG;
      0009E2 43 9E 04         [24] 2958 	orl	_T2CTL,#0x04
                                   2959 ;	appFHSSNIC.c:593: T3CTL |= T3CTL_START;
      0009E5 43 CB 10         [24] 2960 	orl	_T3CTL,#0x10
      0009E8 22               [24] 2961 	ret
                                   2962 ;------------------------------------------------------------
                                   2963 ;Allocation info for local variables in function 'init_MAC'
                                   2964 ;------------------------------------------------------------
                                   2965 ;	appFHSSNIC.c:597: void init_MAC(void)
                                   2966 ;	-----------------------------------------
                                   2967 ;	 function init_MAC
                                   2968 ;	-----------------------------------------
      0009E9                       2969 _init_MAC:
                                   2970 ;	appFHSSNIC.c:599: init_FHSS();
      0009E9 02 09 88         [24] 2971 	ljmp	_init_FHSS
                                   2972 ;------------------------------------------------------------
                                   2973 ;Allocation info for local variables in function 'appMainInit'
                                   2974 ;------------------------------------------------------------
                                   2975 ;	appFHSSNIC.c:610: void appMainInit(void)
                                   2976 ;	-----------------------------------------
                                   2977 ;	 function appMainInit
                                   2978 ;	-----------------------------------------
      0009EC                       2979 _appMainInit:
                                   2980 ;	appFHSSNIC.c:613: registerCb_ep5( appHandleEP5 );
      0009EC 90 0E 10         [24] 2981 	mov	dptr,#_appHandleEP5
      0009EF 12 1C 39         [24] 2982 	lcall	_registerCb_ep5
                                   2983 ;	appFHSSNIC.c:615: clock = 0;
      0009F2 90 FD B5         [24] 2984 	mov	dptr,#_clock
      0009F5 E4               [12] 2985 	clr	a
      0009F6 F0               [24] 2986 	movx	@dptr,a
      0009F7 A3               [24] 2987 	inc	dptr
      0009F8 F0               [24] 2988 	movx	@dptr,a
      0009F9 A3               [24] 2989 	inc	dptr
      0009FA F0               [24] 2990 	movx	@dptr,a
      0009FB A3               [24] 2991 	inc	dptr
      0009FC F0               [24] 2992 	movx	@dptr,a
                                   2993 ;	appFHSSNIC.c:617: init_MAC();
      0009FD 12 09 E9         [24] 2994 	lcall	_init_MAC
                                   2995 ;	appFHSSNIC.c:619: processbuffer = 0;
      000A00 90 F5 83         [24] 2996 	mov	dptr,#_processbuffer
      000A03 E4               [12] 2997 	clr	a
      000A04 F0               [24] 2998 	movx	@dptr,a
                                   2999 ;	appFHSSNIC.c:620: chan_table = rfrxbuf[0];
      000A05 90 F5 84         [24] 3000 	mov	dptr,#_chan_table
      000A08 74 80            [12] 3001 	mov	a,#_rfrxbuf
      000A0A F0               [24] 3002 	movx	@dptr,a
      000A0B 74 F9            [12] 3003 	mov	a,#(_rfrxbuf >> 8)
      000A0D A3               [24] 3004 	inc	dptr
      000A0E F0               [24] 3005 	movx	@dptr,a
      000A0F 22               [24] 3006 	ret
                                   3007 ;------------------------------------------------------------
                                   3008 ;Allocation info for local variables in function 'appMainLoop'
                                   3009 ;------------------------------------------------------------
                                   3010 ;	appFHSSNIC.c:626: void appMainLoop(void)
                                   3011 ;	-----------------------------------------
                                   3012 ;	 function appMainLoop
                                   3013 ;	-----------------------------------------
      000A10                       3014 _appMainLoop:
                                   3015 ;	appFHSSNIC.c:629: switch  (macdata.mac_state)
      000A10 90 FD 8F         [24] 3016 	mov	dptr,#_macdata
      000A13 E0               [24] 3017 	movx	a,@dptr
      000A14 FF               [12] 3018 	mov	r7,a
      000A15 BF 00 03         [24] 3019 	cjne	r7,#0x00,00271$
      000A18 02 0D 45         [24] 3020 	ljmp	00154$
      000A1B                       3021 00271$:
      000A1B BF 01 03         [24] 3022 	cjne	r7,#0x01,00272$
      000A1E 02 0C 16         [24] 3023 	ljmp	00139$
      000A21                       3024 00272$:
      000A21 BF 02 03         [24] 3025 	cjne	r7,#0x02,00273$
      000A24 02 0B 14         [24] 3026 	ljmp	00129$
      000A27                       3027 00273$:
      000A27 BF 03 03         [24] 3028 	cjne	r7,#0x03,00274$
      000A2A 02 0D 45         [24] 3029 	ljmp	00154$
      000A2D                       3030 00274$:
      000A2D BF 04 03         [24] 3031 	cjne	r7,#0x04,00275$
      000A30 02 0D 45         [24] 3032 	ljmp	00154$
      000A33                       3033 00275$:
      000A33 BF 05 03         [24] 3034 	cjne	r7,#0x05,00276$
      000A36 02 0D 26         [24] 3035 	ljmp	00149$
      000A39                       3036 00276$:
      000A39 BF 06 01         [24] 3037 	cjne	r7,#0x06,00277$
      000A3C 22               [24] 3038 	ret
      000A3D                       3039 00277$:
      000A3D BF 40 02         [24] 3040 	cjne	r7,#0x40,00278$
      000A40 80 06            [24] 3041 	sjmp	00106$
      000A42                       3042 00278$:
      000A42 BF 41 02         [24] 3043 	cjne	r7,#0x41,00279$
      000A45 80 42            [24] 3044 	sjmp	00109$
      000A47                       3045 00279$:
      000A47 22               [24] 3046 	ret
                                   3047 ;	appFHSSNIC.c:636: RFOFF;
      000A48                       3048 00106$:
      000A48 75 E1 04         [24] 3049 	mov	_RFST,#0x04
      000A4B                       3050 00103$:
      000A4B 90 DF 3B         [24] 3051 	mov	dptr,#_MARCSTATE
      000A4E E0               [24] 3052 	movx	a,@dptr
      000A4F FF               [12] 3053 	mov	r7,a
      000A50 BF 01 F8         [24] 3054 	cjne	r7,#0x01,00103$
                                   3055 ;	appFHSSNIC.c:637: PKTCTRL1 =  0xE5;       // highest PQT, address check, append_status
      000A53 90 DF 03         [24] 3056 	mov	dptr,#_PKTCTRL1
      000A56 74 E5            [12] 3057 	mov	a,#0xE5
      000A58 F0               [24] 3058 	movx	@dptr,a
                                   3059 ;	appFHSSNIC.c:638: PKTCTRL0 =  0x04;       // crc enabled      ( we really don't want any packets coming our way :)
      000A59 90 DF 04         [24] 3060 	mov	dptr,#_PKTCTRL0
      000A5C 74 04            [12] 3061 	mov	a,#0x04
      000A5E F0               [24] 3062 	movx	@dptr,a
                                   3063 ;	appFHSSNIC.c:639: FSCTRL1 =   0x12;       // freq if
      000A5F 90 DF 07         [24] 3064 	mov	dptr,#_FSCTRL1
      000A62 74 12            [12] 3065 	mov	a,#0x12
      000A64 F0               [24] 3066 	movx	@dptr,a
                                   3067 ;	appFHSSNIC.c:640: FSCTRL0 =   0x00;
      000A65 90 DF 08         [24] 3068 	mov	dptr,#_FSCTRL0
      000A68 E4               [12] 3069 	clr	a
      000A69 F0               [24] 3070 	movx	@dptr,a
                                   3071 ;	appFHSSNIC.c:641: MCSM0 =     0x10;       // autocal/no auto-cal....  hmmm...
      000A6A 90 DF 14         [24] 3072 	mov	dptr,#_MCSM0
      000A6D 74 10            [12] 3073 	mov	a,#0x10
      000A6F F0               [24] 3074 	movx	@dptr,a
                                   3075 ;	appFHSSNIC.c:642: AGCCTRL2 |= AGCCTRL2_MAX_DVGA_GAIN;     // disable 3 highest gain settings
      000A70 90 DF 17         [24] 3076 	mov	dptr,#_AGCCTRL2
      000A73 E0               [24] 3077 	movx	a,@dptr
      000A74 FF               [12] 3078 	mov	r7,a
      000A75 74 C0            [12] 3079 	mov	a,#0xC0
      000A77 4F               [12] 3080 	orl	a,r7
      000A78 F0               [24] 3081 	movx	@dptr,a
                                   3082 ;	appFHSSNIC.c:643: macdata.mac_state = MAC_STATE_SPECAN;
      000A79 90 FD 8F         [24] 3083 	mov	dptr,#_macdata
      000A7C 74 41            [12] 3084 	mov	a,#0x41
      000A7E F0               [24] 3085 	movx	@dptr,a
                                   3086 ;	appFHSSNIC.c:645: chan_table = rfrxbuf[0];
      000A7F 90 F5 84         [24] 3087 	mov	dptr,#_chan_table
      000A82 74 80            [12] 3088 	mov	a,#_rfrxbuf
      000A84 F0               [24] 3089 	movx	@dptr,a
      000A85 74 F9            [12] 3090 	mov	a,#(_rfrxbuf >> 8)
      000A87 A3               [24] 3091 	inc	dptr
      000A88 F0               [24] 3092 	movx	@dptr,a
                                   3093 ;	appFHSSNIC.c:647: case MAC_STATE_SPECAN:
      000A89                       3094 00109$:
                                   3095 ;	appFHSSNIC.c:648: for (processbuffer = 0; processbuffer < macdata.synched_chans; processbuffer++)
      000A89 90 F5 83         [24] 3096 	mov	dptr,#_processbuffer
      000A8C E4               [12] 3097 	clr	a
      000A8D F0               [24] 3098 	movx	@dptr,a
      000A8E                       3099 00166$:
      000A8E 90 FD A2         [24] 3100 	mov	dptr,#(_macdata + 0x0013)
      000A91 E0               [24] 3101 	movx	a,@dptr
      000A92 FE               [12] 3102 	mov	r6,a
      000A93 A3               [24] 3103 	inc	dptr
      000A94 E0               [24] 3104 	movx	a,@dptr
      000A95 FF               [12] 3105 	mov	r7,a
      000A96 90 F5 83         [24] 3106 	mov	dptr,#_processbuffer
      000A99 E0               [24] 3107 	movx	a,@dptr
      000A9A FD               [12] 3108 	mov	r5,a
      000A9B FB               [12] 3109 	mov	r3,a
      000A9C 7C 00            [12] 3110 	mov	r4,#0x00
      000A9E C3               [12] 3111 	clr	c
      000A9F EB               [12] 3112 	mov	a,r3
      000AA0 9E               [12] 3113 	subb	a,r6
      000AA1 EC               [12] 3114 	mov	a,r4
      000AA2 9F               [12] 3115 	subb	a,r7
      000AA3 50 45            [24] 3116 	jnc	00126$
                                   3117 ;	appFHSSNIC.c:651: CHANNR = processbuffer;        // may not be the fastest, but otherwise we have to store FSCAL data for each channel
      000AA5 90 DF 06         [24] 3118 	mov	dptr,#_CHANNR
      000AA8 ED               [12] 3119 	mov	a,r5
      000AA9 F0               [24] 3120 	movx	@dptr,a
                                   3121 ;	appFHSSNIC.c:652: RFOFF;
      000AAA 75 E1 04         [24] 3122 	mov	_RFST,#0x04
      000AAD                       3123 00110$:
      000AAD 90 DF 3B         [24] 3124 	mov	dptr,#_MARCSTATE
      000AB0 E0               [24] 3125 	movx	a,@dptr
      000AB1 FF               [12] 3126 	mov	r7,a
      000AB2 BF 01 F8         [24] 3127 	cjne	r7,#0x01,00110$
                                   3128 ;	appFHSSNIC.c:653: RFRX;
      000AB5 75 E1 02         [24] 3129 	mov	_RFST,#0x02
      000AB8                       3130 00116$:
      000AB8 90 DF 3B         [24] 3131 	mov	dptr,#_MARCSTATE
      000ABB E0               [24] 3132 	movx	a,@dptr
      000ABC FF               [12] 3133 	mov	r7,a
      000ABD BF 0D F8         [24] 3134 	cjne	r7,#0x0D,00116$
                                   3135 ;	appFHSSNIC.c:654: sleepMillis(2);
      000AC0 90 00 02         [24] 3136 	mov	dptr,#0x0002
      000AC3 12 28 65         [24] 3137 	lcall	_sleepMillis
                                   3138 ;	appFHSSNIC.c:657: chan_table[processbuffer] = (RSSI);
      000AC6 90 F5 84         [24] 3139 	mov	dptr,#_chan_table
      000AC9 E0               [24] 3140 	movx	a,@dptr
      000ACA FE               [12] 3141 	mov	r6,a
      000ACB A3               [24] 3142 	inc	dptr
      000ACC E0               [24] 3143 	movx	a,@dptr
      000ACD FF               [12] 3144 	mov	r7,a
      000ACE 90 F5 83         [24] 3145 	mov	dptr,#_processbuffer
      000AD1 E0               [24] 3146 	movx	a,@dptr
      000AD2 2E               [12] 3147 	add	a,r6
      000AD3 FE               [12] 3148 	mov	r6,a
      000AD4 E4               [12] 3149 	clr	a
      000AD5 3F               [12] 3150 	addc	a,r7
      000AD6 FF               [12] 3151 	mov	r7,a
      000AD7 90 DF 3A         [24] 3152 	mov	dptr,#_RSSI
      000ADA E0               [24] 3153 	movx	a,@dptr
      000ADB FD               [12] 3154 	mov	r5,a
      000ADC 8E 82            [24] 3155 	mov	dpl,r6
      000ADE 8F 83            [24] 3156 	mov	dph,r7
      000AE0 F0               [24] 3157 	movx	@dptr,a
                                   3158 ;	appFHSSNIC.c:648: for (processbuffer = 0; processbuffer < macdata.synched_chans; processbuffer++)
      000AE1 90 F5 83         [24] 3159 	mov	dptr,#_processbuffer
      000AE4 E0               [24] 3160 	movx	a,@dptr
      000AE5 24 01            [12] 3161 	add	a,#0x01
      000AE7 F0               [24] 3162 	movx	@dptr,a
                                   3163 ;	appFHSSNIC.c:661: RFOFF;
      000AE8 80 A4            [24] 3164 	sjmp	00166$
      000AEA                       3165 00126$:
      000AEA 75 E1 04         [24] 3166 	mov	_RFST,#0x04
      000AED                       3167 00123$:
      000AED 90 DF 3B         [24] 3168 	mov	dptr,#_MARCSTATE
      000AF0 E0               [24] 3169 	movx	a,@dptr
      000AF1 FF               [12] 3170 	mov	r7,a
      000AF2 BF 01 F8         [24] 3171 	cjne	r7,#0x01,00123$
                                   3172 ;	appFHSSNIC.c:662: txdata( APP_SPECAN, SPECAN_QUEUE, (u8)macdata.synched_chans, (__xdata u8*)&chan_table[0] );
      000AF5 90 FD A2         [24] 3173 	mov	dptr,#(_macdata + 0x0013)
      000AF8 E0               [24] 3174 	movx	a,@dptr
      000AF9 FE               [12] 3175 	mov	r6,a
      000AFA A3               [24] 3176 	inc	dptr
      000AFB E0               [24] 3177 	movx	a,@dptr
      000AFC 8E 1A            [24] 3178 	mov	_txdata_PARM_3,r6
      000AFE 75 1B 00         [24] 3179 	mov	(_txdata_PARM_3 + 1),#0x00
      000B01 90 F5 84         [24] 3180 	mov	dptr,#_chan_table
      000B04 E0               [24] 3181 	movx	a,@dptr
      000B05 F5 1C            [12] 3182 	mov	_txdata_PARM_4,a
      000B07 A3               [24] 3183 	inc	dptr
      000B08 E0               [24] 3184 	movx	a,@dptr
      000B09 F5 1D            [12] 3185 	mov	(_txdata_PARM_4 + 1),a
      000B0B 75 19 01         [24] 3186 	mov	_txdata_PARM_2,#0x01
      000B0E 75 82 43         [24] 3187 	mov	dpl,#0x43
                                   3188 ;	appFHSSNIC.c:663: break;
      000B11 02 1C 00         [24] 3189 	ljmp	_txdata
                                   3190 ;	appFHSSNIC.c:665: case MAC_STATE_SYNCHING:
      000B14                       3191 00129$:
                                   3192 ;	appFHSSNIC.c:668: if (rfif)
      000B14 E5 22            [12] 3193 	mov	a,_rfif
      000B16 70 03            [24] 3194 	jnz	00289$
      000B18 02 0C 04         [24] 3195 	ljmp	00138$
      000B1B                       3196 00289$:
                                   3197 ;	appFHSSNIC.c:670: lastCode[0] = 0xd;
      000B1B 90 FD B3         [24] 3198 	mov	dptr,#_lastCode
      000B1E 74 0D            [12] 3199 	mov	a,#0x0D
      000B20 F0               [24] 3200 	movx	@dptr,a
                                   3201 ;	appFHSSNIC.c:671: IEN2 &= ~IEN2_RFIE;   // FIXME: is this ok?
      000B21 AF 9A            [24] 3202 	mov	r7,_IEN2
      000B23 74 FE            [12] 3203 	mov	a,#0xFE
      000B25 5F               [12] 3204 	anl	a,r7
      000B26 F5 9A            [12] 3205 	mov	_IEN2,a
                                   3206 ;	appFHSSNIC.c:673: if(rfif & RFIF_IRQ_DONE)
      000B28 E5 22            [12] 3207 	mov	a,_rfif
      000B2A 20 E4 03         [24] 3208 	jb	acc.4,00290$
      000B2D 02 0C 04         [24] 3209 	ljmp	00138$
      000B30                       3210 00290$:
                                   3211 ;	appFHSSNIC.c:677: macdata.mac_state = MAC_STATE_SYNCHED;
      000B30 90 FD 8F         [24] 3212 	mov	dptr,#_macdata
      000B33 74 03            [12] 3213 	mov	a,#0x03
      000B35 F0               [24] 3214 	movx	@dptr,a
                                   3215 ;	appFHSSNIC.c:678: begin_hopping((u8)(rf_tLastRecv & 0xff));       // synching happens within
      000B36 90 FD 8D         [24] 3216 	mov	dptr,#_rf_tLastRecv
      000B39 E0               [24] 3217 	movx	a,@dptr
      000B3A FE               [12] 3218 	mov	r6,a
      000B3B A3               [24] 3219 	inc	dptr
      000B3C E0               [24] 3220 	movx	a,@dptr
      000B3D 8E 82            [24] 3221 	mov	dpl,r6
      000B3F 12 01 85         [24] 3222 	lcall	_begin_hopping
                                   3223 ;	appFHSSNIC.c:680: debug("network packet(sync)");
      000B42 90 31 CB         [24] 3224 	mov	dptr,#___str_7
      000B45 12 1C B2         [24] 3225 	lcall	_debug
                                   3226 ;	appFHSSNIC.c:681: debughex16((u16)rf_tLastRecv);
      000B48 90 FD 8D         [24] 3227 	mov	dptr,#_rf_tLastRecv
      000B4B E0               [24] 3228 	movx	a,@dptr
      000B4C FE               [12] 3229 	mov	r6,a
      000B4D A3               [24] 3230 	inc	dptr
      000B4E E0               [24] 3231 	movx	a,@dptr
      000B4F FF               [12] 3232 	mov	r7,a
      000B50 8E 82            [24] 3233 	mov	dpl,r6
      000B52 8F 83            [24] 3234 	mov	dph,r7
      000B54 12 1D 0F         [24] 3235 	lcall	_debughex16
                                   3236 ;	appFHSSNIC.c:682: debug((__code u8*)&rfrxbuf[rfRxCurrentBuffer][0]);
      000B57 90 F9 7F         [24] 3237 	mov	dptr,#_rfRxCurrentBuffer
      000B5A E0               [24] 3238 	movx	a,@dptr
      000B5B 25 E0            [12] 3239 	add	a,acc
      000B5D FE               [12] 3240 	mov	r6,a
      000B5E E4               [12] 3241 	clr	a
      000B5F 24 80            [12] 3242 	add	a,#_rfrxbuf
      000B61 FF               [12] 3243 	mov	r7,a
      000B62 EE               [12] 3244 	mov	a,r6
      000B63 34 F9            [12] 3245 	addc	a,#(_rfrxbuf >> 8)
      000B65 FE               [12] 3246 	mov	r6,a
      000B66 8F 82            [24] 3247 	mov	dpl,r7
      000B68 8E 83            [24] 3248 	mov	dph,r6
      000B6A 12 1C B2         [24] 3249 	lcall	_debug
                                   3250 ;	appFHSSNIC.c:685: processbuffer = !rfRxCurrentBuffer;
      000B6D 90 F9 7F         [24] 3251 	mov	dptr,#_rfRxCurrentBuffer
      000B70 E0               [24] 3252 	movx	a,@dptr
      000B71 FF               [12] 3253 	mov	r7,a
      000B72 B4 01 00         [24] 3254 	cjne	a,#0x01,00291$
      000B75                       3255 00291$:
      000B75 E4               [12] 3256 	clr	a
      000B76 33               [12] 3257 	rlc	a
      000B77 FF               [12] 3258 	mov	r7,a
      000B78 90 F5 83         [24] 3259 	mov	dptr,#_processbuffer
      000B7B F0               [24] 3260 	movx	@dptr,a
                                   3261 ;	appFHSSNIC.c:686: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
      000B7C EF               [12] 3262 	mov	a,r7
      000B7D 24 84            [12] 3263 	add	a,#_rfRxProcessed
      000B7F FD               [12] 3264 	mov	r5,a
      000B80 E4               [12] 3265 	clr	a
      000B81 34 FD            [12] 3266 	addc	a,#(_rfRxProcessed >> 8)
      000B83 FE               [12] 3267 	mov	r6,a
      000B84 8D 82            [24] 3268 	mov	dpl,r5
      000B86 8E 83            [24] 3269 	mov	dph,r6
      000B88 E0               [24] 3270 	movx	a,@dptr
      000B89 70 72            [24] 3271 	jnz	00134$
                                   3272 ;	appFHSSNIC.c:689: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
      000B8B 90 DF 04         [24] 3273 	mov	dptr,#_PKTCTRL0
      000B8E E0               [24] 3274 	movx	a,@dptr
      000B8F FE               [12] 3275 	mov	r6,a
      000B90 30 E0 37         [24] 3276 	jnb	acc.0,00131$
                                   3277 ;	appFHSSNIC.c:690: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
      000B93 8F 06            [24] 3278 	mov	ar6,r7
      000B95 EE               [12] 3279 	mov	a,r6
      000B96 2E               [12] 3280 	add	a,r6
      000B97 FD               [12] 3281 	mov	r5,a
      000B98 E4               [12] 3282 	clr	a
      000B99 24 80            [12] 3283 	add	a,#_rfrxbuf
      000B9B F5 82            [12] 3284 	mov	dpl,a
      000B9D ED               [12] 3285 	mov	a,r5
      000B9E 34 F9            [12] 3286 	addc	a,#(_rfrxbuf >> 8)
      000BA0 F5 83            [12] 3287 	mov	dph,a
      000BA2 E0               [24] 3288 	movx	a,@dptr
      000BA3 FE               [12] 3289 	mov	r6,a
      000BA4 8E 1A            [24] 3290 	mov	_txdata_PARM_3,r6
      000BA6 75 1B 00         [24] 3291 	mov	(_txdata_PARM_3 + 1),#0x00
      000BA9 8F 06            [24] 3292 	mov	ar6,r7
      000BAB EE               [12] 3293 	mov	a,r6
      000BAC 2E               [12] 3294 	add	a,r6
      000BAD FD               [12] 3295 	mov	r5,a
      000BAE E4               [12] 3296 	clr	a
      000BAF 24 80            [12] 3297 	add	a,#_rfrxbuf
      000BB1 FE               [12] 3298 	mov	r6,a
      000BB2 ED               [12] 3299 	mov	a,r5
      000BB3 34 F9            [12] 3300 	addc	a,#(_rfrxbuf >> 8)
      000BB5 FD               [12] 3301 	mov	r5,a
      000BB6 74 01            [12] 3302 	mov	a,#0x01
      000BB8 2E               [12] 3303 	add	a,r6
      000BB9 F5 1C            [12] 3304 	mov	_txdata_PARM_4,a
      000BBB E4               [12] 3305 	clr	a
      000BBC 3D               [12] 3306 	addc	a,r5
      000BBD F5 1D            [12] 3307 	mov	(_txdata_PARM_4 + 1),a
      000BBF 75 19 01         [24] 3308 	mov	_txdata_PARM_2,#0x01
      000BC2 75 82 42         [24] 3309 	mov	dpl,#0x42
      000BC5 12 1C 00         [24] 3310 	lcall	_txdata
      000BC8 80 22            [24] 3311 	sjmp	00132$
      000BCA                       3312 00131$:
                                   3313 ;	appFHSSNIC.c:692: txdata(APP_NIC, NIC_RECV, PKTLEN, (u8*)&rfrxbuf[processbuffer]);
      000BCA 90 DF 02         [24] 3314 	mov	dptr,#_PKTLEN
      000BCD E0               [24] 3315 	movx	a,@dptr
      000BCE FE               [12] 3316 	mov	r6,a
      000BCF 8E 1A            [24] 3317 	mov	_txdata_PARM_3,r6
      000BD1 E4               [12] 3318 	clr	a
      000BD2 F5 1B            [12] 3319 	mov	(_txdata_PARM_3 + 1),a
      000BD4 EF               [12] 3320 	mov	a,r7
      000BD5 2F               [12] 3321 	add	a,r7
      000BD6 FE               [12] 3322 	mov	r6,a
      000BD7 E4               [12] 3323 	clr	a
      000BD8 24 80            [12] 3324 	add	a,#_rfrxbuf
      000BDA FF               [12] 3325 	mov	r7,a
      000BDB EE               [12] 3326 	mov	a,r6
      000BDC 34 F9            [12] 3327 	addc	a,#(_rfrxbuf >> 8)
      000BDE FE               [12] 3328 	mov	r6,a
      000BDF 8F 1C            [24] 3329 	mov	_txdata_PARM_4,r7
      000BE1 8E 1D            [24] 3330 	mov	(_txdata_PARM_4 + 1),r6
      000BE3 75 19 01         [24] 3331 	mov	_txdata_PARM_2,#0x01
      000BE6 75 82 42         [24] 3332 	mov	dpl,#0x42
      000BE9 12 1C 00         [24] 3333 	lcall	_txdata
      000BEC                       3334 00132$:
                                   3335 ;	appFHSSNIC.c:695: rfRxProcessed[processbuffer] = RX_PROCESSED;
      000BEC 90 F5 83         [24] 3336 	mov	dptr,#_processbuffer
      000BEF E0               [24] 3337 	movx	a,@dptr
      000BF0 FF               [12] 3338 	mov	r7,a
      000BF1 24 84            [12] 3339 	add	a,#_rfRxProcessed
      000BF3 F5 82            [12] 3340 	mov	dpl,a
      000BF5 E4               [12] 3341 	clr	a
      000BF6 34 FD            [12] 3342 	addc	a,#(_rfRxProcessed >> 8)
      000BF8 F5 83            [12] 3343 	mov	dph,a
      000BFA 74 01            [12] 3344 	mov	a,#0x01
      000BFC F0               [24] 3345 	movx	@dptr,a
      000BFD                       3346 00134$:
                                   3347 ;	appFHSSNIC.c:697: rfif &= ~RFIF_IRQ_DONE;
      000BFD AF 22            [24] 3348 	mov	r7,_rfif
      000BFF 74 EF            [12] 3349 	mov	a,#0xEF
      000C01 5F               [12] 3350 	anl	a,r7
      000C02 F5 22            [12] 3351 	mov	_rfif,a
      000C04                       3352 00138$:
                                   3353 ;	appFHSSNIC.c:701: __critical { rfif = 0; }
      000C04 D2 00            [12] 3354 	setb	_appMainLoop_sloc0_1_0
      000C06 10 AF 02         [24] 3355 	jbc	ea,00294$
      000C09 C2 00            [12] 3356 	clr	_appMainLoop_sloc0_1_0
      000C0B                       3357 00294$:
      000C0B 75 22 00         [24] 3358 	mov	_rfif,#0x00
      000C0E A2 00            [12] 3359 	mov	c,_appMainLoop_sloc0_1_0
      000C10 92 AF            [24] 3360 	mov	ea,c
                                   3361 ;	appFHSSNIC.c:702: IEN2 |= IEN2_RFIE;
      000C12 43 9A 01         [24] 3362 	orl	_IEN2,#0x01
                                   3363 ;	appFHSSNIC.c:703: break;
      000C15 22               [24] 3364 	ret
                                   3365 ;	appFHSSNIC.c:705: case MAC_STATE_DISCOVERY:
      000C16                       3366 00139$:
                                   3367 ;	appFHSSNIC.c:708: if (rfif)
      000C16 E5 22            [12] 3368 	mov	a,_rfif
      000C18 70 03            [24] 3369 	jnz	00295$
      000C1A 02 0D 14         [24] 3370 	ljmp	00148$
      000C1D                       3371 00295$:
                                   3372 ;	appFHSSNIC.c:710: lastCode[0] = 0xd;
      000C1D 90 FD B3         [24] 3373 	mov	dptr,#_lastCode
      000C20 74 0D            [12] 3374 	mov	a,#0x0D
      000C22 F0               [24] 3375 	movx	@dptr,a
                                   3376 ;	appFHSSNIC.c:711: IEN2 &= ~IEN2_RFIE;
      000C23 AF 9A            [24] 3377 	mov	r7,_IEN2
      000C25 74 FE            [12] 3378 	mov	a,#0xFE
      000C27 5F               [12] 3379 	anl	a,r7
      000C28 F5 9A            [12] 3380 	mov	_IEN2,a
                                   3381 ;	appFHSSNIC.c:713: if(rfif & RFIF_IRQ_DONE)
      000C2A E5 22            [12] 3382 	mov	a,_rfif
      000C2C 20 E4 03         [24] 3383 	jb	acc.4,00296$
      000C2F 02 0D 14         [24] 3384 	ljmp	00148$
      000C32                       3385 00296$:
                                   3386 ;	appFHSSNIC.c:716: processbuffer = !rfRxCurrentBuffer;
      000C32 90 F9 7F         [24] 3387 	mov	dptr,#_rfRxCurrentBuffer
      000C35 E0               [24] 3388 	movx	a,@dptr
      000C36 FF               [12] 3389 	mov	r7,a
      000C37 90 F5 83         [24] 3390 	mov	dptr,#_processbuffer
      000C3A B4 01 00         [24] 3391 	cjne	a,#0x01,00297$
      000C3D                       3392 00297$:
      000C3D E4               [12] 3393 	clr	a
      000C3E 33               [12] 3394 	rlc	a
      000C3F F0               [24] 3395 	movx	@dptr,a
                                   3396 ;	appFHSSNIC.c:717: debug("network packet(discovery)");
      000C40 90 31 E0         [24] 3397 	mov	dptr,#___str_8
      000C43 12 1C B2         [24] 3398 	lcall	_debug
                                   3399 ;	appFHSSNIC.c:718: debughex16((u16)rfrxbuf[processbuffer]);
      000C46 90 F5 83         [24] 3400 	mov	dptr,#_processbuffer
      000C49 E0               [24] 3401 	movx	a,@dptr
      000C4A 25 E0            [12] 3402 	add	a,acc
      000C4C FE               [12] 3403 	mov	r6,a
      000C4D E4               [12] 3404 	clr	a
      000C4E 24 80            [12] 3405 	add	a,#_rfrxbuf
      000C50 FF               [12] 3406 	mov	r7,a
      000C51 EE               [12] 3407 	mov	a,r6
      000C52 34 F9            [12] 3408 	addc	a,#(_rfrxbuf >> 8)
      000C54 FE               [12] 3409 	mov	r6,a
      000C55 8F 82            [24] 3410 	mov	dpl,r7
      000C57 8E 83            [24] 3411 	mov	dph,r6
      000C59 12 1D 0F         [24] 3412 	lcall	_debughex16
                                   3413 ;	appFHSSNIC.c:719: debug((__code u8*)&rfrxbuf[processbuffer][0]);
      000C5C 90 F5 83         [24] 3414 	mov	dptr,#_processbuffer
      000C5F E0               [24] 3415 	movx	a,@dptr
      000C60 25 E0            [12] 3416 	add	a,acc
      000C62 FE               [12] 3417 	mov	r6,a
      000C63 E4               [12] 3418 	clr	a
      000C64 24 80            [12] 3419 	add	a,#_rfrxbuf
      000C66 FF               [12] 3420 	mov	r7,a
      000C67 EE               [12] 3421 	mov	a,r6
      000C68 34 F9            [12] 3422 	addc	a,#(_rfrxbuf >> 8)
      000C6A FE               [12] 3423 	mov	r6,a
      000C6B 8F 82            [24] 3424 	mov	dpl,r7
      000C6D 8E 83            [24] 3425 	mov	dph,r6
      000C6F 12 1C B2         [24] 3426 	lcall	_debug
                                   3427 ;	appFHSSNIC.c:722: processbuffer = !rfRxCurrentBuffer;
      000C72 90 F9 7F         [24] 3428 	mov	dptr,#_rfRxCurrentBuffer
      000C75 E0               [24] 3429 	movx	a,@dptr
      000C76 FF               [12] 3430 	mov	r7,a
      000C77 B4 01 00         [24] 3431 	cjne	a,#0x01,00298$
      000C7A                       3432 00298$:
      000C7A E4               [12] 3433 	clr	a
      000C7B 33               [12] 3434 	rlc	a
      000C7C FF               [12] 3435 	mov	r7,a
      000C7D 90 F5 83         [24] 3436 	mov	dptr,#_processbuffer
      000C80 F0               [24] 3437 	movx	@dptr,a
                                   3438 ;	appFHSSNIC.c:723: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
      000C81 EF               [12] 3439 	mov	a,r7
      000C82 24 84            [12] 3440 	add	a,#_rfRxProcessed
      000C84 FD               [12] 3441 	mov	r5,a
      000C85 E4               [12] 3442 	clr	a
      000C86 34 FD            [12] 3443 	addc	a,#(_rfRxProcessed >> 8)
      000C88 FE               [12] 3444 	mov	r6,a
      000C89 8D 82            [24] 3445 	mov	dpl,r5
      000C8B 8E 83            [24] 3446 	mov	dph,r6
      000C8D E0               [24] 3447 	movx	a,@dptr
      000C8E 70 72            [24] 3448 	jnz	00144$
                                   3449 ;	appFHSSNIC.c:726: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
      000C90 90 DF 04         [24] 3450 	mov	dptr,#_PKTCTRL0
      000C93 E0               [24] 3451 	movx	a,@dptr
      000C94 FE               [12] 3452 	mov	r6,a
      000C95 30 E0 37         [24] 3453 	jnb	acc.0,00141$
                                   3454 ;	appFHSSNIC.c:727: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
      000C98 8F 06            [24] 3455 	mov	ar6,r7
      000C9A EE               [12] 3456 	mov	a,r6
      000C9B 2E               [12] 3457 	add	a,r6
      000C9C FD               [12] 3458 	mov	r5,a
      000C9D E4               [12] 3459 	clr	a
      000C9E 24 80            [12] 3460 	add	a,#_rfrxbuf
      000CA0 F5 82            [12] 3461 	mov	dpl,a
      000CA2 ED               [12] 3462 	mov	a,r5
      000CA3 34 F9            [12] 3463 	addc	a,#(_rfrxbuf >> 8)
      000CA5 F5 83            [12] 3464 	mov	dph,a
      000CA7 E0               [24] 3465 	movx	a,@dptr
      000CA8 FE               [12] 3466 	mov	r6,a
      000CA9 8E 1A            [24] 3467 	mov	_txdata_PARM_3,r6
      000CAB 75 1B 00         [24] 3468 	mov	(_txdata_PARM_3 + 1),#0x00
      000CAE 8F 06            [24] 3469 	mov	ar6,r7
      000CB0 EE               [12] 3470 	mov	a,r6
      000CB1 2E               [12] 3471 	add	a,r6
      000CB2 FD               [12] 3472 	mov	r5,a
      000CB3 E4               [12] 3473 	clr	a
      000CB4 24 80            [12] 3474 	add	a,#_rfrxbuf
      000CB6 FE               [12] 3475 	mov	r6,a
      000CB7 ED               [12] 3476 	mov	a,r5
      000CB8 34 F9            [12] 3477 	addc	a,#(_rfrxbuf >> 8)
      000CBA FD               [12] 3478 	mov	r5,a
      000CBB 74 01            [12] 3479 	mov	a,#0x01
      000CBD 2E               [12] 3480 	add	a,r6
      000CBE F5 1C            [12] 3481 	mov	_txdata_PARM_4,a
      000CC0 E4               [12] 3482 	clr	a
      000CC1 3D               [12] 3483 	addc	a,r5
      000CC2 F5 1D            [12] 3484 	mov	(_txdata_PARM_4 + 1),a
      000CC4 75 19 01         [24] 3485 	mov	_txdata_PARM_2,#0x01
      000CC7 75 82 42         [24] 3486 	mov	dpl,#0x42
      000CCA 12 1C 00         [24] 3487 	lcall	_txdata
      000CCD 80 22            [24] 3488 	sjmp	00142$
      000CCF                       3489 00141$:
                                   3490 ;	appFHSSNIC.c:729: txdata(APP_NIC, NIC_RECV, PKTLEN, (u8*)&rfrxbuf[processbuffer]);
      000CCF 90 DF 02         [24] 3491 	mov	dptr,#_PKTLEN
      000CD2 E0               [24] 3492 	movx	a,@dptr
      000CD3 FE               [12] 3493 	mov	r6,a
      000CD4 8E 1A            [24] 3494 	mov	_txdata_PARM_3,r6
      000CD6 E4               [12] 3495 	clr	a
      000CD7 F5 1B            [12] 3496 	mov	(_txdata_PARM_3 + 1),a
      000CD9 EF               [12] 3497 	mov	a,r7
      000CDA 2F               [12] 3498 	add	a,r7
      000CDB FE               [12] 3499 	mov	r6,a
      000CDC E4               [12] 3500 	clr	a
      000CDD 24 80            [12] 3501 	add	a,#_rfrxbuf
      000CDF FF               [12] 3502 	mov	r7,a
      000CE0 EE               [12] 3503 	mov	a,r6
      000CE1 34 F9            [12] 3504 	addc	a,#(_rfrxbuf >> 8)
      000CE3 FE               [12] 3505 	mov	r6,a
      000CE4 8F 1C            [24] 3506 	mov	_txdata_PARM_4,r7
      000CE6 8E 1D            [24] 3507 	mov	(_txdata_PARM_4 + 1),r6
      000CE8 75 19 01         [24] 3508 	mov	_txdata_PARM_2,#0x01
      000CEB 75 82 42         [24] 3509 	mov	dpl,#0x42
      000CEE 12 1C 00         [24] 3510 	lcall	_txdata
      000CF1                       3511 00142$:
                                   3512 ;	appFHSSNIC.c:732: rfRxProcessed[processbuffer] = RX_PROCESSED;
      000CF1 90 F5 83         [24] 3513 	mov	dptr,#_processbuffer
      000CF4 E0               [24] 3514 	movx	a,@dptr
      000CF5 FF               [12] 3515 	mov	r7,a
      000CF6 24 84            [12] 3516 	add	a,#_rfRxProcessed
      000CF8 F5 82            [12] 3517 	mov	dpl,a
      000CFA E4               [12] 3518 	clr	a
      000CFB 34 FD            [12] 3519 	addc	a,#(_rfRxProcessed >> 8)
      000CFD F5 83            [12] 3520 	mov	dph,a
      000CFF 74 01            [12] 3521 	mov	a,#0x01
      000D01 F0               [24] 3522 	movx	@dptr,a
      000D02                       3523 00144$:
                                   3524 ;	appFHSSNIC.c:734: __critical { rfif &= ~RFIF_IRQ_DONE; }
      000D02 D2 00            [12] 3525 	setb	_appMainLoop_sloc0_1_0
      000D04 10 AF 02         [24] 3526 	jbc	ea,00301$
      000D07 C2 00            [12] 3527 	clr	_appMainLoop_sloc0_1_0
      000D09                       3528 00301$:
      000D09 AF 22            [24] 3529 	mov	r7,_rfif
      000D0B 74 EF            [12] 3530 	mov	a,#0xEF
      000D0D 5F               [12] 3531 	anl	a,r7
      000D0E F5 22            [12] 3532 	mov	_rfif,a
      000D10 A2 00            [12] 3533 	mov	c,_appMainLoop_sloc0_1_0
      000D12 92 AF            [24] 3534 	mov	ea,c
      000D14                       3535 00148$:
                                   3536 ;	appFHSSNIC.c:738: __critical{ rfif = 0; }
      000D14 D2 00            [12] 3537 	setb	_appMainLoop_sloc0_1_0
      000D16 10 AF 02         [24] 3538 	jbc	ea,00302$
      000D19 C2 00            [12] 3539 	clr	_appMainLoop_sloc0_1_0
      000D1B                       3540 00302$:
      000D1B 75 22 00         [24] 3541 	mov	_rfif,#0x00
      000D1E A2 00            [12] 3542 	mov	c,_appMainLoop_sloc0_1_0
      000D20 92 AF            [24] 3543 	mov	ea,c
                                   3544 ;	appFHSSNIC.c:739: IEN2 |= IEN2_RFIE;
      000D22 43 9A 01         [24] 3545 	orl	_IEN2,#0x01
                                   3546 ;	appFHSSNIC.c:740: break;
      000D25 22               [24] 3547 	ret
                                   3548 ;	appFHSSNIC.c:742: case MAC_STATE_SYNCINGMASTER:
      000D26                       3549 00149$:
                                   3550 ;	appFHSSNIC.c:744: if (macdata.synched_chans >= macdata.NumChannelHops)
      000D26 90 FD A2         [24] 3551 	mov	dptr,#(_macdata + 0x0013)
      000D29 E0               [24] 3552 	movx	a,@dptr
      000D2A FE               [12] 3553 	mov	r6,a
      000D2B A3               [24] 3554 	inc	dptr
      000D2C E0               [24] 3555 	movx	a,@dptr
      000D2D FF               [12] 3556 	mov	r7,a
      000D2E 90 FD 96         [24] 3557 	mov	dptr,#(_macdata + 0x0007)
      000D31 E0               [24] 3558 	movx	a,@dptr
      000D32 FC               [12] 3559 	mov	r4,a
      000D33 A3               [24] 3560 	inc	dptr
      000D34 E0               [24] 3561 	movx	a,@dptr
      000D35 FD               [12] 3562 	mov	r5,a
      000D36 C3               [12] 3563 	clr	c
      000D37 EE               [12] 3564 	mov	a,r6
      000D38 9C               [12] 3565 	subb	a,r4
      000D39 EF               [12] 3566 	mov	a,r7
      000D3A 9D               [12] 3567 	subb	a,r5
      000D3B 50 01            [24] 3568 	jnc	00303$
      000D3D 22               [24] 3569 	ret
      000D3E                       3570 00303$:
                                   3571 ;	appFHSSNIC.c:746: macdata.mac_state = MAC_STATE_SYNC_MASTER;
      000D3E 90 FD 8F         [24] 3572 	mov	dptr,#_macdata
      000D41 74 04            [12] 3573 	mov	a,#0x04
      000D43 F0               [24] 3574 	movx	@dptr,a
                                   3575 ;	appFHSSNIC.c:748: break;
      000D44 22               [24] 3576 	ret
                                   3577 ;	appFHSSNIC.c:752: case MAC_STATE_NONHOPPING:
      000D45                       3578 00154$:
                                   3579 ;	appFHSSNIC.c:754: if (rfif)
      000D45 E5 22            [12] 3580 	mov	a,_rfif
      000D47 70 01            [24] 3581 	jnz	00304$
      000D49 22               [24] 3582 	ret
      000D4A                       3583 00304$:
                                   3584 ;	appFHSSNIC.c:757: lastCode[0] = 0xd;
      000D4A 90 FD B3         [24] 3585 	mov	dptr,#_lastCode
      000D4D 74 0D            [12] 3586 	mov	a,#0x0D
      000D4F F0               [24] 3587 	movx	@dptr,a
                                   3588 ;	appFHSSNIC.c:759: if(rfif & (RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT) )
      000D50 E5 22            [12] 3589 	mov	a,_rfif
      000D52 54 30            [12] 3590 	anl	a,#0x30
      000D54 70 01            [24] 3591 	jnz	00305$
      000D56 22               [24] 3592 	ret
      000D57                       3593 00305$:
                                   3594 ;	appFHSSNIC.c:761: processbuffer = !rfRxCurrentBuffer;
      000D57 90 F9 7F         [24] 3595 	mov	dptr,#_rfRxCurrentBuffer
      000D5A E0               [24] 3596 	movx	a,@dptr
      000D5B FF               [12] 3597 	mov	r7,a
      000D5C B4 01 00         [24] 3598 	cjne	a,#0x01,00306$
      000D5F                       3599 00306$:
      000D5F E4               [12] 3600 	clr	a
      000D60 33               [12] 3601 	rlc	a
      000D61 FF               [12] 3602 	mov	r7,a
      000D62 90 F5 83         [24] 3603 	mov	dptr,#_processbuffer
      000D65 F0               [24] 3604 	movx	@dptr,a
                                   3605 ;	appFHSSNIC.c:762: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
      000D66 EF               [12] 3606 	mov	a,r7
      000D67 24 84            [12] 3607 	add	a,#_rfRxProcessed
      000D69 FD               [12] 3608 	mov	r5,a
      000D6A E4               [12] 3609 	clr	a
      000D6B 34 FD            [12] 3610 	addc	a,#(_rfRxProcessed >> 8)
      000D6D FE               [12] 3611 	mov	r6,a
      000D6E 8D 82            [24] 3612 	mov	dpl,r5
      000D70 8E 83            [24] 3613 	mov	dph,r6
      000D72 E0               [24] 3614 	movx	a,@dptr
      000D73 60 03            [24] 3615 	jz	00307$
      000D75 02 0D FD         [24] 3616 	ljmp	00159$
      000D78                       3617 00307$:
                                   3618 ;	appFHSSNIC.c:765: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
      000D78 90 DF 04         [24] 3619 	mov	dptr,#_PKTCTRL0
      000D7B E0               [24] 3620 	movx	a,@dptr
      000D7C FE               [12] 3621 	mov	r6,a
      000D7D 30 E0 37         [24] 3622 	jnb	acc.0,00156$
                                   3623 ;	appFHSSNIC.c:767: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
      000D80 8F 06            [24] 3624 	mov	ar6,r7
      000D82 EE               [12] 3625 	mov	a,r6
      000D83 2E               [12] 3626 	add	a,r6
      000D84 FD               [12] 3627 	mov	r5,a
      000D85 E4               [12] 3628 	clr	a
      000D86 24 80            [12] 3629 	add	a,#_rfrxbuf
      000D88 F5 82            [12] 3630 	mov	dpl,a
      000D8A ED               [12] 3631 	mov	a,r5
      000D8B 34 F9            [12] 3632 	addc	a,#(_rfrxbuf >> 8)
      000D8D F5 83            [12] 3633 	mov	dph,a
      000D8F E0               [24] 3634 	movx	a,@dptr
      000D90 FE               [12] 3635 	mov	r6,a
      000D91 8E 1A            [24] 3636 	mov	_txdata_PARM_3,r6
      000D93 75 1B 00         [24] 3637 	mov	(_txdata_PARM_3 + 1),#0x00
      000D96 8F 06            [24] 3638 	mov	ar6,r7
      000D98 EE               [12] 3639 	mov	a,r6
      000D99 2E               [12] 3640 	add	a,r6
      000D9A FD               [12] 3641 	mov	r5,a
      000D9B E4               [12] 3642 	clr	a
      000D9C 24 80            [12] 3643 	add	a,#_rfrxbuf
      000D9E FE               [12] 3644 	mov	r6,a
      000D9F ED               [12] 3645 	mov	a,r5
      000DA0 34 F9            [12] 3646 	addc	a,#(_rfrxbuf >> 8)
      000DA2 FD               [12] 3647 	mov	r5,a
      000DA3 74 01            [12] 3648 	mov	a,#0x01
      000DA5 2E               [12] 3649 	add	a,r6
      000DA6 F5 1C            [12] 3650 	mov	_txdata_PARM_4,a
      000DA8 E4               [12] 3651 	clr	a
      000DA9 3D               [12] 3652 	addc	a,r5
      000DAA F5 1D            [12] 3653 	mov	(_txdata_PARM_4 + 1),a
      000DAC 75 19 01         [24] 3654 	mov	_txdata_PARM_2,#0x01
      000DAF 75 82 42         [24] 3655 	mov	dpl,#0x42
      000DB2 12 1C 00         [24] 3656 	lcall	_txdata
      000DB5 80 35            [24] 3657 	sjmp	00157$
      000DB7                       3658 00156$:
                                   3659 ;	appFHSSNIC.c:769: txdata(APP_NIC, NIC_RECV, rfRxInfMode ? rfRxLargeLen : PKTLEN, (u8*)&rfrxbuf[processbuffer]);
      000DB7 90 FD E5         [24] 3660 	mov	dptr,#_rfRxInfMode
      000DBA E0               [24] 3661 	movx	a,@dptr
      000DBB E0               [24] 3662 	movx	a,@dptr
      000DBC 60 0A            [24] 3663 	jz	00170$
      000DBE 90 FD E8         [24] 3664 	mov	dptr,#_rfRxLargeLen
      000DC1 E0               [24] 3665 	movx	a,@dptr
      000DC2 FD               [12] 3666 	mov	r5,a
      000DC3 A3               [24] 3667 	inc	dptr
      000DC4 E0               [24] 3668 	movx	a,@dptr
      000DC5 FE               [12] 3669 	mov	r6,a
      000DC6 80 08            [24] 3670 	sjmp	00171$
      000DC8                       3671 00170$:
      000DC8 90 DF 02         [24] 3672 	mov	dptr,#_PKTLEN
      000DCB E0               [24] 3673 	movx	a,@dptr
      000DCC FC               [12] 3674 	mov	r4,a
      000DCD FD               [12] 3675 	mov	r5,a
      000DCE 7E 00            [12] 3676 	mov	r6,#0x00
      000DD0                       3677 00171$:
      000DD0 EF               [12] 3678 	mov	a,r7
      000DD1 2F               [12] 3679 	add	a,r7
      000DD2 FC               [12] 3680 	mov	r4,a
      000DD3 E4               [12] 3681 	clr	a
      000DD4 24 80            [12] 3682 	add	a,#_rfrxbuf
      000DD6 FF               [12] 3683 	mov	r7,a
      000DD7 EC               [12] 3684 	mov	a,r4
      000DD8 34 F9            [12] 3685 	addc	a,#(_rfrxbuf >> 8)
      000DDA FC               [12] 3686 	mov	r4,a
      000DDB 8F 1C            [24] 3687 	mov	_txdata_PARM_4,r7
      000DDD 8C 1D            [24] 3688 	mov	(_txdata_PARM_4 + 1),r4
      000DDF 75 19 01         [24] 3689 	mov	_txdata_PARM_2,#0x01
      000DE2 8D 1A            [24] 3690 	mov	_txdata_PARM_3,r5
      000DE4 8E 1B            [24] 3691 	mov	(_txdata_PARM_3 + 1),r6
      000DE6 75 82 42         [24] 3692 	mov	dpl,#0x42
      000DE9 12 1C 00         [24] 3693 	lcall	_txdata
      000DEC                       3694 00157$:
                                   3695 ;	appFHSSNIC.c:773: rfRxProcessed[processbuffer] = RX_PROCESSED;
      000DEC 90 F5 83         [24] 3696 	mov	dptr,#_processbuffer
      000DEF E0               [24] 3697 	movx	a,@dptr
      000DF0 FF               [12] 3698 	mov	r7,a
      000DF1 24 84            [12] 3699 	add	a,#_rfRxProcessed
      000DF3 F5 82            [12] 3700 	mov	dpl,a
      000DF5 E4               [12] 3701 	clr	a
      000DF6 34 FD            [12] 3702 	addc	a,#(_rfRxProcessed >> 8)
      000DF8 F5 83            [12] 3703 	mov	dph,a
      000DFA 74 01            [12] 3704 	mov	a,#0x01
      000DFC F0               [24] 3705 	movx	@dptr,a
      000DFD                       3706 00159$:
                                   3707 ;	appFHSSNIC.c:775: __critical { rfif &= ~( RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT );  }          // FIXME: rfif is way too easily tossed aside here...
      000DFD D2 00            [12] 3708 	setb	_appMainLoop_sloc0_1_0
      000DFF 10 AF 02         [24] 3709 	jbc	ea,00310$
      000E02 C2 00            [12] 3710 	clr	_appMainLoop_sloc0_1_0
      000E04                       3711 00310$:
      000E04 AF 22            [24] 3712 	mov	r7,_rfif
      000E06 74 CF            [12] 3713 	mov	a,#0xCF
      000E08 5F               [12] 3714 	anl	a,r7
      000E09 F5 22            [12] 3715 	mov	_rfif,a
      000E0B A2 00            [12] 3716 	mov	c,_appMainLoop_sloc0_1_0
      000E0D 92 AF            [24] 3717 	mov	ea,c
                                   3718 ;	appFHSSNIC.c:781: }
      000E0F 22               [24] 3719 	ret
                                   3720 ;------------------------------------------------------------
                                   3721 ;Allocation info for local variables in function 'appHandleEP5'
                                   3722 ;------------------------------------------------------------
                                   3723 ;sloc0                     Allocated with name '_appHandleEP5_sloc0_1_0'
                                   3724 ;sloc1                     Allocated with name '_appHandleEP5_sloc1_1_0'
                                   3725 ;len                       Allocated with name '_appHandleEP5_len_1_178'
                                   3726 ;repeat                    Allocated with name '_appHandleEP5_repeat_1_178'
                                   3727 ;offset                    Allocated with name '_appHandleEP5_offset_1_178'
                                   3728 ;buf                       Allocated with name '_appHandleEP5_buf_1_178'
                                   3729 ;blocks                    Allocated with name '_appHandleEP5_blocks_1_178'
                                   3730 ;------------------------------------------------------------
                                   3731 ;	appFHSSNIC.c:797: int appHandleEP5()
                                   3732 ;	-----------------------------------------
                                   3733 ;	 function appHandleEP5
                                   3734 ;	-----------------------------------------
      000E10                       3735 _appHandleEP5:
                                   3736 ;	appFHSSNIC.c:801: __xdata u8 * __xdata buf = &ep5.OUTbuf[0];
      000E10 90 F9 49         [24] 3737 	mov	dptr,#(_ep5 + 0x0005)
      000E13 E0               [24] 3738 	movx	a,@dptr
      000E14 FD               [12] 3739 	mov	r5,a
      000E15 A3               [24] 3740 	inc	dptr
      000E16 E0               [24] 3741 	movx	a,@dptr
      000E17 FE               [12] 3742 	mov	r6,a
      000E18 A3               [24] 3743 	inc	dptr
      000E19 E0               [24] 3744 	movx	a,@dptr
      000E1A FF               [12] 3745 	mov	r7,a
                                   3746 ;	appFHSSNIC.c:804: switch (ep5.OUTapp)
      000E1B 90 F9 4E         [24] 3747 	mov	dptr,#(_ep5 + 0x000a)
      000E1E E0               [24] 3748 	movx	a,@dptr
      000E1F FC               [12] 3749 	mov	r4,a
      000E20 BC 42 02         [24] 3750 	cjne	r4,#0x42,00232$
      000E23 80 03            [24] 3751 	sjmp	00233$
      000E25                       3752 00232$:
      000E25 02 17 AB         [24] 3753 	ljmp	00172$
      000E28                       3754 00233$:
                                   3755 ;	appFHSSNIC.c:808: switch (ep5.OUTcmd)
      000E28 90 F9 4F         [24] 3756 	mov	dptr,#(_ep5 + 0x000b)
      000E2B E0               [24] 3757 	movx	a,@dptr
      000E2C FC               [12] 3758 	mov  r4,a
      000E2D 24 BE            [12] 3759 	add	a,#0xff - 0x41
      000E2F 50 03            [24] 3760 	jnc	00234$
      000E31 02 17 9D         [24] 3761 	ljmp	00170$
      000E34                       3762 00234$:
      000E34 EC               [12] 3763 	mov	a,r4
      000E35 24 0A            [12] 3764 	add	a,#(00235$-3-.)
      000E37 83               [24] 3765 	movc	a,@a+pc
      000E38 F5 82            [12] 3766 	mov	dpl,a
      000E3A EC               [12] 3767 	mov	a,r4
      000E3B 24 46            [12] 3768 	add	a,#(00236$-3-.)
      000E3D 83               [24] 3769 	movc	a,@a+pc
      000E3E F5 83            [12] 3770 	mov	dph,a
      000E40 E4               [12] 3771 	clr	a
      000E41 73               [24] 3772 	jmp	@a+dptr
      000E42                       3773 00235$:
      000E42 9D                    3774 	.db	00170$
      000E43 9D                    3775 	.db	00170$
      000E44 16                    3776 	.db	00104$
      000E45 5E                    3777 	.db	00119$
      000E46 9D                    3778 	.db	00170$
      000E47 C9                    3779 	.db	00107$
      000E48 84                    3780 	.db	00113$
      000E49 A2                    3781 	.db	00114$
      000E4A B5                    3782 	.db	00115$
      000E4B EE                    3783 	.db	00116$
      000E4C 27                    3784 	.db	00117$
      000E4D 4B                    3785 	.db	00118$
      000E4E 8E                    3786 	.db	00120$
      000E4F 2C                    3787 	.db	00123$
      000E50 9D                    3788 	.db	00170$
      000E51 9D                    3789 	.db	00170$
      000E52 F2                    3790 	.db	00147$
      000E53 71                    3791 	.db	00152$
      000E54 98                    3792 	.db	00153$
      000E55 0B                    3793 	.db	00156$
      000E56 30                    3794 	.db	00157$
      000E57 43                    3795 	.db	00158$
      000E58 AF                    3796 	.db	00159$
      000E59 23                    3797 	.db	00140$
      000E5A 58                    3798 	.db	00151$
      000E5B 9D                    3799 	.db	00170$
      000E5C 9D                    3800 	.db	00170$
      000E5D 9D                    3801 	.db	00170$
      000E5E 9D                    3802 	.db	00170$
      000E5F 9D                    3803 	.db	00170$
      000E60 9D                    3804 	.db	00170$
      000E61 9D                    3805 	.db	00170$
      000E62 02                    3806 	.db	00161$
      000E63 8B                    3807 	.db	00169$
      000E64 D2                    3808 	.db	00160$
      000E65 C8                    3809 	.db	00154$
      000E66 EB                    3810 	.db	00155$
      000E67 9D                    3811 	.db	00170$
      000E68 9D                    3812 	.db	00170$
      000E69 9D                    3813 	.db	00170$
      000E6A 9D                    3814 	.db	00170$
      000E6B 9D                    3815 	.db	00170$
      000E6C 9D                    3816 	.db	00170$
      000E6D 9D                    3817 	.db	00170$
      000E6E 9D                    3818 	.db	00170$
      000E6F 9D                    3819 	.db	00170$
      000E70 9D                    3820 	.db	00170$
      000E71 9D                    3821 	.db	00170$
      000E72 9D                    3822 	.db	00170$
      000E73 9D                    3823 	.db	00170$
      000E74 9D                    3824 	.db	00170$
      000E75 9D                    3825 	.db	00170$
      000E76 9D                    3826 	.db	00170$
      000E77 9D                    3827 	.db	00170$
      000E78 9D                    3828 	.db	00170$
      000E79 9D                    3829 	.db	00170$
      000E7A 9D                    3830 	.db	00170$
      000E7B 9D                    3831 	.db	00170$
      000E7C 9D                    3832 	.db	00170$
      000E7D 9D                    3833 	.db	00170$
      000E7E 9D                    3834 	.db	00170$
      000E7F 9D                    3835 	.db	00170$
      000E80 9D                    3836 	.db	00170$
      000E81 9D                    3837 	.db	00170$
      000E82 C6                    3838 	.db	00102$
      000E83 00                    3839 	.db	00103$
      000E84                       3840 00236$:
      000E84 17                    3841 	.db	00170$>>8
      000E85 17                    3842 	.db	00170$>>8
      000E86 0F                    3843 	.db	00104$>>8
      000E87 11                    3844 	.db	00119$>>8
      000E88 17                    3845 	.db	00170$>>8
      000E89 0F                    3846 	.db	00107$>>8
      000E8A 10                    3847 	.db	00113$>>8
      000E8B 10                    3848 	.db	00114$>>8
      000E8C 10                    3849 	.db	00115$>>8
      000E8D 10                    3850 	.db	00116$>>8
      000E8E 11                    3851 	.db	00117$>>8
      000E8F 11                    3852 	.db	00118$>>8
      000E90 11                    3853 	.db	00120$>>8
      000E91 12                    3854 	.db	00123$>>8
      000E92 17                    3855 	.db	00170$>>8
      000E93 17                    3856 	.db	00170$>>8
      000E94 14                    3857 	.db	00147$>>8
      000E95 15                    3858 	.db	00152$>>8
      000E96 15                    3859 	.db	00153$>>8
      000E97 16                    3860 	.db	00156$>>8
      000E98 16                    3861 	.db	00157$>>8
      000E99 16                    3862 	.db	00158$>>8
      000E9A 16                    3863 	.db	00159$>>8
      000E9B 14                    3864 	.db	00140$>>8
      000E9C 15                    3865 	.db	00151$>>8
      000E9D 17                    3866 	.db	00170$>>8
      000E9E 17                    3867 	.db	00170$>>8
      000E9F 17                    3868 	.db	00170$>>8
      000EA0 17                    3869 	.db	00170$>>8
      000EA1 17                    3870 	.db	00170$>>8
      000EA2 17                    3871 	.db	00170$>>8
      000EA3 17                    3872 	.db	00170$>>8
      000EA4 17                    3873 	.db	00161$>>8
      000EA5 17                    3874 	.db	00169$>>8
      000EA6 16                    3875 	.db	00160$>>8
      000EA7 15                    3876 	.db	00154$>>8
      000EA8 15                    3877 	.db	00155$>>8
      000EA9 17                    3878 	.db	00170$>>8
      000EAA 17                    3879 	.db	00170$>>8
      000EAB 17                    3880 	.db	00170$>>8
      000EAC 17                    3881 	.db	00170$>>8
      000EAD 17                    3882 	.db	00170$>>8
      000EAE 17                    3883 	.db	00170$>>8
      000EAF 17                    3884 	.db	00170$>>8
      000EB0 17                    3885 	.db	00170$>>8
      000EB1 17                    3886 	.db	00170$>>8
      000EB2 17                    3887 	.db	00170$>>8
      000EB3 17                    3888 	.db	00170$>>8
      000EB4 17                    3889 	.db	00170$>>8
      000EB5 17                    3890 	.db	00170$>>8
      000EB6 17                    3891 	.db	00170$>>8
      000EB7 17                    3892 	.db	00170$>>8
      000EB8 17                    3893 	.db	00170$>>8
      000EB9 17                    3894 	.db	00170$>>8
      000EBA 17                    3895 	.db	00170$>>8
      000EBB 17                    3896 	.db	00170$>>8
      000EBC 17                    3897 	.db	00170$>>8
      000EBD 17                    3898 	.db	00170$>>8
      000EBE 17                    3899 	.db	00170$>>8
      000EBF 17                    3900 	.db	00170$>>8
      000EC0 17                    3901 	.db	00170$>>8
      000EC1 17                    3902 	.db	00170$>>8
      000EC2 17                    3903 	.db	00170$>>8
      000EC3 17                    3904 	.db	00170$>>8
      000EC4 0E                    3905 	.db	00102$>>8
      000EC5 0F                    3906 	.db	00103$>>8
                                   3907 ;	appFHSSNIC.c:810: case RFCAT_START_SPECAN:
      000EC6                       3908 00102$:
                                   3909 ;	appFHSSNIC.c:813: stop_hopping();
      000EC6 C0 07            [24] 3910 	push	ar7
      000EC8 C0 06            [24] 3911 	push	ar6
      000ECA C0 05            [24] 3912 	push	ar5
      000ECC 12 01 9F         [24] 3913 	lcall	_stop_hopping
      000ECF D0 05            [24] 3914 	pop	ar5
      000ED1 D0 06            [24] 3915 	pop	ar6
      000ED3 D0 07            [24] 3916 	pop	ar7
                                   3917 ;	appFHSSNIC.c:814: macdata.mac_state = MAC_STATE_PREP_SPECAN;
      000ED5 90 FD 8F         [24] 3918 	mov	dptr,#_macdata
      000ED8 74 40            [12] 3919 	mov	a,#0x40
      000EDA F0               [24] 3920 	movx	@dptr,a
                                   3921 ;	appFHSSNIC.c:815: macdata.synched_chans = buf[0];
      000EDB 8D 82            [24] 3922 	mov	dpl,r5
      000EDD 8E 83            [24] 3923 	mov	dph,r6
      000EDF 8F F0            [24] 3924 	mov	b,r7
      000EE1 12 30 79         [24] 3925 	lcall	__gptrget
      000EE4 FC               [12] 3926 	mov	r4,a
      000EE5 7B 00            [12] 3927 	mov	r3,#0x00
      000EE7 90 FD A2         [24] 3928 	mov	dptr,#(_macdata + 0x0013)
      000EEA EC               [12] 3929 	mov	a,r4
      000EEB F0               [24] 3930 	movx	@dptr,a
      000EEC EB               [12] 3931 	mov	a,r3
      000EED A3               [24] 3932 	inc	dptr
      000EEE F0               [24] 3933 	movx	@dptr,a
                                   3934 ;	appFHSSNIC.c:816: appReturn( 1, buf);
      000EEF 90 F9 59         [24] 3935 	mov	dptr,#_appReturn_PARM_2
      000EF2 ED               [12] 3936 	mov	a,r5
      000EF3 F0               [24] 3937 	movx	@dptr,a
      000EF4 EE               [12] 3938 	mov	a,r6
      000EF5 A3               [24] 3939 	inc	dptr
      000EF6 F0               [24] 3940 	movx	@dptr,a
      000EF7 75 82 01         [24] 3941 	mov	dpl,#0x01
      000EFA 12 1C 40         [24] 3942 	lcall	_appReturn
                                   3943 ;	appFHSSNIC.c:817: break;
      000EFD 02 17 AB         [24] 3944 	ljmp	00172$
                                   3945 ;	appFHSSNIC.c:819: case RFCAT_STOP_SPECAN:
      000F00                       3946 00103$:
                                   3947 ;	appFHSSNIC.c:820: macdata.mac_state = MAC_STATE_NONHOPPING;
      000F00 90 FD 8F         [24] 3948 	mov	dptr,#_macdata
      000F03 E4               [12] 3949 	clr	a
      000F04 F0               [24] 3950 	movx	@dptr,a
                                   3951 ;	appFHSSNIC.c:821: appReturn( 1, buf);
      000F05 90 F9 59         [24] 3952 	mov	dptr,#_appReturn_PARM_2
      000F08 ED               [12] 3953 	mov	a,r5
      000F09 F0               [24] 3954 	movx	@dptr,a
      000F0A EE               [12] 3955 	mov	a,r6
      000F0B A3               [24] 3956 	inc	dptr
      000F0C F0               [24] 3957 	movx	@dptr,a
      000F0D 75 82 01         [24] 3958 	mov	dpl,#0x01
      000F10 12 1C 40         [24] 3959 	lcall	_appReturn
                                   3960 ;	appFHSSNIC.c:822: break;
      000F13 02 17 AB         [24] 3961 	ljmp	00172$
                                   3962 ;	appFHSSNIC.c:824: case NIC_XMIT:
      000F16                       3963 00104$:
                                   3964 ;	appFHSSNIC.c:827: if (macdata.mac_state != MAC_STATE_NONHOPPING)
      000F16 90 FD 8F         [24] 3965 	mov	dptr,#_macdata
      000F19 E0               [24] 3966 	movx	a,@dptr
      000F1A 60 09            [24] 3967 	jz	00106$
                                   3968 ;	appFHSSNIC.c:829: debug("crap, please use FHSSxmit() instead!");
      000F1C 90 31 FA         [24] 3969 	mov	dptr,#___str_9
      000F1F 12 1C B2         [24] 3970 	lcall	_debug
                                   3971 ;	appFHSSNIC.c:830: break;
      000F22 02 17 AB         [24] 3972 	ljmp	00172$
      000F25                       3973 00106$:
                                   3974 ;	appFHSSNIC.c:832: len = buf[0];
      000F25 8D 82            [24] 3975 	mov	dpl,r5
      000F27 8E 83            [24] 3976 	mov	dph,r6
      000F29 8F F0            [24] 3977 	mov	b,r7
      000F2B 12 30 79         [24] 3978 	lcall	__gptrget
      000F2E FC               [12] 3979 	mov	r4,a
      000F2F 7B 00            [12] 3980 	mov	r3,#0x00
      000F31 90 F5 86         [24] 3981 	mov	dptr,#_appHandleEP5_len_1_178
      000F34 EC               [12] 3982 	mov	a,r4
      000F35 F0               [24] 3983 	movx	@dptr,a
      000F36 EB               [12] 3984 	mov	a,r3
      000F37 A3               [24] 3985 	inc	dptr
      000F38 F0               [24] 3986 	movx	@dptr,a
                                   3987 ;	appFHSSNIC.c:833: len += buf[1] << 8;
      000F39 8D 82            [24] 3988 	mov	dpl,r5
      000F3B 8E 83            [24] 3989 	mov	dph,r6
      000F3D A3               [24] 3990 	inc	dptr
      000F3E E0               [24] 3991 	movx	a,@dptr
      000F3F FA               [12] 3992 	mov	r2,a
      000F40 E4               [12] 3993 	clr	a
      000F41 F9               [12] 3994 	mov	r1,a
      000F42 2C               [12] 3995 	add	a,r4
      000F43 FC               [12] 3996 	mov	r4,a
      000F44 EA               [12] 3997 	mov	a,r2
      000F45 3B               [12] 3998 	addc	a,r3
      000F46 FB               [12] 3999 	mov	r3,a
      000F47 90 F5 86         [24] 4000 	mov	dptr,#_appHandleEP5_len_1_178
      000F4A EC               [12] 4001 	mov	a,r4
      000F4B F0               [24] 4002 	movx	@dptr,a
      000F4C EB               [12] 4003 	mov	a,r3
      000F4D A3               [24] 4004 	inc	dptr
      000F4E F0               [24] 4005 	movx	@dptr,a
                                   4006 ;	appFHSSNIC.c:836: offset = buf[4];
      000F4F 8D 82            [24] 4007 	mov	dpl,r5
      000F51 8E 83            [24] 4008 	mov	dph,r6
      000F53 A3               [24] 4009 	inc	dptr
      000F54 A3               [24] 4010 	inc	dptr
      000F55 A3               [24] 4011 	inc	dptr
      000F56 A3               [24] 4012 	inc	dptr
      000F57 E0               [24] 4013 	movx	a,@dptr
      000F58 FA               [12] 4014 	mov	r2,a
      000F59 8A 08            [24] 4015 	mov	_appHandleEP5_sloc0_1_0,r2
                                   4016 ;	1-genFromRTrack replaced	mov	(_appHandleEP5_sloc0_1_0 + 1),#0x00
      000F5B 89 09            [24] 4017 	mov	(_appHandleEP5_sloc0_1_0 + 1),r1
                                   4018 ;	appFHSSNIC.c:837: offset += buf[5] << 8;
      000F5D 8D 82            [24] 4019 	mov	dpl,r5
      000F5F 8E 83            [24] 4020 	mov	dph,r6
      000F61 A3               [24] 4021 	inc	dptr
      000F62 A3               [24] 4022 	inc	dptr
      000F63 A3               [24] 4023 	inc	dptr
      000F64 A3               [24] 4024 	inc	dptr
      000F65 A3               [24] 4025 	inc	dptr
      000F66 E0               [24] 4026 	movx	a,@dptr
      000F67 FA               [12] 4027 	mov	r2,a
      000F68 E4               [12] 4028 	clr	a
      000F69 25 08            [12] 4029 	add	a,_appHandleEP5_sloc0_1_0
      000F6B F5 08            [12] 4030 	mov	_appHandleEP5_sloc0_1_0,a
      000F6D EA               [12] 4031 	mov	a,r2
      000F6E 35 09            [12] 4032 	addc	a,(_appHandleEP5_sloc0_1_0 + 1)
      000F70 F5 09            [12] 4033 	mov	(_appHandleEP5_sloc0_1_0 + 1),a
                                   4034 ;	appFHSSNIC.c:838: txTotal= 0;
      000F72 90 FD 88         [24] 4035 	mov	dptr,#_txTotal
      000F75 E4               [12] 4036 	clr	a
      000F76 F0               [24] 4037 	movx	@dptr,a
      000F77 A3               [24] 4038 	inc	dptr
      000F78 F0               [24] 4039 	movx	@dptr,a
                                   4040 ;	appFHSSNIC.c:839: buf[0] = transmit(&buf[6], len, 0, offset);
      000F79 74 06            [12] 4041 	mov	a,#0x06
      000F7B 2D               [12] 4042 	add	a,r5
      000F7C F9               [12] 4043 	mov	r1,a
      000F7D E4               [12] 4044 	clr	a
      000F7E 3E               [12] 4045 	addc	a,r6
      000F7F FA               [12] 4046 	mov	r2,a
      000F80 90 FD A4         [24] 4047 	mov	dptr,#_transmit_PARM_2
      000F83 EC               [12] 4048 	mov	a,r4
      000F84 F0               [24] 4049 	movx	@dptr,a
      000F85 EB               [12] 4050 	mov	a,r3
      000F86 A3               [24] 4051 	inc	dptr
      000F87 F0               [24] 4052 	movx	@dptr,a
      000F88 90 FD A6         [24] 4053 	mov	dptr,#_transmit_PARM_3
      000F8B E4               [12] 4054 	clr	a
      000F8C F0               [24] 4055 	movx	@dptr,a
      000F8D A3               [24] 4056 	inc	dptr
      000F8E F0               [24] 4057 	movx	@dptr,a
      000F8F 90 FD A8         [24] 4058 	mov	dptr,#_transmit_PARM_4
      000F92 E5 08            [12] 4059 	mov	a,_appHandleEP5_sloc0_1_0
      000F94 F0               [24] 4060 	movx	@dptr,a
      000F95 E5 09            [12] 4061 	mov	a,(_appHandleEP5_sloc0_1_0 + 1)
      000F97 A3               [24] 4062 	inc	dptr
      000F98 F0               [24] 4063 	movx	@dptr,a
      000F99 89 82            [24] 4064 	mov	dpl,r1
      000F9B 8A 83            [24] 4065 	mov	dph,r2
      000F9D C0 07            [24] 4066 	push	ar7
      000F9F C0 06            [24] 4067 	push	ar6
      000FA1 C0 05            [24] 4068 	push	ar5
      000FA3 12 1F 49         [24] 4069 	lcall	_transmit
      000FA6 AC 82            [24] 4070 	mov	r4,dpl
      000FA8 D0 05            [24] 4071 	pop	ar5
      000FAA D0 06            [24] 4072 	pop	ar6
      000FAC D0 07            [24] 4073 	pop	ar7
      000FAE 8D 82            [24] 4074 	mov	dpl,r5
      000FB0 8E 83            [24] 4075 	mov	dph,r6
      000FB2 8F F0            [24] 4076 	mov	b,r7
      000FB4 EC               [12] 4077 	mov	a,r4
      000FB5 12 2E E2         [24] 4078 	lcall	__gptrput
                                   4079 ;	appFHSSNIC.c:840: appReturn( 1, buf);
      000FB8 90 F9 59         [24] 4080 	mov	dptr,#_appReturn_PARM_2
      000FBB ED               [12] 4081 	mov	a,r5
      000FBC F0               [24] 4082 	movx	@dptr,a
      000FBD EE               [12] 4083 	mov	a,r6
      000FBE A3               [24] 4084 	inc	dptr
      000FBF F0               [24] 4085 	movx	@dptr,a
      000FC0 75 82 01         [24] 4086 	mov	dpl,#0x01
      000FC3 12 1C 40         [24] 4087 	lcall	_appReturn
                                   4088 ;	appFHSSNIC.c:841: break;
      000FC6 02 17 AB         [24] 4089 	ljmp	00172$
                                   4090 ;	appFHSSNIC.c:843: case NIC_SET_RECV_LARGE:
      000FC9                       4091 00107$:
                                   4092 ;	appFHSSNIC.c:848: rfRxLargeLen = buf[0];
      000FC9 8D 82            [24] 4093 	mov	dpl,r5
      000FCB 8E 83            [24] 4094 	mov	dph,r6
      000FCD 8F F0            [24] 4095 	mov	b,r7
      000FCF 12 30 79         [24] 4096 	lcall	__gptrget
      000FD2 90 FD E8         [24] 4097 	mov	dptr,#_rfRxLargeLen
      000FD5 F0               [24] 4098 	movx	@dptr,a
      000FD6 E4               [12] 4099 	clr	a
      000FD7 A3               [24] 4100 	inc	dptr
      000FD8 F0               [24] 4101 	movx	@dptr,a
                                   4102 ;	appFHSSNIC.c:849: rfRxLargeLen += buf[1] << 8;
      000FD9 8D 82            [24] 4103 	mov	dpl,r5
      000FDB 8E 83            [24] 4104 	mov	dph,r6
      000FDD A3               [24] 4105 	inc	dptr
      000FDE E0               [24] 4106 	movx	a,@dptr
      000FDF FB               [12] 4107 	mov	r3,a
      000FE0 7C 00            [12] 4108 	mov	r4,#0x00
      000FE2 90 FD E8         [24] 4109 	mov	dptr,#_rfRxLargeLen
      000FE5 E0               [24] 4110 	movx	a,@dptr
      000FE6 F9               [12] 4111 	mov	r1,a
      000FE7 A3               [24] 4112 	inc	dptr
      000FE8 E0               [24] 4113 	movx	a,@dptr
      000FE9 FA               [12] 4114 	mov	r2,a
      000FEA 90 FD E8         [24] 4115 	mov	dptr,#_rfRxLargeLen
      000FED EC               [12] 4116 	mov	a,r4
      000FEE 29               [12] 4117 	add	a,r1
      000FEF F0               [24] 4118 	movx	@dptr,a
      000FF0 EB               [12] 4119 	mov	a,r3
      000FF1 3A               [12] 4120 	addc	a,r2
      000FF2 A3               [24] 4121 	inc	dptr
      000FF3 F0               [24] 4122 	movx	@dptr,a
                                   4123 ;	appFHSSNIC.c:850: if(rfRxLargeLen)
      000FF4 90 FD E8         [24] 4124 	mov	dptr,#_rfRxLargeLen
      000FF7 E0               [24] 4125 	movx	a,@dptr
      000FF8 A3               [24] 4126 	inc	dptr
      000FF9 E0               [24] 4127 	movx	a,@dptr
      000FFA 90 FD E8         [24] 4128 	mov	dptr,#_rfRxLargeLen
      000FFD E0               [24] 4129 	movx	a,@dptr
      000FFE F5 F0            [12] 4130 	mov	b,a
      001000 A3               [24] 4131 	inc	dptr
      001001 E0               [24] 4132 	movx	a,@dptr
      001002 45 F0            [12] 4133 	orl	a,b
      001004 60 4B            [24] 4134 	jz	00111$
                                   4135 ;	appFHSSNIC.c:852: rfRxInfMode = 1;
      001006 90 FD E5         [24] 4136 	mov	dptr,#_rfRxInfMode
      001009 74 01            [12] 4137 	mov	a,#0x01
      00100B F0               [24] 4138 	movx	@dptr,a
                                   4139 ;	appFHSSNIC.c:854: if(!rfRxTotalRXLen)
      00100C 90 FD E6         [24] 4140 	mov	dptr,#_rfRxTotalRXLen
      00100F E0               [24] 4141 	movx	a,@dptr
      001010 A3               [24] 4142 	inc	dptr
      001011 E0               [24] 4143 	movx	a,@dptr
      001012 90 FD E6         [24] 4144 	mov	dptr,#_rfRxTotalRXLen
      001015 E0               [24] 4145 	movx	a,@dptr
      001016 F5 F0            [12] 4146 	mov	b,a
      001018 A3               [24] 4147 	inc	dptr
      001019 E0               [24] 4148 	movx	a,@dptr
      00101A 45 F0            [12] 4149 	orl	a,b
      00101C 70 47            [24] 4150 	jnz	00112$
                                   4151 ;	appFHSSNIC.c:856: IdleMode();
      00101E 12 1E 82         [24] 4152 	lcall	_IdleMode
                                   4153 ;	appFHSSNIC.c:857: rfRxTotalRXLen = rfRxLargeLen;
      001021 90 FD E8         [24] 4154 	mov	dptr,#_rfRxLargeLen
      001024 E0               [24] 4155 	movx	a,@dptr
      001025 FB               [12] 4156 	mov	r3,a
      001026 A3               [24] 4157 	inc	dptr
      001027 E0               [24] 4158 	movx	a,@dptr
      001028 FC               [12] 4159 	mov	r4,a
      001029 90 FD E6         [24] 4160 	mov	dptr,#_rfRxTotalRXLen
      00102C EB               [12] 4161 	mov	a,r3
      00102D F0               [24] 4162 	movx	@dptr,a
      00102E EC               [12] 4163 	mov	a,r4
      00102F A3               [24] 4164 	inc	dptr
      001030 F0               [24] 4165 	movx	@dptr,a
                                   4166 ;	appFHSSNIC.c:858: PKTLEN = (u8) (rfRxTotalRXLen % 256);
      001031 90 FD E6         [24] 4167 	mov	dptr,#_rfRxTotalRXLen
      001034 E0               [24] 4168 	movx	a,@dptr
      001035 FB               [12] 4169 	mov	r3,a
      001036 A3               [24] 4170 	inc	dptr
      001037 E0               [24] 4171 	movx	a,@dptr
      001038 90 DF 02         [24] 4172 	mov	dptr,#_PKTLEN
      00103B EB               [12] 4173 	mov	a,r3
      00103C F0               [24] 4174 	movx	@dptr,a
                                   4175 ;	appFHSSNIC.c:859: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
      00103D 90 DF 04         [24] 4176 	mov	dptr,#_PKTCTRL0
      001040 E0               [24] 4177 	movx	a,@dptr
      001041 FC               [12] 4178 	mov	r4,a
      001042 74 FC            [12] 4179 	mov	a,#0xFC
      001044 5C               [12] 4180 	anl	a,r4
      001045 F0               [24] 4181 	movx	@dptr,a
                                   4182 ;	appFHSSNIC.c:860: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
      001046 E0               [24] 4183 	movx	a,@dptr
      001047 FC               [12] 4184 	mov	r4,a
      001048 74 02            [12] 4185 	mov	a,#0x02
      00104A 4C               [12] 4186 	orl	a,r4
      00104B F0               [24] 4187 	movx	@dptr,a
                                   4188 ;	appFHSSNIC.c:861: RxMode();
      00104C 12 1E 38         [24] 4189 	lcall	_RxMode
      00104F 80 14            [24] 4190 	sjmp	00112$
      001051                       4191 00111$:
                                   4192 ;	appFHSSNIC.c:866: rfRxInfMode = 0;
      001051 90 FD E5         [24] 4193 	mov	dptr,#_rfRxInfMode
      001054 E4               [12] 4194 	clr	a
      001055 F0               [24] 4195 	movx	@dptr,a
                                   4196 ;	appFHSSNIC.c:867: rfRxTotalRXLen = 0;
      001056 90 FD E6         [24] 4197 	mov	dptr,#_rfRxTotalRXLen
      001059 F0               [24] 4198 	movx	@dptr,a
      00105A A3               [24] 4199 	inc	dptr
      00105B F0               [24] 4200 	movx	@dptr,a
                                   4201 ;	appFHSSNIC.c:868: rfRxLargeLen = 0;
      00105C 90 FD E8         [24] 4202 	mov	dptr,#_rfRxLargeLen
      00105F F0               [24] 4203 	movx	@dptr,a
      001060 A3               [24] 4204 	inc	dptr
      001061 F0               [24] 4205 	movx	@dptr,a
                                   4206 ;	appFHSSNIC.c:869: IdleMode();
      001062 12 1E 82         [24] 4207 	lcall	_IdleMode
      001065                       4208 00112$:
                                   4209 ;	appFHSSNIC.c:871: txdata(ep5.OUTapp, ep5.OUTcmd, 1, (__xdata u8*)&rfRxLargeLen);
      001065 90 F9 4E         [24] 4210 	mov	dptr,#(_ep5 + 0x000a)
      001068 E0               [24] 4211 	movx	a,@dptr
      001069 FC               [12] 4212 	mov	r4,a
      00106A 90 F9 4F         [24] 4213 	mov	dptr,#(_ep5 + 0x000b)
      00106D E0               [24] 4214 	movx	a,@dptr
      00106E F5 19            [12] 4215 	mov	_txdata_PARM_2,a
      001070 75 1C E8         [24] 4216 	mov	_txdata_PARM_4,#_rfRxLargeLen
      001073 75 1D FD         [24] 4217 	mov	(_txdata_PARM_4 + 1),#(_rfRxLargeLen >> 8)
      001076 75 1A 01         [24] 4218 	mov	_txdata_PARM_3,#0x01
      001079 75 1B 00         [24] 4219 	mov	(_txdata_PARM_3 + 1),#0x00
      00107C 8C 82            [24] 4220 	mov	dpl,r4
      00107E 12 1C 00         [24] 4221 	lcall	_txdata
                                   4222 ;	appFHSSNIC.c:872: break;
      001081 02 17 AB         [24] 4223 	ljmp	00172$
                                   4224 ;	appFHSSNIC.c:874: case NIC_SET_AES_MODE:
      001084                       4225 00113$:
                                   4226 ;	appFHSSNIC.c:875: rfAESMode= buf[0];
      001084 8D 82            [24] 4227 	mov	dpl,r5
      001086 8E 83            [24] 4228 	mov	dph,r6
      001088 8F F0            [24] 4229 	mov	b,r7
      00108A 12 30 79         [24] 4230 	lcall	__gptrget
      00108D 90 FD F9         [24] 4231 	mov	dptr,#_rfAESMode
      001090 F0               [24] 4232 	movx	@dptr,a
                                   4233 ;	appFHSSNIC.c:876: appReturn( 1, buf);
      001091 90 F9 59         [24] 4234 	mov	dptr,#_appReturn_PARM_2
      001094 ED               [12] 4235 	mov	a,r5
      001095 F0               [24] 4236 	movx	@dptr,a
      001096 EE               [12] 4237 	mov	a,r6
      001097 A3               [24] 4238 	inc	dptr
      001098 F0               [24] 4239 	movx	@dptr,a
      001099 75 82 01         [24] 4240 	mov	dpl,#0x01
      00109C 12 1C 40         [24] 4241 	lcall	_appReturn
                                   4242 ;	appFHSSNIC.c:877: break;
      00109F 02 17 AB         [24] 4243 	ljmp	00172$
                                   4244 ;	appFHSSNIC.c:879: case NIC_GET_AES_MODE:
      0010A2                       4245 00114$:
                                   4246 ;	appFHSSNIC.c:880: appReturn( 1, (__xdata u8*) &rfAESMode);
      0010A2 90 F9 59         [24] 4247 	mov	dptr,#_appReturn_PARM_2
      0010A5 74 F9            [12] 4248 	mov	a,#_rfAESMode
      0010A7 F0               [24] 4249 	movx	@dptr,a
      0010A8 74 FD            [12] 4250 	mov	a,#(_rfAESMode >> 8)
      0010AA A3               [24] 4251 	inc	dptr
      0010AB F0               [24] 4252 	movx	@dptr,a
      0010AC 75 82 01         [24] 4253 	mov	dpl,#0x01
      0010AF 12 1C 40         [24] 4254 	lcall	_appReturn
                                   4255 ;	appFHSSNIC.c:881: break;
      0010B2 02 17 AB         [24] 4256 	ljmp	00172$
                                   4257 ;	appFHSSNIC.c:883: case NIC_SET_AES_IV:
      0010B5                       4258 00115$:
                                   4259 ;	appFHSSNIC.c:884: setAES(buf, ENCCS_CMD_LDIV, (rfAESMode & AES_CRYPTO_MODE));
      0010B5 90 FD F9         [24] 4260 	mov	dptr,#_rfAESMode
      0010B8 E0               [24] 4261 	movx	a,@dptr
      0010B9 FC               [12] 4262 	mov	r4,a
      0010BA 53 04 F0         [24] 4263 	anl	ar4,#0xF0
      0010BD 90 FD C7         [24] 4264 	mov	dptr,#_setAES_PARM_2
      0010C0 74 06            [12] 4265 	mov	a,#0x06
      0010C2 F0               [24] 4266 	movx	@dptr,a
      0010C3 90 FD C8         [24] 4267 	mov	dptr,#_setAES_PARM_3
      0010C6 EC               [12] 4268 	mov	a,r4
      0010C7 F0               [24] 4269 	movx	@dptr,a
      0010C8 8D 82            [24] 4270 	mov	dpl,r5
      0010CA 8E 83            [24] 4271 	mov	dph,r6
      0010CC 8F F0            [24] 4272 	mov	b,r7
      0010CE C0 07            [24] 4273 	push	ar7
      0010D0 C0 06            [24] 4274 	push	ar6
      0010D2 C0 05            [24] 4275 	push	ar5
      0010D4 12 2B 07         [24] 4276 	lcall	_setAES
      0010D7 D0 05            [24] 4277 	pop	ar5
      0010D9 D0 06            [24] 4278 	pop	ar6
      0010DB D0 07            [24] 4279 	pop	ar7
                                   4280 ;	appFHSSNIC.c:885: appReturn( 16, buf);
      0010DD 90 F9 59         [24] 4281 	mov	dptr,#_appReturn_PARM_2
      0010E0 ED               [12] 4282 	mov	a,r5
      0010E1 F0               [24] 4283 	movx	@dptr,a
      0010E2 EE               [12] 4284 	mov	a,r6
      0010E3 A3               [24] 4285 	inc	dptr
      0010E4 F0               [24] 4286 	movx	@dptr,a
      0010E5 75 82 10         [24] 4287 	mov	dpl,#0x10
      0010E8 12 1C 40         [24] 4288 	lcall	_appReturn
                                   4289 ;	appFHSSNIC.c:886: break;
      0010EB 02 17 AB         [24] 4290 	ljmp	00172$
                                   4291 ;	appFHSSNIC.c:888: case NIC_SET_AES_KEY:
      0010EE                       4292 00116$:
                                   4293 ;	appFHSSNIC.c:889: setAES(buf, ENCCS_CMD_LDKEY, (rfAESMode & AES_CRYPTO_MODE));
      0010EE 90 FD F9         [24] 4294 	mov	dptr,#_rfAESMode
      0010F1 E0               [24] 4295 	movx	a,@dptr
      0010F2 FC               [12] 4296 	mov	r4,a
      0010F3 53 04 F0         [24] 4297 	anl	ar4,#0xF0
      0010F6 90 FD C7         [24] 4298 	mov	dptr,#_setAES_PARM_2
      0010F9 74 04            [12] 4299 	mov	a,#0x04
      0010FB F0               [24] 4300 	movx	@dptr,a
      0010FC 90 FD C8         [24] 4301 	mov	dptr,#_setAES_PARM_3
      0010FF EC               [12] 4302 	mov	a,r4
      001100 F0               [24] 4303 	movx	@dptr,a
      001101 8D 82            [24] 4304 	mov	dpl,r5
      001103 8E 83            [24] 4305 	mov	dph,r6
      001105 8F F0            [24] 4306 	mov	b,r7
      001107 C0 07            [24] 4307 	push	ar7
      001109 C0 06            [24] 4308 	push	ar6
      00110B C0 05            [24] 4309 	push	ar5
      00110D 12 2B 07         [24] 4310 	lcall	_setAES
      001110 D0 05            [24] 4311 	pop	ar5
      001112 D0 06            [24] 4312 	pop	ar6
      001114 D0 07            [24] 4313 	pop	ar7
                                   4314 ;	appFHSSNIC.c:890: appReturn( 16, buf);
      001116 90 F9 59         [24] 4315 	mov	dptr,#_appReturn_PARM_2
      001119 ED               [12] 4316 	mov	a,r5
      00111A F0               [24] 4317 	movx	@dptr,a
      00111B EE               [12] 4318 	mov	a,r6
      00111C A3               [24] 4319 	inc	dptr
      00111D F0               [24] 4320 	movx	@dptr,a
      00111E 75 82 10         [24] 4321 	mov	dpl,#0x10
      001121 12 1C 40         [24] 4322 	lcall	_appReturn
                                   4323 ;	appFHSSNIC.c:891: break;
      001124 02 17 AB         [24] 4324 	ljmp	00172$
                                   4325 ;	appFHSSNIC.c:893: case NIC_SET_AMP_MODE:
      001127                       4326 00117$:
                                   4327 ;	appFHSSNIC.c:894: rfAmpMode= *buf;
      001127 8D 82            [24] 4328 	mov	dpl,r5
      001129 8E 83            [24] 4329 	mov	dph,r6
      00112B 8F F0            [24] 4330 	mov	b,r7
      00112D 12 30 79         [24] 4331 	lcall	__gptrget
      001130 90 FD FA         [24] 4332 	mov	dptr,#_rfAmpMode
      001133 F0               [24] 4333 	movx	@dptr,a
                                   4334 ;	appFHSSNIC.c:895: rfAmpMode &= 1;
      001134 E0               [24] 4335 	movx	a,@dptr
      001135 FC               [12] 4336 	mov	r4,a
      001136 74 01            [12] 4337 	mov	a,#0x01
      001138 5C               [12] 4338 	anl	a,r4
      001139 F0               [24] 4339 	movx	@dptr,a
                                   4340 ;	appFHSSNIC.c:896: appReturn( 1, buf);
      00113A 90 F9 59         [24] 4341 	mov	dptr,#_appReturn_PARM_2
      00113D ED               [12] 4342 	mov	a,r5
      00113E F0               [24] 4343 	movx	@dptr,a
      00113F EE               [12] 4344 	mov	a,r6
      001140 A3               [24] 4345 	inc	dptr
      001141 F0               [24] 4346 	movx	@dptr,a
      001142 75 82 01         [24] 4347 	mov	dpl,#0x01
      001145 12 1C 40         [24] 4348 	lcall	_appReturn
                                   4349 ;	appFHSSNIC.c:897: break;
      001148 02 17 AB         [24] 4350 	ljmp	00172$
                                   4351 ;	appFHSSNIC.c:899: case NIC_GET_AMP_MODE:
      00114B                       4352 00118$:
                                   4353 ;	appFHSSNIC.c:900: appReturn( 1, (__xdata u8*) &rfAmpMode);
      00114B 90 F9 59         [24] 4354 	mov	dptr,#_appReturn_PARM_2
      00114E 74 FA            [12] 4355 	mov	a,#_rfAmpMode
      001150 F0               [24] 4356 	movx	@dptr,a
      001151 74 FD            [12] 4357 	mov	a,#(_rfAmpMode >> 8)
      001153 A3               [24] 4358 	inc	dptr
      001154 F0               [24] 4359 	movx	@dptr,a
      001155 75 82 01         [24] 4360 	mov	dpl,#0x01
      001158 12 1C 40         [24] 4361 	lcall	_appReturn
                                   4362 ;	appFHSSNIC.c:901: break;
      00115B 02 17 AB         [24] 4363 	ljmp	00172$
                                   4364 ;	appFHSSNIC.c:903: case NIC_SET_ID:
      00115E                       4365 00119$:
                                   4366 ;	appFHSSNIC.c:905: MAC_set_NIC_ID(buf[0]);
      00115E 8D 82            [24] 4367 	mov	dpl,r5
      001160 8E 83            [24] 4368 	mov	dph,r6
      001162 8F F0            [24] 4369 	mov	b,r7
      001164 12 30 79         [24] 4370 	lcall	__gptrget
      001167 FC               [12] 4371 	mov	r4,a
      001168 7B 00            [12] 4372 	mov	r3,#0x00
      00116A 8C 82            [24] 4373 	mov	dpl,r4
      00116C 8B 83            [24] 4374 	mov	dph,r3
      00116E C0 07            [24] 4375 	push	ar7
      001170 C0 06            [24] 4376 	push	ar6
      001172 C0 05            [24] 4377 	push	ar5
      001174 12 06 55         [24] 4378 	lcall	_MAC_set_NIC_ID
      001177 D0 05            [24] 4379 	pop	ar5
      001179 D0 06            [24] 4380 	pop	ar6
      00117B D0 07            [24] 4381 	pop	ar7
                                   4382 ;	appFHSSNIC.c:906: appReturn( 1, buf);
      00117D 90 F9 59         [24] 4383 	mov	dptr,#_appReturn_PARM_2
      001180 ED               [12] 4384 	mov	a,r5
      001181 F0               [24] 4385 	movx	@dptr,a
      001182 EE               [12] 4386 	mov	a,r6
      001183 A3               [24] 4387 	inc	dptr
      001184 F0               [24] 4388 	movx	@dptr,a
      001185 75 82 01         [24] 4389 	mov	dpl,#0x01
      001188 12 1C 40         [24] 4390 	lcall	_appReturn
                                   4391 ;	appFHSSNIC.c:907: break;
      00118B 02 17 AB         [24] 4392 	ljmp	00172$
                                   4393 ;	appFHSSNIC.c:909: case NIC_LONG_XMIT:
      00118E                       4394 00120$:
                                   4395 ;	appFHSSNIC.c:914: if (macdata.mac_state != MAC_STATE_NONHOPPING)
      00118E 90 FD 8F         [24] 4396 	mov	dptr,#_macdata
      001191 E0               [24] 4397 	movx	a,@dptr
      001192 60 1C            [24] 4398 	jz	00122$
                                   4399 ;	appFHSSNIC.c:916: buf[0] = RC_RF_MODE_INCOMPAT;
      001194 8D 82            [24] 4400 	mov	dpl,r5
      001196 8E 83            [24] 4401 	mov	dph,r6
      001198 8F F0            [24] 4402 	mov	b,r7
      00119A 74 EF            [12] 4403 	mov	a,#0xEF
      00119C 12 2E E2         [24] 4404 	lcall	__gptrput
                                   4405 ;	appFHSSNIC.c:917: appReturn( 1, buf);
      00119F 90 F9 59         [24] 4406 	mov	dptr,#_appReturn_PARM_2
      0011A2 ED               [12] 4407 	mov	a,r5
      0011A3 F0               [24] 4408 	movx	@dptr,a
      0011A4 EE               [12] 4409 	mov	a,r6
      0011A5 A3               [24] 4410 	inc	dptr
      0011A6 F0               [24] 4411 	movx	@dptr,a
      0011A7 75 82 01         [24] 4412 	mov	dpl,#0x01
      0011AA 12 1C 40         [24] 4413 	lcall	_appReturn
                                   4414 ;	appFHSSNIC.c:918: break;
      0011AD 02 17 AB         [24] 4415 	ljmp	00172$
      0011B0                       4416 00122$:
                                   4417 ;	appFHSSNIC.c:920: len = buf[0];
      0011B0 8D 82            [24] 4418 	mov	dpl,r5
      0011B2 8E 83            [24] 4419 	mov	dph,r6
      0011B4 8F F0            [24] 4420 	mov	b,r7
      0011B6 12 30 79         [24] 4421 	lcall	__gptrget
      0011B9 FC               [12] 4422 	mov	r4,a
      0011BA 7B 00            [12] 4423 	mov	r3,#0x00
      0011BC 90 F5 86         [24] 4424 	mov	dptr,#_appHandleEP5_len_1_178
      0011BF EC               [12] 4425 	mov	a,r4
      0011C0 F0               [24] 4426 	movx	@dptr,a
      0011C1 EB               [12] 4427 	mov	a,r3
      0011C2 A3               [24] 4428 	inc	dptr
      0011C3 F0               [24] 4429 	movx	@dptr,a
                                   4430 ;	appFHSSNIC.c:921: len += buf[1] << 8;
      0011C4 8D 82            [24] 4431 	mov	dpl,r5
      0011C6 8E 83            [24] 4432 	mov	dph,r6
      0011C8 A3               [24] 4433 	inc	dptr
      0011C9 E0               [24] 4434 	movx	a,@dptr
      0011CA FA               [12] 4435 	mov	r2,a
      0011CB E4               [12] 4436 	clr	a
      0011CC 2C               [12] 4437 	add	a,r4
      0011CD FC               [12] 4438 	mov	r4,a
      0011CE EA               [12] 4439 	mov	a,r2
      0011CF 3B               [12] 4440 	addc	a,r3
      0011D0 FB               [12] 4441 	mov	r3,a
      0011D1 90 F5 86         [24] 4442 	mov	dptr,#_appHandleEP5_len_1_178
      0011D4 EC               [12] 4443 	mov	a,r4
      0011D5 F0               [24] 4444 	movx	@dptr,a
      0011D6 EB               [12] 4445 	mov	a,r3
      0011D7 A3               [24] 4446 	inc	dptr
      0011D8 F0               [24] 4447 	movx	@dptr,a
                                   4448 ;	appFHSSNIC.c:922: blocks = buf[2];
      0011D9 8D 82            [24] 4449 	mov	dpl,r5
      0011DB 8E 83            [24] 4450 	mov	dph,r6
      0011DD A3               [24] 4451 	inc	dptr
      0011DE A3               [24] 4452 	inc	dptr
      0011DF E0               [24] 4453 	movx	a,@dptr
      0011E0 FA               [12] 4454 	mov	r2,a
                                   4455 ;	appFHSSNIC.c:923: txTotal= 0;
      0011E1 90 FD 88         [24] 4456 	mov	dptr,#_txTotal
      0011E4 E4               [12] 4457 	clr	a
      0011E5 F0               [24] 4458 	movx	@dptr,a
      0011E6 A3               [24] 4459 	inc	dptr
      0011E7 F0               [24] 4460 	movx	@dptr,a
                                   4461 ;	appFHSSNIC.c:924: buf[0] = transmit_long(&buf[3], len, blocks);
      0011E8 74 03            [12] 4462 	mov	a,#0x03
      0011EA 2D               [12] 4463 	add	a,r5
      0011EB F8               [12] 4464 	mov	r0,a
      0011EC E4               [12] 4465 	clr	a
      0011ED 3E               [12] 4466 	addc	a,r6
      0011EE F9               [12] 4467 	mov	r1,a
      0011EF 90 F5 57         [24] 4468 	mov	dptr,#_transmit_long_PARM_2
      0011F2 EC               [12] 4469 	mov	a,r4
      0011F3 F0               [24] 4470 	movx	@dptr,a
      0011F4 EB               [12] 4471 	mov	a,r3
      0011F5 A3               [24] 4472 	inc	dptr
      0011F6 F0               [24] 4473 	movx	@dptr,a
      0011F7 90 F5 59         [24] 4474 	mov	dptr,#_transmit_long_PARM_3
      0011FA EA               [12] 4475 	mov	a,r2
      0011FB F0               [24] 4476 	movx	@dptr,a
      0011FC 88 82            [24] 4477 	mov	dpl,r0
      0011FE 89 83            [24] 4478 	mov	dph,r1
      001200 C0 07            [24] 4479 	push	ar7
      001202 C0 06            [24] 4480 	push	ar6
      001204 C0 05            [24] 4481 	push	ar5
      001206 12 01 A7         [24] 4482 	lcall	_transmit_long
      001209 AC 82            [24] 4483 	mov	r4,dpl
      00120B D0 05            [24] 4484 	pop	ar5
      00120D D0 06            [24] 4485 	pop	ar6
      00120F D0 07            [24] 4486 	pop	ar7
      001211 8D 82            [24] 4487 	mov	dpl,r5
      001213 8E 83            [24] 4488 	mov	dph,r6
      001215 8F F0            [24] 4489 	mov	b,r7
      001217 EC               [12] 4490 	mov	a,r4
      001218 12 2E E2         [24] 4491 	lcall	__gptrput
                                   4492 ;	appFHSSNIC.c:925: appReturn( 1, buf);
      00121B 90 F9 59         [24] 4493 	mov	dptr,#_appReturn_PARM_2
      00121E ED               [12] 4494 	mov	a,r5
      00121F F0               [24] 4495 	movx	@dptr,a
      001220 EE               [12] 4496 	mov	a,r6
      001221 A3               [24] 4497 	inc	dptr
      001222 F0               [24] 4498 	movx	@dptr,a
      001223 75 82 01         [24] 4499 	mov	dpl,#0x01
      001226 12 1C 40         [24] 4500 	lcall	_appReturn
                                   4501 ;	appFHSSNIC.c:926: break;
      001229 02 17 AB         [24] 4502 	ljmp	00172$
                                   4503 ;	appFHSSNIC.c:928: case NIC_LONG_XMIT_MORE:
      00122C                       4504 00123$:
                                   4505 ;	appFHSSNIC.c:929: len = buf[0];
      00122C 8D 82            [24] 4506 	mov	dpl,r5
      00122E 8E 83            [24] 4507 	mov	dph,r6
      001230 8F F0            [24] 4508 	mov	b,r7
      001232 12 30 79         [24] 4509 	lcall	__gptrget
      001235 FB               [12] 4510 	mov	r3,a
      001236 7C 00            [12] 4511 	mov	r4,#0x00
      001238 90 F5 86         [24] 4512 	mov	dptr,#_appHandleEP5_len_1_178
      00123B EB               [12] 4513 	mov	a,r3
      00123C F0               [24] 4514 	movx	@dptr,a
      00123D EC               [12] 4515 	mov	a,r4
      00123E A3               [24] 4516 	inc	dptr
      00123F F0               [24] 4517 	movx	@dptr,a
                                   4518 ;	appFHSSNIC.c:930: if (len == 0)
      001240 EB               [12] 4519 	mov	a,r3
      001241 4C               [12] 4520 	orl	a,r4
      001242 60 03            [24] 4521 	jz	00241$
      001244 02 13 34         [24] 4522 	ljmp	00131$
      001247                       4523 00241$:
                                   4524 ;	appFHSSNIC.c:933: while (rfTxTotalTXLen && MARCSTATE == MARC_STATE_TX) 
      001247                       4525 00125$:
      001247 90 FD F6         [24] 4526 	mov	dptr,#_rfTxTotalTXLen
      00124A E0               [24] 4527 	movx	a,@dptr
      00124B A3               [24] 4528 	inc	dptr
      00124C E0               [24] 4529 	movx	a,@dptr
      00124D 90 FD F6         [24] 4530 	mov	dptr,#_rfTxTotalTXLen
      001250 E0               [24] 4531 	movx	a,@dptr
      001251 F5 F0            [12] 4532 	mov	b,a
      001253 A3               [24] 4533 	inc	dptr
      001254 E0               [24] 4534 	movx	a,@dptr
      001255 45 F0            [12] 4535 	orl	a,b
      001257 60 1C            [24] 4536 	jz	00127$
      001259 90 DF 3B         [24] 4537 	mov	dptr,#_MARCSTATE
      00125C E0               [24] 4538 	movx	a,@dptr
      00125D FA               [12] 4539 	mov	r2,a
      00125E BA 13 14         [24] 4540 	cjne	r2,#0x13,00127$
                                   4541 ;	appFHSSNIC.c:935: sleepMillis(40); // delay to avoid race condition that will cause mis-read of rfTxTotalTXLen == 0
      001261 90 00 28         [24] 4542 	mov	dptr,#0x0028
      001264 C0 07            [24] 4543 	push	ar7
      001266 C0 06            [24] 4544 	push	ar6
      001268 C0 05            [24] 4545 	push	ar5
      00126A 12 28 65         [24] 4546 	lcall	_sleepMillis
      00126D D0 05            [24] 4547 	pop	ar5
      00126F D0 06            [24] 4548 	pop	ar6
      001271 D0 07            [24] 4549 	pop	ar7
      001273 80 D2            [24] 4550 	sjmp	00125$
      001275                       4551 00127$:
                                   4552 ;	appFHSSNIC.c:937: if(rfTxTotalTXLen)
      001275 90 FD F6         [24] 4553 	mov	dptr,#_rfTxTotalTXLen
      001278 E0               [24] 4554 	movx	a,@dptr
      001279 A3               [24] 4555 	inc	dptr
      00127A E0               [24] 4556 	movx	a,@dptr
      00127B 90 FD F6         [24] 4557 	mov	dptr,#_rfTxTotalTXLen
      00127E E0               [24] 4558 	movx	a,@dptr
      00127F F5 F0            [12] 4559 	mov	b,a
      001281 A3               [24] 4560 	inc	dptr
      001282 E0               [24] 4561 	movx	a,@dptr
      001283 45 F0            [12] 4562 	orl	a,b
      001285 60 6B            [24] 4563 	jz	00129$
                                   4564 ;	appFHSSNIC.c:939: debug("dropout final wait!");
      001287 90 32 1F         [24] 4565 	mov	dptr,#___str_10
      00128A C0 07            [24] 4566 	push	ar7
      00128C C0 06            [24] 4567 	push	ar6
      00128E C0 05            [24] 4568 	push	ar5
      001290 12 1C B2         [24] 4569 	lcall	_debug
                                   4570 ;	appFHSSNIC.c:940: debughex16(rfTxTotalTXLen);
      001293 90 FD F6         [24] 4571 	mov	dptr,#_rfTxTotalTXLen
      001296 E0               [24] 4572 	movx	a,@dptr
      001297 F9               [12] 4573 	mov	r1,a
      001298 A3               [24] 4574 	inc	dptr
      001299 E0               [24] 4575 	movx	a,@dptr
      00129A FA               [12] 4576 	mov	r2,a
      00129B 89 82            [24] 4577 	mov	dpl,r1
      00129D 8A 83            [24] 4578 	mov	dph,r2
      00129F 12 1D 0F         [24] 4579 	lcall	_debughex16
                                   4580 ;	appFHSSNIC.c:941: debughex(g_txMsgQueue[0][0]);
      0012A2 90 F3 72         [24] 4581 	mov	dptr,#_g_txMsgQueue
      0012A5 E0               [24] 4582 	movx	a,@dptr
      0012A6 F5 82            [12] 4583 	mov	dpl,a
      0012A8 12 1C F4         [24] 4584 	lcall	_debughex
                                   4585 ;	appFHSSNIC.c:942: debughex(g_txMsgQueue[1][0]);
      0012AB 90 F4 63         [24] 4586 	mov	dptr,#(_g_txMsgQueue + 0x00f1)
      0012AE E0               [24] 4587 	movx	a,@dptr
      0012AF F5 82            [12] 4588 	mov	dpl,a
      0012B1 12 1C F4         [24] 4589 	lcall	_debughex
      0012B4 D0 05            [24] 4590 	pop	ar5
      0012B6 D0 06            [24] 4591 	pop	ar6
      0012B8 D0 07            [24] 4592 	pop	ar7
                                   4593 ;	appFHSSNIC.c:943: lastCode[1] = LCE_DROPPED_PACKET;
      0012BA 90 FD B4         [24] 4594 	mov	dptr,#(_lastCode + 0x0001)
      0012BD 74 12            [12] 4595 	mov	a,#0x12
      0012BF F0               [24] 4596 	movx	@dptr,a
                                   4597 ;	appFHSSNIC.c:944: buf[0] = RC_TX_DROPPED_PACKET;
      0012C0 8D 82            [24] 4598 	mov	dpl,r5
      0012C2 8E 83            [24] 4599 	mov	dph,r6
      0012C4 8F F0            [24] 4600 	mov	b,r7
      0012C6 74 EC            [12] 4601 	mov	a,#0xEC
      0012C8 12 2E E2         [24] 4602 	lcall	__gptrput
                                   4603 ;	appFHSSNIC.c:945: LED = 0;
      0012CB C2 A4            [12] 4604 	clr	_P2_4
                                   4605 ;	appFHSSNIC.c:946: resetRFSTATE();
      0012CD C0 07            [24] 4606 	push	ar7
      0012CF C0 06            [24] 4607 	push	ar6
      0012D1 C0 05            [24] 4608 	push	ar5
      0012D3 12 1E 13         [24] 4609 	lcall	_resetRFSTATE
      0012D6 D0 05            [24] 4610 	pop	ar5
      0012D8 D0 06            [24] 4611 	pop	ar6
      0012DA D0 07            [24] 4612 	pop	ar7
                                   4613 ;	appFHSSNIC.c:947: macdata.mac_state = MAC_STATE_NONHOPPING;
      0012DC 90 FD 8F         [24] 4614 	mov	dptr,#_macdata
      0012DF E4               [12] 4615 	clr	a
      0012E0 F0               [24] 4616 	movx	@dptr,a
                                   4617 ;	appFHSSNIC.c:948: appReturn( 1, buf);
      0012E1 90 F9 59         [24] 4618 	mov	dptr,#_appReturn_PARM_2
      0012E4 ED               [12] 4619 	mov	a,r5
      0012E5 F0               [24] 4620 	movx	@dptr,a
      0012E6 EE               [12] 4621 	mov	a,r6
      0012E7 A3               [24] 4622 	inc	dptr
      0012E8 F0               [24] 4623 	movx	@dptr,a
      0012E9 75 82 01         [24] 4624 	mov	dpl,#0x01
      0012EC 12 1C 40         [24] 4625 	lcall	_appReturn
                                   4626 ;	appFHSSNIC.c:949: break;
      0012EF 02 17 AB         [24] 4627 	ljmp	00172$
      0012F2                       4628 00129$:
                                   4629 ;	appFHSSNIC.c:951: LED = 0;
      0012F2 C2 A4            [12] 4630 	clr	_P2_4
                                   4631 ;	appFHSSNIC.c:952: macdata.mac_state = MAC_STATE_NONHOPPING;
      0012F4 90 FD 8F         [24] 4632 	mov	dptr,#_macdata
      0012F7 E4               [12] 4633 	clr	a
      0012F8 F0               [24] 4634 	movx	@dptr,a
                                   4635 ;	appFHSSNIC.c:953: buf[0] = LCE_NO_ERROR;
      0012F9 8D 82            [24] 4636 	mov	dpl,r5
      0012FB 8E 83            [24] 4637 	mov	dph,r6
      0012FD 8F F0            [24] 4638 	mov	b,r7
      0012FF 12 2E E2         [24] 4639 	lcall	__gptrput
                                   4640 ;	appFHSSNIC.c:954: debug("total bytes tx:");
      001302 90 32 33         [24] 4641 	mov	dptr,#___str_11
      001305 C0 07            [24] 4642 	push	ar7
      001307 C0 06            [24] 4643 	push	ar6
      001309 C0 05            [24] 4644 	push	ar5
      00130B 12 1C B2         [24] 4645 	lcall	_debug
                                   4646 ;	appFHSSNIC.c:955: debughex16(txTotal);
      00130E 90 FD 88         [24] 4647 	mov	dptr,#_txTotal
      001311 E0               [24] 4648 	movx	a,@dptr
      001312 F9               [12] 4649 	mov	r1,a
      001313 A3               [24] 4650 	inc	dptr
      001314 E0               [24] 4651 	movx	a,@dptr
      001315 FA               [12] 4652 	mov	r2,a
      001316 89 82            [24] 4653 	mov	dpl,r1
      001318 8A 83            [24] 4654 	mov	dph,r2
      00131A 12 1D 0F         [24] 4655 	lcall	_debughex16
      00131D D0 05            [24] 4656 	pop	ar5
      00131F D0 06            [24] 4657 	pop	ar6
      001321 D0 07            [24] 4658 	pop	ar7
                                   4659 ;	appFHSSNIC.c:956: appReturn( 1, buf);
      001323 90 F9 59         [24] 4660 	mov	dptr,#_appReturn_PARM_2
      001326 ED               [12] 4661 	mov	a,r5
      001327 F0               [24] 4662 	movx	@dptr,a
      001328 EE               [12] 4663 	mov	a,r6
      001329 A3               [24] 4664 	inc	dptr
      00132A F0               [24] 4665 	movx	@dptr,a
      00132B 75 82 01         [24] 4666 	mov	dpl,#0x01
      00132E 12 1C 40         [24] 4667 	lcall	_appReturn
                                   4668 ;	appFHSSNIC.c:957: break;
      001331 02 17 AB         [24] 4669 	ljmp	00172$
      001334                       4670 00131$:
                                   4671 ;	appFHSSNIC.c:960: if (macdata.mac_state != MAC_STATE_LONG_XMIT)
      001334 90 FD 8F         [24] 4672 	mov	dptr,#_macdata
      001337 E0               [24] 4673 	movx	a,@dptr
      001338 FA               [12] 4674 	mov	r2,a
      001339 BA 06 02         [24] 4675 	cjne	r2,#0x06,00246$
      00133C 80 61            [24] 4676 	sjmp	00136$
      00133E                       4677 00246$:
                                   4678 ;	appFHSSNIC.c:962: debug("underrun");
      00133E 90 32 43         [24] 4679 	mov	dptr,#___str_12
      001341 C0 07            [24] 4680 	push	ar7
      001343 C0 06            [24] 4681 	push	ar6
      001345 C0 05            [24] 4682 	push	ar5
      001347 12 1C B2         [24] 4683 	lcall	_debug
      00134A D0 05            [24] 4684 	pop	ar5
      00134C D0 06            [24] 4685 	pop	ar6
      00134E D0 07            [24] 4686 	pop	ar7
                                   4687 ;	appFHSSNIC.c:964: if(lastCode[1] == LCE_DROPPED_PACKET)
      001350 90 FD B4         [24] 4688 	mov	dptr,#(_lastCode + 0x0001)
      001353 E0               [24] 4689 	movx	a,@dptr
      001354 FA               [12] 4690 	mov	r2,a
      001355 BA 12 1B         [24] 4691 	cjne	r2,#0x12,00133$
                                   4692 ;	appFHSSNIC.c:966: buf[0] = RC_TX_DROPPED_PACKET;
      001358 8D 82            [24] 4693 	mov	dpl,r5
      00135A 8E 83            [24] 4694 	mov	dph,r6
      00135C 8F F0            [24] 4695 	mov	b,r7
      00135E 74 EC            [12] 4696 	mov	a,#0xEC
      001360 12 2E E2         [24] 4697 	lcall	__gptrput
                                   4698 ;	appFHSSNIC.c:967: appReturn( 1, buf);
      001363 90 F9 59         [24] 4699 	mov	dptr,#_appReturn_PARM_2
      001366 ED               [12] 4700 	mov	a,r5
      001367 F0               [24] 4701 	movx	@dptr,a
      001368 EE               [12] 4702 	mov	a,r6
      001369 A3               [24] 4703 	inc	dptr
      00136A F0               [24] 4704 	movx	@dptr,a
      00136B 75 82 01         [24] 4705 	mov	dpl,#0x01
      00136E 12 1C 40         [24] 4706 	lcall	_appReturn
      001371 80 1F            [24] 4707 	sjmp	00134$
      001373                       4708 00133$:
                                   4709 ;	appFHSSNIC.c:971: lastCode[1] = LCE_RF_MULTI_BUFFER_NOT_INIT;
      001373 90 FD B4         [24] 4710 	mov	dptr,#(_lastCode + 0x0001)
      001376 74 17            [12] 4711 	mov	a,#0x17
      001378 F0               [24] 4712 	movx	@dptr,a
                                   4713 ;	appFHSSNIC.c:972: buf[0] = RC_RF_MODE_INCOMPAT;
      001379 8D 82            [24] 4714 	mov	dpl,r5
      00137B 8E 83            [24] 4715 	mov	dph,r6
      00137D 8F F0            [24] 4716 	mov	b,r7
      00137F 74 EF            [12] 4717 	mov	a,#0xEF
      001381 12 2E E2         [24] 4718 	lcall	__gptrput
                                   4719 ;	appFHSSNIC.c:973: appReturn( 1, buf);
      001384 90 F9 59         [24] 4720 	mov	dptr,#_appReturn_PARM_2
      001387 ED               [12] 4721 	mov	a,r5
      001388 F0               [24] 4722 	movx	@dptr,a
      001389 EE               [12] 4723 	mov	a,r6
      00138A A3               [24] 4724 	inc	dptr
      00138B F0               [24] 4725 	movx	@dptr,a
      00138C 75 82 01         [24] 4726 	mov	dpl,#0x01
      00138F 12 1C 40         [24] 4727 	lcall	_appReturn
      001392                       4728 00134$:
                                   4729 ;	appFHSSNIC.c:975: LED = 0;
      001392 C2 A4            [12] 4730 	clr	_P2_4
                                   4731 ;	appFHSSNIC.c:976: resetRFSTATE();
      001394 12 1E 13         [24] 4732 	lcall	_resetRFSTATE
                                   4733 ;	appFHSSNIC.c:977: macdata.mac_state = MAC_STATE_NONHOPPING;
      001397 90 FD 8F         [24] 4734 	mov	dptr,#_macdata
      00139A E4               [12] 4735 	clr	a
      00139B F0               [24] 4736 	movx	@dptr,a
                                   4737 ;	appFHSSNIC.c:978: break;
      00139C 02 17 AB         [24] 4738 	ljmp	00172$
      00139F                       4739 00136$:
                                   4740 ;	appFHSSNIC.c:981: buf[0] = MAC_tx(&buf[1], (__xdata u8) len);
      00139F 74 01            [12] 4741 	mov	a,#0x01
      0013A1 2D               [12] 4742 	add	a,r5
      0013A2 F9               [12] 4743 	mov	r1,a
      0013A3 E4               [12] 4744 	clr	a
      0013A4 3E               [12] 4745 	addc	a,r6
      0013A5 FA               [12] 4746 	mov	r2,a
      0013A6 90 F5 5C         [24] 4747 	mov	dptr,#_MAC_tx_PARM_2
      0013A9 EB               [12] 4748 	mov	a,r3
      0013AA F0               [24] 4749 	movx	@dptr,a
      0013AB 89 82            [24] 4750 	mov	dpl,r1
      0013AD 8A 83            [24] 4751 	mov	dph,r2
      0013AF C0 07            [24] 4752 	push	ar7
      0013B1 C0 06            [24] 4753 	push	ar6
      0013B3 C0 05            [24] 4754 	push	ar5
      0013B5 12 03 4C         [24] 4755 	lcall	_MAC_tx
      0013B8 AC 82            [24] 4756 	mov	r4,dpl
      0013BA D0 05            [24] 4757 	pop	ar5
      0013BC D0 06            [24] 4758 	pop	ar6
      0013BE D0 07            [24] 4759 	pop	ar7
      0013C0 8D 82            [24] 4760 	mov	dpl,r5
      0013C2 8E 83            [24] 4761 	mov	dph,r6
      0013C4 8F F0            [24] 4762 	mov	b,r7
      0013C6 EC               [12] 4763 	mov	a,r4
      0013C7 12 2E E2         [24] 4764 	lcall	__gptrput
                                   4765 ;	appFHSSNIC.c:983: if(buf[0] && buf[0] != RC_ERR_BUFFER_NOT_AVAILABLE)
      0013CA 8D 82            [24] 4766 	mov	dpl,r5
      0013CC 8E 83            [24] 4767 	mov	dph,r6
      0013CE 8F F0            [24] 4768 	mov	b,r7
      0013D0 12 30 79         [24] 4769 	lcall	__gptrget
      0013D3 FB               [12] 4770 	mov	r3,a
      0013D4 EC               [12] 4771 	mov	a,r4
      0013D5 60 3B            [24] 4772 	jz	00138$
      0013D7 BB FE 02         [24] 4773 	cjne	r3,#0xFE,00250$
      0013DA 80 36            [24] 4774 	sjmp	00138$
      0013DC                       4775 00250$:
                                   4776 ;	appFHSSNIC.c:985: debug("buffer error");
      0013DC 90 32 4C         [24] 4777 	mov	dptr,#___str_13
      0013DF C0 07            [24] 4778 	push	ar7
      0013E1 C0 06            [24] 4779 	push	ar6
      0013E3 C0 05            [24] 4780 	push	ar5
      0013E5 12 1C B2         [24] 4781 	lcall	_debug
      0013E8 D0 05            [24] 4782 	pop	ar5
      0013EA D0 06            [24] 4783 	pop	ar6
      0013EC D0 07            [24] 4784 	pop	ar7
                                   4785 ;	appFHSSNIC.c:986: debughex(buf[0]);
      0013EE 8D 82            [24] 4786 	mov	dpl,r5
      0013F0 8E 83            [24] 4787 	mov	dph,r6
      0013F2 8F F0            [24] 4788 	mov	b,r7
      0013F4 12 30 79         [24] 4789 	lcall	__gptrget
      0013F7 F5 82            [12] 4790 	mov	dpl,a
      0013F9 C0 07            [24] 4791 	push	ar7
      0013FB C0 06            [24] 4792 	push	ar6
      0013FD C0 05            [24] 4793 	push	ar5
      0013FF 12 1C F4         [24] 4794 	lcall	_debughex
                                   4795 ;	appFHSSNIC.c:987: LED = 0;
      001402 C2 A4            [12] 4796 	clr	_P2_4
                                   4797 ;	appFHSSNIC.c:988: resetRFSTATE();
      001404 12 1E 13         [24] 4798 	lcall	_resetRFSTATE
      001407 D0 05            [24] 4799 	pop	ar5
      001409 D0 06            [24] 4800 	pop	ar6
      00140B D0 07            [24] 4801 	pop	ar7
                                   4802 ;	appFHSSNIC.c:989: macdata.mac_state = MAC_STATE_NONHOPPING;
      00140D 90 FD 8F         [24] 4803 	mov	dptr,#_macdata
      001410 E4               [12] 4804 	clr	a
      001411 F0               [24] 4805 	movx	@dptr,a
      001412                       4806 00138$:
                                   4807 ;	appFHSSNIC.c:991: appReturn( 1, buf);
      001412 90 F9 59         [24] 4808 	mov	dptr,#_appReturn_PARM_2
      001415 ED               [12] 4809 	mov	a,r5
      001416 F0               [24] 4810 	movx	@dptr,a
      001417 EE               [12] 4811 	mov	a,r6
      001418 A3               [24] 4812 	inc	dptr
      001419 F0               [24] 4813 	movx	@dptr,a
      00141A 75 82 01         [24] 4814 	mov	dpl,#0x01
      00141D 12 1C 40         [24] 4815 	lcall	_appReturn
                                   4816 ;	appFHSSNIC.c:992: break;
      001420 02 17 AB         [24] 4817 	ljmp	00172$
                                   4818 ;	appFHSSNIC.c:994: case FHSS_XMIT:
      001423                       4819 00140$:
                                   4820 ;	appFHSSNIC.c:995: len = buf[0];
      001423 8D 82            [24] 4821 	mov	dpl,r5
      001425 8E 83            [24] 4822 	mov	dph,r6
      001427 8F F0            [24] 4823 	mov	b,r7
      001429 12 30 79         [24] 4824 	lcall	__gptrget
      00142C FB               [12] 4825 	mov	r3,a
      00142D 7C 00            [12] 4826 	mov	r4,#0x00
      00142F 90 F5 86         [24] 4827 	mov	dptr,#_appHandleEP5_len_1_178
      001432 EB               [12] 4828 	mov	a,r3
      001433 F0               [24] 4829 	movx	@dptr,a
      001434 EC               [12] 4830 	mov	a,r4
      001435 A3               [24] 4831 	inc	dptr
      001436 F0               [24] 4832 	movx	@dptr,a
                                   4833 ;	appFHSSNIC.c:1004: if (len > MAX_TX_MSGLEN)
      001437 C3               [12] 4834 	clr	c
      001438 74 F0            [12] 4835 	mov	a,#0xF0
      00143A 9B               [12] 4836 	subb	a,r3
      00143B E4               [12] 4837 	clr	a
      00143C 9C               [12] 4838 	subb	a,r4
      00143D 50 19            [24] 4839 	jnc	00142$
                                   4840 ;	appFHSSNIC.c:1006: debug("FHSSxmit message too long");
      00143F 90 31 57         [24] 4841 	mov	dptr,#___str_3
      001442 12 1C B2         [24] 4842 	lcall	_debug
                                   4843 ;	appFHSSNIC.c:1007: appReturn( 1, (__xdata u8*)&len);
      001445 90 F9 59         [24] 4844 	mov	dptr,#_appReturn_PARM_2
      001448 74 86            [12] 4845 	mov	a,#_appHandleEP5_len_1_178
      00144A F0               [24] 4846 	movx	@dptr,a
      00144B 74 F5            [12] 4847 	mov	a,#(_appHandleEP5_len_1_178 >> 8)
      00144D A3               [24] 4848 	inc	dptr
      00144E F0               [24] 4849 	movx	@dptr,a
      00144F 75 82 01         [24] 4850 	mov	dpl,#0x01
      001452 12 1C 40         [24] 4851 	lcall	_appReturn
                                   4852 ;	appFHSSNIC.c:1008: break;
      001455 02 17 AB         [24] 4853 	ljmp	00172$
      001458                       4854 00142$:
                                   4855 ;	appFHSSNIC.c:1011: if (g_txMsgQueue[macdata.txMsgIdx][0] != 0)
      001458 90 FD A0         [24] 4856 	mov	dptr,#(_macdata + 0x0011)
      00145B E0               [24] 4857 	movx	a,@dptr
      00145C 75 F0 F1         [24] 4858 	mov	b,#0xF1
      00145F A4               [48] 4859 	mul	ab
      001460 24 72            [12] 4860 	add	a,#_g_txMsgQueue
      001462 F9               [12] 4861 	mov	r1,a
      001463 74 F3            [12] 4862 	mov	a,#(_g_txMsgQueue >> 8)
      001465 35 F0            [12] 4863 	addc	a,b
      001467 FA               [12] 4864 	mov	r2,a
      001468 89 82            [24] 4865 	mov	dpl,r1
      00146A 8A 83            [24] 4866 	mov	dph,r2
      00146C E0               [24] 4867 	movx	a,@dptr
      00146D 60 19            [24] 4868 	jz	00144$
                                   4869 ;	appFHSSNIC.c:1013: debug("still waiting on the last packet");
      00146F 90 32 59         [24] 4870 	mov	dptr,#___str_14
      001472 12 1C B2         [24] 4871 	lcall	_debug
                                   4872 ;	appFHSSNIC.c:1014: appReturn( 1, (__xdata u8*)&len);
      001475 90 F9 59         [24] 4873 	mov	dptr,#_appReturn_PARM_2
      001478 74 86            [12] 4874 	mov	a,#_appHandleEP5_len_1_178
      00147A F0               [24] 4875 	movx	@dptr,a
      00147B 74 F5            [12] 4876 	mov	a,#(_appHandleEP5_len_1_178 >> 8)
      00147D A3               [24] 4877 	inc	dptr
      00147E F0               [24] 4878 	movx	@dptr,a
      00147F 75 82 01         [24] 4879 	mov	dpl,#0x01
      001482 12 1C 40         [24] 4880 	lcall	_appReturn
                                   4881 ;	appFHSSNIC.c:1015: break;
      001485 02 17 AB         [24] 4882 	ljmp	00172$
      001488                       4883 00144$:
                                   4884 ;	appFHSSNIC.c:1018: g_txMsgQueue[macdata.txMsgIdx][0] = len;
      001488 8B 00            [24] 4885 	mov	ar0,r3
      00148A 89 82            [24] 4886 	mov	dpl,r1
      00148C 8A 83            [24] 4887 	mov	dph,r2
      00148E E8               [12] 4888 	mov	a,r0
      00148F F0               [24] 4889 	movx	@dptr,a
                                   4890 ;	appFHSSNIC.c:1019: memcpy(&g_txMsgQueue[macdata.txMsgIdx][1], &buf[1], len);
      001490 90 FD A0         [24] 4891 	mov	dptr,#(_macdata + 0x0011)
      001493 E0               [24] 4892 	movx	a,@dptr
      001494 75 F0 F1         [24] 4893 	mov	b,#0xF1
      001497 A4               [48] 4894 	mul	ab
      001498 24 72            [12] 4895 	add	a,#_g_txMsgQueue
      00149A F9               [12] 4896 	mov	r1,a
      00149B 74 F3            [12] 4897 	mov	a,#(_g_txMsgQueue >> 8)
      00149D 35 F0            [12] 4898 	addc	a,b
      00149F FA               [12] 4899 	mov	r2,a
      0014A0 09               [12] 4900 	inc	r1
      0014A1 B9 00 01         [24] 4901 	cjne	r1,#0x00,00253$
      0014A4 0A               [12] 4902 	inc	r2
      0014A5                       4903 00253$:
      0014A5 89 0A            [24] 4904 	mov	_appHandleEP5_sloc1_1_0,r1
      0014A7 8A 0B            [24] 4905 	mov	(_appHandleEP5_sloc1_1_0 + 1),r2
      0014A9 75 0C 00         [24] 4906 	mov	(_appHandleEP5_sloc1_1_0 + 2),#0x00
      0014AC 74 01            [12] 4907 	mov	a,#0x01
      0014AE 2D               [12] 4908 	add	a,r5
      0014AF F9               [12] 4909 	mov	r1,a
      0014B0 E4               [12] 4910 	clr	a
      0014B1 3E               [12] 4911 	addc	a,r6
      0014B2 FA               [12] 4912 	mov	r2,a
      0014B3 89 27            [24] 4913 	mov	_memcpy_PARM_2,r1
      0014B5 8A 28            [24] 4914 	mov	(_memcpy_PARM_2 + 1),r2
      0014B7 75 29 00         [24] 4915 	mov	(_memcpy_PARM_2 + 2),#0x00
      0014BA 8B 2A            [24] 4916 	mov	_memcpy_PARM_3,r3
      0014BC 8C 2B            [24] 4917 	mov	(_memcpy_PARM_3 + 1),r4
      0014BE 85 0A 82         [24] 4918 	mov	dpl,_appHandleEP5_sloc1_1_0
      0014C1 85 0B 83         [24] 4919 	mov	dph,(_appHandleEP5_sloc1_1_0 + 1)
      0014C4 85 0C F0         [24] 4920 	mov	b,(_appHandleEP5_sloc1_1_0 + 2)
      0014C7 12 2E 41         [24] 4921 	lcall	_memcpy
                                   4922 ;	appFHSSNIC.c:1021: if (++macdata.txMsgIdx >= MAX_TX_MSGS)
      0014CA 90 FD A0         [24] 4923 	mov	dptr,#(_macdata + 0x0011)
      0014CD E0               [24] 4924 	movx	a,@dptr
      0014CE FC               [12] 4925 	mov	r4,a
      0014CF 0C               [12] 4926 	inc	r4
      0014D0 90 FD A0         [24] 4927 	mov	dptr,#(_macdata + 0x0011)
      0014D3 EC               [12] 4928 	mov	a,r4
      0014D4 F0               [24] 4929 	movx	@dptr,a
      0014D5 BC 02 00         [24] 4930 	cjne	r4,#0x02,00254$
      0014D8                       4931 00254$:
      0014D8 40 05            [24] 4932 	jc	00146$
                                   4933 ;	appFHSSNIC.c:1023: macdata.txMsgIdx = 0;
      0014DA 90 FD A0         [24] 4934 	mov	dptr,#(_macdata + 0x0011)
      0014DD E4               [12] 4935 	clr	a
      0014DE F0               [24] 4936 	movx	@dptr,a
      0014DF                       4937 00146$:
                                   4938 ;	appFHSSNIC.c:1026: appReturn( 1, (__xdata u8*)&len);
      0014DF 90 F9 59         [24] 4939 	mov	dptr,#_appReturn_PARM_2
      0014E2 74 86            [12] 4940 	mov	a,#_appHandleEP5_len_1_178
      0014E4 F0               [24] 4941 	movx	@dptr,a
      0014E5 74 F5            [12] 4942 	mov	a,#(_appHandleEP5_len_1_178 >> 8)
      0014E7 A3               [24] 4943 	inc	dptr
      0014E8 F0               [24] 4944 	movx	@dptr,a
      0014E9 75 82 01         [24] 4945 	mov	dpl,#0x01
      0014EC 12 1C 40         [24] 4946 	lcall	_appReturn
                                   4947 ;	appFHSSNIC.c:1027: break;
      0014EF 02 17 AB         [24] 4948 	ljmp	00172$
                                   4949 ;	appFHSSNIC.c:1029: case FHSS_SET_CHANNELS:
      0014F2                       4950 00147$:
                                   4951 ;	appFHSSNIC.c:1030: macdata.NumChannels = (__xdata u16)buf[0];
      0014F2 8D 82            [24] 4952 	mov	dpl,r5
      0014F4 8E 83            [24] 4953 	mov	dph,r6
      0014F6 8F F0            [24] 4954 	mov	b,r7
      0014F8 12 30 79         [24] 4955 	lcall	__gptrget
      0014FB FC               [12] 4956 	mov	r4,a
      0014FC 7B 00            [12] 4957 	mov	r3,#0x00
      0014FE 90 FD 94         [24] 4958 	mov	dptr,#(_macdata + 0x0005)
      001501 EC               [12] 4959 	mov	a,r4
      001502 F0               [24] 4960 	movx	@dptr,a
      001503 EB               [12] 4961 	mov	a,r3
      001504 A3               [24] 4962 	inc	dptr
      001505 F0               [24] 4963 	movx	@dptr,a
                                   4964 ;	appFHSSNIC.c:1031: if (macdata.NumChannels <= MAX_CHANNELS)
      001506 90 FD 94         [24] 4965 	mov	dptr,#(_macdata + 0x0005)
      001509 E0               [24] 4966 	movx	a,@dptr
      00150A F9               [12] 4967 	mov	r1,a
      00150B A3               [24] 4968 	inc	dptr
      00150C E0               [24] 4969 	movx	a,@dptr
      00150D FA               [12] 4970 	mov	r2,a
      00150E C3               [12] 4971 	clr	c
      00150F 74 70            [12] 4972 	mov	a,#0x70
      001511 9C               [12] 4973 	subb	a,r4
      001512 74 03            [12] 4974 	mov	a,#0x03
      001514 9B               [12] 4975 	subb	a,r3
      001515 40 2E            [24] 4976 	jc	00149$
                                   4977 ;	appFHSSNIC.c:1034: memcpy(&g_Channels[0], &buf[2], macdata.NumChannels);
      001517 74 02            [12] 4978 	mov	a,#0x02
      001519 2D               [12] 4979 	add	a,r5
      00151A FB               [12] 4980 	mov	r3,a
      00151B E4               [12] 4981 	clr	a
      00151C 3E               [12] 4982 	addc	a,r6
      00151D FC               [12] 4983 	mov	r4,a
      00151E 8B 27            [24] 4984 	mov	_memcpy_PARM_2,r3
      001520 8C 28            [24] 4985 	mov	(_memcpy_PARM_2 + 1),r4
      001522 75 29 00         [24] 4986 	mov	(_memcpy_PARM_2 + 2),#0x00
      001525 89 2A            [24] 4987 	mov	_memcpy_PARM_3,r1
      001527 8A 2B            [24] 4988 	mov	(_memcpy_PARM_3 + 1),r2
      001529 90 F0 00         [24] 4989 	mov	dptr,#_g_Channels
      00152C 75 F0 00         [24] 4990 	mov	b,#0x00
      00152F 12 2E 41         [24] 4991 	lcall	_memcpy
                                   4992 ;	appFHSSNIC.c:1035: appReturn( 2, (u8*)&macdata.NumChannels);
      001532 90 F9 59         [24] 4993 	mov	dptr,#_appReturn_PARM_2
      001535 74 94            [12] 4994 	mov	a,#(_macdata + 0x0005)
      001537 F0               [24] 4995 	movx	@dptr,a
      001538 74 FD            [12] 4996 	mov	a,#((_macdata + 0x0005) >> 8)
      00153A A3               [24] 4997 	inc	dptr
      00153B F0               [24] 4998 	movx	@dptr,a
      00153C 75 82 02         [24] 4999 	mov	dpl,#0x02
      00153F 12 1C 40         [24] 5000 	lcall	_appReturn
      001542 02 17 AB         [24] 5001 	ljmp	00172$
      001545                       5002 00149$:
                                   5003 ;	appFHSSNIC.c:1037: appReturn( 8, (__xdata u8*)"NO DEAL");
      001545 90 F9 59         [24] 5004 	mov	dptr,#_appReturn_PARM_2
      001548 74 7A            [12] 5005 	mov	a,#___str_15
      00154A F0               [24] 5006 	movx	@dptr,a
      00154B 74 32            [12] 5007 	mov	a,#(___str_15 >> 8)
      00154D A3               [24] 5008 	inc	dptr
      00154E F0               [24] 5009 	movx	@dptr,a
      00154F 75 82 08         [24] 5010 	mov	dpl,#0x08
      001552 12 1C 40         [24] 5011 	lcall	_appReturn
                                   5012 ;	appFHSSNIC.c:1039: break;
      001555 02 17 AB         [24] 5013 	ljmp	00172$
                                   5014 ;	appFHSSNIC.c:1041: case FHSS_GET_CHANNELS:
      001558                       5015 00151$:
                                   5016 ;	appFHSSNIC.c:1042: appReturn( macdata.NumChannels, &g_Channels[0]);
      001558 90 FD 94         [24] 5017 	mov	dptr,#(_macdata + 0x0005)
      00155B E0               [24] 5018 	movx	a,@dptr
      00155C FB               [12] 5019 	mov	r3,a
      00155D A3               [24] 5020 	inc	dptr
      00155E E0               [24] 5021 	movx	a,@dptr
      00155F 90 F9 59         [24] 5022 	mov	dptr,#_appReturn_PARM_2
      001562 74 00            [12] 5023 	mov	a,#_g_Channels
      001564 F0               [24] 5024 	movx	@dptr,a
      001565 74 F0            [12] 5025 	mov	a,#(_g_Channels >> 8)
      001567 A3               [24] 5026 	inc	dptr
      001568 F0               [24] 5027 	movx	@dptr,a
      001569 8B 82            [24] 5028 	mov	dpl,r3
      00156B 12 1C 40         [24] 5029 	lcall	_appReturn
                                   5030 ;	appFHSSNIC.c:1043: break;
      00156E 02 17 AB         [24] 5031 	ljmp	00172$
                                   5032 ;	appFHSSNIC.c:1045: case FHSS_NEXT_CHANNEL:
      001571                       5033 00152$:
                                   5034 ;	appFHSSNIC.c:1046: MAC_set_chanidx(MAC_getNextChannel());
      001571 12 06 72         [24] 5035 	lcall	_MAC_getNextChannel
      001574 7B 00            [12] 5036 	mov	r3,#0x00
      001576 8B 83            [24] 5037 	mov	dph,r3
      001578 12 06 2D         [24] 5038 	lcall	_MAC_set_chanidx
                                   5039 ;	appFHSSNIC.c:1047: appReturn( 1, &g_Channels[macdata.curChanIdx]);
      00157B 90 FD 98         [24] 5040 	mov	dptr,#(_macdata + 0x0009)
      00157E E0               [24] 5041 	movx	a,@dptr
      00157F FB               [12] 5042 	mov	r3,a
      001580 A3               [24] 5043 	inc	dptr
      001581 E0               [24] 5044 	movx	a,@dptr
      001582 FC               [12] 5045 	mov	r4,a
      001583 90 F9 59         [24] 5046 	mov	dptr,#_appReturn_PARM_2
      001586 EB               [12] 5047 	mov	a,r3
      001587 24 00            [12] 5048 	add	a,#_g_Channels
      001589 F0               [24] 5049 	movx	@dptr,a
      00158A EC               [12] 5050 	mov	a,r4
      00158B 34 F0            [12] 5051 	addc	a,#(_g_Channels >> 8)
      00158D A3               [24] 5052 	inc	dptr
      00158E F0               [24] 5053 	movx	@dptr,a
      00158F 75 82 01         [24] 5054 	mov	dpl,#0x01
      001592 12 1C 40         [24] 5055 	lcall	_appReturn
                                   5056 ;	appFHSSNIC.c:1048: break;
      001595 02 17 AB         [24] 5057 	ljmp	00172$
                                   5058 ;	appFHSSNIC.c:1050: case FHSS_CHANGE_CHANNEL:
      001598                       5059 00153$:
                                   5060 ;	appFHSSNIC.c:1051: PHY_set_channel(buf[0]);
      001598 8D 82            [24] 5061 	mov	dpl,r5
      00159A 8E 83            [24] 5062 	mov	dph,r6
      00159C 8F F0            [24] 5063 	mov	b,r7
      00159E 12 30 79         [24] 5064 	lcall	__gptrget
      0015A1 FC               [12] 5065 	mov	r4,a
      0015A2 7B 00            [12] 5066 	mov	r3,#0x00
      0015A4 8C 82            [24] 5067 	mov	dpl,r4
      0015A6 8B 83            [24] 5068 	mov	dph,r3
      0015A8 C0 07            [24] 5069 	push	ar7
      0015AA C0 06            [24] 5070 	push	ar6
      0015AC C0 05            [24] 5071 	push	ar5
      0015AE 12 01 04         [24] 5072 	lcall	_PHY_set_channel
      0015B1 D0 05            [24] 5073 	pop	ar5
      0015B3 D0 06            [24] 5074 	pop	ar6
      0015B5 D0 07            [24] 5075 	pop	ar7
                                   5076 ;	appFHSSNIC.c:1052: appReturn( 1, buf);
      0015B7 90 F9 59         [24] 5077 	mov	dptr,#_appReturn_PARM_2
      0015BA ED               [12] 5078 	mov	a,r5
      0015BB F0               [24] 5079 	movx	@dptr,a
      0015BC EE               [12] 5080 	mov	a,r6
      0015BD A3               [24] 5081 	inc	dptr
      0015BE F0               [24] 5082 	movx	@dptr,a
      0015BF 75 82 01         [24] 5083 	mov	dpl,#0x01
      0015C2 12 1C 40         [24] 5084 	lcall	_appReturn
                                   5085 ;	appFHSSNIC.c:1053: break;
      0015C5 02 17 AB         [24] 5086 	ljmp	00172$
                                   5087 ;	appFHSSNIC.c:1055: case FHSS_START_HOPPING:
      0015C8                       5088 00154$:
                                   5089 ;	appFHSSNIC.c:1056: begin_hopping(0);
      0015C8 75 82 00         [24] 5090 	mov	dpl,#0x00
      0015CB C0 07            [24] 5091 	push	ar7
      0015CD C0 06            [24] 5092 	push	ar6
      0015CF C0 05            [24] 5093 	push	ar5
      0015D1 12 01 85         [24] 5094 	lcall	_begin_hopping
      0015D4 D0 05            [24] 5095 	pop	ar5
      0015D6 D0 06            [24] 5096 	pop	ar6
      0015D8 D0 07            [24] 5097 	pop	ar7
                                   5098 ;	appFHSSNIC.c:1057: appReturn( 1, buf);
      0015DA 90 F9 59         [24] 5099 	mov	dptr,#_appReturn_PARM_2
      0015DD ED               [12] 5100 	mov	a,r5
      0015DE F0               [24] 5101 	movx	@dptr,a
      0015DF EE               [12] 5102 	mov	a,r6
      0015E0 A3               [24] 5103 	inc	dptr
      0015E1 F0               [24] 5104 	movx	@dptr,a
      0015E2 75 82 01         [24] 5105 	mov	dpl,#0x01
      0015E5 12 1C 40         [24] 5106 	lcall	_appReturn
                                   5107 ;	appFHSSNIC.c:1058: break;
      0015E8 02 17 AB         [24] 5108 	ljmp	00172$
                                   5109 ;	appFHSSNIC.c:1060: case FHSS_STOP_HOPPING:
      0015EB                       5110 00155$:
                                   5111 ;	appFHSSNIC.c:1061: stop_hopping();
      0015EB C0 07            [24] 5112 	push	ar7
      0015ED C0 06            [24] 5113 	push	ar6
      0015EF C0 05            [24] 5114 	push	ar5
      0015F1 12 01 9F         [24] 5115 	lcall	_stop_hopping
      0015F4 D0 05            [24] 5116 	pop	ar5
      0015F6 D0 06            [24] 5117 	pop	ar6
      0015F8 D0 07            [24] 5118 	pop	ar7
                                   5119 ;	appFHSSNIC.c:1062: appReturn( 1, buf);
      0015FA 90 F9 59         [24] 5120 	mov	dptr,#_appReturn_PARM_2
      0015FD ED               [12] 5121 	mov	a,r5
      0015FE F0               [24] 5122 	movx	@dptr,a
      0015FF EE               [12] 5123 	mov	a,r6
      001600 A3               [24] 5124 	inc	dptr
      001601 F0               [24] 5125 	movx	@dptr,a
      001602 75 82 01         [24] 5126 	mov	dpl,#0x01
      001605 12 1C 40         [24] 5127 	lcall	_appReturn
                                   5128 ;	appFHSSNIC.c:1063: break;
      001608 02 17 AB         [24] 5129 	ljmp	00172$
                                   5130 ;	appFHSSNIC.c:1066: case FHSS_SET_MAC_THRESHOLD:
      00160B                       5131 00156$:
                                   5132 ;	appFHSSNIC.c:1067: macdata.MAC_threshold = buf[0];
      00160B 8D 82            [24] 5133 	mov	dpl,r5
      00160D 8E 83            [24] 5134 	mov	dph,r6
      00160F 8F F0            [24] 5135 	mov	b,r7
      001611 12 30 79         [24] 5136 	lcall	__gptrget
      001614 FC               [12] 5137 	mov	r4,a
      001615 7B 00            [12] 5138 	mov	r3,#0x00
      001617 90 FD 90         [24] 5139 	mov	dptr,#(_macdata + 0x0001)
      00161A EC               [12] 5140 	mov	a,r4
      00161B F0               [24] 5141 	movx	@dptr,a
      00161C EB               [12] 5142 	mov	a,r3
      00161D A3               [24] 5143 	inc	dptr
      00161E F0               [24] 5144 	movx	@dptr,a
                                   5145 ;	appFHSSNIC.c:1068: appReturn( 1, buf);
      00161F 90 F9 59         [24] 5146 	mov	dptr,#_appReturn_PARM_2
      001622 ED               [12] 5147 	mov	a,r5
      001623 F0               [24] 5148 	movx	@dptr,a
      001624 EE               [12] 5149 	mov	a,r6
      001625 A3               [24] 5150 	inc	dptr
      001626 F0               [24] 5151 	movx	@dptr,a
      001627 75 82 01         [24] 5152 	mov	dpl,#0x01
      00162A 12 1C 40         [24] 5153 	lcall	_appReturn
                                   5154 ;	appFHSSNIC.c:1069: break;
      00162D 02 17 AB         [24] 5155 	ljmp	00172$
                                   5156 ;	appFHSSNIC.c:1071: case FHSS_GET_MAC_THRESHOLD:
      001630                       5157 00157$:
                                   5158 ;	appFHSSNIC.c:1072: appReturn( 4, (__xdata u8*)&macdata.MAC_threshold);
      001630 90 F9 59         [24] 5159 	mov	dptr,#_appReturn_PARM_2
      001633 74 90            [12] 5160 	mov	a,#(_macdata + 0x0001)
      001635 F0               [24] 5161 	movx	@dptr,a
      001636 74 FD            [12] 5162 	mov	a,#((_macdata + 0x0001) >> 8)
      001638 A3               [24] 5163 	inc	dptr
      001639 F0               [24] 5164 	movx	@dptr,a
      00163A 75 82 04         [24] 5165 	mov	dpl,#0x04
      00163D 12 1C 40         [24] 5166 	lcall	_appReturn
                                   5167 ;	appFHSSNIC.c:1073: break;
      001640 02 17 AB         [24] 5168 	ljmp	00172$
                                   5169 ;	appFHSSNIC.c:1075: case FHSS_SET_MAC_DATA:
      001643                       5170 00158$:
                                   5171 ;	appFHSSNIC.c:1076: debugx(buf);
      001643 8D 82            [24] 5172 	mov	dpl,r5
      001645 8E 83            [24] 5173 	mov	dph,r6
      001647 8F F0            [24] 5174 	mov	b,r7
      001649 C0 07            [24] 5175 	push	ar7
      00164B C0 06            [24] 5176 	push	ar6
      00164D C0 05            [24] 5177 	push	ar5
      00164F 12 1C 71         [24] 5178 	lcall	_debugx
      001652 D0 05            [24] 5179 	pop	ar5
      001654 D0 06            [24] 5180 	pop	ar6
      001656 D0 07            [24] 5181 	pop	ar7
                                   5182 ;	appFHSSNIC.c:1077: debughex(buf[0]);
      001658 8D 82            [24] 5183 	mov	dpl,r5
      00165A 8E 83            [24] 5184 	mov	dph,r6
      00165C 8F F0            [24] 5185 	mov	b,r7
      00165E 12 30 79         [24] 5186 	lcall	__gptrget
      001661 F5 82            [12] 5187 	mov	dpl,a
      001663 C0 07            [24] 5188 	push	ar7
      001665 C0 06            [24] 5189 	push	ar6
      001667 C0 05            [24] 5190 	push	ar5
      001669 12 1C F4         [24] 5191 	lcall	_debughex
      00166C D0 05            [24] 5192 	pop	ar5
      00166E D0 06            [24] 5193 	pop	ar6
      001670 D0 07            [24] 5194 	pop	ar7
                                   5195 ;	appFHSSNIC.c:1078: memcpy((__xdata u8*)&macdata, (__xdata u8*)*buf, sizeof(macdata));
      001672 8D 82            [24] 5196 	mov	dpl,r5
      001674 8E 83            [24] 5197 	mov	dph,r6
      001676 8F F0            [24] 5198 	mov	b,r7
      001678 12 30 79         [24] 5199 	lcall	__gptrget
      00167B FC               [12] 5200 	mov	r4,a
      00167C 7B 00            [12] 5201 	mov	r3,#0x00
      00167E 8C 27            [24] 5202 	mov	_memcpy_PARM_2,r4
      001680 8B 28            [24] 5203 	mov	(_memcpy_PARM_2 + 1),r3
                                   5204 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      001682 8B 29            [24] 5205 	mov	(_memcpy_PARM_2 + 2),r3
      001684 75 2A 15         [24] 5206 	mov	_memcpy_PARM_3,#0x15
                                   5207 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      001687 8B 2B            [24] 5208 	mov	(_memcpy_PARM_3 + 1),r3
      001689 90 FD 8F         [24] 5209 	mov	dptr,#_macdata
      00168C 75 F0 00         [24] 5210 	mov	b,#0x00
      00168F C0 07            [24] 5211 	push	ar7
      001691 C0 06            [24] 5212 	push	ar6
      001693 C0 05            [24] 5213 	push	ar5
      001695 12 2E 41         [24] 5214 	lcall	_memcpy
      001698 D0 05            [24] 5215 	pop	ar5
      00169A D0 06            [24] 5216 	pop	ar6
      00169C D0 07            [24] 5217 	pop	ar7
                                   5218 ;	appFHSSNIC.c:1079: appReturn( sizeof(macdata), buf);
      00169E 90 F9 59         [24] 5219 	mov	dptr,#_appReturn_PARM_2
      0016A1 ED               [12] 5220 	mov	a,r5
      0016A2 F0               [24] 5221 	movx	@dptr,a
      0016A3 EE               [12] 5222 	mov	a,r6
      0016A4 A3               [24] 5223 	inc	dptr
      0016A5 F0               [24] 5224 	movx	@dptr,a
      0016A6 75 82 15         [24] 5225 	mov	dpl,#0x15
      0016A9 12 1C 40         [24] 5226 	lcall	_appReturn
                                   5227 ;	appFHSSNIC.c:1080: break;
      0016AC 02 17 AB         [24] 5228 	ljmp	00172$
                                   5229 ;	appFHSSNIC.c:1082: case FHSS_GET_MAC_DATA:
      0016AF                       5230 00159$:
                                   5231 ;	appFHSSNIC.c:1083: macdata.MAC_timer = rf_MAC_timer;
      0016AF 90 FD 8B         [24] 5232 	mov	dptr,#_rf_MAC_timer
      0016B2 E0               [24] 5233 	movx	a,@dptr
      0016B3 FB               [12] 5234 	mov	r3,a
      0016B4 A3               [24] 5235 	inc	dptr
      0016B5 E0               [24] 5236 	movx	a,@dptr
      0016B6 FC               [12] 5237 	mov	r4,a
      0016B7 90 FD 92         [24] 5238 	mov	dptr,#(_macdata + 0x0003)
      0016BA EB               [12] 5239 	mov	a,r3
      0016BB F0               [24] 5240 	movx	@dptr,a
      0016BC EC               [12] 5241 	mov	a,r4
      0016BD A3               [24] 5242 	inc	dptr
      0016BE F0               [24] 5243 	movx	@dptr,a
                                   5244 ;	appFHSSNIC.c:1084: appReturn( sizeof(macdata), (__xdata u8*)&macdata);
      0016BF 90 F9 59         [24] 5245 	mov	dptr,#_appReturn_PARM_2
      0016C2 74 8F            [12] 5246 	mov	a,#_macdata
      0016C4 F0               [24] 5247 	movx	@dptr,a
      0016C5 74 FD            [12] 5248 	mov	a,#(_macdata >> 8)
      0016C7 A3               [24] 5249 	inc	dptr
      0016C8 F0               [24] 5250 	movx	@dptr,a
      0016C9 75 82 15         [24] 5251 	mov	dpl,#0x15
      0016CC 12 1C 40         [24] 5252 	lcall	_appReturn
                                   5253 ;	appFHSSNIC.c:1085: break;
      0016CF 02 17 AB         [24] 5254 	ljmp	00172$
                                   5255 ;	appFHSSNIC.c:1087: case FHSS_START_SYNC:
      0016D2                       5256 00160$:
                                   5257 ;	appFHSSNIC.c:1088: MAC_sync(buf[0]);
      0016D2 8D 82            [24] 5258 	mov	dpl,r5
      0016D4 8E 83            [24] 5259 	mov	dph,r6
      0016D6 8F F0            [24] 5260 	mov	b,r7
      0016D8 12 30 79         [24] 5261 	lcall	__gptrget
      0016DB FC               [12] 5262 	mov	r4,a
      0016DC 7B 00            [12] 5263 	mov	r3,#0x00
      0016DE 8C 82            [24] 5264 	mov	dpl,r4
      0016E0 8B 83            [24] 5265 	mov	dph,r3
      0016E2 C0 07            [24] 5266 	push	ar7
      0016E4 C0 06            [24] 5267 	push	ar6
      0016E6 C0 05            [24] 5268 	push	ar5
      0016E8 12 05 2B         [24] 5269 	lcall	_MAC_sync
      0016EB D0 05            [24] 5270 	pop	ar5
      0016ED D0 06            [24] 5271 	pop	ar6
      0016EF D0 07            [24] 5272 	pop	ar7
                                   5273 ;	appFHSSNIC.c:1089: appReturn( 1, buf);
      0016F1 90 F9 59         [24] 5274 	mov	dptr,#_appReturn_PARM_2
      0016F4 ED               [12] 5275 	mov	a,r5
      0016F5 F0               [24] 5276 	movx	@dptr,a
      0016F6 EE               [12] 5277 	mov	a,r6
      0016F7 A3               [24] 5278 	inc	dptr
      0016F8 F0               [24] 5279 	movx	@dptr,a
      0016F9 75 82 01         [24] 5280 	mov	dpl,#0x01
      0016FC 12 1C 40         [24] 5281 	lcall	_appReturn
                                   5282 ;	appFHSSNIC.c:1090: break;
      0016FF 02 17 AB         [24] 5283 	ljmp	00172$
                                   5284 ;	appFHSSNIC.c:1092: case FHSS_SET_STATE:
      001702                       5285 00161$:
                                   5286 ;	appFHSSNIC.c:1094: macdata.tLastStateChange = clock;
      001702 90 FD B5         [24] 5287 	mov	dptr,#_clock
      001705 E0               [24] 5288 	movx	a,@dptr
      001706 F9               [12] 5289 	mov	r1,a
      001707 A3               [24] 5290 	inc	dptr
      001708 E0               [24] 5291 	movx	a,@dptr
      001709 FA               [12] 5292 	mov	r2,a
      00170A A3               [24] 5293 	inc	dptr
      00170B E0               [24] 5294 	movx	a,@dptr
      00170C A3               [24] 5295 	inc	dptr
      00170D E0               [24] 5296 	movx	a,@dptr
      00170E 90 FD 9A         [24] 5297 	mov	dptr,#(_macdata + 0x000b)
      001711 E9               [12] 5298 	mov	a,r1
      001712 F0               [24] 5299 	movx	@dptr,a
      001713 EA               [12] 5300 	mov	a,r2
      001714 A3               [24] 5301 	inc	dptr
      001715 F0               [24] 5302 	movx	@dptr,a
                                   5303 ;	appFHSSNIC.c:1095: macdata.mac_state = (u8)buf[0];
      001716 8D 82            [24] 5304 	mov	dpl,r5
      001718 8E 83            [24] 5305 	mov	dph,r6
      00171A 8F F0            [24] 5306 	mov	b,r7
      00171C 12 30 79         [24] 5307 	lcall	__gptrget
      00171F FC               [12] 5308 	mov	r4,a
      001720 90 FD 8F         [24] 5309 	mov	dptr,#_macdata
      001723 F0               [24] 5310 	movx	@dptr,a
                                   5311 ;	appFHSSNIC.c:1099: switch (macdata.mac_state)
      001724 90 FD 8F         [24] 5312 	mov	dptr,#_macdata
      001727 E0               [24] 5313 	movx	a,@dptr
      001728 FB               [12] 5314 	mov	r3,a
      001729 EC               [12] 5315 	mov	a,r4
      00172A 24 FA            [12] 5316 	add	a,#0xff - 0x05
      00172C 40 4D            [24] 5317 	jc	00168$
      00172E EB               [12] 5318 	mov	a,r3
      00172F 2B               [12] 5319 	add	a,r3
      001730 2B               [12] 5320 	add	a,r3
      001731 90 17 35         [24] 5321 	mov	dptr,#00258$
      001734 73               [24] 5322 	jmp	@a+dptr
      001735                       5323 00258$:
      001735 02 17 47         [24] 5324 	ljmp	00162$
      001738 02 17 47         [24] 5325 	ljmp	00163$
      00173B 02 17 47         [24] 5326 	ljmp	00164$
      00173E 02 17 69         [24] 5327 	ljmp	00166$
      001741 02 17 69         [24] 5328 	ljmp	00167$
      001744 02 17 58         [24] 5329 	ljmp	00165$
                                   5330 ;	appFHSSNIC.c:1101: case MAC_STATE_NONHOPPING:
      001747                       5331 00162$:
                                   5332 ;	appFHSSNIC.c:1102: case MAC_STATE_DISCOVERY:
      001747                       5333 00163$:
                                   5334 ;	appFHSSNIC.c:1103: case MAC_STATE_SYNCHING:
      001747                       5335 00164$:
                                   5336 ;	appFHSSNIC.c:1105: stop_hopping();
      001747 C0 07            [24] 5337 	push	ar7
      001749 C0 06            [24] 5338 	push	ar6
      00174B C0 05            [24] 5339 	push	ar5
      00174D 12 01 9F         [24] 5340 	lcall	_stop_hopping
      001750 D0 05            [24] 5341 	pop	ar5
      001752 D0 06            [24] 5342 	pop	ar6
      001754 D0 07            [24] 5343 	pop	ar7
                                   5344 ;	appFHSSNIC.c:1106: break;
                                   5345 ;	appFHSSNIC.c:1108: case MAC_STATE_SYNCINGMASTER:
      001756 80 23            [24] 5346 	sjmp	00168$
      001758                       5347 00165$:
                                   5348 ;	appFHSSNIC.c:1109: MAC_do_Master_scanny_thingy();
      001758 C0 07            [24] 5349 	push	ar7
      00175A C0 06            [24] 5350 	push	ar6
      00175C C0 05            [24] 5351 	push	ar5
      00175E 12 06 06         [24] 5352 	lcall	_MAC_do_Master_scanny_thingy
      001761 D0 05            [24] 5353 	pop	ar5
      001763 D0 06            [24] 5354 	pop	ar6
      001765 D0 07            [24] 5355 	pop	ar7
                                   5356 ;	appFHSSNIC.c:1110: break;
                                   5357 ;	appFHSSNIC.c:1112: case MAC_STATE_SYNCHED:
      001767 80 12            [24] 5358 	sjmp	00168$
      001769                       5359 00166$:
                                   5360 ;	appFHSSNIC.c:1113: case MAC_STATE_SYNC_MASTER:
      001769                       5361 00167$:
                                   5362 ;	appFHSSNIC.c:1114: begin_hopping(0);
      001769 75 82 00         [24] 5363 	mov	dpl,#0x00
      00176C C0 07            [24] 5364 	push	ar7
      00176E C0 06            [24] 5365 	push	ar6
      001770 C0 05            [24] 5366 	push	ar5
      001772 12 01 85         [24] 5367 	lcall	_begin_hopping
      001775 D0 05            [24] 5368 	pop	ar5
      001777 D0 06            [24] 5369 	pop	ar6
      001779 D0 07            [24] 5370 	pop	ar7
                                   5371 ;	appFHSSNIC.c:1116: }
      00177B                       5372 00168$:
                                   5373 ;	appFHSSNIC.c:1118: appReturn( 1, buf);
      00177B 90 F9 59         [24] 5374 	mov	dptr,#_appReturn_PARM_2
      00177E ED               [12] 5375 	mov	a,r5
      00177F F0               [24] 5376 	movx	@dptr,a
      001780 EE               [12] 5377 	mov	a,r6
      001781 A3               [24] 5378 	inc	dptr
      001782 F0               [24] 5379 	movx	@dptr,a
      001783 75 82 01         [24] 5380 	mov	dpl,#0x01
      001786 12 1C 40         [24] 5381 	lcall	_appReturn
                                   5382 ;	appFHSSNIC.c:1119: break;
                                   5383 ;	appFHSSNIC.c:1121: case FHSS_GET_STATE:
      001789 80 20            [24] 5384 	sjmp	00172$
      00178B                       5385 00169$:
                                   5386 ;	appFHSSNIC.c:1122: appReturn( 1, (__xdata u8*)&macdata.mac_state);
      00178B 90 F9 59         [24] 5387 	mov	dptr,#_appReturn_PARM_2
      00178E 74 8F            [12] 5388 	mov	a,#_macdata
      001790 F0               [24] 5389 	movx	@dptr,a
      001791 74 FD            [12] 5390 	mov	a,#(_macdata >> 8)
      001793 A3               [24] 5391 	inc	dptr
      001794 F0               [24] 5392 	movx	@dptr,a
      001795 75 82 01         [24] 5393 	mov	dpl,#0x01
      001798 12 1C 40         [24] 5394 	lcall	_appReturn
                                   5395 ;	appFHSSNIC.c:1123: break;
                                   5396 ;	appFHSSNIC.c:1125: default:
      00179B 80 0E            [24] 5397 	sjmp	00172$
      00179D                       5398 00170$:
                                   5399 ;	appFHSSNIC.c:1126: appReturn( 1, buf);
      00179D 90 F9 59         [24] 5400 	mov	dptr,#_appReturn_PARM_2
      0017A0 ED               [12] 5401 	mov	a,r5
      0017A1 F0               [24] 5402 	movx	@dptr,a
      0017A2 EE               [12] 5403 	mov	a,r6
      0017A3 A3               [24] 5404 	inc	dptr
      0017A4 F0               [24] 5405 	movx	@dptr,a
      0017A5 75 82 01         [24] 5406 	mov	dpl,#0x01
      0017A8 12 1C 40         [24] 5407 	lcall	_appReturn
                                   5408 ;	appFHSSNIC.c:1130: }
      0017AB                       5409 00172$:
                                   5410 ;	appFHSSNIC.c:1133: return 0;
      0017AB 90 00 00         [24] 5411 	mov	dptr,#0x0000
      0017AE 22               [24] 5412 	ret
                                   5413 ;------------------------------------------------------------
                                   5414 ;Allocation info for local variables in function 'appHandleEP0OUTdone'
                                   5415 ;------------------------------------------------------------
                                   5416 ;	appFHSSNIC.c:1137: void appHandleEP0OUTdone(void)
                                   5417 ;	-----------------------------------------
                                   5418 ;	 function appHandleEP0OUTdone
                                   5419 ;	-----------------------------------------
      0017AF                       5420 _appHandleEP0OUTdone:
                                   5421 ;	appFHSSNIC.c:1139: }
      0017AF 22               [24] 5422 	ret
                                   5423 ;------------------------------------------------------------
                                   5424 ;Allocation info for local variables in function 'appHandleEP0OUT'
                                   5425 ;------------------------------------------------------------
                                   5426 ;	appFHSSNIC.c:1142: void appHandleEP0OUT(void)
                                   5427 ;	-----------------------------------------
                                   5428 ;	 function appHandleEP0OUT
                                   5429 ;	-----------------------------------------
      0017B0                       5430 _appHandleEP0OUT:
                                   5431 ;	appFHSSNIC.c:1172: }
      0017B0 22               [24] 5432 	ret
                                   5433 ;------------------------------------------------------------
                                   5434 ;Allocation info for local variables in function 'appHandleEP0'
                                   5435 ;------------------------------------------------------------
                                   5436 ;pReq                      Allocated to registers 
                                   5437 ;------------------------------------------------------------
                                   5438 ;	appFHSSNIC.c:1179: int appHandleEP0(__xdata USB_Setup_Header* pReq)
                                   5439 ;	-----------------------------------------
                                   5440 ;	 function appHandleEP0
                                   5441 ;	-----------------------------------------
      0017B1                       5442 _appHandleEP0:
                                   5443 ;	appFHSSNIC.c:1215: return 0;
      0017B1 90 00 00         [24] 5444 	mov	dptr,#0x0000
      0017B4 22               [24] 5445 	ret
                                   5446 ;------------------------------------------------------------
                                   5447 ;Allocation info for local variables in function 'appInitRf'
                                   5448 ;------------------------------------------------------------
                                   5449 ;	appFHSSNIC.c:1225: void appInitRf(void)
                                   5450 ;	-----------------------------------------
                                   5451 ;	 function appInitRf
                                   5452 ;	-----------------------------------------
      0017B5                       5453 _appInitRf:
                                   5454 ;	appFHSSNIC.c:1231: IOCFG2      = 0x00;
      0017B5 90 DF 2F         [24] 5455 	mov	dptr,#_IOCFG2
      0017B8 E4               [12] 5456 	clr	a
      0017B9 F0               [24] 5457 	movx	@dptr,a
                                   5458 ;	appFHSSNIC.c:1232: IOCFG1      = 0x00;
      0017BA 90 DF 30         [24] 5459 	mov	dptr,#_IOCFG1
      0017BD F0               [24] 5460 	movx	@dptr,a
                                   5461 ;	appFHSSNIC.c:1233: IOCFG0      = 0x00;
      0017BE 90 DF 31         [24] 5462 	mov	dptr,#_IOCFG0
      0017C1 F0               [24] 5463 	movx	@dptr,a
                                   5464 ;	appFHSSNIC.c:1234: SYNC1       = 0x0c;
      0017C2 90 DF 00         [24] 5465 	mov	dptr,#_SYNC1
      0017C5 74 0C            [12] 5466 	mov	a,#0x0C
      0017C7 F0               [24] 5467 	movx	@dptr,a
                                   5468 ;	appFHSSNIC.c:1235: SYNC0       = 0x4e;
      0017C8 90 DF 01         [24] 5469 	mov	dptr,#_SYNC0
      0017CB 74 4E            [12] 5470 	mov	a,#0x4E
      0017CD F0               [24] 5471 	movx	@dptr,a
                                   5472 ;	appFHSSNIC.c:1236: PKTLEN      = 0xff;
      0017CE 90 DF 02         [24] 5473 	mov	dptr,#_PKTLEN
      0017D1 74 FF            [12] 5474 	mov	a,#0xFF
      0017D3 F0               [24] 5475 	movx	@dptr,a
                                   5476 ;	appFHSSNIC.c:1237: PKTCTRL1    = 0x40; // PQT threshold  - was 0x00
      0017D4 90 DF 03         [24] 5477 	mov	dptr,#_PKTCTRL1
      0017D7 74 40            [12] 5478 	mov	a,#0x40
      0017D9 F0               [24] 5479 	movx	@dptr,a
                                   5480 ;	appFHSSNIC.c:1238: PKTCTRL0    = 0x00; // FLEN.  for VLEN use |1 (ie.  FLEN=00, VLEN=01)
      0017DA 90 DF 04         [24] 5481 	mov	dptr,#_PKTCTRL0
      0017DD E4               [12] 5482 	clr	a
      0017DE F0               [24] 5483 	movx	@dptr,a
                                   5484 ;	appFHSSNIC.c:1239: ADDR        = 0x00;
      0017DF 90 DF 05         [24] 5485 	mov	dptr,#_ADDR
      0017E2 F0               [24] 5486 	movx	@dptr,a
                                   5487 ;	appFHSSNIC.c:1240: CHANNR      = 0x00;
      0017E3 90 DF 06         [24] 5488 	mov	dptr,#_CHANNR
      0017E6 F0               [24] 5489 	movx	@dptr,a
                                   5490 ;	appFHSSNIC.c:1241: FSCTRL1     = 0x06;
      0017E7 90 DF 07         [24] 5491 	mov	dptr,#_FSCTRL1
      0017EA 74 06            [12] 5492 	mov	a,#0x06
      0017EC F0               [24] 5493 	movx	@dptr,a
                                   5494 ;	appFHSSNIC.c:1242: FSCTRL0     = 0x00;
      0017ED 90 DF 08         [24] 5495 	mov	dptr,#_FSCTRL0
      0017F0 E4               [12] 5496 	clr	a
      0017F1 F0               [24] 5497 	movx	@dptr,a
                                   5498 ;	appFHSSNIC.c:1243: FREQ2       = 0x24;
      0017F2 90 DF 09         [24] 5499 	mov	dptr,#_FREQ2
      0017F5 74 24            [12] 5500 	mov	a,#0x24
      0017F7 F0               [24] 5501 	movx	@dptr,a
                                   5502 ;	appFHSSNIC.c:1244: FREQ1       = 0x3a;
      0017F8 90 DF 0A         [24] 5503 	mov	dptr,#_FREQ1
      0017FB 74 3A            [12] 5504 	mov	a,#0x3A
      0017FD F0               [24] 5505 	movx	@dptr,a
                                   5506 ;	appFHSSNIC.c:1245: FREQ0       = 0xf1;
      0017FE 90 DF 0B         [24] 5507 	mov	dptr,#_FREQ0
      001801 74 F1            [12] 5508 	mov	a,#0xF1
      001803 F0               [24] 5509 	movx	@dptr,a
                                   5510 ;	appFHSSNIC.c:1246: MDMCFG4     = 0xca;
      001804 90 DF 0C         [24] 5511 	mov	dptr,#_MDMCFG4
      001807 74 CA            [12] 5512 	mov	a,#0xCA
      001809 F0               [24] 5513 	movx	@dptr,a
                                   5514 ;	appFHSSNIC.c:1247: MDMCFG3     = 0xa3;
      00180A 90 DF 0D         [24] 5515 	mov	dptr,#_MDMCFG3
      00180D 74 A3            [12] 5516 	mov	a,#0xA3
      00180F F0               [24] 5517 	movx	@dptr,a
                                   5518 ;	appFHSSNIC.c:1248: MDMCFG2     = 0x01;
      001810 90 DF 0E         [24] 5519 	mov	dptr,#_MDMCFG2
      001813 74 01            [12] 5520 	mov	a,#0x01
      001815 F0               [24] 5521 	movx	@dptr,a
                                   5522 ;	appFHSSNIC.c:1249: MDMCFG1     = 0x23;
      001816 90 DF 0F         [24] 5523 	mov	dptr,#_MDMCFG1
      001819 74 23            [12] 5524 	mov	a,#0x23
      00181B F0               [24] 5525 	movx	@dptr,a
                                   5526 ;	appFHSSNIC.c:1250: MDMCFG0     = 0x11;
      00181C 90 DF 10         [24] 5527 	mov	dptr,#_MDMCFG0
      00181F 74 11            [12] 5528 	mov	a,#0x11
      001821 F0               [24] 5529 	movx	@dptr,a
                                   5530 ;	appFHSSNIC.c:1251: DEVIATN     = 0x36;
      001822 90 DF 11         [24] 5531 	mov	dptr,#_DEVIATN
      001825 74 36            [12] 5532 	mov	a,#0x36
      001827 F0               [24] 5533 	movx	@dptr,a
                                   5534 ;	appFHSSNIC.c:1252: MCSM2       = 0x07;             // RX_TIMEOUT
      001828 90 DF 12         [24] 5535 	mov	dptr,#_MCSM2
      00182B 74 07            [12] 5536 	mov	a,#0x07
      00182D F0               [24] 5537 	movx	@dptr,a
                                   5538 ;	appFHSSNIC.c:1253: MCSM1       = 0x0f;             // was 'CCA_MODE RSSI below threshold unless currently recvg pkt'-3, now 'Always'-0 - always end up in RX mode
      00182E 90 DF 13         [24] 5539 	mov	dptr,#_MCSM1
      001831 74 0F            [12] 5540 	mov	a,#0x0F
      001833 F0               [24] 5541 	movx	@dptr,a
                                   5542 ;	appFHSSNIC.c:1254: MCSM0       = 0x18;             // fsautosync when going from idle to rx/tx/fstxon
      001834 90 DF 14         [24] 5543 	mov	dptr,#_MCSM0
      001837 74 18            [12] 5544 	mov	a,#0x18
      001839 F0               [24] 5545 	movx	@dptr,a
                                   5546 ;	appFHSSNIC.c:1255: FOCCFG      = 0x17;
      00183A 90 DF 15         [24] 5547 	mov	dptr,#_FOCCFG
      00183D 14               [12] 5548 	dec	a
      00183E F0               [24] 5549 	movx	@dptr,a
                                   5550 ;	appFHSSNIC.c:1256: BSCFG       = 0x6c;
      00183F 90 DF 16         [24] 5551 	mov	dptr,#_BSCFG
      001842 74 6C            [12] 5552 	mov	a,#0x6C
      001844 F0               [24] 5553 	movx	@dptr,a
                                   5554 ;	appFHSSNIC.c:1257: AGCCTRL2    = 0x03;
      001845 90 DF 17         [24] 5555 	mov	dptr,#_AGCCTRL2
      001848 74 03            [12] 5556 	mov	a,#0x03
      00184A F0               [24] 5557 	movx	@dptr,a
                                   5558 ;	appFHSSNIC.c:1258: AGCCTRL1    = 0x40;
      00184B 90 DF 18         [24] 5559 	mov	dptr,#_AGCCTRL1
      00184E 74 40            [12] 5560 	mov	a,#0x40
      001850 F0               [24] 5561 	movx	@dptr,a
                                   5562 ;	appFHSSNIC.c:1259: AGCCTRL0    = 0x91;
      001851 90 DF 19         [24] 5563 	mov	dptr,#_AGCCTRL0
      001854 74 91            [12] 5564 	mov	a,#0x91
      001856 F0               [24] 5565 	movx	@dptr,a
                                   5566 ;	appFHSSNIC.c:1260: FREND1      = 0x56;
      001857 90 DF 1A         [24] 5567 	mov	dptr,#_FREND1
      00185A 74 56            [12] 5568 	mov	a,#0x56
      00185C F0               [24] 5569 	movx	@dptr,a
                                   5570 ;	appFHSSNIC.c:1261: FREND0      = 0x10;
      00185D 90 DF 1B         [24] 5571 	mov	dptr,#_FREND0
      001860 74 10            [12] 5572 	mov	a,#0x10
      001862 F0               [24] 5573 	movx	@dptr,a
                                   5574 ;	appFHSSNIC.c:1262: FSCAL3      = 0xe9;
      001863 90 DF 1C         [24] 5575 	mov	dptr,#_FSCAL3
      001866 74 E9            [12] 5576 	mov	a,#0xE9
      001868 F0               [24] 5577 	movx	@dptr,a
                                   5578 ;	appFHSSNIC.c:1263: FSCAL2      = 0x2a;
      001869 90 DF 1D         [24] 5579 	mov	dptr,#_FSCAL2
      00186C 74 2A            [12] 5580 	mov	a,#0x2A
      00186E F0               [24] 5581 	movx	@dptr,a
                                   5582 ;	appFHSSNIC.c:1264: FSCAL1      = 0x00;
      00186F 90 DF 1E         [24] 5583 	mov	dptr,#_FSCAL1
      001872 E4               [12] 5584 	clr	a
      001873 F0               [24] 5585 	movx	@dptr,a
                                   5586 ;	appFHSSNIC.c:1265: FSCAL0      = 0x1f;
      001874 90 DF 1F         [24] 5587 	mov	dptr,#_FSCAL0
      001877 74 1F            [12] 5588 	mov	a,#0x1F
      001879 F0               [24] 5589 	movx	@dptr,a
                                   5590 ;	appFHSSNIC.c:1266: TEST2       = 0x88; // low data rates, increased sensitivity provided by 0x81- was 0x88
      00187A 90 DF 23         [24] 5591 	mov	dptr,#_TEST2
      00187D 74 88            [12] 5592 	mov	a,#0x88
      00187F F0               [24] 5593 	movx	@dptr,a
                                   5594 ;	appFHSSNIC.c:1267: TEST1       = 0x31; // always 0x31 in tx-mode, for low data rates 0x35 provides increased sensitivity - was 0x31
      001880 90 DF 24         [24] 5595 	mov	dptr,#_TEST1
      001883 74 31            [12] 5596 	mov	a,#0x31
      001885 F0               [24] 5597 	movx	@dptr,a
                                   5598 ;	appFHSSNIC.c:1268: TEST0       = 0x09;
      001886 90 DF 25         [24] 5599 	mov	dptr,#_TEST0
      001889 74 09            [12] 5600 	mov	a,#0x09
      00188B F0               [24] 5601 	movx	@dptr,a
                                   5602 ;	appFHSSNIC.c:1269: PA_TABLE0   = 0xc0;
      00188C 90 DF 2E         [24] 5603 	mov	dptr,#_PA_TABLE0
      00188F 74 C0            [12] 5604 	mov	a,#0xC0
      001891 F0               [24] 5605 	movx	@dptr,a
                                   5606 ;	appFHSSNIC.c:1277: FSCTRL1     = 0x0c;             // Intermediate Frequency
      001892 90 DF 07         [24] 5607 	mov	dptr,#_FSCTRL1
      001895 C4               [12] 5608 	swap	a
      001896 F0               [24] 5609 	movx	@dptr,a
                                   5610 ;	appFHSSNIC.c:1279: FREQ2       = 0x25;
      001897 90 DF 09         [24] 5611 	mov	dptr,#_FREQ2
      00189A 74 25            [12] 5612 	mov	a,#0x25
      00189C F0               [24] 5613 	movx	@dptr,a
                                   5614 ;	appFHSSNIC.c:1280: FREQ1       = 0x95;
      00189D 90 DF 0A         [24] 5615 	mov	dptr,#_FREQ1
      0018A0 74 95            [12] 5616 	mov	a,#0x95
      0018A2 F0               [24] 5617 	movx	@dptr,a
                                   5618 ;	appFHSSNIC.c:1281: FREQ0       = 0x55;
      0018A3 90 DF 0B         [24] 5619 	mov	dptr,#_FREQ0
      0018A6 74 55            [12] 5620 	mov	a,#0x55
      0018A8 F0               [24] 5621 	movx	@dptr,a
                                   5622 ;	appFHSSNIC.c:1293: FREND1      = 0xb6;
      0018A9 90 DF 1A         [24] 5623 	mov	dptr,#_FREND1
      0018AC 74 B6            [12] 5624 	mov	a,#0xB6
      0018AE F0               [24] 5625 	movx	@dptr,a
                                   5626 ;	appFHSSNIC.c:1294: FREND0      = 0x10;
      0018AF 90 DF 1B         [24] 5627 	mov	dptr,#_FREND0
      0018B2 74 10            [12] 5628 	mov	a,#0x10
      0018B4 F0               [24] 5629 	movx	@dptr,a
                                   5630 ;	appFHSSNIC.c:1295: FSCAL3      = 0xea;
      0018B5 90 DF 1C         [24] 5631 	mov	dptr,#_FSCAL3
      0018B8 74 EA            [12] 5632 	mov	a,#0xEA
      0018BA F0               [24] 5633 	movx	@dptr,a
                                   5634 ;	appFHSSNIC.c:1296: FSCAL2      = 0x2a;
      0018BB 90 DF 1D         [24] 5635 	mov	dptr,#_FSCAL2
      0018BE 74 2A            [12] 5636 	mov	a,#0x2A
      0018C0 F0               [24] 5637 	movx	@dptr,a
                                   5638 ;	appFHSSNIC.c:1297: FSCAL1      = 0x00;
      0018C1 90 DF 1E         [24] 5639 	mov	dptr,#_FSCAL1
      0018C4 E4               [12] 5640 	clr	a
      0018C5 F0               [24] 5641 	movx	@dptr,a
                                   5642 ;	appFHSSNIC.c:1298: FSCAL0      = 0x1f;
      0018C6 90 DF 1F         [24] 5643 	mov	dptr,#_FSCAL0
      0018C9 74 1F            [12] 5644 	mov	a,#0x1F
      0018CB F0               [24] 5645 	movx	@dptr,a
      0018CC 22               [24] 5646 	ret
                                   5647 ;------------------------------------------------------------
                                   5648 ;Allocation info for local variables in function 'initBoard'
                                   5649 ;------------------------------------------------------------
                                   5650 ;	appFHSSNIC.c:1344: void initBoard(void)
                                   5651 ;	-----------------------------------------
                                   5652 ;	 function initBoard
                                   5653 ;	-----------------------------------------
      0018CD                       5654 _initBoard:
                                   5655 ;	appFHSSNIC.c:1347: clock_init();
      0018CD 12 29 B3         [24] 5656 	lcall	_clock_init
                                   5657 ;	appFHSSNIC.c:1348: io_init();
      0018D0 02 29 DF         [24] 5658 	ljmp	_io_init
                                   5659 ;------------------------------------------------------------
                                   5660 ;Allocation info for local variables in function 'main'
                                   5661 ;------------------------------------------------------------
                                   5662 ;	appFHSSNIC.c:1352: void main (void)
                                   5663 ;	-----------------------------------------
                                   5664 ;	 function main
                                   5665 ;	-----------------------------------------
      0018D3                       5666 _main:
                                   5667 ;	appFHSSNIC.c:1354: initBoard();
      0018D3 12 18 CD         [24] 5668 	lcall	_initBoard
                                   5669 ;	appFHSSNIC.c:1355: initDMA();  // do this early so peripherals that use DMA can allocate channels correctly
      0018D6 12 1D 59         [24] 5670 	lcall	_initDMA
                                   5671 ;	appFHSSNIC.c:1356: initAES();
      0018D9 12 2A 0C         [24] 5672 	lcall	_initAES
                                   5673 ;	appFHSSNIC.c:1357: initUSB();
      0018DC 12 1B 30         [24] 5674 	lcall	_initUSB
                                   5675 ;	appFHSSNIC.c:1358: init_RF();
      0018DF 12 1E BB         [24] 5676 	lcall	_init_RF
                                   5677 ;	appFHSSNIC.c:1359: appMainInit();
      0018E2 12 09 EC         [24] 5678 	lcall	_appMainInit
                                   5679 ;	appFHSSNIC.c:1361: usb_up();
      0018E5 12 1B FA         [24] 5680 	lcall	_usb_up
                                   5681 ;	appFHSSNIC.c:1364: EA = 1;
      0018E8 D2 AF            [12] 5682 	setb	_EA
                                   5683 ;	appFHSSNIC.c:1365: waitForUSBsetup();
      0018EA 12 1C 38         [24] 5684 	lcall	_waitForUSBsetup
                                   5685 ;	appFHSSNIC.c:1367: REALLYFASTBLINK();
      0018ED D2 A4            [12] 5686 	setb	_P2_4
      0018EF 90 00 02         [24] 5687 	mov	dptr,#0x0002
      0018F2 12 28 65         [24] 5688 	lcall	_sleepMillis
      0018F5 C2 A4            [12] 5689 	clr	_P2_4
      0018F7 90 00 0A         [24] 5690 	mov	dptr,#0x000A
      0018FA 12 28 65         [24] 5691 	lcall	_sleepMillis
                                   5692 ;	appFHSSNIC.c:1369: while (1)
      0018FD                       5693 00102$:
                                   5694 ;	appFHSSNIC.c:1371: usbProcessEvents();
      0018FD 12 1B 68         [24] 5695 	lcall	_usbProcessEvents
                                   5696 ;	appFHSSNIC.c:1372: appMainLoop();
      001900 12 0A 10         [24] 5697 	lcall	_appMainLoop
      001903 80 F8            [24] 5698 	sjmp	00102$
                                   5699 	.area CSEG    (CODE)
                                   5700 	.area CONST   (CODE)
      0030DC                       5701 ___str_0:
      0030DC 43 61 6E 6E 6F 74 20  5702 	.ascii "Cannot call transmit_long while FHSS Hopping or already proc"
             63 61 6C 6C 20 74 72
             61 6E 73 6D 69 74 5F
             6C 6F 6E 67 20 77 68
             69 6C 65 20 46 48 53
             53 20 48 6F 70 70 69
             6E 67 20 6F 72 20 61
             6C 72 65 61 64 79 20
             70 72 6F 63
      003118 65 73 73 69 6E 67 20  5703 	.ascii "essing transmit_long!"
             74 72 61 6E 73 6D 69
             74 5F 6C 6F 6E 67 21
      00312D 00                    5704 	.db 0x00
      00312E                       5705 ___str_1:
      00312E 4D 41 43 5F 74 78 28  5706 	.ascii "MAC_tx() returned error"
             29 20 72 65 74 75 72
             6E 65 64 20 65 72 72
             6F 72
      003145 00                    5707 	.db 0x00
      003146                       5708 ___str_2:
      003146 6E 65 76 65 72 20 65  5709 	.ascii "never entered TX"
             6E 74 65 72 65 64 20
             54 58
      003156 00                    5710 	.db 0x00
      003157                       5711 ___str_3:
      003157 46 48 53 53 78 6D 69  5712 	.ascii "FHSSxmit message too long"
             74 20 6D 65 73 73 61
             67 65 20 74 6F 6F 20
             6C 6F 6E 67
      003170 00                    5713 	.db 0x00
      003171                       5714 ___str_4:
      003171 46 48 53 53 20 73 74  5715 	.ascii "FHSS state entering SYNCHING from wrong state"
             61 74 65 20 65 6E 74
             65 72 69 6E 67 20 53
             59 4E 43 48 49 4E 47
             20 66 72 6F 6D 20 77
             72 6F 6E 67 20 73 74
             61 74 65
      00319E 00                    5716 	.db 0x00
      00319F                       5717 ___str_5:
      00319F 53 59 4E 43 48 5F 4D  5718 	.ascii "SYNCH_MASTER -> SYNCINGMASTER"
             41 53 54 45 52 20 2D
             3E 20 53 59 4E 43 49
             4E 47 4D 41 53 54 45
             52
      0031BC 00                    5719 	.db 0x00
      0031BD                       5720 ___str_6:
      0031BD 46 48 53 53 78 6D 69  5721 	.ascii "FHSSxmit done"
             74 20 64 6F 6E 65
      0031CA 00                    5722 	.db 0x00
      0031CB                       5723 ___str_7:
      0031CB 6E 65 74 77 6F 72 6B  5724 	.ascii "network packet(sync)"
             20 70 61 63 6B 65 74
             28 73 79 6E 63 29
      0031DF 00                    5725 	.db 0x00
      0031E0                       5726 ___str_8:
      0031E0 6E 65 74 77 6F 72 6B  5727 	.ascii "network packet(discovery)"
             20 70 61 63 6B 65 74
             28 64 69 73 63 6F 76
             65 72 79 29
      0031F9 00                    5728 	.db 0x00
      0031FA                       5729 ___str_9:
      0031FA 63 72 61 70 2C 20 70  5730 	.ascii "crap, please use FHSSxmit() instead!"
             6C 65 61 73 65 20 75
             73 65 20 46 48 53 53
             78 6D 69 74 28 29 20
             69 6E 73 74 65 61 64
             21
      00321E 00                    5731 	.db 0x00
      00321F                       5732 ___str_10:
      00321F 64 72 6F 70 6F 75 74  5733 	.ascii "dropout final wait!"
             20 66 69 6E 61 6C 20
             77 61 69 74 21
      003232 00                    5734 	.db 0x00
      003233                       5735 ___str_11:
      003233 74 6F 74 61 6C 20 62  5736 	.ascii "total bytes tx:"
             79 74 65 73 20 74 78
             3A
      003242 00                    5737 	.db 0x00
      003243                       5738 ___str_12:
      003243 75 6E 64 65 72 72 75  5739 	.ascii "underrun"
             6E
      00324B 00                    5740 	.db 0x00
      00324C                       5741 ___str_13:
      00324C 62 75 66 66 65 72 20  5742 	.ascii "buffer error"
             65 72 72 6F 72
      003258 00                    5743 	.db 0x00
      003259                       5744 ___str_14:
      003259 73 74 69 6C 6C 20 77  5745 	.ascii "still waiting on the last packet"
             61 69 74 69 6E 67 20
             6F 6E 20 74 68 65 20
             6C 61 73 74 20 70 61
             63 6B 65 74
      003279 00                    5746 	.db 0x00
      00327A                       5747 ___str_15:
      00327A 4E 4F 20 44 45 41 4C  5748 	.ascii "NO DEAL"
      003281 00                    5749 	.db 0x00
                                   5750 	.area XINIT   (CODE)
                                   5751 	.area CABS    (ABS,CODE)
