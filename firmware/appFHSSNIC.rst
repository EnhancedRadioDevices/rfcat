                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Wed Dec 14 17:38:40 2016
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
                             42 	.globl _io_init
                             43 	.globl _clock_init
                             44 	.globl _sleepMillis
                             45 	.globl _initDMA
                             46 	.globl _appReturn
                             47 	.globl _txdata
                             48 	.globl _debughex16
                             49 	.globl _debughex
                             50 	.globl _debugx
                             51 	.globl _debug
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
   0000                     531 	.org 0x0000
                     0080   532 _P0	=	0x0080
                     0081   533 _SP	=	0x0081
                     0082   534 _DPL0	=	0x0082
                     0083   535 _DPH0	=	0x0083
                     0084   536 _DPL1	=	0x0084
                     0085   537 _DPH1	=	0x0085
                     0086   538 _U0CSR	=	0x0086
                     0087   539 _PCON	=	0x0087
                     0088   540 _TCON	=	0x0088
                     0089   541 _P0IFG	=	0x0089
                     008A   542 _P1IFG	=	0x008a
                     008B   543 _P2IFG	=	0x008b
                     008C   544 _PICTL	=	0x008c
                     008D   545 _P1IEN	=	0x008d
                     008E   546 __SFR8E	=	0x008e
                     008F   547 _P0INP	=	0x008f
                     0090   548 _P1	=	0x0090
                     0091   549 _RFIM	=	0x0091
                     0092   550 _DPS	=	0x0092
                     0093   551 _MPAGE	=	0x0093
                     0093   552 __XPAGE	=	0x0093
                     0094   553 __SFR94	=	0x0094
                     0095   554 __SFR95	=	0x0095
                     0096   555 __SFR96	=	0x0096
                     0097   556 __SFR97	=	0x0097
                     0098   557 _S0CON	=	0x0098
                     0099   558 __SFR99	=	0x0099
                     009A   559 _IEN2	=	0x009a
                     009B   560 _S1CON	=	0x009b
                     009C   561 _T2CT	=	0x009c
                     009D   562 _T2PR	=	0x009d
                     009E   563 _T2CTL	=	0x009e
                     009F   564 __SFR9F	=	0x009f
                     00A0   565 _P2	=	0x00a0
                     00A1   566 _WORIRQ	=	0x00a1
                     00A2   567 _WORCTRL	=	0x00a2
                     00A3   568 _WOREVT0	=	0x00a3
                     00A4   569 _WOREVT1	=	0x00a4
                     00A5   570 _WORTIME0	=	0x00a5
                     00A6   571 _WORTIME1	=	0x00a6
                     00A7   572 __SFRA7	=	0x00a7
                     00A8   573 _IEN0	=	0x00a8
                     00A9   574 _IP0	=	0x00a9
                     00AA   575 __SFRAA	=	0x00aa
                     00AB   576 _FWT	=	0x00ab
                     00AC   577 _FADDRL	=	0x00ac
                     00AD   578 _FADDRH	=	0x00ad
                     00AE   579 _FCTL	=	0x00ae
                     00AF   580 _FWDATA	=	0x00af
                     00B0   581 __SFRB0	=	0x00b0
                     00B1   582 _ENCDI	=	0x00b1
                     00B2   583 _ENCDO	=	0x00b2
                     00B3   584 _ENCCS	=	0x00b3
                     00B4   585 _ADCCON1	=	0x00b4
                     00B5   586 _ADCCON2	=	0x00b5
                     00B6   587 _ADCCON3	=	0x00b6
                     00B7   588 __SFRB7	=	0x00b7
                     00B8   589 _IEN1	=	0x00b8
                     00B9   590 _IP1	=	0x00b9
                     00BA   591 _ADCL	=	0x00ba
                     00BB   592 _ADCH	=	0x00bb
                     00BC   593 _RNDL	=	0x00bc
                     00BD   594 _RNDH	=	0x00bd
                     00BE   595 _SLEEP	=	0x00be
                     00BF   596 __SFRBF	=	0x00bf
                     00C0   597 _IRCON	=	0x00c0
                     00C1   598 _U0DBUF	=	0x00c1
                     00C2   599 _U0BAUD	=	0x00c2
                     00C3   600 __SFRC3	=	0x00c3
                     00C4   601 _U0UCR	=	0x00c4
                     00C5   602 _U0GCR	=	0x00c5
                     00C6   603 _CLKCON	=	0x00c6
                     00C7   604 _MEMCTR	=	0x00c7
                     00C8   605 __SFRC8	=	0x00c8
                     00C9   606 _WDCTL	=	0x00c9
                     00CA   607 _T3CNT	=	0x00ca
                     00CB   608 _T3CTL	=	0x00cb
                     00CC   609 _T3CCTL0	=	0x00cc
                     00CD   610 _T3CC0	=	0x00cd
                     00CE   611 _T3CCTL1	=	0x00ce
                     00CF   612 _T3CC1	=	0x00cf
                     00D0   613 _PSW	=	0x00d0
                     00D1   614 _DMAIRQ	=	0x00d1
                     00D2   615 _DMA1CFGL	=	0x00d2
                     00D3   616 _DMA1CFGH	=	0x00d3
                     00D4   617 _DMA0CFGL	=	0x00d4
                     00D5   618 _DMA0CFGH	=	0x00d5
                     00D6   619 _DMAARM	=	0x00d6
                     00D7   620 _DMAREQ	=	0x00d7
                     00D8   621 _TIMIF	=	0x00d8
                     00D9   622 _RFD	=	0x00d9
                     00DA   623 _T1CC0L	=	0x00da
                     00DB   624 _T1CC0H	=	0x00db
                     00DC   625 _T1CC1L	=	0x00dc
                     00DD   626 _T1CC1H	=	0x00dd
                     00DE   627 _T1CC2L	=	0x00de
                     00DF   628 _T1CC2H	=	0x00df
                     00E0   629 _ACC	=	0x00e0
                     00E1   630 _RFST	=	0x00e1
                     00E2   631 _T1CNTL	=	0x00e2
                     00E3   632 _T1CNTH	=	0x00e3
                     00E4   633 _T1CTL	=	0x00e4
                     00E5   634 _T1CCTL0	=	0x00e5
                     00E6   635 _T1CCTL1	=	0x00e6
                     00E7   636 _T1CCTL2	=	0x00e7
                     00E8   637 _IRCON2	=	0x00e8
                     00E9   638 _RFIF	=	0x00e9
                     00EA   639 _T4CNT	=	0x00ea
                     00EB   640 _T4CTL	=	0x00eb
                     00EC   641 _T4CCTL0	=	0x00ec
                     00ED   642 _T4CC0	=	0x00ed
                     00EE   643 _T4CCTL1	=	0x00ee
                     00EF   644 _T4CC1	=	0x00ef
                     00F0   645 _B	=	0x00f0
                     00F1   646 _PERCFG	=	0x00f1
                     00F2   647 _ADCCFG	=	0x00f2
                     00F3   648 _P0SEL	=	0x00f3
                     00F4   649 _P1SEL	=	0x00f4
                     00F5   650 _P2SEL	=	0x00f5
                     00F6   651 _P1INP	=	0x00f6
                     00F7   652 _P2INP	=	0x00f7
                     00F8   653 _U1CSR	=	0x00f8
                     00F9   654 _U1DBUF	=	0x00f9
                     00FA   655 _U1BAUD	=	0x00fa
                     00FB   656 _U1UCR	=	0x00fb
                     00FC   657 _U1GCR	=	0x00fc
                     00FD   658 _P0DIR	=	0x00fd
                     00FE   659 _P1DIR	=	0x00fe
                     00FF   660 _P2DIR	=	0x00ff
                            661 ;--------------------------------------------------------
                            662 ; special function bits
                            663 ;--------------------------------------------------------
                            664 	.area RSEG    (ABS,DATA)
   0000                     665 	.org 0x0000
                     0080   666 _P0_0	=	0x0080
                     0081   667 _P0_1	=	0x0081
                     0082   668 _P0_2	=	0x0082
                     0083   669 _P0_3	=	0x0083
                     0084   670 _P0_4	=	0x0084
                     0085   671 _P0_5	=	0x0085
                     0086   672 _P0_6	=	0x0086
                     0087   673 _P0_7	=	0x0087
                     0088   674 _IT0	=	0x0088
                     0089   675 _RFTXRXIF	=	0x0089
                     008A   676 _IT1	=	0x008a
                     008B   677 _URX0IF	=	0x008b
                     008D   678 _ADCIF	=	0x008d
                     008F   679 _URX1IF	=	0x008f
                     0090   680 _P1_0	=	0x0090
                     0091   681 _P1_1	=	0x0091
                     0092   682 _P1_2	=	0x0092
                     0093   683 _P1_3	=	0x0093
                     0094   684 _P1_4	=	0x0094
                     0095   685 _P1_5	=	0x0095
                     0096   686 _P1_6	=	0x0096
                     0097   687 _P1_7	=	0x0097
                     0098   688 _ENCIF_0	=	0x0098
                     0099   689 _ENCIF_1	=	0x0099
                     00A0   690 _P2_0	=	0x00a0
                     00A1   691 _P2_1	=	0x00a1
                     00A2   692 _P2_2	=	0x00a2
                     00A3   693 _P2_3	=	0x00a3
                     00A4   694 _P2_4	=	0x00a4
                     00A5   695 _P2_5	=	0x00a5
                     00A6   696 _P2_6	=	0x00a6
                     00A7   697 _P2_7	=	0x00a7
                     00A8   698 _RFTXRXIE	=	0x00a8
                     00A9   699 _ADCIE	=	0x00a9
                     00AA   700 _URX0IE	=	0x00aa
                     00AB   701 _URX1IE	=	0x00ab
                     00AC   702 _ENCIE	=	0x00ac
                     00AD   703 _STIE	=	0x00ad
                     00AF   704 _EA	=	0x00af
                     00B8   705 _DMAIE	=	0x00b8
                     00B9   706 _T1IE	=	0x00b9
                     00BA   707 _T2IE	=	0x00ba
                     00BB   708 _T3IE	=	0x00bb
                     00BC   709 _T4IE	=	0x00bc
                     00BD   710 _P0IE	=	0x00bd
                     00C0   711 _DMAIF	=	0x00c0
                     00C1   712 _T1IF	=	0x00c1
                     00C2   713 _T2IF	=	0x00c2
                     00C3   714 _T3IF	=	0x00c3
                     00C4   715 _T4IF	=	0x00c4
                     00C5   716 _P0IF	=	0x00c5
                     00C7   717 _STIF	=	0x00c7
                     00D0   718 _P	=	0x00d0
                     00D1   719 _F1	=	0x00d1
                     00D2   720 _OV	=	0x00d2
                     00D3   721 _RS0	=	0x00d3
                     00D4   722 _RS1	=	0x00d4
                     00D5   723 _F0	=	0x00d5
                     00D6   724 _AC	=	0x00d6
                     00D7   725 _CY	=	0x00d7
                     00D8   726 _T3OVFIF	=	0x00d8
                     00D9   727 _T3CH0IF	=	0x00d9
                     00DA   728 _T3CH1IF	=	0x00da
                     00DB   729 _T4OVFIF	=	0x00db
                     00DC   730 _T4CH0IF	=	0x00dc
                     00DD   731 _T4CH1IF	=	0x00dd
                     00DE   732 _OVFIM	=	0x00de
                     00E0   733 _ACC_0	=	0x00e0
                     00E1   734 _ACC_1	=	0x00e1
                     00E2   735 _ACC_2	=	0x00e2
                     00E3   736 _ACC_3	=	0x00e3
                     00E4   737 _ACC_4	=	0x00e4
                     00E5   738 _ACC_5	=	0x00e5
                     00E6   739 _ACC_6	=	0x00e6
                     00E7   740 _ACC_7	=	0x00e7
                     00E8   741 _P2IF	=	0x00e8
                     00E9   742 _UTX0IF	=	0x00e9
                     00EA   743 _UTX1IF	=	0x00ea
                     00EB   744 _P1IF	=	0x00eb
                     00EC   745 _WDTIF	=	0x00ec
                     00F0   746 _B_0	=	0x00f0
                     00F1   747 _B_1	=	0x00f1
                     00F2   748 _B_2	=	0x00f2
                     00F3   749 _B_3	=	0x00f3
                     00F4   750 _B_4	=	0x00f4
                     00F5   751 _B_5	=	0x00f5
                     00F6   752 _B_6	=	0x00f6
                     00F7   753 _B_7	=	0x00f7
                     00F8   754 _ACTIVE	=	0x00f8
                     00F9   755 _TX_BYTE	=	0x00f9
                     00FA   756 _RX_BYTE	=	0x00fa
                     00FB   757 _ERR	=	0x00fb
                     00FC   758 _FE	=	0x00fc
                     00FD   759 _SLAVE	=	0x00fd
                     00FE   760 _RE	=	0x00fe
                     00FF   761 _MODE	=	0x00ff
                     00E8   762 _USBIF	=	0x00e8
                            763 ;--------------------------------------------------------
                            764 ; overlayable register banks
                            765 ;--------------------------------------------------------
                            766 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     767 	.ds 8
                            768 ;--------------------------------------------------------
                            769 ; overlayable bit register bank
                            770 ;--------------------------------------------------------
                            771 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     772 bits:
   0021                     773 	.ds 1
                     8000   774 	b0 = bits[0]
                     8100   775 	b1 = bits[1]
                     8200   776 	b2 = bits[2]
                     8300   777 	b3 = bits[3]
                     8400   778 	b4 = bits[4]
                     8500   779 	b5 = bits[5]
                     8600   780 	b6 = bits[6]
                     8700   781 	b7 = bits[7]
                            782 ;--------------------------------------------------------
                            783 ; internal ram data
                            784 ;--------------------------------------------------------
                            785 	.area DSEG    (DATA)
   0008                     786 _appHandleEP5_sloc0_1_0:
   0008                     787 	.ds 2
   000A                     788 _appHandleEP5_sloc1_1_0:
   000A                     789 	.ds 3
                            790 ;--------------------------------------------------------
                            791 ; overlayable items in internal ram 
                            792 ;--------------------------------------------------------
                            793 	.area	OSEG    (OVR,DATA)
                            794 ;--------------------------------------------------------
                            795 ; Stack segment in internal ram 
                            796 ;--------------------------------------------------------
                            797 	.area	SSEG	(DATA)
   003C                     798 __start__stack:
   003C                     799 	.ds	1
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
   0000                     814 _appMainLoop_sloc0_1_0:
   0000                     815 	.ds 1
                            816 ;--------------------------------------------------------
                            817 ; paged external ram data
                            818 ;--------------------------------------------------------
                            819 	.area PSEG    (PAG,XDATA)
                            820 ;--------------------------------------------------------
                            821 ; external ram data
                            822 ;--------------------------------------------------------
                            823 	.area XSEG    (XDATA)
                     DF02   824 _MDMCTRL0H	=	0xdf02
                     DF00   825 _SYNC1	=	0xdf00
                     DF01   826 _SYNC0	=	0xdf01
                     DF02   827 _PKTLEN	=	0xdf02
                     DF03   828 _PKTCTRL1	=	0xdf03
                     DF04   829 _PKTCTRL0	=	0xdf04
                     DF05   830 _ADDR	=	0xdf05
                     DF06   831 _CHANNR	=	0xdf06
                     DF07   832 _FSCTRL1	=	0xdf07
                     DF08   833 _FSCTRL0	=	0xdf08
                     DF09   834 _FREQ2	=	0xdf09
                     DF0A   835 _FREQ1	=	0xdf0a
                     DF0B   836 _FREQ0	=	0xdf0b
                     DF0C   837 _MDMCFG4	=	0xdf0c
                     DF0D   838 _MDMCFG3	=	0xdf0d
                     DF0E   839 _MDMCFG2	=	0xdf0e
                     DF0F   840 _MDMCFG1	=	0xdf0f
                     DF10   841 _MDMCFG0	=	0xdf10
                     DF11   842 _DEVIATN	=	0xdf11
                     DF12   843 _MCSM2	=	0xdf12
                     DF13   844 _MCSM1	=	0xdf13
                     DF14   845 _MCSM0	=	0xdf14
                     DF15   846 _FOCCFG	=	0xdf15
                     DF16   847 _BSCFG	=	0xdf16
                     DF17   848 _AGCCTRL2	=	0xdf17
                     DF18   849 _AGCCTRL1	=	0xdf18
                     DF19   850 _AGCCTRL0	=	0xdf19
                     DF1A   851 _FREND1	=	0xdf1a
                     DF1B   852 _FREND0	=	0xdf1b
                     DF1C   853 _FSCAL3	=	0xdf1c
                     DF1D   854 _FSCAL2	=	0xdf1d
                     DF1E   855 _FSCAL1	=	0xdf1e
                     DF1F   856 _FSCAL0	=	0xdf1f
                     DF20   857 __XREGDF20	=	0xdf20
                     DF21   858 __XREGDF21	=	0xdf21
                     DF22   859 __XREGDF22	=	0xdf22
                     DF23   860 _TEST2	=	0xdf23
                     DF24   861 _TEST1	=	0xdf24
                     DF25   862 _TEST0	=	0xdf25
                     DF26   863 __XREGDF26	=	0xdf26
                     DF27   864 _PA_TABLE7	=	0xdf27
                     DF28   865 _PA_TABLE6	=	0xdf28
                     DF29   866 _PA_TABLE5	=	0xdf29
                     DF2A   867 _PA_TABLE4	=	0xdf2a
                     DF2B   868 _PA_TABLE3	=	0xdf2b
                     DF2C   869 _PA_TABLE2	=	0xdf2c
                     DF2D   870 _PA_TABLE1	=	0xdf2d
                     DF2E   871 _PA_TABLE0	=	0xdf2e
                     DF2F   872 _IOCFG2	=	0xdf2f
                     DF30   873 _IOCFG1	=	0xdf30
                     DF31   874 _IOCFG0	=	0xdf31
                     DF32   875 __XREGDF32	=	0xdf32
                     DF33   876 __XREGDF33	=	0xdf33
                     DF34   877 __XREGDF34	=	0xdf34
                     DF35   878 __XREGDF35	=	0xdf35
                     DF36   879 _PARTNUM	=	0xdf36
                     DF37   880 _VERSION	=	0xdf37
                     DF38   881 _FREQEST	=	0xdf38
                     DF39   882 _LQI	=	0xdf39
                     DF3A   883 _RSSI	=	0xdf3a
                     DF3B   884 _MARCSTATE	=	0xdf3b
                     DF3C   885 _PKTSTATUS	=	0xdf3c
                     DF3D   886 _VCO_VC_DAC	=	0xdf3d
                     DF40   887 _I2SCFG0	=	0xdf40
                     DF41   888 _I2SCFG1	=	0xdf41
                     DF42   889 _I2SDATL	=	0xdf42
                     DF43   890 _I2SDATH	=	0xdf43
                     DF44   891 _I2SWCNT	=	0xdf44
                     DF45   892 _I2SSTAT	=	0xdf45
                     DF46   893 _I2SCLKF0	=	0xdf46
                     DF47   894 _I2SCLKF1	=	0xdf47
                     DF48   895 _I2SCLKF2	=	0xdf48
                     DF80   896 __NA_P0	=	0xdf80
                     DF81   897 __NA_SP	=	0xdf81
                     DF82   898 __NA_DPL0	=	0xdf82
                     DF83   899 __NA_DPH0	=	0xdf83
                     DF84   900 __NA_DPL1	=	0xdf84
                     DF85   901 __NA_DPH1	=	0xdf85
                     DF86   902 _X_U0CSR	=	0xdf86
                     DF87   903 __NA_PCON	=	0xdf87
                     DF88   904 __NA_TCON	=	0xdf88
                     DF89   905 _X_P0IFG	=	0xdf89
                     DF8A   906 _X_P1IFG	=	0xdf8a
                     DF8B   907 _X_P2IFG	=	0xdf8b
                     DF8C   908 _X_PICTL	=	0xdf8c
                     DF8D   909 _X_P1IEN	=	0xdf8d
                     DF8E   910 __X_SFR8E	=	0xdf8e
                     DF8F   911 _X_P0INP	=	0xdf8f
                     DF90   912 __NA_P1	=	0xdf90
                     DF91   913 _X_RFIM	=	0xdf91
                     DF92   914 __NA_DPS	=	0xdf92
                     DF93   915 _X_MPAGE	=	0xdf93
                     DF94   916 __X_SFR94	=	0xdf94
                     DF95   917 __X_SFR95	=	0xdf95
                     DF96   918 __X_SFR96	=	0xdf96
                     DF97   919 __X_SFR97	=	0xdf97
                     DF98   920 __NA_S0CON	=	0xdf98
                     DF99   921 __X_SFR99	=	0xdf99
                     DF9A   922 __NA_IEN2	=	0xdf9a
                     DF9B   923 __NA_S1CON	=	0xdf9b
                     DF9C   924 _X_T2CT	=	0xdf9c
                     DF9D   925 _X_T2PR	=	0xdf9d
                     DF9E   926 _X_T2CTL	=	0xdf9e
                     DF9F   927 __X_SFR9F	=	0xdf9f
                     DFA0   928 __NA_P2	=	0xdfa0
                     DFA1   929 _X_WORIRQ	=	0xdfa1
                     DFA2   930 _X_WORCTRL	=	0xdfa2
                     DFA3   931 _X_WOREVT0	=	0xdfa3
                     DFA4   932 _X_WOREVT1	=	0xdfa4
                     DFA5   933 _X_WORTIME0	=	0xdfa5
                     DFA6   934 _X_WORTIME1	=	0xdfa6
                     DFA7   935 __X_SFRA7	=	0xdfa7
                     DFA8   936 __NA_IEN0	=	0xdfa8
                     DFA9   937 __NA_IP0	=	0xdfa9
                     DFAA   938 __X_SFRAA	=	0xdfaa
                     DFAB   939 _X_FWT	=	0xdfab
                     DFAC   940 _X_FADDRL	=	0xdfac
                     DFAD   941 _X_FADDRH	=	0xdfad
                     DFAE   942 _X_FCTL	=	0xdfae
                     DFAF   943 _X_FWDATA	=	0xdfaf
                     DFB0   944 __X_SFRB0	=	0xdfb0
                     DFB1   945 _X_ENCDI	=	0xdfb1
                     DFB2   946 _X_ENCDO	=	0xdfb2
                     DFB3   947 _X_ENCCS	=	0xdfb3
                     DFB4   948 _X_ADCCON1	=	0xdfb4
                     DFB5   949 _X_ADCCON2	=	0xdfb5
                     DFB6   950 _X_ADCCON3	=	0xdfb6
                     DFB7   951 __X_SFRB7	=	0xdfb7
                     DFB8   952 __NA_IEN1	=	0xdfb8
                     DFB9   953 __NA_IP1	=	0xdfb9
                     DFBA   954 _X_ADCL	=	0xdfba
                     DFBB   955 _X_ADCH	=	0xdfbb
                     DFBC   956 _X_RNDL	=	0xdfbc
                     DFBD   957 _X_RNDH	=	0xdfbd
                     DFBE   958 _X_SLEEP	=	0xdfbe
                     DFBF   959 __X_SFRBF	=	0xdfbf
                     DFC0   960 __NA_IRCON	=	0xdfc0
                     DFC1   961 _X_U0DBUF	=	0xdfc1
                     DFC2   962 _X_U0BAUD	=	0xdfc2
                     DFC3   963 __X_SFRC3	=	0xdfc3
                     DFC4   964 _X_U0UCR	=	0xdfc4
                     DFC5   965 _X_U0GCR	=	0xdfc5
                     DFC6   966 _X_CLKCON	=	0xdfc6
                     DFC7   967 _X_MEMCTR	=	0xdfc7
                     DFC8   968 __X_SFRC8	=	0xdfc8
                     DFC9   969 _X_WDCTL	=	0xdfc9
                     DFCA   970 _X_T3CNT	=	0xdfca
                     DFCB   971 _X_T3CTL	=	0xdfcb
                     DFCC   972 _X_T3CCTL0	=	0xdfcc
                     DFCD   973 _X_T3CC0	=	0xdfcd
                     DFCE   974 _X_T3CCTL1	=	0xdfce
                     DFCF   975 _X_T3CC1	=	0xdfcf
                     DFD0   976 __NA_PSW	=	0xdfd0
                     DFD1   977 _X_DMAIRQ	=	0xdfd1
                     DFD2   978 _X_DMA1CFGL	=	0xdfd2
                     DFD3   979 _X_DMA1CFGH	=	0xdfd3
                     DFD4   980 _X_DMA0CFGL	=	0xdfd4
                     DFD5   981 _X_DMA0CFGH	=	0xdfd5
                     DFD6   982 _X_DMAARM	=	0xdfd6
                     DFD7   983 _X_DMAREQ	=	0xdfd7
                     DFD8   984 _X_TIMIF	=	0xdfd8
                     DFD9   985 _X_RFD	=	0xdfd9
                     DFDA   986 _X_T1CC0L	=	0xdfda
                     DFDB   987 _X_T1CC0H	=	0xdfdb
                     DFDC   988 _X_T1CC1L	=	0xdfdc
                     DFDD   989 _X_T1CC1H	=	0xdfdd
                     DFDE   990 _X_T1CC2L	=	0xdfde
                     DFDF   991 _X_T1CC2H	=	0xdfdf
                     DFE0   992 __NA_ACC	=	0xdfe0
                     DFE1   993 _X_RFST	=	0xdfe1
                     DFE2   994 _X_T1CNTL	=	0xdfe2
                     DFE3   995 _X_T1CNTH	=	0xdfe3
                     DFE4   996 _X_T1CTL	=	0xdfe4
                     DFE5   997 _X_T1CCTL0	=	0xdfe5
                     DFE6   998 _X_T1CCTL1	=	0xdfe6
                     DFE7   999 _X_T1CCTL2	=	0xdfe7
                     DFE8  1000 __NA_IRCON2	=	0xdfe8
                     DFE9  1001 _X_RFIF	=	0xdfe9
                     DFEA  1002 _X_T4CNT	=	0xdfea
                     DFEB  1003 _X_T4CTL	=	0xdfeb
                     DFEC  1004 _X_T4CCTL0	=	0xdfec
                     DFED  1005 _X_T4CC0	=	0xdfed
                     DFEE  1006 _X_T4CCTL1	=	0xdfee
                     DFEF  1007 _X_T4CC1	=	0xdfef
                     DFF0  1008 __NA_B	=	0xdff0
                     DFF1  1009 _X_PERCFG	=	0xdff1
                     DFF2  1010 _X_ADCCFG	=	0xdff2
                     DFF3  1011 _X_P0SEL	=	0xdff3
                     DFF4  1012 _X_P1SEL	=	0xdff4
                     DFF5  1013 _X_P2SEL	=	0xdff5
                     DFF6  1014 _X_P1INP	=	0xdff6
                     DFF7  1015 _X_P2INP	=	0xdff7
                     DFF8  1016 _X_U1CSR	=	0xdff8
                     DFF9  1017 _X_U1DBUF	=	0xdff9
                     DFFA  1018 _X_U1BAUD	=	0xdffa
                     DFFB  1019 _X_U1UCR	=	0xdffb
                     DFFC  1020 _X_U1GCR	=	0xdffc
                     DFFD  1021 _X_P0DIR	=	0xdffd
                     DFFE  1022 _X_P1DIR	=	0xdffe
                     DFFF  1023 _X_P2DIR	=	0xdfff
                     DE00  1024 _USBADDR	=	0xde00
                     DE01  1025 _USBPOW	=	0xde01
                     DE02  1026 _USBIIF	=	0xde02
                     DE04  1027 _USBOIF	=	0xde04
                     DE06  1028 _USBCIF	=	0xde06
                     DE07  1029 _USBIIE	=	0xde07
                     DE09  1030 _USBOIE	=	0xde09
                     DE0B  1031 _USBCIE	=	0xde0b
                     DE0C  1032 _USBFRML	=	0xde0c
                     DE0D  1033 _USBFRMH	=	0xde0d
                     DE0E  1034 _USBINDEX	=	0xde0e
                     DE10  1035 _USBMAXI	=	0xde10
                     DE11  1036 _USBCS0	=	0xde11
                     DE11  1037 _USBCSIL	=	0xde11
                     DE12  1038 _USBCSIH	=	0xde12
                     DE13  1039 _USBMAXO	=	0xde13
                     DE14  1040 _USBCSOL	=	0xde14
                     DE15  1041 _USBCSOH	=	0xde15
                     DE16  1042 _USBCNT0	=	0xde16
                     DE16  1043 _USBCNTL	=	0xde16
                     DE17  1044 _USBCNTH	=	0xde17
                     DE20  1045 _USBF0	=	0xde20
                     DE22  1046 _USBF1	=	0xde22
                     DE24  1047 _USBF2	=	0xde24
                     DE26  1048 _USBF3	=	0xde26
                     DE28  1049 _USBF4	=	0xde28
                     DE2A  1050 _USBF5	=	0xde2a
   F000                    1051 _g_Channels::
   F000                    1052 	.ds 880
   F370                    1053 _g_NIC_ID::
   F370                    1054 	.ds 2
   F372                    1055 _g_txMsgQueue::
   F372                    1056 	.ds 482
   F554                    1057 _PHY_set_channel_chan_1_91:
   F554                    1058 	.ds 2
   F556                    1059 _begin_hopping_T2_offset_1_97:
   F556                    1060 	.ds 1
   F557                    1061 _transmit_long_PARM_2:
   F557                    1062 	.ds 2
   F559                    1063 _transmit_long_PARM_3:
   F559                    1064 	.ds 1
   F55A                    1065 _transmit_long_buf_1_101:
   F55A                    1066 	.ds 2
   F55C                    1067 _MAC_tx_PARM_2:
   F55C                    1068 	.ds 1
   F55D                    1069 _MAC_tx_msg_1_112:
   F55D                    1070 	.ds 2
   F55F                    1071 _MAC_sync_CellID_1_122:
   F55F                    1072 	.ds 2
   F561                    1073 _MAC_set_chanidx_chanidx_1_130:
   F561                    1074 	.ds 2
   F563                    1075 _MAC_set_NIC_ID_NIC_ID_1_132:
   F563                    1076 	.ds 2
   F565                    1077 _MAC_rx_handle_PARM_2:
   F565                    1078 	.ds 2
   F567                    1079 _t2IntHandler_packet_1_139:
   F567                    1080 	.ds 28
   F583                    1081 _processbuffer::
   F583                    1082 	.ds 1
   F584                    1083 _chan_table::
   F584                    1084 	.ds 2
   F586                    1085 _appHandleEP5_len_1_179:
   F586                    1086 	.ds 2
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
   0000                    1109 __interrupt_vect:
   0000 02 00 8B      [24] 1110 	ljmp	__sdcc_gsinit_startup
   0003 02 27 82      [24] 1111 	ljmp	_rfTxRxIntHandler
   0006                    1112 	.ds	5
   000B 32            [24] 1113 	reti
   000C                    1114 	.ds	7
   0013 32            [24] 1115 	reti
   0014                    1116 	.ds	7
   001B 32            [24] 1117 	reti
   001C                    1118 	.ds	7
   0023 32            [24] 1119 	reti
   0024                    1120 	.ds	7
   002B 32            [24] 1121 	reti
   002C                    1122 	.ds	7
   0033 02 1C 54      [24] 1123 	ljmp	_usbIntHandler
   0036                    1124 	.ds	5
   003B 32            [24] 1125 	reti
   003C                    1126 	.ds	7
   0043 32            [24] 1127 	reti
   0044                    1128 	.ds	7
   004B 02 2E D7      [24] 1129 	ljmp	_t1IntHandler
   004E                    1130 	.ds	5
   0053 02 06 AA      [24] 1131 	ljmp	_t2IntHandler
   0056                    1132 	.ds	5
   005B 02 09 8E      [24] 1133 	ljmp	_t3IntHandler
   005E                    1134 	.ds	5
   0063 32            [24] 1135 	reti
   0064                    1136 	.ds	7
   006B 02 1C 55      [24] 1137 	ljmp	_p0IntHandler
   006E                    1138 	.ds	5
   0073 32            [24] 1139 	reti
   0074                    1140 	.ds	7
   007B 32            [24] 1141 	reti
   007C                    1142 	.ds	7
   0083 02 2A 96      [24] 1143 	ljmp	_rfIntHandler
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
   0101 02 00 86      [24] 1158 	ljmp	__sdcc_program_startup
                           1159 ;--------------------------------------------------------
                           1160 ; Home
                           1161 ;--------------------------------------------------------
                           1162 	.area HOME    (CODE)
                           1163 	.area HOME    (CODE)
   0086                    1164 __sdcc_program_startup:
   0086 02 18 D9      [24] 1165 	ljmp	_main
                           1166 ;	return from main will return to caller
                           1167 ;--------------------------------------------------------
                           1168 ; code
                           1169 ;--------------------------------------------------------
                           1170 	.area CSEG    (CODE)
                           1171 ;------------------------------------------------------------
                           1172 ;Allocation info for local variables in function 'PHY_set_channel'
                           1173 ;------------------------------------------------------------
                           1174 ;chan                      Allocated with name '_PHY_set_channel_chan_1_91'
                           1175 ;------------------------------------------------------------
                           1176 ;	appFHSSNIC.c:74: void PHY_set_channel(__xdata u16 chan)
                           1177 ;	-----------------------------------------
                           1178 ;	 function PHY_set_channel
                           1179 ;	-----------------------------------------
   0104                    1180 _PHY_set_channel:
                     0007  1181 	ar7 = 0x07
                     0006  1182 	ar6 = 0x06
                     0005  1183 	ar5 = 0x05
                     0004  1184 	ar4 = 0x04
                     0003  1185 	ar3 = 0x03
                     0002  1186 	ar2 = 0x02
                     0001  1187 	ar1 = 0x01
                     0000  1188 	ar0 = 0x00
   0104 AF 83         [24] 1189 	mov	r7,dph
   0106 E5 82         [12] 1190 	mov	a,dpl
   0108 90 F5 54      [24] 1191 	mov	dptr,#_PHY_set_channel_chan_1_91
   010B F0            [24] 1192 	movx	@dptr,a
   010C EF            [12] 1193 	mov	a,r7
   010D A3            [24] 1194 	inc	dptr
   010E F0            [24] 1195 	movx	@dptr,a
                           1196 ;	appFHSSNIC.c:77: RFOFF;
   010F 75 E1 04      [24] 1197 	mov	_RFST,#0x04
   0112                    1198 00101$:
   0112 90 DF 3B      [24] 1199 	mov	dptr,#_MARCSTATE
   0115 E0            [24] 1200 	movx	a,@dptr
   0116 FF            [12] 1201 	mov	r7,a
   0117 BF 01 F8      [24] 1202 	cjne	r7,#0x01,00101$
                           1203 ;	appFHSSNIC.c:79: CHANNR = chan;
   011A 90 F5 54      [24] 1204 	mov	dptr,#_PHY_set_channel_chan_1_91
   011D E0            [24] 1205 	movx	a,@dptr
   011E FE            [12] 1206 	mov	r6,a
   011F A3            [24] 1207 	inc	dptr
   0120 E0            [24] 1208 	movx	a,@dptr
   0121 FF            [12] 1209 	mov	r7,a
   0122 90 DF 06      [24] 1210 	mov	dptr,#_CHANNR
   0125 EE            [12] 1211 	mov	a,r6
   0126 F0            [24] 1212 	movx	@dptr,a
                           1213 ;	appFHSSNIC.c:81: RFRX;
   0127 75 E1 02      [24] 1214 	mov	_RFST,#0x02
   012A                    1215 00107$:
   012A 90 DF 3B      [24] 1216 	mov	dptr,#_MARCSTATE
   012D E0            [24] 1217 	movx	a,@dptr
   012E FF            [12] 1218 	mov	r7,a
   012F BF 0D F8      [24] 1219 	cjne	r7,#0x0D,00107$
   0132 22            [24] 1220 	ret
                           1221 ;------------------------------------------------------------
                           1222 ;Allocation info for local variables in function 'MAC_initChannels'
                           1223 ;------------------------------------------------------------
                           1224 ;loop                      Allocated to registers r6 r7 
                           1225 ;------------------------------------------------------------
                           1226 ;	appFHSSNIC.c:88: void MAC_initChannels()
                           1227 ;	-----------------------------------------
                           1228 ;	 function MAC_initChannels
                           1229 ;	-----------------------------------------
   0133                    1230 _MAC_initChannels:
                           1231 ;	appFHSSNIC.c:92: for (loop=0; loop<macdata.NumChannelHops; loop++)
   0133 7E 00         [12] 1232 	mov	r6,#0x00
   0135 7F 00         [12] 1233 	mov	r7,#0x00
   0137                    1234 00103$:
   0137 90 FD 98      [24] 1235 	mov	dptr,#(_macdata + 0x0007)
   013A E0            [24] 1236 	movx	a,@dptr
   013B FC            [12] 1237 	mov	r4,a
   013C A3            [24] 1238 	inc	dptr
   013D E0            [24] 1239 	movx	a,@dptr
   013E FD            [12] 1240 	mov	r5,a
   013F 8E 02         [24] 1241 	mov	ar2,r6
   0141 8F 03         [24] 1242 	mov	ar3,r7
   0143 C3            [12] 1243 	clr	c
   0144 EA            [12] 1244 	mov	a,r2
   0145 9C            [12] 1245 	subb	a,r4
   0146 EB            [12] 1246 	mov	a,r3
   0147 9D            [12] 1247 	subb	a,r5
   0148 50 3A         [24] 1248 	jnc	00105$
                           1249 ;	appFHSSNIC.c:94: g_Channels[loop] = loop % macdata.NumChannels;
   014A EE            [12] 1250 	mov	a,r6
   014B 24 00         [12] 1251 	add	a,#_g_Channels
   014D FC            [12] 1252 	mov	r4,a
   014E EF            [12] 1253 	mov	a,r7
   014F 34 F0         [12] 1254 	addc	a,#(_g_Channels >> 8)
   0151 FD            [12] 1255 	mov	r5,a
   0152 90 FD 96      [24] 1256 	mov	dptr,#(_macdata + 0x0005)
   0155 E0            [24] 1257 	movx	a,@dptr
   0156 F5 14         [12] 1258 	mov	__moduint_PARM_2,a
   0158 A3            [24] 1259 	inc	dptr
   0159 E0            [24] 1260 	movx	a,@dptr
   015A F5 15         [12] 1261 	mov	(__moduint_PARM_2 + 1),a
   015C 8A 82         [24] 1262 	mov	dpl,r2
   015E 8B 83         [24] 1263 	mov	dph,r3
   0160 C0 07         [24] 1264 	push	ar7
   0162 C0 06         [24] 1265 	push	ar6
   0164 C0 05         [24] 1266 	push	ar5
   0166 C0 04         [24] 1267 	push	ar4
   0168 12 34 0C      [24] 1268 	lcall	__moduint
   016B AA 82         [24] 1269 	mov	r2,dpl
   016D AB 83         [24] 1270 	mov	r3,dph
   016F D0 04         [24] 1271 	pop	ar4
   0171 D0 05         [24] 1272 	pop	ar5
   0173 D0 06         [24] 1273 	pop	ar6
   0175 D0 07         [24] 1274 	pop	ar7
   0177 8C 82         [24] 1275 	mov	dpl,r4
   0179 8D 83         [24] 1276 	mov	dph,r5
   017B EA            [12] 1277 	mov	a,r2
   017C F0            [24] 1278 	movx	@dptr,a
                           1279 ;	appFHSSNIC.c:92: for (loop=0; loop<macdata.NumChannelHops; loop++)
   017D 0E            [12] 1280 	inc	r6
   017E BE 00 B6      [24] 1281 	cjne	r6,#0x00,00103$
   0181 0F            [12] 1282 	inc	r7
   0182 80 B3         [24] 1283 	sjmp	00103$
   0184                    1284 00105$:
   0184 22            [24] 1285 	ret
                           1286 ;------------------------------------------------------------
                           1287 ;Allocation info for local variables in function 'begin_hopping'
                           1288 ;------------------------------------------------------------
                           1289 ;T2_offset                 Allocated with name '_begin_hopping_T2_offset_1_97'
                           1290 ;------------------------------------------------------------
                           1291 ;	appFHSSNIC.c:99: void begin_hopping(__xdata u8 T2_offset)
                           1292 ;	-----------------------------------------
                           1293 ;	 function begin_hopping
                           1294 ;	-----------------------------------------
   0185                    1295 _begin_hopping:
   0185 E5 82         [12] 1296 	mov	a,dpl
                           1297 ;	appFHSSNIC.c:102: T2CT -= T2_offset;
   0187 90 F5 56      [24] 1298 	mov	dptr,#_begin_hopping_T2_offset_1_97
   018A F0            [24] 1299 	movx	@dptr,a
   018B FF            [12] 1300 	mov	r7,a
   018C E5 9C         [12] 1301 	mov	a,_T2CT
   018E C3            [12] 1302 	clr	c
   018F 9F            [12] 1303 	subb	a,r7
   0190 F5 9C         [12] 1304 	mov	_T2CT,a
                           1305 ;	appFHSSNIC.c:103: T2CT -= MAC_TIMER_STATIC_DIFF;
   0192 E5 9C         [12] 1306 	mov	a,_T2CT
   0194 24 FA         [12] 1307 	add	a,#0xFA
   0196 F5 9C         [12] 1308 	mov	_T2CT,a
                           1309 ;	appFHSSNIC.c:105: T2CTL |= T2CTL_INT;
   0198 43 9E 10      [24] 1310 	orl	_T2CTL,#0x10
                           1311 ;	appFHSSNIC.c:106: T2IE = 1;
   019B D2 BA         [12] 1312 	setb	_T2IE
   019D 22            [24] 1313 	ret
                           1314 ;------------------------------------------------------------
                           1315 ;Allocation info for local variables in function 'stop_hopping'
                           1316 ;------------------------------------------------------------
                           1317 ;	appFHSSNIC.c:110: void stop_hopping(void)
                           1318 ;	-----------------------------------------
                           1319 ;	 function stop_hopping
                           1320 ;	-----------------------------------------
   019E                    1321 _stop_hopping:
                           1322 ;	appFHSSNIC.c:113: T2CTL &= ~T2CTL_INT;
   019E AF 9E         [24] 1323 	mov	r7,_T2CTL
   01A0 74 EF         [12] 1324 	mov	a,#0xEF
   01A2 5F            [12] 1325 	anl	a,r7
   01A3 F5 9E         [12] 1326 	mov	_T2CTL,a
   01A5 22            [24] 1327 	ret
                           1328 ;------------------------------------------------------------
                           1329 ;Allocation info for local variables in function 'transmit_long'
                           1330 ;------------------------------------------------------------
                           1331 ;len                       Allocated with name '_transmit_long_PARM_2'
                           1332 ;blocks                    Allocated with name '_transmit_long_PARM_3'
                           1333 ;buf                       Allocated with name '_transmit_long_buf_1_101'
                           1334 ;countdown                 Allocated with name '_transmit_long_countdown_1_102'
                           1335 ;err                       Allocated with name '_transmit_long_err_1_102'
                           1336 ;------------------------------------------------------------
                           1337 ;	appFHSSNIC.c:118: __xdata u8 transmit_long(__xdata u8* __xdata buf, __xdata u16 len, __xdata u8 blocks)
                           1338 ;	-----------------------------------------
                           1339 ;	 function transmit_long
                           1340 ;	-----------------------------------------
   01A6                    1341 _transmit_long:
   01A6 AF 83         [24] 1342 	mov	r7,dph
   01A8 E5 82         [12] 1343 	mov	a,dpl
   01AA 90 F5 5A      [24] 1344 	mov	dptr,#_transmit_long_buf_1_101
   01AD F0            [24] 1345 	movx	@dptr,a
   01AE EF            [12] 1346 	mov	a,r7
   01AF A3            [24] 1347 	inc	dptr
   01B0 F0            [24] 1348 	movx	@dptr,a
                           1349 ;	appFHSSNIC.c:126: if (macdata.mac_state != MAC_STATE_NONHOPPING)
   01B1 90 FD 91      [24] 1350 	mov	dptr,#_macdata
   01B4 E0            [24] 1351 	movx	a,@dptr
   01B5 60 13         [24] 1352 	jz	00102$
                           1353 ;	appFHSSNIC.c:128: debug("Cannot call transmit_long while FHSS Hopping or already processing transmit_long!");
   01B7 90 35 CE      [24] 1354 	mov	dptr,#__str_0
   01BA 12 21 70      [24] 1355 	lcall	_debug
                           1356 ;	appFHSSNIC.c:129: debughex(macdata.mac_state);
   01BD 90 FD 91      [24] 1357 	mov	dptr,#_macdata
   01C0 E0            [24] 1358 	movx	a,@dptr
   01C1 F5 82         [12] 1359 	mov	dpl,a
   01C3 12 21 B2      [24] 1360 	lcall	_debughex
                           1361 ;	appFHSSNIC.c:130: return RC_RF_MODE_INCOMPAT;
   01C6 75 82 EF      [24] 1362 	mov	dpl,#0xEF
   01C9 22            [24] 1363 	ret
   01CA                    1364 00102$:
                           1365 ;	appFHSSNIC.c:133: macdata.mac_state = MAC_STATE_LONG_XMIT;
   01CA 90 FD 91      [24] 1366 	mov	dptr,#_macdata
   01CD 74 06         [12] 1367 	mov	a,#0x06
   01CF F0            [24] 1368 	movx	@dptr,a
                           1369 ;	appFHSSNIC.c:134: while (MARCSTATE == MARC_STATE_TX)
   01D0                    1370 00103$:
   01D0 90 DF 3B      [24] 1371 	mov	dptr,#_MARCSTATE
   01D3 E0            [24] 1372 	movx	a,@dptr
   01D4 FF            [12] 1373 	mov	r7,a
   01D5 BF 13 02      [24] 1374 	cjne	r7,#0x13,00164$
   01D8 80 F6         [24] 1375 	sjmp	00103$
   01DA                    1376 00164$:
                           1377 ;	appFHSSNIC.c:139: LED = 0;
   01DA C2 A4         [12] 1378 	clr	_P2_4
                           1379 ;	appFHSSNIC.c:142: rfTxTotalTXLen = len;
   01DC 90 F5 57      [24] 1380 	mov	dptr,#_transmit_long_PARM_2
   01DF E0            [24] 1381 	movx	a,@dptr
   01E0 FE            [12] 1382 	mov	r6,a
   01E1 A3            [24] 1383 	inc	dptr
   01E2 E0            [24] 1384 	movx	a,@dptr
   01E3 FF            [12] 1385 	mov	r7,a
   01E4 90 FD F8      [24] 1386 	mov	dptr,#_rfTxTotalTXLen
   01E7 EE            [12] 1387 	mov	a,r6
   01E8 F0            [24] 1388 	movx	@dptr,a
   01E9 EF            [12] 1389 	mov	a,r7
   01EA A3            [24] 1390 	inc	dptr
   01EB F0            [24] 1391 	movx	@dptr,a
                           1392 ;	appFHSSNIC.c:144: rfTxBufferEnd = MAX_TX_MSGLEN + 1; // add 1 for length byte
   01EC 90 FD F2      [24] 1393 	mov	dptr,#_rfTxBufferEnd
   01EF 74 F1         [12] 1394 	mov	a,#0xF1
   01F1 F0            [24] 1395 	movx	@dptr,a
   01F2 E4            [12] 1396 	clr	a
   01F3 A3            [24] 1397 	inc	dptr
   01F4 F0            [24] 1398 	movx	@dptr,a
                           1399 ;	appFHSSNIC.c:146: rftxbuf = (volatile __xdata u8*)&g_txMsgQueue[0][0];
   01F5 90 FD 88      [24] 1400 	mov	dptr,#_rftxbuf
   01F8 74 72         [12] 1401 	mov	a,#_g_txMsgQueue
   01FA F0            [24] 1402 	movx	@dptr,a
   01FB 74 F3         [12] 1403 	mov	a,#(_g_txMsgQueue >> 8)
   01FD A3            [24] 1404 	inc	dptr
   01FE F0            [24] 1405 	movx	@dptr,a
                           1406 ;	appFHSSNIC.c:147: rfTxRepeatCounter = 0;
   01FF 90 FD F0      [24] 1407 	mov	dptr,#_rfTxRepeatCounter
   0202 E4            [12] 1408 	clr	a
   0203 F0            [24] 1409 	movx	@dptr,a
   0204 E4            [12] 1410 	clr	a
   0205 A3            [24] 1411 	inc	dptr
   0206 F0            [24] 1412 	movx	@dptr,a
                           1413 ;	appFHSSNIC.c:148: rfTxCurBufIdx = macdata.txMsgIdxDone = 0;
   0207 90 FD A3      [24] 1414 	mov	dptr,#(_macdata + 0x0012)
                           1415 ;	appFHSSNIC.c:149: macdata.txMsgIdx = 0;
   020A E4            [12] 1416 	clr	a
   020B F0            [24] 1417 	movx	@dptr,a
   020C 90 FD EC      [24] 1418 	mov	dptr,#_rfTxCurBufIdx
   020F F0            [24] 1419 	movx	@dptr,a
   0210 90 FD A2      [24] 1420 	mov	dptr,#(_macdata + 0x0011)
   0213 F0            [24] 1421 	movx	@dptr,a
                           1422 ;	appFHSSNIC.c:150: rfTxCounter = 1; // don't transmit length byte
   0214 90 FD EE      [24] 1423 	mov	dptr,#_rfTxCounter
   0217 74 01         [12] 1424 	mov	a,#0x01
   0219 F0            [24] 1425 	movx	@dptr,a
   021A E4            [12] 1426 	clr	a
   021B A3            [24] 1427 	inc	dptr
   021C F0            [24] 1428 	movx	@dptr,a
                           1429 ;	appFHSSNIC.c:151: rfTxBufCount = MAX_TX_MSGS;
   021D 90 FD ED      [24] 1430 	mov	dptr,#_rfTxBufCount
   0220 74 02         [12] 1431 	mov	a,#0x02
   0222 F0            [24] 1432 	movx	@dptr,a
                           1433 ;	appFHSSNIC.c:154: MAC_tx(NULL, 0);
   0223 90 F5 5C      [24] 1434 	mov	dptr,#_MAC_tx_PARM_2
   0226 E4            [12] 1435 	clr	a
   0227 F0            [24] 1436 	movx	@dptr,a
   0228 90 00 00      [24] 1437 	mov	dptr,#0x0000
   022B 12 03 45      [24] 1438 	lcall	_MAC_tx
                           1439 ;	appFHSSNIC.c:157: for(countdown = 0 ; countdown < blocks ; ++countdown)
   022E 90 F5 5A      [24] 1440 	mov	dptr,#_transmit_long_buf_1_101
   0231 E0            [24] 1441 	movx	a,@dptr
   0232 FE            [12] 1442 	mov	r6,a
   0233 A3            [24] 1443 	inc	dptr
   0234 E0            [24] 1444 	movx	a,@dptr
   0235 FF            [12] 1445 	mov	r7,a
   0236 90 F5 59      [24] 1446 	mov	dptr,#_transmit_long_PARM_3
   0239 E0            [24] 1447 	movx	a,@dptr
   023A FD            [12] 1448 	mov	r5,a
   023B 7B 00         [12] 1449 	mov	r3,#0x00
   023D 7C 00         [12] 1450 	mov	r4,#0x00
   023F                    1451 00122$:
   023F 8D 01         [24] 1452 	mov	ar1,r5
   0241 7A 00         [12] 1453 	mov	r2,#0x00
   0243 C3            [12] 1454 	clr	c
   0244 EB            [12] 1455 	mov	a,r3
   0245 99            [12] 1456 	subb	a,r1
   0246 EC            [12] 1457 	mov	a,r4
   0247 9A            [12] 1458 	subb	a,r2
   0248 50 54         [24] 1459 	jnc	00108$
                           1460 ;	appFHSSNIC.c:159: err = MAC_tx(buf + (u8) (countdown * MAX_TX_MSGLEN), (u8) MAX_TX_MSGLEN);
   024A 8B 02         [24] 1461 	mov	ar2,r3
   024C EA            [12] 1462 	mov	a,r2
   024D 75 F0 F0      [24] 1463 	mov	b,#0xF0
   0250 A4            [48] 1464 	mul	ab
   0251 2E            [12] 1465 	add	a,r6
   0252 F9            [12] 1466 	mov	r1,a
   0253 E4            [12] 1467 	clr	a
   0254 3F            [12] 1468 	addc	a,r7
   0255 FA            [12] 1469 	mov	r2,a
   0256 90 F5 5C      [24] 1470 	mov	dptr,#_MAC_tx_PARM_2
   0259 74 F0         [12] 1471 	mov	a,#0xF0
   025B F0            [24] 1472 	movx	@dptr,a
   025C 89 82         [24] 1473 	mov	dpl,r1
   025E 8A 83         [24] 1474 	mov	dph,r2
   0260 C0 07         [24] 1475 	push	ar7
   0262 C0 06         [24] 1476 	push	ar6
   0264 C0 05         [24] 1477 	push	ar5
   0266 C0 04         [24] 1478 	push	ar4
   0268 C0 03         [24] 1479 	push	ar3
   026A 12 03 45      [24] 1480 	lcall	_MAC_tx
   026D AA 82         [24] 1481 	mov	r2,dpl
   026F D0 03         [24] 1482 	pop	ar3
   0271 D0 04         [24] 1483 	pop	ar4
   0273 D0 05         [24] 1484 	pop	ar5
   0275 D0 06         [24] 1485 	pop	ar6
   0277 D0 07         [24] 1486 	pop	ar7
                           1487 ;	appFHSSNIC.c:160: if(err)
   0279 EA            [12] 1488 	mov	a,r2
   027A 60 1B         [24] 1489 	jz	00123$
                           1490 ;	appFHSSNIC.c:162: debug("MAC_tx() returned error");
   027C 90 36 20      [24] 1491 	mov	dptr,#__str_1
   027F C0 02         [24] 1492 	push	ar2
   0281 12 21 70      [24] 1493 	lcall	_debug
   0284 D0 02         [24] 1494 	pop	ar2
                           1495 ;	appFHSSNIC.c:163: macdata.mac_state = MAC_STATE_NONHOPPING;
   0286 90 FD 91      [24] 1496 	mov	dptr,#_macdata
   0289 E4            [12] 1497 	clr	a
   028A F0            [24] 1498 	movx	@dptr,a
                           1499 ;	appFHSSNIC.c:164: debughex(err);
   028B 8A 82         [24] 1500 	mov	dpl,r2
   028D C0 02         [24] 1501 	push	ar2
   028F 12 21 B2      [24] 1502 	lcall	_debughex
   0292 D0 02         [24] 1503 	pop	ar2
                           1504 ;	appFHSSNIC.c:165: return err;
   0294 8A 82         [24] 1505 	mov	dpl,r2
   0296 22            [24] 1506 	ret
   0297                    1507 00123$:
                           1508 ;	appFHSSNIC.c:157: for(countdown = 0 ; countdown < blocks ; ++countdown)
   0297 0B            [12] 1509 	inc	r3
   0298 BB 00 A4      [24] 1510 	cjne	r3,#0x00,00122$
   029B 0C            [12] 1511 	inc	r4
   029C 80 A1         [24] 1512 	sjmp	00122$
   029E                    1513 00108$:
                           1514 ;	appFHSSNIC.c:170: if(rfAESMode & AES_CRYPTO_OUT_ENABLE && rfTxTotalTXLen % 16)
   029E 90 FD FB      [24] 1515 	mov	dptr,#_rfAESMode
   02A1 E0            [24] 1516 	movx	a,@dptr
   02A2 FF            [12] 1517 	mov	r7,a
   02A3 30 E3 33      [24] 1518 	jnb	acc.3,00110$
   02A6 90 FD F8      [24] 1519 	mov	dptr,#_rfTxTotalTXLen
   02A9 E0            [24] 1520 	movx	a,@dptr
   02AA FE            [12] 1521 	mov	r6,a
   02AB A3            [24] 1522 	inc	dptr
   02AC E0            [24] 1523 	movx	a,@dptr
   02AD FF            [12] 1524 	mov	r7,a
   02AE EE            [12] 1525 	mov	a,r6
   02AF 54 0F         [12] 1526 	anl	a,#0x0F
   02B1 60 26         [24] 1527 	jz	00110$
                           1528 ;	appFHSSNIC.c:173: rfTxTotalTXLen += 16 - (rfTxTotalTXLen % 16);
   02B3 90 FD F8      [24] 1529 	mov	dptr,#_rfTxTotalTXLen
   02B6 E0            [24] 1530 	movx	a,@dptr
   02B7 FE            [12] 1531 	mov	r6,a
   02B8 A3            [24] 1532 	inc	dptr
   02B9 E0            [24] 1533 	movx	a,@dptr
   02BA 53 06 0F      [24] 1534 	anl	ar6,#0x0F
   02BD 7F 00         [12] 1535 	mov	r7,#0x00
   02BF 74 10         [12] 1536 	mov	a,#0x10
   02C1 C3            [12] 1537 	clr	c
   02C2 9E            [12] 1538 	subb	a,r6
   02C3 FE            [12] 1539 	mov	r6,a
   02C4 E4            [12] 1540 	clr	a
   02C5 9F            [12] 1541 	subb	a,r7
   02C6 FF            [12] 1542 	mov	r7,a
   02C7 90 FD F8      [24] 1543 	mov	dptr,#_rfTxTotalTXLen
   02CA E0            [24] 1544 	movx	a,@dptr
   02CB FC            [12] 1545 	mov	r4,a
   02CC A3            [24] 1546 	inc	dptr
   02CD E0            [24] 1547 	movx	a,@dptr
   02CE FD            [12] 1548 	mov	r5,a
   02CF 90 FD F8      [24] 1549 	mov	dptr,#_rfTxTotalTXLen
   02D2 EE            [12] 1550 	mov	a,r6
   02D3 2C            [12] 1551 	add	a,r4
   02D4 F0            [24] 1552 	movx	@dptr,a
   02D5 EF            [12] 1553 	mov	a,r7
   02D6 3D            [12] 1554 	addc	a,r5
   02D7 A3            [24] 1555 	inc	dptr
   02D8 F0            [24] 1556 	movx	@dptr,a
   02D9                    1557 00110$:
                           1558 ;	appFHSSNIC.c:177: if(rfTxTotalTXLen > RF_MAX_TX_BLOCK)
   02D9 90 FD F8      [24] 1559 	mov	dptr,#_rfTxTotalTXLen
   02DC E0            [24] 1560 	movx	a,@dptr
   02DD FE            [12] 1561 	mov	r6,a
   02DE A3            [24] 1562 	inc	dptr
   02DF E0            [24] 1563 	movx	a,@dptr
   02E0 FF            [12] 1564 	mov	r7,a
   02E1 60 20         [24] 1565 	jz	00113$
                           1566 ;	appFHSSNIC.c:179: PKTLEN = (u8) (rfTxTotalTXLen % 256);
   02E3 90 FD F8      [24] 1567 	mov	dptr,#_rfTxTotalTXLen
   02E6 E0            [24] 1568 	movx	a,@dptr
   02E7 FE            [12] 1569 	mov	r6,a
   02E8 A3            [24] 1570 	inc	dptr
   02E9 E0            [24] 1571 	movx	a,@dptr
   02EA 90 DF 02      [24] 1572 	mov	dptr,#_PKTLEN
   02ED EE            [12] 1573 	mov	a,r6
   02EE F0            [24] 1574 	movx	@dptr,a
                           1575 ;	appFHSSNIC.c:180: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
                           1576 ;	appFHSSNIC.c:181: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
   02EF 90 DF 04      [24] 1577 	mov	dptr,#_PKTCTRL0
   02F2 E0            [24] 1578 	movx	a,@dptr
   02F3 54 FC         [12] 1579 	anl	a,#0xFC
   02F5 F0            [24] 1580 	movx	@dptr,a
   02F6 E0            [24] 1581 	movx	a,@dptr
   02F7 FF            [12] 1582 	mov	r7,a
   02F8 44 02         [12] 1583 	orl	a,#0x02
   02FA F0            [24] 1584 	movx	@dptr,a
                           1585 ;	appFHSSNIC.c:182: rfTxInfMode = 1;
   02FB 90 FD FA      [24] 1586 	mov	dptr,#_rfTxInfMode
   02FE 74 01         [12] 1587 	mov	a,#0x01
   0300 F0            [24] 1588 	movx	@dptr,a
   0301 80 12         [24] 1589 	sjmp	00114$
   0303                    1590 00113$:
                           1591 ;	appFHSSNIC.c:186: PKTLEN = (u8) rfTxTotalTXLen;
   0303 90 FD F8      [24] 1592 	mov	dptr,#_rfTxTotalTXLen
   0306 E0            [24] 1593 	movx	a,@dptr
   0307 FE            [12] 1594 	mov	r6,a
   0308 A3            [24] 1595 	inc	dptr
   0309 E0            [24] 1596 	movx	a,@dptr
   030A FF            [12] 1597 	mov	r7,a
   030B 90 DF 02      [24] 1598 	mov	dptr,#_PKTLEN
   030E EE            [12] 1599 	mov	a,r6
   030F F0            [24] 1600 	movx	@dptr,a
                           1601 ;	appFHSSNIC.c:187: rfTxInfMode = 0;
   0310 90 FD FA      [24] 1602 	mov	dptr,#_rfTxInfMode
   0313 E4            [12] 1603 	clr	a
   0314 F0            [24] 1604 	movx	@dptr,a
   0315                    1605 00114$:
                           1606 ;	appFHSSNIC.c:194: RFST = RFST_STX;
   0315 75 E1 03      [24] 1607 	mov	_RFST,#0x03
                           1608 ;	appFHSSNIC.c:198: while (MARCSTATE != MARC_STATE_TX && --countdown)
   0318 7E 60         [12] 1609 	mov	r6,#0x60
   031A 7F EA         [12] 1610 	mov	r7,#0xEA
   031C                    1611 00116$:
   031C 90 DF 3B      [24] 1612 	mov	dptr,#_MARCSTATE
   031F E0            [24] 1613 	movx	a,@dptr
   0320 FD            [12] 1614 	mov	r5,a
   0321 BD 13 02      [24] 1615 	cjne	r5,#0x13,00171$
   0324 80 09         [24] 1616 	sjmp	00118$
   0326                    1617 00171$:
   0326 1E            [12] 1618 	dec	r6
   0327 BE FF 01      [24] 1619 	cjne	r6,#0xFF,00172$
   032A 1F            [12] 1620 	dec	r7
   032B                    1621 00172$:
   032B EE            [12] 1622 	mov	a,r6
   032C 4F            [12] 1623 	orl	a,r7
   032D 70 ED         [24] 1624 	jnz	00116$
   032F                    1625 00118$:
                           1626 ;	appFHSSNIC.c:203: LED = 1;
   032F D2 A4         [12] 1627 	setb	_P2_4
                           1628 ;	appFHSSNIC.c:204: if (!countdown)
   0331 EE            [12] 1629 	mov	a,r6
   0332 4F            [12] 1630 	orl	a,r7
   0333 70 0C         [24] 1631 	jnz	00120$
                           1632 ;	appFHSSNIC.c:206: lastCode[1] = LCE_RFTX_NEVER_TX;
   0335 90 FD B6      [24] 1633 	mov	dptr,#(_lastCode + 0x0001)
   0338 74 13         [12] 1634 	mov	a,#0x13
   033A F0            [24] 1635 	movx	@dptr,a
                           1636 ;	appFHSSNIC.c:207: debug("never entered TX");
   033B 90 36 38      [24] 1637 	mov	dptr,#__str_2
   033E 12 21 70      [24] 1638 	lcall	_debug
   0341                    1639 00120$:
                           1640 ;	appFHSSNIC.c:210: return RC_NO_ERROR;
   0341 75 82 00      [24] 1641 	mov	dpl,#0x00
   0344 22            [24] 1642 	ret
                           1643 ;------------------------------------------------------------
                           1644 ;Allocation info for local variables in function 'MAC_tx'
                           1645 ;------------------------------------------------------------
                           1646 ;len                       Allocated with name '_MAC_tx_PARM_2'
                           1647 ;msg                       Allocated with name '_MAC_tx_msg_1_112'
                           1648 ;------------------------------------------------------------
                           1649 ;	appFHSSNIC.c:213: __xdata u8 MAC_tx(__xdata u8* __xdata msg, __xdata u8 len)
                           1650 ;	-----------------------------------------
                           1651 ;	 function MAC_tx
                           1652 ;	-----------------------------------------
   0345                    1653 _MAC_tx:
   0345 AF 83         [24] 1654 	mov	r7,dph
   0347 E5 82         [12] 1655 	mov	a,dpl
   0349 90 F5 5D      [24] 1656 	mov	dptr,#_MAC_tx_msg_1_112
   034C F0            [24] 1657 	movx	@dptr,a
   034D EF            [12] 1658 	mov	a,r7
   034E A3            [24] 1659 	inc	dptr
   034F F0            [24] 1660 	movx	@dptr,a
                           1661 ;	appFHSSNIC.c:223: if (len > MAX_TX_MSGLEN)
   0350 90 F5 5C      [24] 1662 	mov	dptr,#_MAC_tx_PARM_2
   0353 E0            [24] 1663 	movx	a,@dptr
   0354 FF            [12] 1664 	mov  r7,a
   0355 24 0F         [12] 1665 	add	a,#0xff - 0xF0
   0357 50 0A         [24] 1666 	jnc	00102$
                           1667 ;	appFHSSNIC.c:225: debug("FHSSxmit message too long");
   0359 90 36 49      [24] 1668 	mov	dptr,#__str_3
   035C 12 21 70      [24] 1669 	lcall	_debug
                           1670 ;	appFHSSNIC.c:226: return RC_ERR_BUFFER_SIZE_EXCEEDED;
   035F 75 82 FF      [24] 1671 	mov	dpl,#0xFF
   0362 22            [24] 1672 	ret
   0363                    1673 00102$:
                           1674 ;	appFHSSNIC.c:230: if(len == 0)
   0363 EF            [12] 1675 	mov	a,r7
   0364 70 3E         [24] 1676 	jnz	00105$
                           1677 ;	appFHSSNIC.c:233: for(macdata.txMsgIdx = 0 ; macdata.txMsgIdx < rfTxBufCount ; ++macdata.txMsgIdx)
   0366 90 FD A2      [24] 1678 	mov	dptr,#(_macdata + 0x0011)
   0369 E4            [12] 1679 	clr	a
   036A F0            [24] 1680 	movx	@dptr,a
   036B                    1681 00122$:
   036B 90 FD A2      [24] 1682 	mov	dptr,#(_macdata + 0x0011)
   036E E0            [24] 1683 	movx	a,@dptr
   036F FE            [12] 1684 	mov	r6,a
   0370 90 FD ED      [24] 1685 	mov	dptr,#_rfTxBufCount
   0373 E0            [24] 1686 	movx	a,@dptr
   0374 FD            [12] 1687 	mov	r5,a
   0375 C3            [12] 1688 	clr	c
   0376 EE            [12] 1689 	mov	a,r6
   0377 9D            [12] 1690 	subb	a,r5
   0378 50 21         [24] 1691 	jnc	00103$
                           1692 ;	appFHSSNIC.c:235: g_txMsgQueue[macdata.txMsgIdx][0] = BUFFER_AVAILABLE;
   037A 90 FD A2      [24] 1693 	mov	dptr,#(_macdata + 0x0011)
   037D E0            [24] 1694 	movx	a,@dptr
   037E 75 F0 F1      [24] 1695 	mov	b,#0xF1
   0381 A4            [48] 1696 	mul	ab
   0382 24 72         [12] 1697 	add	a,#_g_txMsgQueue
   0384 F5 82         [12] 1698 	mov	dpl,a
   0386 74 F3         [12] 1699 	mov	a,#(_g_txMsgQueue >> 8)
   0388 35 F0         [12] 1700 	addc	a,b
   038A F5 83         [12] 1701 	mov	dph,a
   038C E4            [12] 1702 	clr	a
   038D F0            [24] 1703 	movx	@dptr,a
                           1704 ;	appFHSSNIC.c:233: for(macdata.txMsgIdx = 0 ; macdata.txMsgIdx < rfTxBufCount ; ++macdata.txMsgIdx)
   038E 90 FD A2      [24] 1705 	mov	dptr,#(_macdata + 0x0011)
   0391 E0            [24] 1706 	movx	a,@dptr
   0392 FE            [12] 1707 	mov	r6,a
   0393 0E            [12] 1708 	inc	r6
   0394 90 FD A2      [24] 1709 	mov	dptr,#(_macdata + 0x0011)
   0397 EE            [12] 1710 	mov	a,r6
   0398 F0            [24] 1711 	movx	@dptr,a
   0399 80 D0         [24] 1712 	sjmp	00122$
   039B                    1713 00103$:
                           1714 ;	appFHSSNIC.c:237: macdata.txMsgIdx = 0;
   039B 90 FD A2      [24] 1715 	mov	dptr,#(_macdata + 0x0011)
   039E E4            [12] 1716 	clr	a
   039F F0            [24] 1717 	movx	@dptr,a
                           1718 ;	appFHSSNIC.c:238: return RC_NO_ERROR;
   03A0 75 82 00      [24] 1719 	mov	dpl,#0x00
   03A3 22            [24] 1720 	ret
   03A4                    1721 00105$:
                           1722 ;	appFHSSNIC.c:241: switch (macdata.mac_state)
   03A4 90 FD 91      [24] 1723 	mov	dptr,#_macdata
   03A7 E0            [24] 1724 	movx	a,@dptr
   03A8 FE            [12] 1725 	mov	r6,a
   03A9 60 1D         [24] 1726 	jz	00110$
   03AB BE 06 1E      [24] 1727 	cjne	r6,#0x06,00111$
                           1728 ;	appFHSSNIC.c:244: if (macdata.txMsgIdx && MARCSTATE != MARC_STATE_TX)
   03AE 90 FD A2      [24] 1729 	mov	dptr,#(_macdata + 0x0011)
   03B1 E0            [24] 1730 	movx	a,@dptr
   03B2 60 18         [24] 1731 	jz	00111$
   03B4 90 DF 3B      [24] 1732 	mov	dptr,#_MARCSTATE
   03B7 E0            [24] 1733 	movx	a,@dptr
   03B8 FE            [12] 1734 	mov	r6,a
   03B9 BE 13 02      [24] 1735 	cjne	r6,#0x13,00169$
   03BC 80 0E         [24] 1736 	sjmp	00111$
   03BE                    1737 00169$:
                           1738 ;	appFHSSNIC.c:246: macdata.mac_state = MAC_STATE_LONG_XMIT_FAIL;
   03BE 90 FD 91      [24] 1739 	mov	dptr,#_macdata
   03C1 74 07         [12] 1740 	mov	a,#0x07
   03C3 F0            [24] 1741 	movx	@dptr,a
                           1742 ;	appFHSSNIC.c:247: return RC_TX_ERROR;
   03C4 75 82 ED      [24] 1743 	mov	dpl,#0xED
   03C7 22            [24] 1744 	ret
                           1745 ;	appFHSSNIC.c:250: case MAC_STATE_NONHOPPING:
   03C8                    1746 00110$:
                           1747 ;	appFHSSNIC.c:251: return RC_TX_ERROR;
   03C8 75 82 ED      [24] 1748 	mov	dpl,#0xED
   03CB 22            [24] 1749 	ret
                           1750 ;	appFHSSNIC.c:252: }
   03CC                    1751 00111$:
                           1752 ;	appFHSSNIC.c:253: if (g_txMsgQueue[macdata.txMsgIdx][0] != BUFFER_AVAILABLE)
   03CC 90 FD A2      [24] 1753 	mov	dptr,#(_macdata + 0x0011)
   03CF E0            [24] 1754 	movx	a,@dptr
   03D0 75 F0 F1      [24] 1755 	mov	b,#0xF1
   03D3 A4            [48] 1756 	mul	ab
   03D4 24 72         [12] 1757 	add	a,#_g_txMsgQueue
   03D6 FD            [12] 1758 	mov	r5,a
   03D7 74 F3         [12] 1759 	mov	a,#(_g_txMsgQueue >> 8)
   03D9 35 F0         [12] 1760 	addc	a,b
   03DB FE            [12] 1761 	mov	r6,a
   03DC 8D 82         [24] 1762 	mov	dpl,r5
   03DE 8E 83         [24] 1763 	mov	dph,r6
   03E0 E0            [24] 1764 	movx	a,@dptr
   03E1 60 0A         [24] 1765 	jz	00113$
                           1766 ;	appFHSSNIC.c:256: lastCode[1] = LCE_RF_MULTI_BUFFER_NOT_FREE;
   03E3 90 FD B6      [24] 1767 	mov	dptr,#(_lastCode + 0x0001)
   03E6 74 18         [12] 1768 	mov	a,#0x18
   03E8 F0            [24] 1769 	movx	@dptr,a
                           1770 ;	appFHSSNIC.c:257: return RC_ERR_BUFFER_NOT_AVAILABLE;
   03E9 75 82 FE      [24] 1771 	mov	dpl,#0xFE
   03EC 22            [24] 1772 	ret
   03ED                    1773 00113$:
                           1774 ;	appFHSSNIC.c:261: g_txMsgQueue[macdata.txMsgIdx][0] = BUFFER_FILLING;
   03ED 8D 82         [24] 1775 	mov	dpl,r5
   03EF 8E 83         [24] 1776 	mov	dph,r6
   03F1 74 FF         [12] 1777 	mov	a,#0xFF
   03F3 F0            [24] 1778 	movx	@dptr,a
                           1779 ;	appFHSSNIC.c:263: memcpy(&g_txMsgQueue[macdata.txMsgIdx][1], msg, len);
   03F4 90 FD A2      [24] 1780 	mov	dptr,#(_macdata + 0x0011)
   03F7 E0            [24] 1781 	movx	a,@dptr
   03F8 75 F0 F1      [24] 1782 	mov	b,#0xF1
   03FB A4            [48] 1783 	mul	ab
   03FC 24 72         [12] 1784 	add	a,#_g_txMsgQueue
   03FE FD            [12] 1785 	mov	r5,a
   03FF 74 F3         [12] 1786 	mov	a,#(_g_txMsgQueue >> 8)
   0401 35 F0         [12] 1787 	addc	a,b
   0403 FE            [12] 1788 	mov	r6,a
   0404 0D            [12] 1789 	inc	r5
   0405 BD 00 01      [24] 1790 	cjne	r5,#0x00,00171$
   0408 0E            [12] 1791 	inc	r6
   0409                    1792 00171$:
   0409 7C 00         [12] 1793 	mov	r4,#0x00
   040B 90 F5 5D      [24] 1794 	mov	dptr,#_MAC_tx_msg_1_112
   040E E0            [24] 1795 	movx	a,@dptr
   040F FA            [12] 1796 	mov	r2,a
   0410 A3            [24] 1797 	inc	dptr
   0411 E0            [24] 1798 	movx	a,@dptr
   0412 FB            [12] 1799 	mov	r3,a
   0413 8A 14         [24] 1800 	mov	_memcpy_PARM_2,r2
   0415 8B 15         [24] 1801 	mov	(_memcpy_PARM_2 + 1),r3
   0417 75 16 00      [24] 1802 	mov	(_memcpy_PARM_2 + 2),#0x00
   041A 8F 03         [24] 1803 	mov	ar3,r7
   041C 7F 00         [12] 1804 	mov	r7,#0x00
   041E 8B 17         [24] 1805 	mov	_memcpy_PARM_3,r3
   0420 8F 18         [24] 1806 	mov	(_memcpy_PARM_3 + 1),r7
   0422 8D 82         [24] 1807 	mov	dpl,r5
   0424 8E 83         [24] 1808 	mov	dph,r6
   0426 8C F0         [24] 1809 	mov	b,r4
   0428 C0 07         [24] 1810 	push	ar7
   042A C0 03         [24] 1811 	push	ar3
   042C 12 33 33      [24] 1812 	lcall	_memcpy
   042F D0 03         [24] 1813 	pop	ar3
   0431 D0 07         [24] 1814 	pop	ar7
                           1815 ;	appFHSSNIC.c:268: if(rfAESMode & AES_CRYPTO_OUT_ENABLE)
   0433 90 FD FB      [24] 1816 	mov	dptr,#_rfAESMode
   0436 E0            [24] 1817 	movx	a,@dptr
   0437 FE            [12] 1818 	mov	r6,a
   0438 20 E3 03      [24] 1819 	jb	acc.3,00172$
   043B 02 04 EE      [24] 1820 	ljmp	00118$
   043E                    1821 00172$:
                           1822 ;	appFHSSNIC.c:270: len = padAES(&g_txMsgQueue[macdata.txMsgIdx][1], len);
   043E 90 FD A2      [24] 1823 	mov	dptr,#(_macdata + 0x0011)
   0441 E0            [24] 1824 	movx	a,@dptr
   0442 75 F0 F1      [24] 1825 	mov	b,#0xF1
   0445 A4            [48] 1826 	mul	ab
   0446 24 72         [12] 1827 	add	a,#_g_txMsgQueue
   0448 FD            [12] 1828 	mov	r5,a
   0449 74 F3         [12] 1829 	mov	a,#(_g_txMsgQueue >> 8)
   044B 35 F0         [12] 1830 	addc	a,b
   044D FE            [12] 1831 	mov	r6,a
   044E 0D            [12] 1832 	inc	r5
   044F BD 00 01      [24] 1833 	cjne	r5,#0x00,00173$
   0452 0E            [12] 1834 	inc	r6
   0453                    1835 00173$:
   0453 90 FD CD      [24] 1836 	mov	dptr,#_padAES_PARM_2
   0456 EB            [12] 1837 	mov	a,r3
   0457 F0            [24] 1838 	movx	@dptr,a
   0458 EF            [12] 1839 	mov	a,r7
   0459 A3            [24] 1840 	inc	dptr
   045A F0            [24] 1841 	movx	@dptr,a
   045B 8D 82         [24] 1842 	mov	dpl,r5
   045D 8E 83         [24] 1843 	mov	dph,r6
   045F 12 30 51      [24] 1844 	lcall	_padAES
   0462 AE 82         [24] 1845 	mov	r6,dpl
   0464 90 F5 5C      [24] 1846 	mov	dptr,#_MAC_tx_PARM_2
   0467 EE            [12] 1847 	mov	a,r6
   0468 F0            [24] 1848 	movx	@dptr,a
                           1849 ;	appFHSSNIC.c:271: if((rfAESMode & AES_CRYPTO_OUT_TYPE) == AES_CRYPTO_OUT_ENCRYPT)
   0469 90 FD FB      [24] 1850 	mov	dptr,#_rfAESMode
   046C E0            [24] 1851 	movx	a,@dptr
   046D FF            [12] 1852 	mov	r7,a
   046E 53 07 04      [24] 1853 	anl	ar7,#0x04
   0471 BF 04 3F      [24] 1854 	cjne	r7,#0x04,00115$
                           1855 ;	appFHSSNIC.c:272: encAES(&g_txMsgQueue[macdata.txMsgIdx][1], &g_txMsgQueue[macdata.txMsgIdx][1], len, (rfAESMode & AES_CRYPTO_MODE));
   0474 90 FD A2      [24] 1856 	mov	dptr,#(_macdata + 0x0011)
   0477 E0            [24] 1857 	movx	a,@dptr
   0478 75 F0 F1      [24] 1858 	mov	b,#0xF1
   047B A4            [48] 1859 	mul	ab
   047C 24 72         [12] 1860 	add	a,#_g_txMsgQueue
   047E FD            [12] 1861 	mov	r5,a
   047F 74 F3         [12] 1862 	mov	a,#(_g_txMsgQueue >> 8)
   0481 35 F0         [12] 1863 	addc	a,b
   0483 FF            [12] 1864 	mov	r7,a
   0484 0D            [12] 1865 	inc	r5
   0485 BD 00 01      [24] 1866 	cjne	r5,#0x00,00176$
   0488 0F            [12] 1867 	inc	r7
   0489                    1868 00176$:
   0489 8E 03         [24] 1869 	mov	ar3,r6
   048B 7C 00         [12] 1870 	mov	r4,#0x00
   048D 90 FD FB      [24] 1871 	mov	dptr,#_rfAESMode
   0490 E0            [24] 1872 	movx	a,@dptr
   0491 FA            [12] 1873 	mov	r2,a
   0492 53 02 F0      [24] 1874 	anl	ar2,#0xF0
   0495 90 FD D1      [24] 1875 	mov	dptr,#_encAES_PARM_2
   0498 ED            [12] 1876 	mov	a,r5
   0499 F0            [24] 1877 	movx	@dptr,a
   049A EF            [12] 1878 	mov	a,r7
   049B A3            [24] 1879 	inc	dptr
   049C F0            [24] 1880 	movx	@dptr,a
   049D 90 FD D3      [24] 1881 	mov	dptr,#_encAES_PARM_3
   04A0 EB            [12] 1882 	mov	a,r3
   04A1 F0            [24] 1883 	movx	@dptr,a
   04A2 EC            [12] 1884 	mov	a,r4
   04A3 A3            [24] 1885 	inc	dptr
   04A4 F0            [24] 1886 	movx	@dptr,a
   04A5 90 FD D5      [24] 1887 	mov	dptr,#_encAES_PARM_4
   04A8 EA            [12] 1888 	mov	a,r2
   04A9 F0            [24] 1889 	movx	@dptr,a
   04AA 8D 82         [24] 1890 	mov	dpl,r5
   04AC 8F 83         [24] 1891 	mov	dph,r7
   04AE 12 30 8B      [24] 1892 	lcall	_encAES
   04B1 80 3B         [24] 1893 	sjmp	00118$
   04B3                    1894 00115$:
                           1895 ;	appFHSSNIC.c:274: decAES(&g_txMsgQueue[macdata.txMsgIdx][1], &g_txMsgQueue[macdata.txMsgIdx][1], len, (rfAESMode & AES_CRYPTO_MODE));
   04B3 90 FD A2      [24] 1896 	mov	dptr,#(_macdata + 0x0011)
   04B6 E0            [24] 1897 	movx	a,@dptr
   04B7 75 F0 F1      [24] 1898 	mov	b,#0xF1
   04BA A4            [48] 1899 	mul	ab
   04BB 24 72         [12] 1900 	add	a,#_g_txMsgQueue
   04BD FD            [12] 1901 	mov	r5,a
   04BE 74 F3         [12] 1902 	mov	a,#(_g_txMsgQueue >> 8)
   04C0 35 F0         [12] 1903 	addc	a,b
   04C2 FF            [12] 1904 	mov	r7,a
   04C3 0D            [12] 1905 	inc	r5
   04C4 BD 00 01      [24] 1906 	cjne	r5,#0x00,00177$
   04C7 0F            [12] 1907 	inc	r7
   04C8                    1908 00177$:
   04C8 7C 00         [12] 1909 	mov	r4,#0x00
   04CA 90 FD FB      [24] 1910 	mov	dptr,#_rfAESMode
   04CD E0            [24] 1911 	movx	a,@dptr
   04CE FB            [12] 1912 	mov	r3,a
   04CF 53 03 F0      [24] 1913 	anl	ar3,#0xF0
   04D2 90 FD D8      [24] 1914 	mov	dptr,#_decAES_PARM_2
   04D5 ED            [12] 1915 	mov	a,r5
   04D6 F0            [24] 1916 	movx	@dptr,a
   04D7 EF            [12] 1917 	mov	a,r7
   04D8 A3            [24] 1918 	inc	dptr
   04D9 F0            [24] 1919 	movx	@dptr,a
   04DA 90 FD DA      [24] 1920 	mov	dptr,#_decAES_PARM_3
   04DD EE            [12] 1921 	mov	a,r6
   04DE F0            [24] 1922 	movx	@dptr,a
   04DF EC            [12] 1923 	mov	a,r4
   04E0 A3            [24] 1924 	inc	dptr
   04E1 F0            [24] 1925 	movx	@dptr,a
   04E2 90 FD DC      [24] 1926 	mov	dptr,#_decAES_PARM_4
   04E5 EB            [12] 1927 	mov	a,r3
   04E6 F0            [24] 1928 	movx	@dptr,a
   04E7 8D 82         [24] 1929 	mov	dpl,r5
   04E9 8F 83         [24] 1930 	mov	dph,r7
   04EB 12 30 D4      [24] 1931 	lcall	_decAES
   04EE                    1932 00118$:
                           1933 ;	appFHSSNIC.c:277: g_txMsgQueue[macdata.txMsgIdx][0] = len;
   04EE 90 FD A2      [24] 1934 	mov	dptr,#(_macdata + 0x0011)
   04F1 E0            [24] 1935 	movx	a,@dptr
   04F2 75 F0 F1      [24] 1936 	mov	b,#0xF1
   04F5 A4            [48] 1937 	mul	ab
   04F6 24 72         [12] 1938 	add	a,#_g_txMsgQueue
   04F8 FE            [12] 1939 	mov	r6,a
   04F9 74 F3         [12] 1940 	mov	a,#(_g_txMsgQueue >> 8)
   04FB 35 F0         [12] 1941 	addc	a,b
   04FD FF            [12] 1942 	mov	r7,a
   04FE 90 F5 5C      [24] 1943 	mov	dptr,#_MAC_tx_PARM_2
   0501 E0            [24] 1944 	movx	a,@dptr
   0502 FD            [12] 1945 	mov	r5,a
   0503 8E 82         [24] 1946 	mov	dpl,r6
   0505 8F 83         [24] 1947 	mov	dph,r7
   0507 F0            [24] 1948 	movx	@dptr,a
                           1949 ;	appFHSSNIC.c:284: if (++macdata.txMsgIdx == rfTxBufCount)
   0508 90 FD A2      [24] 1950 	mov	dptr,#(_macdata + 0x0011)
   050B E0            [24] 1951 	movx	a,@dptr
   050C FF            [12] 1952 	mov	r7,a
   050D 0F            [12] 1953 	inc	r7
   050E 90 FD A2      [24] 1954 	mov	dptr,#(_macdata + 0x0011)
   0511 EF            [12] 1955 	mov	a,r7
   0512 F0            [24] 1956 	movx	@dptr,a
   0513 90 FD ED      [24] 1957 	mov	dptr,#_rfTxBufCount
   0516 E0            [24] 1958 	movx	a,@dptr
   0517 FE            [12] 1959 	mov	r6,a
   0518 EF            [12] 1960 	mov	a,r7
   0519 B5 06 05      [24] 1961 	cjne	a,ar6,00120$
                           1962 ;	appFHSSNIC.c:286: macdata.txMsgIdx = 0;
   051C 90 FD A2      [24] 1963 	mov	dptr,#(_macdata + 0x0011)
   051F E4            [12] 1964 	clr	a
   0520 F0            [24] 1965 	movx	@dptr,a
   0521                    1966 00120$:
                           1967 ;	appFHSSNIC.c:289: return RC_NO_ERROR;
   0521 75 82 00      [24] 1968 	mov	dpl,#0x00
   0524 22            [24] 1969 	ret
                           1970 ;------------------------------------------------------------
                           1971 ;Allocation info for local variables in function 'MAC_sync'
                           1972 ;------------------------------------------------------------
                           1973 ;CellID                    Allocated with name '_MAC_sync_CellID_1_122'
                           1974 ;------------------------------------------------------------
                           1975 ;	appFHSSNIC.c:292: void MAC_sync(__xdata u16 CellID)
                           1976 ;	-----------------------------------------
                           1977 ;	 function MAC_sync
                           1978 ;	-----------------------------------------
   0525                    1979 _MAC_sync:
   0525 AF 83         [24] 1980 	mov	r7,dph
   0527 E5 82         [12] 1981 	mov	a,dpl
   0529 90 F5 5F      [24] 1982 	mov	dptr,#_MAC_sync_CellID_1_122
   052C F0            [24] 1983 	movx	@dptr,a
   052D EF            [12] 1984 	mov	a,r7
   052E A3            [24] 1985 	inc	dptr
   052F F0            [24] 1986 	movx	@dptr,a
                           1987 ;	appFHSSNIC.c:300: if (macdata.mac_state != MAC_STATE_NONHOPPING && macdata.mac_state != MAC_STATE_DISCOVERY)
   0530 90 FD 91      [24] 1988 	mov	dptr,#_macdata
   0533 E0            [24] 1989 	movx	a,@dptr
   0534 FF            [12] 1990 	mov	r7,a
   0535 60 14         [24] 1991 	jz	00102$
   0537 BF 01 02      [24] 1992 	cjne	r7,#0x01,00133$
   053A 80 0F         [24] 1993 	sjmp	00102$
   053C                    1994 00133$:
                           1995 ;	appFHSSNIC.c:302: debug("FHSS state entering SYNCHING from wrong state");
   053C 90 36 63      [24] 1996 	mov	dptr,#__str_4
   053F 12 21 70      [24] 1997 	lcall	_debug
                           1998 ;	appFHSSNIC.c:303: debughex(macdata.mac_state);
   0542 90 FD 91      [24] 1999 	mov	dptr,#_macdata
   0545 E0            [24] 2000 	movx	a,@dptr
   0546 F5 82         [12] 2001 	mov	dpl,a
   0548 12 21 B2      [24] 2002 	lcall	_debughex
   054B                    2003 00102$:
                           2004 ;	appFHSSNIC.c:307: stop_hopping();
   054B 12 01 9E      [24] 2005 	lcall	_stop_hopping
                           2006 ;	appFHSSNIC.c:310: macdata.curChanIdx = 0;
   054E 90 FD 9A      [24] 2007 	mov	dptr,#(_macdata + 0x0009)
   0551 E4            [12] 2008 	clr	a
   0552 F0            [24] 2009 	movx	@dptr,a
   0553 E4            [12] 2010 	clr	a
   0554 A3            [24] 2011 	inc	dptr
   0555 F0            [24] 2012 	movx	@dptr,a
                           2013 ;	appFHSSNIC.c:311: while (1)
   0556                    2014 00110$:
                           2015 ;	appFHSSNIC.c:313: MAC_set_chanidx(macdata.curChanIdx);
   0556 90 FD 9A      [24] 2016 	mov	dptr,#(_macdata + 0x0009)
   0559 E0            [24] 2017 	movx	a,@dptr
   055A FE            [12] 2018 	mov	r6,a
   055B A3            [24] 2019 	inc	dptr
   055C E0            [24] 2020 	movx	a,@dptr
   055D FF            [12] 2021 	mov	r7,a
   055E 8E 82         [24] 2022 	mov	dpl,r6
   0560 8F 83         [24] 2023 	mov	dph,r7
   0562 12 06 29      [24] 2024 	lcall	_MAC_set_chanidx
                           2025 ;	appFHSSNIC.c:314: while (MARCSTATE != MARC_STATE_RX)
   0565                    2026 00104$:
   0565 90 DF 3B      [24] 2027 	mov	dptr,#_MARCSTATE
   0568 E0            [24] 2028 	movx	a,@dptr
   0569 FF            [12] 2029 	mov	r7,a
   056A BF 0D F8      [24] 2030 	cjne	r7,#0x0D,00104$
                           2031 ;	appFHSSNIC.c:316: if ((RSSI&0x7f) < 0x60)
   056D 90 DF 3A      [24] 2032 	mov	dptr,#_RSSI
   0570 E0            [24] 2033 	movx	a,@dptr
   0571 FF            [12] 2034 	mov	r7,a
   0572 53 07 7F      [24] 2035 	anl	ar7,#0x7F
   0575 BF 60 00      [24] 2036 	cjne	r7,#0x60,00136$
   0578                    2037 00136$:
   0578 40 27         [24] 2038 	jc	00111$
                           2039 ;	appFHSSNIC.c:319: macdata.curChanIdx++;
   057A 90 FD 9A      [24] 2040 	mov	dptr,#(_macdata + 0x0009)
   057D E0            [24] 2041 	movx	a,@dptr
   057E FE            [12] 2042 	mov	r6,a
   057F A3            [24] 2043 	inc	dptr
   0580 E0            [24] 2044 	movx	a,@dptr
   0581 FF            [12] 2045 	mov	r7,a
   0582 0E            [12] 2046 	inc	r6
   0583 BE 00 01      [24] 2047 	cjne	r6,#0x00,00138$
   0586 0F            [12] 2048 	inc	r7
   0587                    2049 00138$:
   0587 90 FD 9A      [24] 2050 	mov	dptr,#(_macdata + 0x0009)
   058A EE            [12] 2051 	mov	a,r6
   058B F0            [24] 2052 	movx	@dptr,a
   058C EF            [12] 2053 	mov	a,r7
   058D A3            [24] 2054 	inc	dptr
   058E F0            [24] 2055 	movx	@dptr,a
                           2056 ;	appFHSSNIC.c:320: blink(10,10);
   058F D2 A4         [12] 2057 	setb	_P2_4
   0591 90 00 0A      [24] 2058 	mov	dptr,#0x000A
   0594 12 2D 4B      [24] 2059 	lcall	_sleepMillis
   0597 C2 A4         [12] 2060 	clr	_P2_4
   0599 90 00 0A      [24] 2061 	mov	dptr,#0x000A
   059C 12 2D 4B      [24] 2062 	lcall	_sleepMillis
   059F 80 B5         [24] 2063 	sjmp	00110$
   05A1                    2064 00111$:
                           2065 ;	appFHSSNIC.c:324: macdata.mac_state = MAC_STATE_SYNCHING;
   05A1 90 FD 91      [24] 2066 	mov	dptr,#_macdata
   05A4 74 02         [12] 2067 	mov	a,#0x02
   05A6 F0            [24] 2068 	movx	@dptr,a
                           2069 ;	appFHSSNIC.c:327: macdata.tLastStateChange = clock;
   05A7 90 FD B7      [24] 2070 	mov	dptr,#_clock
   05AA E0            [24] 2071 	movx	a,@dptr
   05AB FC            [12] 2072 	mov	r4,a
   05AC A3            [24] 2073 	inc	dptr
   05AD E0            [24] 2074 	movx	a,@dptr
   05AE FD            [12] 2075 	mov	r5,a
   05AF A3            [24] 2076 	inc	dptr
   05B0 E0            [24] 2077 	movx	a,@dptr
   05B1 A3            [24] 2078 	inc	dptr
   05B2 E0            [24] 2079 	movx	a,@dptr
   05B3 90 FD 9C      [24] 2080 	mov	dptr,#(_macdata + 0x000b)
   05B6 EC            [12] 2081 	mov	a,r4
   05B7 F0            [24] 2082 	movx	@dptr,a
   05B8 ED            [12] 2083 	mov	a,r5
   05B9 A3            [24] 2084 	inc	dptr
   05BA F0            [24] 2085 	movx	@dptr,a
                           2086 ;	appFHSSNIC.c:330: macdata.desperatelySeeking = CellID;
   05BB 90 F5 5F      [24] 2087 	mov	dptr,#_MAC_sync_CellID_1_122
   05BE E0            [24] 2088 	movx	a,@dptr
   05BF FE            [12] 2089 	mov	r6,a
   05C0 A3            [24] 2090 	inc	dptr
   05C1 E0            [24] 2091 	movx	a,@dptr
   05C2 FF            [12] 2092 	mov	r7,a
   05C3 90 FD A0      [24] 2093 	mov	dptr,#(_macdata + 0x000f)
   05C6 EE            [12] 2094 	mov	a,r6
   05C7 F0            [24] 2095 	movx	@dptr,a
   05C8 EF            [12] 2096 	mov	a,r7
   05C9 A3            [24] 2097 	inc	dptr
   05CA F0            [24] 2098 	movx	@dptr,a
   05CB 22            [24] 2099 	ret
                           2100 ;------------------------------------------------------------
                           2101 ;Allocation info for local variables in function 'MAC_stop_sync'
                           2102 ;------------------------------------------------------------
                           2103 ;	appFHSSNIC.c:335: void MAC_stop_sync()
                           2104 ;	-----------------------------------------
                           2105 ;	 function MAC_stop_sync
                           2106 ;	-----------------------------------------
   05CC                    2107 _MAC_stop_sync:
                           2108 ;	appFHSSNIC.c:338: macdata.mac_state = MAC_STATE_NONHOPPING;
   05CC 90 FD 91      [24] 2109 	mov	dptr,#_macdata
   05CF E4            [12] 2110 	clr	a
   05D0 F0            [24] 2111 	movx	@dptr,a
                           2112 ;	appFHSSNIC.c:339: macdata.tLastStateChange = clock;
   05D1 90 FD B7      [24] 2113 	mov	dptr,#_clock
   05D4 E0            [24] 2114 	movx	a,@dptr
   05D5 FC            [12] 2115 	mov	r4,a
   05D6 A3            [24] 2116 	inc	dptr
   05D7 E0            [24] 2117 	movx	a,@dptr
   05D8 FD            [12] 2118 	mov	r5,a
   05D9 A3            [24] 2119 	inc	dptr
   05DA E0            [24] 2120 	movx	a,@dptr
   05DB A3            [24] 2121 	inc	dptr
   05DC E0            [24] 2122 	movx	a,@dptr
   05DD 90 FD 9C      [24] 2123 	mov	dptr,#(_macdata + 0x000b)
   05E0 EC            [12] 2124 	mov	a,r4
   05E1 F0            [24] 2125 	movx	@dptr,a
   05E2 ED            [12] 2126 	mov	a,r5
   05E3 A3            [24] 2127 	inc	dptr
   05E4 F0            [24] 2128 	movx	@dptr,a
   05E5 22            [24] 2129 	ret
                           2130 ;------------------------------------------------------------
                           2131 ;Allocation info for local variables in function 'MAC_become_master'
                           2132 ;------------------------------------------------------------
                           2133 ;	appFHSSNIC.c:343: void MAC_become_master()
                           2134 ;	-----------------------------------------
                           2135 ;	 function MAC_become_master
                           2136 ;	-----------------------------------------
   05E6                    2137 _MAC_become_master:
                           2138 ;	appFHSSNIC.c:346: macdata.mac_state = MAC_STATE_SYNC_MASTER;
   05E6 90 FD 91      [24] 2139 	mov	dptr,#_macdata
   05E9 74 04         [12] 2140 	mov	a,#0x04
   05EB F0            [24] 2141 	movx	@dptr,a
                           2142 ;	appFHSSNIC.c:347: macdata.tLastStateChange = clock;
   05EC 90 FD B7      [24] 2143 	mov	dptr,#_clock
   05EF E0            [24] 2144 	movx	a,@dptr
   05F0 FC            [12] 2145 	mov	r4,a
   05F1 A3            [24] 2146 	inc	dptr
   05F2 E0            [24] 2147 	movx	a,@dptr
   05F3 FD            [12] 2148 	mov	r5,a
   05F4 A3            [24] 2149 	inc	dptr
   05F5 E0            [24] 2150 	movx	a,@dptr
   05F6 A3            [24] 2151 	inc	dptr
   05F7 E0            [24] 2152 	movx	a,@dptr
   05F8 90 FD 9C      [24] 2153 	mov	dptr,#(_macdata + 0x000b)
   05FB EC            [12] 2154 	mov	a,r4
   05FC F0            [24] 2155 	movx	@dptr,a
   05FD ED            [12] 2156 	mov	a,r5
   05FE A3            [24] 2157 	inc	dptr
   05FF F0            [24] 2158 	movx	@dptr,a
   0600 22            [24] 2159 	ret
                           2160 ;------------------------------------------------------------
                           2161 ;Allocation info for local variables in function 'MAC_do_Master_scanny_thingy'
                           2162 ;------------------------------------------------------------
                           2163 ;	appFHSSNIC.c:351: void MAC_do_Master_scanny_thingy()
                           2164 ;	-----------------------------------------
                           2165 ;	 function MAC_do_Master_scanny_thingy
                           2166 ;	-----------------------------------------
   0601                    2167 _MAC_do_Master_scanny_thingy:
                           2168 ;	appFHSSNIC.c:353: macdata.mac_state = MAC_STATE_SYNCINGMASTER;
   0601 90 FD 91      [24] 2169 	mov	dptr,#_macdata
   0604 74 05         [12] 2170 	mov	a,#0x05
   0606 F0            [24] 2171 	movx	@dptr,a
                           2172 ;	appFHSSNIC.c:354: macdata.synched_chans = 0;
   0607 90 FD A4      [24] 2173 	mov	dptr,#(_macdata + 0x0013)
   060A E4            [12] 2174 	clr	a
   060B F0            [24] 2175 	movx	@dptr,a
   060C E4            [12] 2176 	clr	a
   060D A3            [24] 2177 	inc	dptr
   060E F0            [24] 2178 	movx	@dptr,a
                           2179 ;	appFHSSNIC.c:355: macdata.tLastStateChange = clock;
   060F 90 FD B7      [24] 2180 	mov	dptr,#_clock
   0612 E0            [24] 2181 	movx	a,@dptr
   0613 FC            [12] 2182 	mov	r4,a
   0614 A3            [24] 2183 	inc	dptr
   0615 E0            [24] 2184 	movx	a,@dptr
   0616 FD            [12] 2185 	mov	r5,a
   0617 A3            [24] 2186 	inc	dptr
   0618 E0            [24] 2187 	movx	a,@dptr
   0619 A3            [24] 2188 	inc	dptr
   061A E0            [24] 2189 	movx	a,@dptr
   061B 90 FD 9C      [24] 2190 	mov	dptr,#(_macdata + 0x000b)
   061E EC            [12] 2191 	mov	a,r4
   061F F0            [24] 2192 	movx	@dptr,a
   0620 ED            [12] 2193 	mov	a,r5
   0621 A3            [24] 2194 	inc	dptr
   0622 F0            [24] 2195 	movx	@dptr,a
                           2196 ;	appFHSSNIC.c:356: begin_hopping(0);
   0623 75 82 00      [24] 2197 	mov	dpl,#0x00
   0626 02 01 85      [24] 2198 	ljmp	_begin_hopping
                           2199 ;------------------------------------------------------------
                           2200 ;Allocation info for local variables in function 'MAC_set_chanidx'
                           2201 ;------------------------------------------------------------
                           2202 ;chanidx                   Allocated with name '_MAC_set_chanidx_chanidx_1_130'
                           2203 ;------------------------------------------------------------
                           2204 ;	appFHSSNIC.c:360: void MAC_set_chanidx(__xdata u16 chanidx)
                           2205 ;	-----------------------------------------
                           2206 ;	 function MAC_set_chanidx
                           2207 ;	-----------------------------------------
   0629                    2208 _MAC_set_chanidx:
   0629 AF 83         [24] 2209 	mov	r7,dph
   062B E5 82         [12] 2210 	mov	a,dpl
   062D 90 F5 61      [24] 2211 	mov	dptr,#_MAC_set_chanidx_chanidx_1_130
   0630 F0            [24] 2212 	movx	@dptr,a
   0631 EF            [12] 2213 	mov	a,r7
   0632 A3            [24] 2214 	inc	dptr
   0633 F0            [24] 2215 	movx	@dptr,a
                           2216 ;	appFHSSNIC.c:362: PHY_set_channel( g_Channels[ chanidx ] );
   0634 90 F5 61      [24] 2217 	mov	dptr,#_MAC_set_chanidx_chanidx_1_130
   0637 E0            [24] 2218 	movx	a,@dptr
   0638 FE            [12] 2219 	mov	r6,a
   0639 A3            [24] 2220 	inc	dptr
   063A E0            [24] 2221 	movx	a,@dptr
   063B FF            [12] 2222 	mov	r7,a
   063C EE            [12] 2223 	mov	a,r6
   063D 24 00         [12] 2224 	add	a,#_g_Channels
   063F F5 82         [12] 2225 	mov	dpl,a
   0641 EF            [12] 2226 	mov	a,r7
   0642 34 F0         [12] 2227 	addc	a,#(_g_Channels >> 8)
   0644 F5 83         [12] 2228 	mov	dph,a
   0646 E0            [24] 2229 	movx	a,@dptr
   0647 FF            [12] 2230 	mov	r7,a
   0648 7E 00         [12] 2231 	mov	r6,#0x00
   064A 8F 82         [24] 2232 	mov	dpl,r7
   064C 8E 83         [24] 2233 	mov	dph,r6
   064E 02 01 04      [24] 2234 	ljmp	_PHY_set_channel
                           2235 ;------------------------------------------------------------
                           2236 ;Allocation info for local variables in function 'MAC_set_NIC_ID'
                           2237 ;------------------------------------------------------------
                           2238 ;NIC_ID                    Allocated with name '_MAC_set_NIC_ID_NIC_ID_1_132'
                           2239 ;------------------------------------------------------------
                           2240 ;	appFHSSNIC.c:366: void MAC_set_NIC_ID(__xdata u16 NIC_ID)
                           2241 ;	-----------------------------------------
                           2242 ;	 function MAC_set_NIC_ID
                           2243 ;	-----------------------------------------
   0651                    2244 _MAC_set_NIC_ID:
   0651 AF 83         [24] 2245 	mov	r7,dph
   0653 E5 82         [12] 2246 	mov	a,dpl
   0655 90 F5 63      [24] 2247 	mov	dptr,#_MAC_set_NIC_ID_NIC_ID_1_132
   0658 F0            [24] 2248 	movx	@dptr,a
   0659 EF            [12] 2249 	mov	a,r7
   065A A3            [24] 2250 	inc	dptr
   065B F0            [24] 2251 	movx	@dptr,a
                           2252 ;	appFHSSNIC.c:369: g_NIC_ID = NIC_ID;
   065C 90 F5 63      [24] 2253 	mov	dptr,#_MAC_set_NIC_ID_NIC_ID_1_132
   065F E0            [24] 2254 	movx	a,@dptr
   0660 FE            [12] 2255 	mov	r6,a
   0661 A3            [24] 2256 	inc	dptr
   0662 E0            [24] 2257 	movx	a,@dptr
   0663 FF            [12] 2258 	mov	r7,a
   0664 90 F3 70      [24] 2259 	mov	dptr,#_g_NIC_ID
   0667 EE            [12] 2260 	mov	a,r6
   0668 F0            [24] 2261 	movx	@dptr,a
   0669 EF            [12] 2262 	mov	a,r7
   066A A3            [24] 2263 	inc	dptr
   066B F0            [24] 2264 	movx	@dptr,a
   066C 22            [24] 2265 	ret
                           2266 ;------------------------------------------------------------
                           2267 ;Allocation info for local variables in function 'MAC_rx_handle'
                           2268 ;------------------------------------------------------------
                           2269 ;message                   Allocated with name '_MAC_rx_handle_PARM_2'
                           2270 ;len                       Allocated with name '_MAC_rx_handle_len_1_134'
                           2271 ;------------------------------------------------------------
                           2272 ;	appFHSSNIC.c:372: void MAC_rx_handle(__xdata u8 len, __xdata u8* __xdata message)
                           2273 ;	-----------------------------------------
                           2274 ;	 function MAC_rx_handle
                           2275 ;	-----------------------------------------
   066D                    2276 _MAC_rx_handle:
                           2277 ;	appFHSSNIC.c:375: message;
   066D 22            [24] 2278 	ret
                           2279 ;------------------------------------------------------------
                           2280 ;Allocation info for local variables in function 'MAC_getNextChannel'
                           2281 ;------------------------------------------------------------
                           2282 ;	appFHSSNIC.c:381: __xdata u8 MAC_getNextChannel()
                           2283 ;	-----------------------------------------
                           2284 ;	 function MAC_getNextChannel
                           2285 ;	-----------------------------------------
   066E                    2286 _MAC_getNextChannel:
                           2287 ;	appFHSSNIC.c:383: macdata.curChanIdx++;
   066E 90 FD 9A      [24] 2288 	mov	dptr,#(_macdata + 0x0009)
   0671 E0            [24] 2289 	movx	a,@dptr
   0672 FE            [12] 2290 	mov	r6,a
   0673 A3            [24] 2291 	inc	dptr
   0674 E0            [24] 2292 	movx	a,@dptr
   0675 FF            [12] 2293 	mov	r7,a
   0676 0E            [12] 2294 	inc	r6
   0677 BE 00 01      [24] 2295 	cjne	r6,#0x00,00108$
   067A 0F            [12] 2296 	inc	r7
   067B                    2297 00108$:
   067B 90 FD 9A      [24] 2298 	mov	dptr,#(_macdata + 0x0009)
   067E EE            [12] 2299 	mov	a,r6
   067F F0            [24] 2300 	movx	@dptr,a
   0680 EF            [12] 2301 	mov	a,r7
   0681 A3            [24] 2302 	inc	dptr
   0682 F0            [24] 2303 	movx	@dptr,a
                           2304 ;	appFHSSNIC.c:384: if (macdata.curChanIdx >= MAX_CHANNELS)
   0683 C3            [12] 2305 	clr	c
   0684 EE            [12] 2306 	mov	a,r6
   0685 94 70         [12] 2307 	subb	a,#0x70
   0687 EF            [12] 2308 	mov	a,r7
   0688 94 03         [12] 2309 	subb	a,#0x03
   068A 40 08         [24] 2310 	jc	00102$
                           2311 ;	appFHSSNIC.c:386: macdata.curChanIdx = 0;
   068C 90 FD 9A      [24] 2312 	mov	dptr,#(_macdata + 0x0009)
   068F E4            [12] 2313 	clr	a
   0690 F0            [24] 2314 	movx	@dptr,a
   0691 E4            [12] 2315 	clr	a
   0692 A3            [24] 2316 	inc	dptr
   0693 F0            [24] 2317 	movx	@dptr,a
   0694                    2318 00102$:
                           2319 ;	appFHSSNIC.c:388: return g_Channels[macdata.curChanIdx];
   0694 90 FD 9A      [24] 2320 	mov	dptr,#(_macdata + 0x0009)
   0697 E0            [24] 2321 	movx	a,@dptr
   0698 FE            [12] 2322 	mov	r6,a
   0699 A3            [24] 2323 	inc	dptr
   069A E0            [24] 2324 	movx	a,@dptr
   069B FF            [12] 2325 	mov	r7,a
   069C EE            [12] 2326 	mov	a,r6
   069D 24 00         [12] 2327 	add	a,#_g_Channels
   069F F5 82         [12] 2328 	mov	dpl,a
   06A1 EF            [12] 2329 	mov	a,r7
   06A2 34 F0         [12] 2330 	addc	a,#(_g_Channels >> 8)
   06A4 F5 83         [12] 2331 	mov	dph,a
   06A6 E0            [24] 2332 	movx	a,@dptr
   06A7 F5 82         [12] 2333 	mov	dpl,a
   06A9 22            [24] 2334 	ret
                           2335 ;------------------------------------------------------------
                           2336 ;Allocation info for local variables in function 't2IntHandler'
                           2337 ;------------------------------------------------------------
                           2338 ;packet                    Allocated with name '_t2IntHandler_packet_1_139'
                           2339 ;------------------------------------------------------------
                           2340 ;	appFHSSNIC.c:395: void t2IntHandler(void) __interrupt T2_VECTOR  // interrupt handler should trigger on T2 overflow
                           2341 ;	-----------------------------------------
                           2342 ;	 function t2IntHandler
                           2343 ;	-----------------------------------------
   06AA                    2344 _t2IntHandler:
   06AA C0 21         [24] 2345 	push	bits
   06AC C0 E0         [24] 2346 	push	acc
   06AE C0 F0         [24] 2347 	push	b
   06B0 C0 82         [24] 2348 	push	dpl
   06B2 C0 83         [24] 2349 	push	dph
   06B4 C0 07         [24] 2350 	push	(0+7)
   06B6 C0 06         [24] 2351 	push	(0+6)
   06B8 C0 05         [24] 2352 	push	(0+5)
   06BA C0 04         [24] 2353 	push	(0+4)
   06BC C0 03         [24] 2354 	push	(0+3)
   06BE C0 02         [24] 2355 	push	(0+2)
   06C0 C0 01         [24] 2356 	push	(0+1)
   06C2 C0 00         [24] 2357 	push	(0+0)
   06C4 C0 D0         [24] 2358 	push	psw
   06C6 75 D0 00      [24] 2359 	mov	psw,#0x00
                           2360 ;	appFHSSNIC.c:404: if (++rf_MAC_timer == macdata.MAC_threshold)
   06C9 90 FD 8D      [24] 2361 	mov	dptr,#_rf_MAC_timer
   06CC E0            [24] 2362 	movx	a,@dptr
   06CD 24 01         [12] 2363 	add	a,#0x01
   06CF F0            [24] 2364 	movx	@dptr,a
   06D0 A3            [24] 2365 	inc	dptr
   06D1 E0            [24] 2366 	movx	a,@dptr
   06D2 34 00         [12] 2367 	addc	a,#0x00
   06D4 F0            [24] 2368 	movx	@dptr,a
   06D5 90 FD 92      [24] 2369 	mov	dptr,#(_macdata + 0x0001)
   06D8 E0            [24] 2370 	movx	a,@dptr
   06D9 FE            [12] 2371 	mov	r6,a
   06DA A3            [24] 2372 	inc	dptr
   06DB E0            [24] 2373 	movx	a,@dptr
   06DC FF            [12] 2374 	mov	r7,a
   06DD 90 FD 8D      [24] 2375 	mov	dptr,#_rf_MAC_timer
   06E0 E0            [24] 2376 	movx	a,@dptr
   06E1 FC            [12] 2377 	mov	r4,a
   06E2 A3            [24] 2378 	inc	dptr
   06E3 E0            [24] 2379 	movx	a,@dptr
   06E4 FD            [12] 2380 	mov	r5,a
   06E5 EC            [12] 2381 	mov	a,r4
   06E6 B5 06 0C      [24] 2382 	cjne	a,ar6,00102$
   06E9 ED            [12] 2383 	mov	a,r5
   06EA B5 07 08      [24] 2384 	cjne	a,ar7,00102$
                           2385 ;	appFHSSNIC.c:405: rf_MAC_timer = 0;   // since we're 0-based, MAC_threshold is actually past the end of our state machine, which makes it 0 *right now*
   06ED 90 FD 8D      [24] 2386 	mov	dptr,#_rf_MAC_timer
   06F0 E4            [12] 2387 	clr	a
   06F1 F0            [24] 2388 	movx	@dptr,a
   06F2 E4            [12] 2389 	clr	a
   06F3 A3            [24] 2390 	inc	dptr
   06F4 F0            [24] 2391 	movx	@dptr,a
   06F5                    2392 00102$:
                           2393 ;	appFHSSNIC.c:407: switch (rf_MAC_timer)
   06F5 90 FD 8D      [24] 2394 	mov	dptr,#_rf_MAC_timer
   06F8 E0            [24] 2395 	movx	a,@dptr
   06F9 FE            [12] 2396 	mov	r6,a
   06FA A3            [24] 2397 	inc	dptr
   06FB E0            [24] 2398 	movx	a,@dptr
   06FC FF            [12] 2399 	mov	r7,a
   06FD BE 00 05      [24] 2400 	cjne	r6,#0x00,00160$
   0700 BF 00 02      [24] 2401 	cjne	r7,#0x00,00160$
   0703 80 0B         [24] 2402 	sjmp	00103$
   0705                    2403 00160$:
   0705 BE 01 05      [24] 2404 	cjne	r6,#0x01,00161$
   0708 BF 00 02      [24] 2405 	cjne	r7,#0x00,00161$
   070B 80 69         [24] 2406 	sjmp	00108$
   070D                    2407 00161$:
   070D 02 08 72      [24] 2408 	ljmp	00111$
                           2409 ;	appFHSSNIC.c:409: case 0:     // change channels
   0710                    2410 00103$:
                           2411 ;	appFHSSNIC.c:411: macdata.tLastHop = T2CT | (rf_MAC_timer<<8);        // should this be based on clock and T1?
   0710 90 FD 8D      [24] 2412 	mov	dptr,#_rf_MAC_timer
   0713 E0            [24] 2413 	movx	a,@dptr
   0714 FE            [12] 2414 	mov	r6,a
   0715 A3            [24] 2415 	inc	dptr
   0716 E0            [24] 2416 	movx	a,@dptr
   0717 8E 07         [24] 2417 	mov	ar7,r6
   0719 7E 00         [12] 2418 	mov	r6,#0x00
   071B AC 9C         [24] 2419 	mov	r4,_T2CT
   071D 7D 00         [12] 2420 	mov	r5,#0x00
   071F EC            [12] 2421 	mov	a,r4
   0720 42 06         [12] 2422 	orl	ar6,a
   0722 ED            [12] 2423 	mov	a,r5
   0723 42 07         [12] 2424 	orl	ar7,a
   0725 90 FD 9E      [24] 2425 	mov	dptr,#(_macdata + 0x000d)
   0728 EE            [12] 2426 	mov	a,r6
   0729 F0            [24] 2427 	movx	@dptr,a
   072A EF            [12] 2428 	mov	a,r7
   072B A3            [24] 2429 	inc	dptr
   072C F0            [24] 2430 	movx	@dptr,a
                           2431 ;	appFHSSNIC.c:414: if (++macdata.curChanIdx >= macdata.NumChannelHops)
   072D 90 FD 9A      [24] 2432 	mov	dptr,#(_macdata + 0x0009)
   0730 E0            [24] 2433 	movx	a,@dptr
   0731 FE            [12] 2434 	mov	r6,a
   0732 A3            [24] 2435 	inc	dptr
   0733 E0            [24] 2436 	movx	a,@dptr
   0734 FF            [12] 2437 	mov	r7,a
   0735 0E            [12] 2438 	inc	r6
   0736 BE 00 01      [24] 2439 	cjne	r6,#0x00,00162$
   0739 0F            [12] 2440 	inc	r7
   073A                    2441 00162$:
   073A 90 FD 9A      [24] 2442 	mov	dptr,#(_macdata + 0x0009)
   073D EE            [12] 2443 	mov	a,r6
   073E F0            [24] 2444 	movx	@dptr,a
   073F EF            [12] 2445 	mov	a,r7
   0740 A3            [24] 2446 	inc	dptr
   0741 F0            [24] 2447 	movx	@dptr,a
   0742 90 FD 98      [24] 2448 	mov	dptr,#(_macdata + 0x0007)
   0745 E0            [24] 2449 	movx	a,@dptr
   0746 FC            [12] 2450 	mov	r4,a
   0747 A3            [24] 2451 	inc	dptr
   0748 E0            [24] 2452 	movx	a,@dptr
   0749 FD            [12] 2453 	mov	r5,a
   074A C3            [12] 2454 	clr	c
   074B EE            [12] 2455 	mov	a,r6
   074C 9C            [12] 2456 	subb	a,r4
   074D EF            [12] 2457 	mov	a,r7
   074E 9D            [12] 2458 	subb	a,r5
   074F 40 08         [24] 2459 	jc	00105$
                           2460 ;	appFHSSNIC.c:416: macdata.curChanIdx = 0;
   0751 90 FD 9A      [24] 2461 	mov	dptr,#(_macdata + 0x0009)
   0754 E4            [12] 2462 	clr	a
   0755 F0            [24] 2463 	movx	@dptr,a
   0756 E4            [12] 2464 	clr	a
   0757 A3            [24] 2465 	inc	dptr
   0758 F0            [24] 2466 	movx	@dptr,a
   0759                    2467 00105$:
                           2468 ;	appFHSSNIC.c:421: if (MARCSTATE == MARC_STATE_TX)
   0759 90 DF 3B      [24] 2469 	mov	dptr,#_MARCSTATE
   075C E0            [24] 2470 	movx	a,@dptr
   075D FF            [12] 2471 	mov	r7,a
   075E BF 13 03      [24] 2472 	cjne	r7,#0x13,00107$
                           2473 ;	appFHSSNIC.c:422: return;
   0761 02 09 71      [24] 2474 	ljmp	00123$
   0764                    2475 00107$:
                           2476 ;	appFHSSNIC.c:426: MAC_set_chanidx(macdata.curChanIdx);
   0764 90 FD 9A      [24] 2477 	mov	dptr,#(_macdata + 0x0009)
   0767 E0            [24] 2478 	movx	a,@dptr
   0768 FE            [12] 2479 	mov	r6,a
   0769 A3            [24] 2480 	inc	dptr
   076A E0            [24] 2481 	movx	a,@dptr
   076B FF            [12] 2482 	mov	r7,a
   076C 8E 82         [24] 2483 	mov	dpl,r6
   076E 8F 83         [24] 2484 	mov	dph,r7
   0770 12 06 29      [24] 2485 	lcall	_MAC_set_chanidx
                           2486 ;	appFHSSNIC.c:437: break;
   0773 02 09 71      [24] 2487 	ljmp	00123$
                           2488 ;	appFHSSNIC.c:439: case 1:
   0776                    2489 00108$:
                           2490 ;	appFHSSNIC.c:441: if (macdata.mac_state == MAC_STATE_SYNCINGMASTER)
   0776 90 FD 91      [24] 2491 	mov	dptr,#_macdata
   0779 E0            [24] 2492 	movx	a,@dptr
   077A FF            [12] 2493 	mov	r7,a
   077B BF 05 02      [24] 2494 	cjne	r7,#0x05,00166$
   077E 80 03         [24] 2495 	sjmp	00167$
   0780                    2496 00166$:
   0780 02 09 71      [24] 2497 	ljmp	00123$
   0783                    2498 00167$:
                           2499 ;	appFHSSNIC.c:443: sleepMillis(FHSS_TX_SLEEP_DELAY);
   0783 90 00 19      [24] 2500 	mov	dptr,#0x0019
   0786 12 2D 4B      [24] 2501 	lcall	_sleepMillis
                           2502 ;	appFHSSNIC.c:444: packet[0] = 28;
   0789 90 F5 67      [24] 2503 	mov	dptr,#_t2IntHandler_packet_1_139
   078C 74 1C         [12] 2504 	mov	a,#0x1C
   078E F0            [24] 2505 	movx	@dptr,a
                           2506 ;	appFHSSNIC.c:445: packet[1] = macdata.curChanIdx & 0xff;
   078F 90 FD 9A      [24] 2507 	mov	dptr,#(_macdata + 0x0009)
   0792 E0            [24] 2508 	movx	a,@dptr
   0793 FE            [12] 2509 	mov	r6,a
   0794 A3            [24] 2510 	inc	dptr
   0795 E0            [24] 2511 	movx	a,@dptr
   0796 90 F5 68      [24] 2512 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0001)
   0799 EE            [12] 2513 	mov	a,r6
   079A F0            [24] 2514 	movx	@dptr,a
                           2515 ;	appFHSSNIC.c:446: packet[2] = macdata.curChanIdx >> 8;
   079B 90 FD 9A      [24] 2516 	mov	dptr,#(_macdata + 0x0009)
   079E E0            [24] 2517 	movx	a,@dptr
   079F A3            [24] 2518 	inc	dptr
   07A0 E0            [24] 2519 	movx	a,@dptr
   07A1 90 F5 69      [24] 2520 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0002)
   07A4 F0            [24] 2521 	movx	@dptr,a
                           2522 ;	appFHSSNIC.c:447: packet[3] =  'B';
   07A5 90 F5 6A      [24] 2523 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0003)
   07A8 74 42         [12] 2524 	mov	a,#0x42
   07AA F0            [24] 2525 	movx	@dptr,a
                           2526 ;	appFHSSNIC.c:448: packet[4] =  'L';
   07AB 90 F5 6B      [24] 2527 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0004)
   07AE 74 4C         [12] 2528 	mov	a,#0x4C
   07B0 F0            [24] 2529 	movx	@dptr,a
                           2530 ;	appFHSSNIC.c:449: packet[5] =  'A';
   07B1 90 F5 6C      [24] 2531 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0005)
   07B4 74 41         [12] 2532 	mov	a,#0x41
   07B6 F0            [24] 2533 	movx	@dptr,a
                           2534 ;	appFHSSNIC.c:450: packet[6] =  'H';
   07B7 90 F5 6D      [24] 2535 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0006)
   07BA 74 48         [12] 2536 	mov	a,#0x48
   07BC F0            [24] 2537 	movx	@dptr,a
                           2538 ;	appFHSSNIC.c:451: packet[7] =  'B';
   07BD 90 F5 6E      [24] 2539 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0007)
   07C0 74 42         [12] 2540 	mov	a,#0x42
   07C2 F0            [24] 2541 	movx	@dptr,a
                           2542 ;	appFHSSNIC.c:452: packet[8] =  'L';
   07C3 90 F5 6F      [24] 2543 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0008)
   07C6 74 4C         [12] 2544 	mov	a,#0x4C
   07C8 F0            [24] 2545 	movx	@dptr,a
                           2546 ;	appFHSSNIC.c:453: packet[9] =  'A';
   07C9 90 F5 70      [24] 2547 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0009)
   07CC 74 41         [12] 2548 	mov	a,#0x41
   07CE F0            [24] 2549 	movx	@dptr,a
                           2550 ;	appFHSSNIC.c:454: packet[10] = 'H';
   07CF 90 F5 71      [24] 2551 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x000a)
   07D2 74 48         [12] 2552 	mov	a,#0x48
   07D4 F0            [24] 2553 	movx	@dptr,a
                           2554 ;	appFHSSNIC.c:455: packet[11] = 'B';
   07D5 90 F5 72      [24] 2555 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x000b)
   07D8 74 42         [12] 2556 	mov	a,#0x42
   07DA F0            [24] 2557 	movx	@dptr,a
                           2558 ;	appFHSSNIC.c:456: packet[12] = 'L';
   07DB 90 F5 73      [24] 2559 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x000c)
   07DE 74 4C         [12] 2560 	mov	a,#0x4C
   07E0 F0            [24] 2561 	movx	@dptr,a
                           2562 ;	appFHSSNIC.c:457: packet[13] = 'A';
   07E1 90 F5 74      [24] 2563 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x000d)
   07E4 74 41         [12] 2564 	mov	a,#0x41
   07E6 F0            [24] 2565 	movx	@dptr,a
                           2566 ;	appFHSSNIC.c:458: packet[14] = 'H';
   07E7 90 F5 75      [24] 2567 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x000e)
   07EA 74 48         [12] 2568 	mov	a,#0x48
   07EC F0            [24] 2569 	movx	@dptr,a
                           2570 ;	appFHSSNIC.c:459: packet[15] = 'B';
   07ED 90 F5 76      [24] 2571 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x000f)
   07F0 74 42         [12] 2572 	mov	a,#0x42
   07F2 F0            [24] 2573 	movx	@dptr,a
                           2574 ;	appFHSSNIC.c:460: packet[16] = 'L';
   07F3 90 F5 77      [24] 2575 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0010)
   07F6 74 4C         [12] 2576 	mov	a,#0x4C
   07F8 F0            [24] 2577 	movx	@dptr,a
                           2578 ;	appFHSSNIC.c:461: packet[17] = 'A';
   07F9 90 F5 78      [24] 2579 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0011)
   07FC 74 41         [12] 2580 	mov	a,#0x41
   07FE F0            [24] 2581 	movx	@dptr,a
                           2582 ;	appFHSSNIC.c:462: packet[18] = 'H';
   07FF 90 F5 79      [24] 2583 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0012)
   0802 74 48         [12] 2584 	mov	a,#0x48
   0804 F0            [24] 2585 	movx	@dptr,a
                           2586 ;	appFHSSNIC.c:463: packet[19] = 'B';
   0805 90 F5 7A      [24] 2587 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0013)
   0808 74 42         [12] 2588 	mov	a,#0x42
   080A F0            [24] 2589 	movx	@dptr,a
                           2590 ;	appFHSSNIC.c:464: packet[20] = 'L';
   080B 90 F5 7B      [24] 2591 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0014)
   080E 74 4C         [12] 2592 	mov	a,#0x4C
   0810 F0            [24] 2593 	movx	@dptr,a
                           2594 ;	appFHSSNIC.c:465: packet[21] = 'A';
   0811 90 F5 7C      [24] 2595 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0015)
   0814 74 41         [12] 2596 	mov	a,#0x41
   0816 F0            [24] 2597 	movx	@dptr,a
                           2598 ;	appFHSSNIC.c:466: packet[22] = 'H';
   0817 90 F5 7D      [24] 2599 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0016)
   081A 74 48         [12] 2600 	mov	a,#0x48
   081C F0            [24] 2601 	movx	@dptr,a
                           2602 ;	appFHSSNIC.c:467: packet[23] = 'B';
   081D 90 F5 7E      [24] 2603 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0017)
   0820 74 42         [12] 2604 	mov	a,#0x42
   0822 F0            [24] 2605 	movx	@dptr,a
                           2606 ;	appFHSSNIC.c:468: packet[24] = 'L';
   0823 90 F5 7F      [24] 2607 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0018)
   0826 74 4C         [12] 2608 	mov	a,#0x4C
   0828 F0            [24] 2609 	movx	@dptr,a
                           2610 ;	appFHSSNIC.c:469: packet[25] = 'A';
   0829 90 F5 80      [24] 2611 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0019)
   082C 74 41         [12] 2612 	mov	a,#0x41
   082E F0            [24] 2613 	movx	@dptr,a
                           2614 ;	appFHSSNIC.c:470: packet[26] = 'H';
   082F 90 F5 81      [24] 2615 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x001a)
   0832 74 48         [12] 2616 	mov	a,#0x48
   0834 F0            [24] 2617 	movx	@dptr,a
                           2618 ;	appFHSSNIC.c:471: packet[27] = ' ';
   0835 90 F5 82      [24] 2619 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x001b)
   0838 74 20         [12] 2620 	mov	a,#0x20
   083A F0            [24] 2621 	movx	@dptr,a
                           2622 ;	appFHSSNIC.c:473: transmit((__xdata u8*)&packet[1], 28, 0, 0);
   083B 90 FD A6      [24] 2623 	mov	dptr,#_transmit_PARM_2
   083E 74 1C         [12] 2624 	mov	a,#0x1C
   0840 F0            [24] 2625 	movx	@dptr,a
   0841 E4            [12] 2626 	clr	a
   0842 A3            [24] 2627 	inc	dptr
   0843 F0            [24] 2628 	movx	@dptr,a
   0844 90 FD A8      [24] 2629 	mov	dptr,#_transmit_PARM_3
   0847 E4            [12] 2630 	clr	a
   0848 F0            [24] 2631 	movx	@dptr,a
   0849 E4            [12] 2632 	clr	a
   084A A3            [24] 2633 	inc	dptr
   084B F0            [24] 2634 	movx	@dptr,a
   084C 90 FD AA      [24] 2635 	mov	dptr,#_transmit_PARM_4
   084F E4            [12] 2636 	clr	a
   0850 F0            [24] 2637 	movx	@dptr,a
   0851 E4            [12] 2638 	clr	a
   0852 A3            [24] 2639 	inc	dptr
   0853 F0            [24] 2640 	movx	@dptr,a
   0854 90 F5 68      [24] 2641 	mov	dptr,#(_t2IntHandler_packet_1_139 + 0x0001)
   0857 12 24 05      [24] 2642 	lcall	_transmit
                           2643 ;	appFHSSNIC.c:474: macdata.synched_chans++;
   085A 90 FD A4      [24] 2644 	mov	dptr,#(_macdata + 0x0013)
   085D E0            [24] 2645 	movx	a,@dptr
   085E FE            [12] 2646 	mov	r6,a
   085F A3            [24] 2647 	inc	dptr
   0860 E0            [24] 2648 	movx	a,@dptr
   0861 FF            [12] 2649 	mov	r7,a
   0862 0E            [12] 2650 	inc	r6
   0863 BE 00 01      [24] 2651 	cjne	r6,#0x00,00168$
   0866 0F            [12] 2652 	inc	r7
   0867                    2653 00168$:
   0867 90 FD A4      [24] 2654 	mov	dptr,#(_macdata + 0x0013)
   086A EE            [12] 2655 	mov	a,r6
   086B F0            [24] 2656 	movx	@dptr,a
   086C EF            [12] 2657 	mov	a,r7
   086D A3            [24] 2658 	inc	dptr
   086E F0            [24] 2659 	movx	@dptr,a
                           2660 ;	appFHSSNIC.c:475: break;      // don't want to do anything else if we're in this state.
   086F 02 09 71      [24] 2661 	ljmp	00123$
                           2662 ;	appFHSSNIC.c:479: default:    // all other ticks we can transmit
   0872                    2663 00111$:
                           2664 ;	appFHSSNIC.c:482: switch (macdata.mac_state)
   0872 90 FD 91      [24] 2665 	mov	dptr,#_macdata
   0875 E0            [24] 2666 	movx	a,@dptr
   0876 FF            [12] 2667 	mov	r7,a
   0877 BF 03 02      [24] 2668 	cjne	r7,#0x03,00169$
   087A 80 65         [24] 2669 	sjmp	00116$
   087C                    2670 00169$:
   087C BF 04 02      [24] 2671 	cjne	r7,#0x04,00170$
   087F 80 08         [24] 2672 	sjmp	00113$
   0881                    2673 00170$:
   0881 BF 05 02      [24] 2674 	cjne	r7,#0x05,00171$
   0884 80 03         [24] 2675 	sjmp	00172$
   0886                    2676 00171$:
   0886 02 09 71      [24] 2677 	ljmp	00123$
   0889                    2678 00172$:
                           2679 ;	appFHSSNIC.c:485: case MAC_STATE_SYNC_MASTER:
   0889                    2680 00113$:
                           2681 ;	appFHSSNIC.c:486: if (100 < (clock - macdata.tLastStateChange))   // periodically shift back to beaconing
   0889 90 FD 9C      [24] 2682 	mov	dptr,#(_macdata + 0x000b)
   088C E0            [24] 2683 	movx	a,@dptr
   088D FE            [12] 2684 	mov	r6,a
   088E A3            [24] 2685 	inc	dptr
   088F E0            [24] 2686 	movx	a,@dptr
   0890 FF            [12] 2687 	mov	r7,a
   0891 90 FD B7      [24] 2688 	mov	dptr,#_clock
   0894 E0            [24] 2689 	movx	a,@dptr
   0895 FA            [12] 2690 	mov	r2,a
   0896 A3            [24] 2691 	inc	dptr
   0897 E0            [24] 2692 	movx	a,@dptr
   0898 FB            [12] 2693 	mov	r3,a
   0899 A3            [24] 2694 	inc	dptr
   089A E0            [24] 2695 	movx	a,@dptr
   089B FC            [12] 2696 	mov	r4,a
   089C A3            [24] 2697 	inc	dptr
   089D E0            [24] 2698 	movx	a,@dptr
   089E FD            [12] 2699 	mov	r5,a
   089F 8E 00         [24] 2700 	mov	ar0,r6
   08A1 8F 01         [24] 2701 	mov	ar1,r7
   08A3 E4            [12] 2702 	clr	a
   08A4 FE            [12] 2703 	mov	r6,a
   08A5 FF            [12] 2704 	mov	r7,a
   08A6 EA            [12] 2705 	mov	a,r2
   08A7 C3            [12] 2706 	clr	c
   08A8 98            [12] 2707 	subb	a,r0
   08A9 FA            [12] 2708 	mov	r2,a
   08AA EB            [12] 2709 	mov	a,r3
   08AB 99            [12] 2710 	subb	a,r1
   08AC FB            [12] 2711 	mov	r3,a
   08AD EC            [12] 2712 	mov	a,r4
   08AE 9E            [12] 2713 	subb	a,r6
   08AF FC            [12] 2714 	mov	r4,a
   08B0 ED            [12] 2715 	mov	a,r5
   08B1 9F            [12] 2716 	subb	a,r7
   08B2 FD            [12] 2717 	mov	r5,a
   08B3 C3            [12] 2718 	clr	c
   08B4 74 64         [12] 2719 	mov	a,#0x64
   08B6 9A            [12] 2720 	subb	a,r2
   08B7 E4            [12] 2721 	clr	a
   08B8 9B            [12] 2722 	subb	a,r3
   08B9 E4            [12] 2723 	clr	a
   08BA 9C            [12] 2724 	subb	a,r4
   08BB E4            [12] 2725 	clr	a
   08BC 9D            [12] 2726 	subb	a,r5
   08BD 50 22         [24] 2727 	jnc	00116$
                           2728 ;	appFHSSNIC.c:488: debug("SYNCH_MASTER -> SYNCINGMASTER");
   08BF 90 36 91      [24] 2729 	mov	dptr,#__str_5
   08C2 12 21 70      [24] 2730 	lcall	_debug
                           2731 ;	appFHSSNIC.c:489: macdata.mac_state = MAC_STATE_SYNCINGMASTER;
   08C5 90 FD 91      [24] 2732 	mov	dptr,#_macdata
   08C8 74 05         [12] 2733 	mov	a,#0x05
   08CA F0            [24] 2734 	movx	@dptr,a
                           2735 ;	appFHSSNIC.c:490: macdata.tLastStateChange = clock;
   08CB 90 FD B7      [24] 2736 	mov	dptr,#_clock
   08CE E0            [24] 2737 	movx	a,@dptr
   08CF FC            [12] 2738 	mov	r4,a
   08D0 A3            [24] 2739 	inc	dptr
   08D1 E0            [24] 2740 	movx	a,@dptr
   08D2 FD            [12] 2741 	mov	r5,a
   08D3 A3            [24] 2742 	inc	dptr
   08D4 E0            [24] 2743 	movx	a,@dptr
   08D5 FE            [12] 2744 	mov	r6,a
   08D6 A3            [24] 2745 	inc	dptr
   08D7 E0            [24] 2746 	movx	a,@dptr
   08D8 FF            [12] 2747 	mov	r7,a
   08D9 90 FD 9C      [24] 2748 	mov	dptr,#(_macdata + 0x000b)
   08DC EC            [12] 2749 	mov	a,r4
   08DD F0            [24] 2750 	movx	@dptr,a
   08DE ED            [12] 2751 	mov	a,r5
   08DF A3            [24] 2752 	inc	dptr
   08E0 F0            [24] 2753 	movx	@dptr,a
                           2754 ;	appFHSSNIC.c:493: case MAC_STATE_SYNCHED:
   08E1                    2755 00116$:
                           2756 ;	appFHSSNIC.c:503: if ( g_txMsgQueue[macdata.txMsgIdxDone][0])      // if length byte >0
   08E1 90 FD A3      [24] 2757 	mov	dptr,#(_macdata + 0x0012)
   08E4 E0            [24] 2758 	movx	a,@dptr
   08E5 75 F0 F1      [24] 2759 	mov	b,#0xF1
   08E8 A4            [48] 2760 	mul	ab
   08E9 24 72         [12] 2761 	add	a,#_g_txMsgQueue
   08EB FE            [12] 2762 	mov	r6,a
   08EC 74 F3         [12] 2763 	mov	a,#(_g_txMsgQueue >> 8)
   08EE 35 F0         [12] 2764 	addc	a,b
   08F0 FF            [12] 2765 	mov	r7,a
   08F1 8E 82         [24] 2766 	mov	dpl,r6
   08F3 8F 83         [24] 2767 	mov	dph,r7
   08F5 E0            [24] 2768 	movx	a,@dptr
   08F6 60 79         [24] 2769 	jz	00123$
                           2770 ;	appFHSSNIC.c:506: sleepMillis(FHSS_TX_SLEEP_DELAY);
   08F8 90 00 19      [24] 2771 	mov	dptr,#0x0019
   08FB 12 2D 4B      [24] 2772 	lcall	_sleepMillis
                           2773 ;	appFHSSNIC.c:507: transmit(&g_txMsgQueue[macdata.txMsgIdxDone][!(PKTCTRL0&1)], g_txMsgQueue[macdata.txMsgIdxDone][0], 0, 0);
   08FE 90 FD A3      [24] 2774 	mov	dptr,#(_macdata + 0x0012)
   0901 E0            [24] 2775 	movx	a,@dptr
   0902 75 F0 F1      [24] 2776 	mov	b,#0xF1
   0905 A4            [48] 2777 	mul	ab
   0906 24 72         [12] 2778 	add	a,#_g_txMsgQueue
   0908 FE            [12] 2779 	mov	r6,a
   0909 74 F3         [12] 2780 	mov	a,#(_g_txMsgQueue >> 8)
   090B 35 F0         [12] 2781 	addc	a,b
   090D FF            [12] 2782 	mov	r7,a
   090E 90 DF 04      [24] 2783 	mov	dptr,#_PKTCTRL0
   0911 E0            [24] 2784 	movx	a,@dptr
   0912 54 01         [12] 2785 	anl	a,#0x01
   0914 FD            [12] 2786 	mov	r5,a
   0915 B4 01 00      [24] 2787 	cjne	a,#0x01,00175$
   0918                    2788 00175$:
   0918 E4            [12] 2789 	clr	a
   0919 33            [12] 2790 	rlc	a
   091A 2E            [12] 2791 	add	a,r6
   091B FD            [12] 2792 	mov	r5,a
   091C E4            [12] 2793 	clr	a
   091D 3F            [12] 2794 	addc	a,r7
   091E FC            [12] 2795 	mov	r4,a
   091F 8E 82         [24] 2796 	mov	dpl,r6
   0921 8F 83         [24] 2797 	mov	dph,r7
   0923 E0            [24] 2798 	movx	a,@dptr
   0924 90 FD A6      [24] 2799 	mov	dptr,#_transmit_PARM_2
   0927 F0            [24] 2800 	movx	@dptr,a
   0928 E4            [12] 2801 	clr	a
   0929 A3            [24] 2802 	inc	dptr
   092A F0            [24] 2803 	movx	@dptr,a
   092B 90 FD A8      [24] 2804 	mov	dptr,#_transmit_PARM_3
   092E E4            [12] 2805 	clr	a
   092F F0            [24] 2806 	movx	@dptr,a
   0930 E4            [12] 2807 	clr	a
   0931 A3            [24] 2808 	inc	dptr
   0932 F0            [24] 2809 	movx	@dptr,a
   0933 90 FD AA      [24] 2810 	mov	dptr,#_transmit_PARM_4
   0936 E4            [12] 2811 	clr	a
   0937 F0            [24] 2812 	movx	@dptr,a
   0938 E4            [12] 2813 	clr	a
   0939 A3            [24] 2814 	inc	dptr
   093A F0            [24] 2815 	movx	@dptr,a
   093B 8D 82         [24] 2816 	mov	dpl,r5
   093D 8C 83         [24] 2817 	mov	dph,r4
   093F 12 24 05      [24] 2818 	lcall	_transmit
                           2819 ;	appFHSSNIC.c:509: g_txMsgQueue[macdata.txMsgIdxDone][0] = 0;
   0942 90 FD A3      [24] 2820 	mov	dptr,#(_macdata + 0x0012)
   0945 E0            [24] 2821 	movx	a,@dptr
   0946 75 F0 F1      [24] 2822 	mov	b,#0xF1
   0949 A4            [48] 2823 	mul	ab
   094A 24 72         [12] 2824 	add	a,#_g_txMsgQueue
   094C F5 82         [12] 2825 	mov	dpl,a
   094E 74 F3         [12] 2826 	mov	a,#(_g_txMsgQueue >> 8)
   0950 35 F0         [12] 2827 	addc	a,b
   0952 F5 83         [12] 2828 	mov	dph,a
   0954 E4            [12] 2829 	clr	a
   0955 F0            [24] 2830 	movx	@dptr,a
                           2831 ;	appFHSSNIC.c:511: if (++macdata.txMsgIdxDone >= MAX_TX_MSGS)
   0956 90 FD A3      [24] 2832 	mov	dptr,#(_macdata + 0x0012)
   0959 E0            [24] 2833 	movx	a,@dptr
   095A FF            [12] 2834 	mov	r7,a
   095B 0F            [12] 2835 	inc	r7
   095C 90 FD A3      [24] 2836 	mov	dptr,#(_macdata + 0x0012)
   095F EF            [12] 2837 	mov	a,r7
   0960 F0            [24] 2838 	movx	@dptr,a
   0961 BF 02 00      [24] 2839 	cjne	r7,#0x02,00176$
   0964                    2840 00176$:
   0964 40 05         [24] 2841 	jc	00118$
                           2842 ;	appFHSSNIC.c:513: macdata.txMsgIdxDone = 0;
   0966 90 FD A3      [24] 2843 	mov	dptr,#(_macdata + 0x0012)
   0969 E4            [12] 2844 	clr	a
   096A F0            [24] 2845 	movx	@dptr,a
   096B                    2846 00118$:
                           2847 ;	appFHSSNIC.c:515: debug("FHSSxmit done");
   096B 90 36 AF      [24] 2848 	mov	dptr,#__str_6
   096E 12 21 70      [24] 2849 	lcall	_debug
                           2850 ;	appFHSSNIC.c:518: }
   0971                    2851 00123$:
   0971 D0 D0         [24] 2852 	pop	psw
   0973 D0 00         [24] 2853 	pop	(0+0)
   0975 D0 01         [24] 2854 	pop	(0+1)
   0977 D0 02         [24] 2855 	pop	(0+2)
   0979 D0 03         [24] 2856 	pop	(0+3)
   097B D0 04         [24] 2857 	pop	(0+4)
   097D D0 05         [24] 2858 	pop	(0+5)
   097F D0 06         [24] 2859 	pop	(0+6)
   0981 D0 07         [24] 2860 	pop	(0+7)
   0983 D0 83         [24] 2861 	pop	dph
   0985 D0 82         [24] 2862 	pop	dpl
   0987 D0 F0         [24] 2863 	pop	b
   0989 D0 E0         [24] 2864 	pop	acc
   098B D0 21         [24] 2865 	pop	bits
   098D 32            [24] 2866 	reti
                           2867 ;------------------------------------------------------------
                           2868 ;Allocation info for local variables in function 't3IntHandler'
                           2869 ;------------------------------------------------------------
                           2870 ;	appFHSSNIC.c:521: void t3IntHandler(void) __interrupt T3_VECTOR
                           2871 ;	-----------------------------------------
                           2872 ;	 function t3IntHandler
                           2873 ;	-----------------------------------------
   098E                    2874 _t3IntHandler:
                           2875 ;	appFHSSNIC.c:525: }
   098E 32            [24] 2876 	reti
                           2877 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           2878 ;	eliminated unneeded push/pop psw
                           2879 ;	eliminated unneeded push/pop dpl
                           2880 ;	eliminated unneeded push/pop dph
                           2881 ;	eliminated unneeded push/pop b
                           2882 ;	eliminated unneeded push/pop acc
                           2883 ;------------------------------------------------------------
                           2884 ;Allocation info for local variables in function 'init_FHSS'
                           2885 ;------------------------------------------------------------
                           2886 ;	appFHSSNIC.c:527: void init_FHSS(void)
                           2887 ;	-----------------------------------------
                           2888 ;	 function init_FHSS
                           2889 ;	-----------------------------------------
   098F                    2890 _init_FHSS:
                           2891 ;	appFHSSNIC.c:529: macdata.mac_state = 0;
   098F 90 FD 91      [24] 2892 	mov	dptr,#_macdata
                           2893 ;	appFHSSNIC.c:530: macdata.txMsgIdx = 0;
                           2894 ;	appFHSSNIC.c:531: macdata.txMsgIdxDone = 0;
                           2895 ;	appFHSSNIC.c:532: macdata.curChanIdx = 0;
   0992 E4            [12] 2896 	clr	a
   0993 F0            [24] 2897 	movx	@dptr,a
   0994 90 FD A2      [24] 2898 	mov	dptr,#(_macdata + 0x0011)
   0997 F0            [24] 2899 	movx	@dptr,a
   0998 90 FD A3      [24] 2900 	mov	dptr,#(_macdata + 0x0012)
   099B F0            [24] 2901 	movx	@dptr,a
   099C 90 FD 9A      [24] 2902 	mov	dptr,#(_macdata + 0x0009)
   099F F0            [24] 2903 	movx	@dptr,a
   09A0 E4            [12] 2904 	clr	a
   09A1 A3            [24] 2905 	inc	dptr
   09A2 F0            [24] 2906 	movx	@dptr,a
                           2907 ;	appFHSSNIC.c:533: macdata.NumChannels = DEFAULT_NUM_CHANS;
   09A3 90 FD 96      [24] 2908 	mov	dptr,#(_macdata + 0x0005)
   09A6 74 53         [12] 2909 	mov	a,#0x53
   09A8 F0            [24] 2910 	movx	@dptr,a
   09A9 E4            [12] 2911 	clr	a
   09AA A3            [24] 2912 	inc	dptr
   09AB F0            [24] 2913 	movx	@dptr,a
                           2914 ;	appFHSSNIC.c:534: macdata.NumChannelHops = DEFAULT_NUM_CHANHOPS;
   09AC 90 FD 98      [24] 2915 	mov	dptr,#(_macdata + 0x0007)
   09AF 74 53         [12] 2916 	mov	a,#0x53
   09B1 F0            [24] 2917 	movx	@dptr,a
   09B2 E4            [12] 2918 	clr	a
   09B3 A3            [24] 2919 	inc	dptr
   09B4 F0            [24] 2920 	movx	@dptr,a
                           2921 ;	appFHSSNIC.c:535: macdata.tLastHop = 0;
   09B5 90 FD 9E      [24] 2922 	mov	dptr,#(_macdata + 0x000d)
   09B8 E4            [12] 2923 	clr	a
   09B9 F0            [24] 2924 	movx	@dptr,a
   09BA E4            [12] 2925 	clr	a
   09BB A3            [24] 2926 	inc	dptr
   09BC F0            [24] 2927 	movx	@dptr,a
                           2928 ;	appFHSSNIC.c:536: macdata.tLastStateChange = 0;
   09BD 90 FD 9C      [24] 2929 	mov	dptr,#(_macdata + 0x000b)
   09C0 E4            [12] 2930 	clr	a
   09C1 F0            [24] 2931 	movx	@dptr,a
   09C2 E4            [12] 2932 	clr	a
   09C3 A3            [24] 2933 	inc	dptr
   09C4 F0            [24] 2934 	movx	@dptr,a
                           2935 ;	appFHSSNIC.c:537: macdata.MAC_threshold = 6;
   09C5 90 FD 92      [24] 2936 	mov	dptr,#(_macdata + 0x0001)
   09C8 74 06         [12] 2937 	mov	a,#0x06
   09CA F0            [24] 2938 	movx	@dptr,a
   09CB E4            [12] 2939 	clr	a
   09CC A3            [24] 2940 	inc	dptr
   09CD F0            [24] 2941 	movx	@dptr,a
                           2942 ;	appFHSSNIC.c:538: macdata.MAC_timer = 0;
   09CE 90 FD 94      [24] 2943 	mov	dptr,#(_macdata + 0x0003)
   09D1 E4            [12] 2944 	clr	a
   09D2 F0            [24] 2945 	movx	@dptr,a
   09D3 E4            [12] 2946 	clr	a
   09D4 A3            [24] 2947 	inc	dptr
   09D5 F0            [24] 2948 	movx	@dptr,a
                           2949 ;	appFHSSNIC.c:539: macdata.desperatelySeeking = 0;
   09D6 90 FD A0      [24] 2950 	mov	dptr,#(_macdata + 0x000f)
   09D9 E4            [12] 2951 	clr	a
   09DA F0            [24] 2952 	movx	@dptr,a
   09DB E4            [12] 2953 	clr	a
   09DC A3            [24] 2954 	inc	dptr
   09DD F0            [24] 2955 	movx	@dptr,a
                           2956 ;	appFHSSNIC.c:540: macdata.synched_chans = 0;
   09DE 90 FD A4      [24] 2957 	mov	dptr,#(_macdata + 0x0013)
   09E1 E4            [12] 2958 	clr	a
   09E2 F0            [24] 2959 	movx	@dptr,a
   09E3 E4            [12] 2960 	clr	a
   09E4 A3            [24] 2961 	inc	dptr
   09E5 F0            [24] 2962 	movx	@dptr,a
                           2963 ;	appFHSSNIC.c:542: MAC_initChannels();
   09E6 12 01 33      [24] 2964 	lcall	_MAC_initChannels
                           2965 ;	appFHSSNIC.c:544: macdata.mac_state = MAC_STATE_NONHOPPING;   // this is basic NIC functionality
   09E9 90 FD 91      [24] 2966 	mov	dptr,#_macdata
   09EC E4            [12] 2967 	clr	a
   09ED F0            [24] 2968 	movx	@dptr,a
                           2969 ;	appFHSSNIC.c:554: T2PR = 0xdc;        
   09EE 75 9D DC      [24] 2970 	mov	_T2PR,#0xDC
                           2971 ;	appFHSSNIC.c:555: T2CTL |= T2CTL_TIP_64;  // 64, 128, 256, 1024
   09F1 85 9E 9E      [24] 2972 	mov	_T2CTL,_T2CTL
                           2973 ;	appFHSSNIC.c:589: T2CTL |= T2CTL_TIG;
   09F4 43 9E 04      [24] 2974 	orl	_T2CTL,#0x04
                           2975 ;	appFHSSNIC.c:595: T3CTL |= T3CTL_START;
   09F7 43 CB 10      [24] 2976 	orl	_T3CTL,#0x10
   09FA 22            [24] 2977 	ret
                           2978 ;------------------------------------------------------------
                           2979 ;Allocation info for local variables in function 'init_MAC'
                           2980 ;------------------------------------------------------------
                           2981 ;	appFHSSNIC.c:599: void init_MAC(void)
                           2982 ;	-----------------------------------------
                           2983 ;	 function init_MAC
                           2984 ;	-----------------------------------------
   09FB                    2985 _init_MAC:
                           2986 ;	appFHSSNIC.c:601: init_FHSS();
   09FB 02 09 8F      [24] 2987 	ljmp	_init_FHSS
                           2988 ;------------------------------------------------------------
                           2989 ;Allocation info for local variables in function 'appMainInit'
                           2990 ;------------------------------------------------------------
                           2991 ;	appFHSSNIC.c:612: void appMainInit(void)
                           2992 ;	-----------------------------------------
                           2993 ;	 function appMainInit
                           2994 ;	-----------------------------------------
   09FE                    2995 _appMainInit:
                           2996 ;	appFHSSNIC.c:615: registerCb_ep5( appHandleEP5 );
   09FE 90 0E 24      [24] 2997 	mov	dptr,#_appHandleEP5
   0A01 12 1C 57      [24] 2998 	lcall	_registerCb_ep5
                           2999 ;	appFHSSNIC.c:617: clock = 0;
   0A04 90 FD B7      [24] 3000 	mov	dptr,#_clock
   0A07 E4            [12] 3001 	clr	a
   0A08 F0            [24] 3002 	movx	@dptr,a
   0A09 E4            [12] 3003 	clr	a
   0A0A A3            [24] 3004 	inc	dptr
   0A0B F0            [24] 3005 	movx	@dptr,a
   0A0C E4            [12] 3006 	clr	a
   0A0D A3            [24] 3007 	inc	dptr
   0A0E F0            [24] 3008 	movx	@dptr,a
   0A0F E4            [12] 3009 	clr	a
   0A10 A3            [24] 3010 	inc	dptr
   0A11 F0            [24] 3011 	movx	@dptr,a
                           3012 ;	appFHSSNIC.c:619: init_MAC();
   0A12 12 09 FB      [24] 3013 	lcall	_init_MAC
                           3014 ;	appFHSSNIC.c:621: processbuffer = 0;
   0A15 90 F5 83      [24] 3015 	mov	dptr,#_processbuffer
   0A18 E4            [12] 3016 	clr	a
   0A19 F0            [24] 3017 	movx	@dptr,a
                           3018 ;	appFHSSNIC.c:622: chan_table = rfrxbuf[0];
   0A1A 90 F5 84      [24] 3019 	mov	dptr,#_chan_table
   0A1D 74 82         [12] 3020 	mov	a,#_rfrxbuf
   0A1F F0            [24] 3021 	movx	@dptr,a
   0A20 74 F9         [12] 3022 	mov	a,#(_rfrxbuf >> 8)
   0A22 A3            [24] 3023 	inc	dptr
   0A23 F0            [24] 3024 	movx	@dptr,a
   0A24 22            [24] 3025 	ret
                           3026 ;------------------------------------------------------------
                           3027 ;Allocation info for local variables in function 'appMainLoop'
                           3028 ;------------------------------------------------------------
                           3029 ;	appFHSSNIC.c:628: void appMainLoop(void)
                           3030 ;	-----------------------------------------
                           3031 ;	 function appMainLoop
                           3032 ;	-----------------------------------------
   0A25                    3033 _appMainLoop:
                           3034 ;	appFHSSNIC.c:631: switch  (macdata.mac_state)
   0A25 90 FD 91      [24] 3035 	mov	dptr,#_macdata
   0A28 E0            [24] 3036 	movx	a,@dptr
   0A29 FF            [12] 3037 	mov	r7,a
   0A2A BF 00 03      [24] 3038 	cjne	r7,#0x00,00271$
   0A2D 02 0D 59      [24] 3039 	ljmp	00154$
   0A30                    3040 00271$:
   0A30 BF 01 03      [24] 3041 	cjne	r7,#0x01,00272$
   0A33 02 0C 2A      [24] 3042 	ljmp	00139$
   0A36                    3043 00272$:
   0A36 BF 02 03      [24] 3044 	cjne	r7,#0x02,00273$
   0A39 02 0B 28      [24] 3045 	ljmp	00129$
   0A3C                    3046 00273$:
   0A3C BF 03 03      [24] 3047 	cjne	r7,#0x03,00274$
   0A3F 02 0D 59      [24] 3048 	ljmp	00154$
   0A42                    3049 00274$:
   0A42 BF 04 03      [24] 3050 	cjne	r7,#0x04,00275$
   0A45 02 0D 59      [24] 3051 	ljmp	00154$
   0A48                    3052 00275$:
   0A48 BF 05 03      [24] 3053 	cjne	r7,#0x05,00276$
   0A4B 02 0D 3A      [24] 3054 	ljmp	00149$
   0A4E                    3055 00276$:
   0A4E BF 06 01      [24] 3056 	cjne	r7,#0x06,00277$
   0A51 22            [24] 3057 	ret
   0A52                    3058 00277$:
   0A52 BF 40 02      [24] 3059 	cjne	r7,#0x40,00278$
   0A55 80 06         [24] 3060 	sjmp	00106$
   0A57                    3061 00278$:
   0A57 BF 41 02      [24] 3062 	cjne	r7,#0x41,00279$
   0A5A 80 41         [24] 3063 	sjmp	00109$
   0A5C                    3064 00279$:
   0A5C 22            [24] 3065 	ret
                           3066 ;	appFHSSNIC.c:638: RFOFF;
   0A5D                    3067 00106$:
   0A5D 75 E1 04      [24] 3068 	mov	_RFST,#0x04
   0A60                    3069 00103$:
   0A60 90 DF 3B      [24] 3070 	mov	dptr,#_MARCSTATE
   0A63 E0            [24] 3071 	movx	a,@dptr
   0A64 FF            [12] 3072 	mov	r7,a
   0A65 BF 01 F8      [24] 3073 	cjne	r7,#0x01,00103$
                           3074 ;	appFHSSNIC.c:639: PKTCTRL1 =  0xE5;       // highest PQT, address check, append_status
   0A68 90 DF 03      [24] 3075 	mov	dptr,#_PKTCTRL1
   0A6B 74 E5         [12] 3076 	mov	a,#0xE5
   0A6D F0            [24] 3077 	movx	@dptr,a
                           3078 ;	appFHSSNIC.c:640: PKTCTRL0 =  0x04;       // crc enabled      ( we really don't want any packets coming our way :)
   0A6E 90 DF 04      [24] 3079 	mov	dptr,#_PKTCTRL0
   0A71 74 04         [12] 3080 	mov	a,#0x04
   0A73 F0            [24] 3081 	movx	@dptr,a
                           3082 ;	appFHSSNIC.c:641: FSCTRL1 =   0x12;       // freq if
   0A74 90 DF 07      [24] 3083 	mov	dptr,#_FSCTRL1
   0A77 74 12         [12] 3084 	mov	a,#0x12
   0A79 F0            [24] 3085 	movx	@dptr,a
                           3086 ;	appFHSSNIC.c:642: FSCTRL0 =   0x00;
   0A7A 90 DF 08      [24] 3087 	mov	dptr,#_FSCTRL0
   0A7D E4            [12] 3088 	clr	a
   0A7E F0            [24] 3089 	movx	@dptr,a
                           3090 ;	appFHSSNIC.c:643: MCSM0 =     0x10;       // autocal/no auto-cal....  hmmm...
   0A7F 90 DF 14      [24] 3091 	mov	dptr,#_MCSM0
   0A82 74 10         [12] 3092 	mov	a,#0x10
   0A84 F0            [24] 3093 	movx	@dptr,a
                           3094 ;	appFHSSNIC.c:644: AGCCTRL2 |= AGCCTRL2_MAX_DVGA_GAIN;     // disable 3 highest gain settings
   0A85 90 DF 17      [24] 3095 	mov	dptr,#_AGCCTRL2
   0A88 E0            [24] 3096 	movx	a,@dptr
   0A89 FF            [12] 3097 	mov	r7,a
   0A8A 44 C0         [12] 3098 	orl	a,#0xC0
   0A8C F0            [24] 3099 	movx	@dptr,a
                           3100 ;	appFHSSNIC.c:645: macdata.mac_state = MAC_STATE_SPECAN;
   0A8D 90 FD 91      [24] 3101 	mov	dptr,#_macdata
   0A90 74 41         [12] 3102 	mov	a,#0x41
   0A92 F0            [24] 3103 	movx	@dptr,a
                           3104 ;	appFHSSNIC.c:647: chan_table = rfrxbuf[0];
   0A93 90 F5 84      [24] 3105 	mov	dptr,#_chan_table
   0A96 74 82         [12] 3106 	mov	a,#_rfrxbuf
   0A98 F0            [24] 3107 	movx	@dptr,a
   0A99 74 F9         [12] 3108 	mov	a,#(_rfrxbuf >> 8)
   0A9B A3            [24] 3109 	inc	dptr
   0A9C F0            [24] 3110 	movx	@dptr,a
                           3111 ;	appFHSSNIC.c:649: case MAC_STATE_SPECAN:
   0A9D                    3112 00109$:
                           3113 ;	appFHSSNIC.c:650: for (processbuffer = 0; processbuffer < macdata.synched_chans; processbuffer++)
   0A9D 90 F5 83      [24] 3114 	mov	dptr,#_processbuffer
   0AA0 E4            [12] 3115 	clr	a
   0AA1 F0            [24] 3116 	movx	@dptr,a
   0AA2                    3117 00166$:
   0AA2 90 FD A4      [24] 3118 	mov	dptr,#(_macdata + 0x0013)
   0AA5 E0            [24] 3119 	movx	a,@dptr
   0AA6 FE            [12] 3120 	mov	r6,a
   0AA7 A3            [24] 3121 	inc	dptr
   0AA8 E0            [24] 3122 	movx	a,@dptr
   0AA9 FF            [12] 3123 	mov	r7,a
   0AAA 90 F5 83      [24] 3124 	mov	dptr,#_processbuffer
   0AAD E0            [24] 3125 	movx	a,@dptr
   0AAE FD            [12] 3126 	mov	r5,a
   0AAF FB            [12] 3127 	mov	r3,a
   0AB0 7C 00         [12] 3128 	mov	r4,#0x00
   0AB2 C3            [12] 3129 	clr	c
   0AB3 EB            [12] 3130 	mov	a,r3
   0AB4 9E            [12] 3131 	subb	a,r6
   0AB5 EC            [12] 3132 	mov	a,r4
   0AB6 9F            [12] 3133 	subb	a,r7
   0AB7 50 45         [24] 3134 	jnc	00126$
                           3135 ;	appFHSSNIC.c:653: CHANNR = processbuffer;        // may not be the fastest, but otherwise we have to store FSCAL data for each channel
   0AB9 90 DF 06      [24] 3136 	mov	dptr,#_CHANNR
   0ABC ED            [12] 3137 	mov	a,r5
   0ABD F0            [24] 3138 	movx	@dptr,a
                           3139 ;	appFHSSNIC.c:654: RFOFF;
   0ABE 75 E1 04      [24] 3140 	mov	_RFST,#0x04
   0AC1                    3141 00110$:
   0AC1 90 DF 3B      [24] 3142 	mov	dptr,#_MARCSTATE
   0AC4 E0            [24] 3143 	movx	a,@dptr
   0AC5 FF            [12] 3144 	mov	r7,a
   0AC6 BF 01 F8      [24] 3145 	cjne	r7,#0x01,00110$
                           3146 ;	appFHSSNIC.c:655: RFRX;
   0AC9 75 E1 02      [24] 3147 	mov	_RFST,#0x02
   0ACC                    3148 00116$:
   0ACC 90 DF 3B      [24] 3149 	mov	dptr,#_MARCSTATE
   0ACF E0            [24] 3150 	movx	a,@dptr
   0AD0 FF            [12] 3151 	mov	r7,a
   0AD1 BF 0D F8      [24] 3152 	cjne	r7,#0x0D,00116$
                           3153 ;	appFHSSNIC.c:656: sleepMillis(2);
   0AD4 90 00 02      [24] 3154 	mov	dptr,#0x0002
   0AD7 12 2D 4B      [24] 3155 	lcall	_sleepMillis
                           3156 ;	appFHSSNIC.c:659: chan_table[processbuffer] = (RSSI);
   0ADA 90 F5 84      [24] 3157 	mov	dptr,#_chan_table
   0ADD E0            [24] 3158 	movx	a,@dptr
   0ADE FE            [12] 3159 	mov	r6,a
   0ADF A3            [24] 3160 	inc	dptr
   0AE0 E0            [24] 3161 	movx	a,@dptr
   0AE1 FF            [12] 3162 	mov	r7,a
   0AE2 90 F5 83      [24] 3163 	mov	dptr,#_processbuffer
   0AE5 E0            [24] 3164 	movx	a,@dptr
   0AE6 2E            [12] 3165 	add	a,r6
   0AE7 FE            [12] 3166 	mov	r6,a
   0AE8 E4            [12] 3167 	clr	a
   0AE9 3F            [12] 3168 	addc	a,r7
   0AEA FF            [12] 3169 	mov	r7,a
   0AEB 90 DF 3A      [24] 3170 	mov	dptr,#_RSSI
   0AEE E0            [24] 3171 	movx	a,@dptr
   0AEF FD            [12] 3172 	mov	r5,a
   0AF0 8E 82         [24] 3173 	mov	dpl,r6
   0AF2 8F 83         [24] 3174 	mov	dph,r7
   0AF4 F0            [24] 3175 	movx	@dptr,a
                           3176 ;	appFHSSNIC.c:650: for (processbuffer = 0; processbuffer < macdata.synched_chans; processbuffer++)
   0AF5 90 F5 83      [24] 3177 	mov	dptr,#_processbuffer
   0AF8 E0            [24] 3178 	movx	a,@dptr
   0AF9 24 01         [12] 3179 	add	a,#0x01
   0AFB F0            [24] 3180 	movx	@dptr,a
                           3181 ;	appFHSSNIC.c:663: RFOFF;
   0AFC 80 A4         [24] 3182 	sjmp	00166$
   0AFE                    3183 00126$:
   0AFE 75 E1 04      [24] 3184 	mov	_RFST,#0x04
   0B01                    3185 00123$:
   0B01 90 DF 3B      [24] 3186 	mov	dptr,#_MARCSTATE
   0B04 E0            [24] 3187 	movx	a,@dptr
   0B05 FF            [12] 3188 	mov	r7,a
   0B06 BF 01 F8      [24] 3189 	cjne	r7,#0x01,00123$
                           3190 ;	appFHSSNIC.c:664: txdata( APP_SPECAN, SPECAN_QUEUE, (u8)macdata.synched_chans, (__xdata u8*)&chan_table[0] );
   0B09 90 FD A4      [24] 3191 	mov	dptr,#(_macdata + 0x0013)
   0B0C E0            [24] 3192 	movx	a,@dptr
   0B0D FE            [12] 3193 	mov	r6,a
   0B0E A3            [24] 3194 	inc	dptr
   0B0F E0            [24] 3195 	movx	a,@dptr
   0B10 8E 2F         [24] 3196 	mov	_txdata_PARM_3,r6
   0B12 75 30 00      [24] 3197 	mov	(_txdata_PARM_3 + 1),#0x00
   0B15 90 F5 84      [24] 3198 	mov	dptr,#_chan_table
   0B18 E0            [24] 3199 	movx	a,@dptr
   0B19 F5 31         [12] 3200 	mov	_txdata_PARM_4,a
   0B1B A3            [24] 3201 	inc	dptr
   0B1C E0            [24] 3202 	movx	a,@dptr
   0B1D F5 32         [12] 3203 	mov	(_txdata_PARM_4 + 1),a
   0B1F 75 2E 01      [24] 3204 	mov	_txdata_PARM_2,#0x01
   0B22 75 82 43      [24] 3205 	mov	dpl,#0x43
                           3206 ;	appFHSSNIC.c:665: break;
   0B25 02 1C 0B      [24] 3207 	ljmp	_txdata
                           3208 ;	appFHSSNIC.c:667: case MAC_STATE_SYNCHING:
   0B28                    3209 00129$:
                           3210 ;	appFHSSNIC.c:670: if (rfif)
   0B28 E5 0F         [12] 3211 	mov	a,_rfif
   0B2A 70 03         [24] 3212 	jnz	00289$
   0B2C 02 0C 18      [24] 3213 	ljmp	00138$
   0B2F                    3214 00289$:
                           3215 ;	appFHSSNIC.c:672: lastCode[0] = 0xd;
   0B2F 90 FD B5      [24] 3216 	mov	dptr,#_lastCode
   0B32 74 0D         [12] 3217 	mov	a,#0x0D
   0B34 F0            [24] 3218 	movx	@dptr,a
                           3219 ;	appFHSSNIC.c:673: IEN2 &= ~IEN2_RFIE;   // FIXME: is this ok?
   0B35 AF 9A         [24] 3220 	mov	r7,_IEN2
   0B37 74 FE         [12] 3221 	mov	a,#0xFE
   0B39 5F            [12] 3222 	anl	a,r7
   0B3A F5 9A         [12] 3223 	mov	_IEN2,a
                           3224 ;	appFHSSNIC.c:675: if(rfif & RFIF_IRQ_DONE)
   0B3C E5 0F         [12] 3225 	mov	a,_rfif
   0B3E 20 E4 03      [24] 3226 	jb	acc.4,00290$
   0B41 02 0C 18      [24] 3227 	ljmp	00138$
   0B44                    3228 00290$:
                           3229 ;	appFHSSNIC.c:679: macdata.mac_state = MAC_STATE_SYNCHED;
   0B44 90 FD 91      [24] 3230 	mov	dptr,#_macdata
   0B47 74 03         [12] 3231 	mov	a,#0x03
   0B49 F0            [24] 3232 	movx	@dptr,a
                           3233 ;	appFHSSNIC.c:680: begin_hopping((u8)(rf_tLastRecv & 0xff));       // synching happens within
   0B4A 90 FD 8F      [24] 3234 	mov	dptr,#_rf_tLastRecv
   0B4D E0            [24] 3235 	movx	a,@dptr
   0B4E FE            [12] 3236 	mov	r6,a
   0B4F A3            [24] 3237 	inc	dptr
   0B50 E0            [24] 3238 	movx	a,@dptr
   0B51 8E 82         [24] 3239 	mov	dpl,r6
   0B53 12 01 85      [24] 3240 	lcall	_begin_hopping
                           3241 ;	appFHSSNIC.c:682: debug("network packet(sync)");
   0B56 90 36 BD      [24] 3242 	mov	dptr,#__str_7
   0B59 12 21 70      [24] 3243 	lcall	_debug
                           3244 ;	appFHSSNIC.c:683: debughex16((u16)rf_tLastRecv);
   0B5C 90 FD 8F      [24] 3245 	mov	dptr,#_rf_tLastRecv
   0B5F E0            [24] 3246 	movx	a,@dptr
   0B60 FE            [12] 3247 	mov	r6,a
   0B61 A3            [24] 3248 	inc	dptr
   0B62 E0            [24] 3249 	movx	a,@dptr
   0B63 FF            [12] 3250 	mov	r7,a
   0B64 8E 82         [24] 3251 	mov	dpl,r6
   0B66 8F 83         [24] 3252 	mov	dph,r7
   0B68 12 21 CD      [24] 3253 	lcall	_debughex16
                           3254 ;	appFHSSNIC.c:684: debug((__code u8*)&rfrxbuf[rfRxCurrentBuffer][0]);
   0B6B 90 F9 81      [24] 3255 	mov	dptr,#_rfRxCurrentBuffer
   0B6E E0            [24] 3256 	movx	a,@dptr
   0B6F 25 E0         [12] 3257 	add	a,acc
   0B71 FE            [12] 3258 	mov	r6,a
   0B72 E4            [12] 3259 	clr	a
   0B73 24 82         [12] 3260 	add	a,#_rfrxbuf
   0B75 FF            [12] 3261 	mov	r7,a
   0B76 EE            [12] 3262 	mov	a,r6
   0B77 34 F9         [12] 3263 	addc	a,#(_rfrxbuf >> 8)
   0B79 FE            [12] 3264 	mov	r6,a
   0B7A 8F 82         [24] 3265 	mov	dpl,r7
   0B7C 8E 83         [24] 3266 	mov	dph,r6
   0B7E 12 21 70      [24] 3267 	lcall	_debug
                           3268 ;	appFHSSNIC.c:687: processbuffer = !rfRxCurrentBuffer;
   0B81 90 F9 81      [24] 3269 	mov	dptr,#_rfRxCurrentBuffer
   0B84 E0            [24] 3270 	movx	a,@dptr
   0B85 FF            [12] 3271 	mov	r7,a
   0B86 B4 01 00      [24] 3272 	cjne	a,#0x01,00291$
   0B89                    3273 00291$:
   0B89 E4            [12] 3274 	clr	a
   0B8A 33            [12] 3275 	rlc	a
   0B8B FF            [12] 3276 	mov	r7,a
   0B8C 90 F5 83      [24] 3277 	mov	dptr,#_processbuffer
   0B8F F0            [24] 3278 	movx	@dptr,a
                           3279 ;	appFHSSNIC.c:688: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
   0B90 EF            [12] 3280 	mov	a,r7
   0B91 24 86         [12] 3281 	add	a,#_rfRxProcessed
   0B93 FD            [12] 3282 	mov	r5,a
   0B94 E4            [12] 3283 	clr	a
   0B95 34 FD         [12] 3284 	addc	a,#(_rfRxProcessed >> 8)
   0B97 FE            [12] 3285 	mov	r6,a
   0B98 8D 82         [24] 3286 	mov	dpl,r5
   0B9A 8E 83         [24] 3287 	mov	dph,r6
   0B9C E0            [24] 3288 	movx	a,@dptr
   0B9D 70 72         [24] 3289 	jnz	00134$
                           3290 ;	appFHSSNIC.c:691: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
   0B9F 90 DF 04      [24] 3291 	mov	dptr,#_PKTCTRL0
   0BA2 E0            [24] 3292 	movx	a,@dptr
   0BA3 FE            [12] 3293 	mov	r6,a
   0BA4 30 E0 37      [24] 3294 	jnb	acc.0,00131$
                           3295 ;	appFHSSNIC.c:692: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
   0BA7 8F 06         [24] 3296 	mov	ar6,r7
   0BA9 EE            [12] 3297 	mov	a,r6
   0BAA 2E            [12] 3298 	add	a,r6
   0BAB FD            [12] 3299 	mov	r5,a
   0BAC E4            [12] 3300 	clr	a
   0BAD 24 82         [12] 3301 	add	a,#_rfrxbuf
   0BAF F5 82         [12] 3302 	mov	dpl,a
   0BB1 ED            [12] 3303 	mov	a,r5
   0BB2 34 F9         [12] 3304 	addc	a,#(_rfrxbuf >> 8)
   0BB4 F5 83         [12] 3305 	mov	dph,a
   0BB6 E0            [24] 3306 	movx	a,@dptr
   0BB7 FE            [12] 3307 	mov	r6,a
   0BB8 8E 2F         [24] 3308 	mov	_txdata_PARM_3,r6
   0BBA 75 30 00      [24] 3309 	mov	(_txdata_PARM_3 + 1),#0x00
   0BBD 8F 06         [24] 3310 	mov	ar6,r7
   0BBF EE            [12] 3311 	mov	a,r6
   0BC0 2E            [12] 3312 	add	a,r6
   0BC1 FD            [12] 3313 	mov	r5,a
   0BC2 E4            [12] 3314 	clr	a
   0BC3 24 82         [12] 3315 	add	a,#_rfrxbuf
   0BC5 FE            [12] 3316 	mov	r6,a
   0BC6 ED            [12] 3317 	mov	a,r5
   0BC7 34 F9         [12] 3318 	addc	a,#(_rfrxbuf >> 8)
   0BC9 FD            [12] 3319 	mov	r5,a
   0BCA 74 01         [12] 3320 	mov	a,#0x01
   0BCC 2E            [12] 3321 	add	a,r6
   0BCD F5 31         [12] 3322 	mov	_txdata_PARM_4,a
   0BCF E4            [12] 3323 	clr	a
   0BD0 3D            [12] 3324 	addc	a,r5
   0BD1 F5 32         [12] 3325 	mov	(_txdata_PARM_4 + 1),a
   0BD3 75 2E 01      [24] 3326 	mov	_txdata_PARM_2,#0x01
   0BD6 75 82 42      [24] 3327 	mov	dpl,#0x42
   0BD9 12 1C 0B      [24] 3328 	lcall	_txdata
   0BDC 80 22         [24] 3329 	sjmp	00132$
   0BDE                    3330 00131$:
                           3331 ;	appFHSSNIC.c:694: txdata(APP_NIC, NIC_RECV, PKTLEN, (u8*)&rfrxbuf[processbuffer]);
   0BDE 90 DF 02      [24] 3332 	mov	dptr,#_PKTLEN
   0BE1 E0            [24] 3333 	movx	a,@dptr
   0BE2 FE            [12] 3334 	mov	r6,a
   0BE3 8E 2F         [24] 3335 	mov	_txdata_PARM_3,r6
   0BE5 E4            [12] 3336 	clr	a
   0BE6 F5 30         [12] 3337 	mov	(_txdata_PARM_3 + 1),a
   0BE8 EF            [12] 3338 	mov	a,r7
   0BE9 2F            [12] 3339 	add	a,r7
   0BEA FE            [12] 3340 	mov	r6,a
   0BEB E4            [12] 3341 	clr	a
   0BEC 24 82         [12] 3342 	add	a,#_rfrxbuf
   0BEE FF            [12] 3343 	mov	r7,a
   0BEF EE            [12] 3344 	mov	a,r6
   0BF0 34 F9         [12] 3345 	addc	a,#(_rfrxbuf >> 8)
   0BF2 FE            [12] 3346 	mov	r6,a
   0BF3 8F 31         [24] 3347 	mov	_txdata_PARM_4,r7
   0BF5 8E 32         [24] 3348 	mov	(_txdata_PARM_4 + 1),r6
   0BF7 75 2E 01      [24] 3349 	mov	_txdata_PARM_2,#0x01
   0BFA 75 82 42      [24] 3350 	mov	dpl,#0x42
   0BFD 12 1C 0B      [24] 3351 	lcall	_txdata
   0C00                    3352 00132$:
                           3353 ;	appFHSSNIC.c:697: rfRxProcessed[processbuffer] = RX_PROCESSED;
   0C00 90 F5 83      [24] 3354 	mov	dptr,#_processbuffer
   0C03 E0            [24] 3355 	movx	a,@dptr
   0C04 FF            [12] 3356 	mov	r7,a
   0C05 24 86         [12] 3357 	add	a,#_rfRxProcessed
   0C07 F5 82         [12] 3358 	mov	dpl,a
   0C09 E4            [12] 3359 	clr	a
   0C0A 34 FD         [12] 3360 	addc	a,#(_rfRxProcessed >> 8)
   0C0C F5 83         [12] 3361 	mov	dph,a
   0C0E 74 01         [12] 3362 	mov	a,#0x01
   0C10 F0            [24] 3363 	movx	@dptr,a
   0C11                    3364 00134$:
                           3365 ;	appFHSSNIC.c:699: rfif &= ~RFIF_IRQ_DONE;
   0C11 AF 0F         [24] 3366 	mov	r7,_rfif
   0C13 74 EF         [12] 3367 	mov	a,#0xEF
   0C15 5F            [12] 3368 	anl	a,r7
   0C16 F5 0F         [12] 3369 	mov	_rfif,a
   0C18                    3370 00138$:
                           3371 ;	appFHSSNIC.c:703: __critical { rfif = 0; }
   0C18 D2 00         [12] 3372 	setb	_appMainLoop_sloc0_1_0
   0C1A 10 AF 02      [24] 3373 	jbc	ea,00294$
   0C1D C2 00         [12] 3374 	clr	_appMainLoop_sloc0_1_0
   0C1F                    3375 00294$:
   0C1F 75 0F 00      [24] 3376 	mov	_rfif,#0x00
   0C22 A2 00         [12] 3377 	mov	c,_appMainLoop_sloc0_1_0
   0C24 92 AF         [24] 3378 	mov	ea,c
                           3379 ;	appFHSSNIC.c:704: IEN2 |= IEN2_RFIE;
   0C26 43 9A 01      [24] 3380 	orl	_IEN2,#0x01
                           3381 ;	appFHSSNIC.c:705: break;
   0C29 22            [24] 3382 	ret
                           3383 ;	appFHSSNIC.c:707: case MAC_STATE_DISCOVERY:
   0C2A                    3384 00139$:
                           3385 ;	appFHSSNIC.c:710: if (rfif)
   0C2A E5 0F         [12] 3386 	mov	a,_rfif
   0C2C 70 03         [24] 3387 	jnz	00295$
   0C2E 02 0D 28      [24] 3388 	ljmp	00148$
   0C31                    3389 00295$:
                           3390 ;	appFHSSNIC.c:712: lastCode[0] = 0xd;
   0C31 90 FD B5      [24] 3391 	mov	dptr,#_lastCode
   0C34 74 0D         [12] 3392 	mov	a,#0x0D
   0C36 F0            [24] 3393 	movx	@dptr,a
                           3394 ;	appFHSSNIC.c:713: IEN2 &= ~IEN2_RFIE;
   0C37 AF 9A         [24] 3395 	mov	r7,_IEN2
   0C39 74 FE         [12] 3396 	mov	a,#0xFE
   0C3B 5F            [12] 3397 	anl	a,r7
   0C3C F5 9A         [12] 3398 	mov	_IEN2,a
                           3399 ;	appFHSSNIC.c:715: if(rfif & RFIF_IRQ_DONE)
   0C3E E5 0F         [12] 3400 	mov	a,_rfif
   0C40 20 E4 03      [24] 3401 	jb	acc.4,00296$
   0C43 02 0D 28      [24] 3402 	ljmp	00148$
   0C46                    3403 00296$:
                           3404 ;	appFHSSNIC.c:718: processbuffer = !rfRxCurrentBuffer;
   0C46 90 F9 81      [24] 3405 	mov	dptr,#_rfRxCurrentBuffer
   0C49 E0            [24] 3406 	movx	a,@dptr
   0C4A FF            [12] 3407 	mov	r7,a
   0C4B 90 F5 83      [24] 3408 	mov	dptr,#_processbuffer
   0C4E B4 01 00      [24] 3409 	cjne	a,#0x01,00297$
   0C51                    3410 00297$:
   0C51 E4            [12] 3411 	clr	a
   0C52 33            [12] 3412 	rlc	a
   0C53 F0            [24] 3413 	movx	@dptr,a
                           3414 ;	appFHSSNIC.c:719: debug("network packet(discovery)");
   0C54 90 36 D2      [24] 3415 	mov	dptr,#__str_8
   0C57 12 21 70      [24] 3416 	lcall	_debug
                           3417 ;	appFHSSNIC.c:720: debughex16((u16)rfrxbuf[processbuffer]);
   0C5A 90 F5 83      [24] 3418 	mov	dptr,#_processbuffer
   0C5D E0            [24] 3419 	movx	a,@dptr
   0C5E 25 E0         [12] 3420 	add	a,acc
   0C60 FE            [12] 3421 	mov	r6,a
   0C61 E4            [12] 3422 	clr	a
   0C62 24 82         [12] 3423 	add	a,#_rfrxbuf
   0C64 FF            [12] 3424 	mov	r7,a
   0C65 EE            [12] 3425 	mov	a,r6
   0C66 34 F9         [12] 3426 	addc	a,#(_rfrxbuf >> 8)
   0C68 FE            [12] 3427 	mov	r6,a
   0C69 8F 82         [24] 3428 	mov	dpl,r7
   0C6B 8E 83         [24] 3429 	mov	dph,r6
   0C6D 12 21 CD      [24] 3430 	lcall	_debughex16
                           3431 ;	appFHSSNIC.c:721: debug((__code u8*)&rfrxbuf[processbuffer][0]);
   0C70 90 F5 83      [24] 3432 	mov	dptr,#_processbuffer
   0C73 E0            [24] 3433 	movx	a,@dptr
   0C74 25 E0         [12] 3434 	add	a,acc
   0C76 FE            [12] 3435 	mov	r6,a
   0C77 E4            [12] 3436 	clr	a
   0C78 24 82         [12] 3437 	add	a,#_rfrxbuf
   0C7A FF            [12] 3438 	mov	r7,a
   0C7B EE            [12] 3439 	mov	a,r6
   0C7C 34 F9         [12] 3440 	addc	a,#(_rfrxbuf >> 8)
   0C7E FE            [12] 3441 	mov	r6,a
   0C7F 8F 82         [24] 3442 	mov	dpl,r7
   0C81 8E 83         [24] 3443 	mov	dph,r6
   0C83 12 21 70      [24] 3444 	lcall	_debug
                           3445 ;	appFHSSNIC.c:724: processbuffer = !rfRxCurrentBuffer;
   0C86 90 F9 81      [24] 3446 	mov	dptr,#_rfRxCurrentBuffer
   0C89 E0            [24] 3447 	movx	a,@dptr
   0C8A FF            [12] 3448 	mov	r7,a
   0C8B B4 01 00      [24] 3449 	cjne	a,#0x01,00298$
   0C8E                    3450 00298$:
   0C8E E4            [12] 3451 	clr	a
   0C8F 33            [12] 3452 	rlc	a
   0C90 FF            [12] 3453 	mov	r7,a
   0C91 90 F5 83      [24] 3454 	mov	dptr,#_processbuffer
   0C94 F0            [24] 3455 	movx	@dptr,a
                           3456 ;	appFHSSNIC.c:725: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
   0C95 EF            [12] 3457 	mov	a,r7
   0C96 24 86         [12] 3458 	add	a,#_rfRxProcessed
   0C98 FD            [12] 3459 	mov	r5,a
   0C99 E4            [12] 3460 	clr	a
   0C9A 34 FD         [12] 3461 	addc	a,#(_rfRxProcessed >> 8)
   0C9C FE            [12] 3462 	mov	r6,a
   0C9D 8D 82         [24] 3463 	mov	dpl,r5
   0C9F 8E 83         [24] 3464 	mov	dph,r6
   0CA1 E0            [24] 3465 	movx	a,@dptr
   0CA2 70 72         [24] 3466 	jnz	00144$
                           3467 ;	appFHSSNIC.c:728: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
   0CA4 90 DF 04      [24] 3468 	mov	dptr,#_PKTCTRL0
   0CA7 E0            [24] 3469 	movx	a,@dptr
   0CA8 FE            [12] 3470 	mov	r6,a
   0CA9 30 E0 37      [24] 3471 	jnb	acc.0,00141$
                           3472 ;	appFHSSNIC.c:729: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
   0CAC 8F 06         [24] 3473 	mov	ar6,r7
   0CAE EE            [12] 3474 	mov	a,r6
   0CAF 2E            [12] 3475 	add	a,r6
   0CB0 FD            [12] 3476 	mov	r5,a
   0CB1 E4            [12] 3477 	clr	a
   0CB2 24 82         [12] 3478 	add	a,#_rfrxbuf
   0CB4 F5 82         [12] 3479 	mov	dpl,a
   0CB6 ED            [12] 3480 	mov	a,r5
   0CB7 34 F9         [12] 3481 	addc	a,#(_rfrxbuf >> 8)
   0CB9 F5 83         [12] 3482 	mov	dph,a
   0CBB E0            [24] 3483 	movx	a,@dptr
   0CBC FE            [12] 3484 	mov	r6,a
   0CBD 8E 2F         [24] 3485 	mov	_txdata_PARM_3,r6
   0CBF 75 30 00      [24] 3486 	mov	(_txdata_PARM_3 + 1),#0x00
   0CC2 8F 06         [24] 3487 	mov	ar6,r7
   0CC4 EE            [12] 3488 	mov	a,r6
   0CC5 2E            [12] 3489 	add	a,r6
   0CC6 FD            [12] 3490 	mov	r5,a
   0CC7 E4            [12] 3491 	clr	a
   0CC8 24 82         [12] 3492 	add	a,#_rfrxbuf
   0CCA FE            [12] 3493 	mov	r6,a
   0CCB ED            [12] 3494 	mov	a,r5
   0CCC 34 F9         [12] 3495 	addc	a,#(_rfrxbuf >> 8)
   0CCE FD            [12] 3496 	mov	r5,a
   0CCF 74 01         [12] 3497 	mov	a,#0x01
   0CD1 2E            [12] 3498 	add	a,r6
   0CD2 F5 31         [12] 3499 	mov	_txdata_PARM_4,a
   0CD4 E4            [12] 3500 	clr	a
   0CD5 3D            [12] 3501 	addc	a,r5
   0CD6 F5 32         [12] 3502 	mov	(_txdata_PARM_4 + 1),a
   0CD8 75 2E 01      [24] 3503 	mov	_txdata_PARM_2,#0x01
   0CDB 75 82 42      [24] 3504 	mov	dpl,#0x42
   0CDE 12 1C 0B      [24] 3505 	lcall	_txdata
   0CE1 80 22         [24] 3506 	sjmp	00142$
   0CE3                    3507 00141$:
                           3508 ;	appFHSSNIC.c:731: txdata(APP_NIC, NIC_RECV, PKTLEN, (u8*)&rfrxbuf[processbuffer]);
   0CE3 90 DF 02      [24] 3509 	mov	dptr,#_PKTLEN
   0CE6 E0            [24] 3510 	movx	a,@dptr
   0CE7 FE            [12] 3511 	mov	r6,a
   0CE8 8E 2F         [24] 3512 	mov	_txdata_PARM_3,r6
   0CEA E4            [12] 3513 	clr	a
   0CEB F5 30         [12] 3514 	mov	(_txdata_PARM_3 + 1),a
   0CED EF            [12] 3515 	mov	a,r7
   0CEE 2F            [12] 3516 	add	a,r7
   0CEF FE            [12] 3517 	mov	r6,a
   0CF0 E4            [12] 3518 	clr	a
   0CF1 24 82         [12] 3519 	add	a,#_rfrxbuf
   0CF3 FF            [12] 3520 	mov	r7,a
   0CF4 EE            [12] 3521 	mov	a,r6
   0CF5 34 F9         [12] 3522 	addc	a,#(_rfrxbuf >> 8)
   0CF7 FE            [12] 3523 	mov	r6,a
   0CF8 8F 31         [24] 3524 	mov	_txdata_PARM_4,r7
   0CFA 8E 32         [24] 3525 	mov	(_txdata_PARM_4 + 1),r6
   0CFC 75 2E 01      [24] 3526 	mov	_txdata_PARM_2,#0x01
   0CFF 75 82 42      [24] 3527 	mov	dpl,#0x42
   0D02 12 1C 0B      [24] 3528 	lcall	_txdata
   0D05                    3529 00142$:
                           3530 ;	appFHSSNIC.c:734: rfRxProcessed[processbuffer] = RX_PROCESSED;
   0D05 90 F5 83      [24] 3531 	mov	dptr,#_processbuffer
   0D08 E0            [24] 3532 	movx	a,@dptr
   0D09 FF            [12] 3533 	mov	r7,a
   0D0A 24 86         [12] 3534 	add	a,#_rfRxProcessed
   0D0C F5 82         [12] 3535 	mov	dpl,a
   0D0E E4            [12] 3536 	clr	a
   0D0F 34 FD         [12] 3537 	addc	a,#(_rfRxProcessed >> 8)
   0D11 F5 83         [12] 3538 	mov	dph,a
   0D13 74 01         [12] 3539 	mov	a,#0x01
   0D15 F0            [24] 3540 	movx	@dptr,a
   0D16                    3541 00144$:
                           3542 ;	appFHSSNIC.c:736: __critical { rfif &= ~RFIF_IRQ_DONE; }
   0D16 D2 00         [12] 3543 	setb	_appMainLoop_sloc0_1_0
   0D18 10 AF 02      [24] 3544 	jbc	ea,00301$
   0D1B C2 00         [12] 3545 	clr	_appMainLoop_sloc0_1_0
   0D1D                    3546 00301$:
   0D1D AF 0F         [24] 3547 	mov	r7,_rfif
   0D1F 74 EF         [12] 3548 	mov	a,#0xEF
   0D21 5F            [12] 3549 	anl	a,r7
   0D22 F5 0F         [12] 3550 	mov	_rfif,a
   0D24 A2 00         [12] 3551 	mov	c,_appMainLoop_sloc0_1_0
   0D26 92 AF         [24] 3552 	mov	ea,c
   0D28                    3553 00148$:
                           3554 ;	appFHSSNIC.c:740: __critical{ rfif = 0; }
   0D28 D2 00         [12] 3555 	setb	_appMainLoop_sloc0_1_0
   0D2A 10 AF 02      [24] 3556 	jbc	ea,00302$
   0D2D C2 00         [12] 3557 	clr	_appMainLoop_sloc0_1_0
   0D2F                    3558 00302$:
   0D2F 75 0F 00      [24] 3559 	mov	_rfif,#0x00
   0D32 A2 00         [12] 3560 	mov	c,_appMainLoop_sloc0_1_0
   0D34 92 AF         [24] 3561 	mov	ea,c
                           3562 ;	appFHSSNIC.c:741: IEN2 |= IEN2_RFIE;
   0D36 43 9A 01      [24] 3563 	orl	_IEN2,#0x01
                           3564 ;	appFHSSNIC.c:742: break;
   0D39 22            [24] 3565 	ret
                           3566 ;	appFHSSNIC.c:744: case MAC_STATE_SYNCINGMASTER:
   0D3A                    3567 00149$:
                           3568 ;	appFHSSNIC.c:746: if (macdata.synched_chans >= macdata.NumChannelHops)
   0D3A 90 FD A4      [24] 3569 	mov	dptr,#(_macdata + 0x0013)
   0D3D E0            [24] 3570 	movx	a,@dptr
   0D3E FE            [12] 3571 	mov	r6,a
   0D3F A3            [24] 3572 	inc	dptr
   0D40 E0            [24] 3573 	movx	a,@dptr
   0D41 FF            [12] 3574 	mov	r7,a
   0D42 90 FD 98      [24] 3575 	mov	dptr,#(_macdata + 0x0007)
   0D45 E0            [24] 3576 	movx	a,@dptr
   0D46 FC            [12] 3577 	mov	r4,a
   0D47 A3            [24] 3578 	inc	dptr
   0D48 E0            [24] 3579 	movx	a,@dptr
   0D49 FD            [12] 3580 	mov	r5,a
   0D4A C3            [12] 3581 	clr	c
   0D4B EE            [12] 3582 	mov	a,r6
   0D4C 9C            [12] 3583 	subb	a,r4
   0D4D EF            [12] 3584 	mov	a,r7
   0D4E 9D            [12] 3585 	subb	a,r5
   0D4F 50 01         [24] 3586 	jnc	00303$
   0D51 22            [24] 3587 	ret
   0D52                    3588 00303$:
                           3589 ;	appFHSSNIC.c:748: macdata.mac_state = MAC_STATE_SYNC_MASTER;
   0D52 90 FD 91      [24] 3590 	mov	dptr,#_macdata
   0D55 74 04         [12] 3591 	mov	a,#0x04
   0D57 F0            [24] 3592 	movx	@dptr,a
                           3593 ;	appFHSSNIC.c:750: break;
   0D58 22            [24] 3594 	ret
                           3595 ;	appFHSSNIC.c:754: case MAC_STATE_NONHOPPING:
   0D59                    3596 00154$:
                           3597 ;	appFHSSNIC.c:756: if (rfif)
   0D59 E5 0F         [12] 3598 	mov	a,_rfif
   0D5B 70 01         [24] 3599 	jnz	00304$
   0D5D 22            [24] 3600 	ret
   0D5E                    3601 00304$:
                           3602 ;	appFHSSNIC.c:759: lastCode[0] = 0xd;
   0D5E 90 FD B5      [24] 3603 	mov	dptr,#_lastCode
   0D61 74 0D         [12] 3604 	mov	a,#0x0D
   0D63 F0            [24] 3605 	movx	@dptr,a
                           3606 ;	appFHSSNIC.c:761: if(rfif & (RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT) )
   0D64 E5 0F         [12] 3607 	mov	a,_rfif
   0D66 54 30         [12] 3608 	anl	a,#0x30
   0D68 70 01         [24] 3609 	jnz	00305$
   0D6A 22            [24] 3610 	ret
   0D6B                    3611 00305$:
                           3612 ;	appFHSSNIC.c:763: processbuffer = !rfRxCurrentBuffer;
   0D6B 90 F9 81      [24] 3613 	mov	dptr,#_rfRxCurrentBuffer
   0D6E E0            [24] 3614 	movx	a,@dptr
   0D6F FF            [12] 3615 	mov	r7,a
   0D70 B4 01 00      [24] 3616 	cjne	a,#0x01,00306$
   0D73                    3617 00306$:
   0D73 E4            [12] 3618 	clr	a
   0D74 33            [12] 3619 	rlc	a
   0D75 FF            [12] 3620 	mov	r7,a
   0D76 90 F5 83      [24] 3621 	mov	dptr,#_processbuffer
   0D79 F0            [24] 3622 	movx	@dptr,a
                           3623 ;	appFHSSNIC.c:764: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
   0D7A EF            [12] 3624 	mov	a,r7
   0D7B 24 86         [12] 3625 	add	a,#_rfRxProcessed
   0D7D FD            [12] 3626 	mov	r5,a
   0D7E E4            [12] 3627 	clr	a
   0D7F 34 FD         [12] 3628 	addc	a,#(_rfRxProcessed >> 8)
   0D81 FE            [12] 3629 	mov	r6,a
   0D82 8D 82         [24] 3630 	mov	dpl,r5
   0D84 8E 83         [24] 3631 	mov	dph,r6
   0D86 E0            [24] 3632 	movx	a,@dptr
   0D87 60 03         [24] 3633 	jz	00307$
   0D89 02 0E 11      [24] 3634 	ljmp	00159$
   0D8C                    3635 00307$:
                           3636 ;	appFHSSNIC.c:767: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
   0D8C 90 DF 04      [24] 3637 	mov	dptr,#_PKTCTRL0
   0D8F E0            [24] 3638 	movx	a,@dptr
   0D90 FE            [12] 3639 	mov	r6,a
   0D91 30 E0 37      [24] 3640 	jnb	acc.0,00156$
                           3641 ;	appFHSSNIC.c:769: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
   0D94 8F 06         [24] 3642 	mov	ar6,r7
   0D96 EE            [12] 3643 	mov	a,r6
   0D97 2E            [12] 3644 	add	a,r6
   0D98 FD            [12] 3645 	mov	r5,a
   0D99 E4            [12] 3646 	clr	a
   0D9A 24 82         [12] 3647 	add	a,#_rfrxbuf
   0D9C F5 82         [12] 3648 	mov	dpl,a
   0D9E ED            [12] 3649 	mov	a,r5
   0D9F 34 F9         [12] 3650 	addc	a,#(_rfrxbuf >> 8)
   0DA1 F5 83         [12] 3651 	mov	dph,a
   0DA3 E0            [24] 3652 	movx	a,@dptr
   0DA4 FE            [12] 3653 	mov	r6,a
   0DA5 8E 2F         [24] 3654 	mov	_txdata_PARM_3,r6
   0DA7 75 30 00      [24] 3655 	mov	(_txdata_PARM_3 + 1),#0x00
   0DAA 8F 06         [24] 3656 	mov	ar6,r7
   0DAC EE            [12] 3657 	mov	a,r6
   0DAD 2E            [12] 3658 	add	a,r6
   0DAE FD            [12] 3659 	mov	r5,a
   0DAF E4            [12] 3660 	clr	a
   0DB0 24 82         [12] 3661 	add	a,#_rfrxbuf
   0DB2 FE            [12] 3662 	mov	r6,a
   0DB3 ED            [12] 3663 	mov	a,r5
   0DB4 34 F9         [12] 3664 	addc	a,#(_rfrxbuf >> 8)
   0DB6 FD            [12] 3665 	mov	r5,a
   0DB7 74 01         [12] 3666 	mov	a,#0x01
   0DB9 2E            [12] 3667 	add	a,r6
   0DBA F5 31         [12] 3668 	mov	_txdata_PARM_4,a
   0DBC E4            [12] 3669 	clr	a
   0DBD 3D            [12] 3670 	addc	a,r5
   0DBE F5 32         [12] 3671 	mov	(_txdata_PARM_4 + 1),a
   0DC0 75 2E 01      [24] 3672 	mov	_txdata_PARM_2,#0x01
   0DC3 75 82 42      [24] 3673 	mov	dpl,#0x42
   0DC6 12 1C 0B      [24] 3674 	lcall	_txdata
   0DC9 80 35         [24] 3675 	sjmp	00157$
   0DCB                    3676 00156$:
                           3677 ;	appFHSSNIC.c:771: txdata(APP_NIC, NIC_RECV, rfRxInfMode ? rfRxLargeLen : PKTLEN, (u8*)&rfrxbuf[processbuffer]);
   0DCB 90 FD E7      [24] 3678 	mov	dptr,#_rfRxInfMode
   0DCE E0            [24] 3679 	movx	a,@dptr
   0DCF FE            [12] 3680 	mov	r6,a
   0DD0 60 0A         [24] 3681 	jz	00170$
   0DD2 90 FD EA      [24] 3682 	mov	dptr,#_rfRxLargeLen
   0DD5 E0            [24] 3683 	movx	a,@dptr
   0DD6 FD            [12] 3684 	mov	r5,a
   0DD7 A3            [24] 3685 	inc	dptr
   0DD8 E0            [24] 3686 	movx	a,@dptr
   0DD9 FE            [12] 3687 	mov	r6,a
   0DDA 80 08         [24] 3688 	sjmp	00171$
   0DDC                    3689 00170$:
   0DDC 90 DF 02      [24] 3690 	mov	dptr,#_PKTLEN
   0DDF E0            [24] 3691 	movx	a,@dptr
   0DE0 FC            [12] 3692 	mov	r4,a
   0DE1 FD            [12] 3693 	mov	r5,a
   0DE2 7E 00         [12] 3694 	mov	r6,#0x00
   0DE4                    3695 00171$:
   0DE4 EF            [12] 3696 	mov	a,r7
   0DE5 2F            [12] 3697 	add	a,r7
   0DE6 FC            [12] 3698 	mov	r4,a
   0DE7 E4            [12] 3699 	clr	a
   0DE8 24 82         [12] 3700 	add	a,#_rfrxbuf
   0DEA FF            [12] 3701 	mov	r7,a
   0DEB EC            [12] 3702 	mov	a,r4
   0DEC 34 F9         [12] 3703 	addc	a,#(_rfrxbuf >> 8)
   0DEE FC            [12] 3704 	mov	r4,a
   0DEF 8F 31         [24] 3705 	mov	_txdata_PARM_4,r7
   0DF1 8C 32         [24] 3706 	mov	(_txdata_PARM_4 + 1),r4
   0DF3 75 2E 01      [24] 3707 	mov	_txdata_PARM_2,#0x01
   0DF6 8D 2F         [24] 3708 	mov	_txdata_PARM_3,r5
   0DF8 8E 30         [24] 3709 	mov	(_txdata_PARM_3 + 1),r6
   0DFA 75 82 42      [24] 3710 	mov	dpl,#0x42
   0DFD 12 1C 0B      [24] 3711 	lcall	_txdata
   0E00                    3712 00157$:
                           3713 ;	appFHSSNIC.c:775: rfRxProcessed[processbuffer] = RX_PROCESSED;
   0E00 90 F5 83      [24] 3714 	mov	dptr,#_processbuffer
   0E03 E0            [24] 3715 	movx	a,@dptr
   0E04 FF            [12] 3716 	mov	r7,a
   0E05 24 86         [12] 3717 	add	a,#_rfRxProcessed
   0E07 F5 82         [12] 3718 	mov	dpl,a
   0E09 E4            [12] 3719 	clr	a
   0E0A 34 FD         [12] 3720 	addc	a,#(_rfRxProcessed >> 8)
   0E0C F5 83         [12] 3721 	mov	dph,a
   0E0E 74 01         [12] 3722 	mov	a,#0x01
   0E10 F0            [24] 3723 	movx	@dptr,a
   0E11                    3724 00159$:
                           3725 ;	appFHSSNIC.c:777: __critical { rfif &= ~( RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT );  }          // FIXME: rfif is way too easily tossed aside here...
   0E11 D2 00         [12] 3726 	setb	_appMainLoop_sloc0_1_0
   0E13 10 AF 02      [24] 3727 	jbc	ea,00310$
   0E16 C2 00         [12] 3728 	clr	_appMainLoop_sloc0_1_0
   0E18                    3729 00310$:
   0E18 AF 0F         [24] 3730 	mov	r7,_rfif
   0E1A 74 CF         [12] 3731 	mov	a,#0xCF
   0E1C 5F            [12] 3732 	anl	a,r7
   0E1D F5 0F         [12] 3733 	mov	_rfif,a
   0E1F A2 00         [12] 3734 	mov	c,_appMainLoop_sloc0_1_0
   0E21 92 AF         [24] 3735 	mov	ea,c
                           3736 ;	appFHSSNIC.c:783: }
   0E23 22            [24] 3737 	ret
                           3738 ;------------------------------------------------------------
                           3739 ;Allocation info for local variables in function 'appHandleEP5'
                           3740 ;------------------------------------------------------------
                           3741 ;sloc0                     Allocated with name '_appHandleEP5_sloc0_1_0'
                           3742 ;sloc1                     Allocated with name '_appHandleEP5_sloc1_1_0'
                           3743 ;len                       Allocated with name '_appHandleEP5_len_1_179'
                           3744 ;repeat                    Allocated with name '_appHandleEP5_repeat_1_179'
                           3745 ;offset                    Allocated with name '_appHandleEP5_offset_1_179'
                           3746 ;buf                       Allocated with name '_appHandleEP5_buf_1_179'
                           3747 ;blocks                    Allocated with name '_appHandleEP5_blocks_1_179'
                           3748 ;------------------------------------------------------------
                           3749 ;	appFHSSNIC.c:799: int appHandleEP5()
                           3750 ;	-----------------------------------------
                           3751 ;	 function appHandleEP5
                           3752 ;	-----------------------------------------
   0E24                    3753 _appHandleEP5:
                           3754 ;	appFHSSNIC.c:803: __xdata u8 * __xdata buf = &ep5.OUTbuf[0];
   0E24 90 F9 49      [24] 3755 	mov	dptr,#(_ep5 + 0x0005)
   0E27 E0            [24] 3756 	movx	a,@dptr
   0E28 FD            [12] 3757 	mov	r5,a
   0E29 A3            [24] 3758 	inc	dptr
   0E2A E0            [24] 3759 	movx	a,@dptr
   0E2B FE            [12] 3760 	mov	r6,a
   0E2C A3            [24] 3761 	inc	dptr
   0E2D E0            [24] 3762 	movx	a,@dptr
   0E2E FF            [12] 3763 	mov	r7,a
                           3764 ;	appFHSSNIC.c:806: switch (ep5.OUTapp)
   0E2F 90 F9 4E      [24] 3765 	mov	dptr,#(_ep5 + 0x000a)
   0E32 E0            [24] 3766 	movx	a,@dptr
   0E33 FC            [12] 3767 	mov	r4,a
   0E34 BC 42 02      [24] 3768 	cjne	r4,#0x42,00232$
   0E37 80 03         [24] 3769 	sjmp	00233$
   0E39                    3770 00232$:
   0E39 02 17 AF      [24] 3771 	ljmp	00172$
   0E3C                    3772 00233$:
                           3773 ;	appFHSSNIC.c:810: switch (ep5.OUTcmd)
   0E3C 90 F9 4F      [24] 3774 	mov	dptr,#(_ep5 + 0x000b)
   0E3F E0            [24] 3775 	movx	a,@dptr
   0E40 FC            [12] 3776 	mov  r4,a
   0E41 24 BE         [12] 3777 	add	a,#0xff - 0x41
   0E43 50 03         [24] 3778 	jnc	00234$
   0E45 02 17 A1      [24] 3779 	ljmp	00170$
   0E48                    3780 00234$:
   0E48 EC            [12] 3781 	mov	a,r4
   0E49 24 0A         [12] 3782 	add	a,#(00235$-3-.)
   0E4B 83            [24] 3783 	movc	a,@a+pc
   0E4C F5 82         [12] 3784 	mov	dpl,a
   0E4E EC            [12] 3785 	mov	a,r4
   0E4F 24 46         [12] 3786 	add	a,#(00236$-3-.)
   0E51 83            [24] 3787 	movc	a,@a+pc
   0E52 F5 83         [12] 3788 	mov	dph,a
   0E54 E4            [12] 3789 	clr	a
   0E55 73            [24] 3790 	jmp	@a+dptr
   0E56                    3791 00235$:
   0E56 A1                 3792 	.db	00170$
   0E57 A1                 3793 	.db	00170$
   0E58 2A                 3794 	.db	00104$
   0E59 66                 3795 	.db	00119$
   0E5A A1                 3796 	.db	00170$
   0E5B DF                 3797 	.db	00107$
   0E5C 8B                 3798 	.db	00113$
   0E5D A9                 3799 	.db	00114$
   0E5E BC                 3800 	.db	00115$
   0E5F F5                 3801 	.db	00116$
   0E60 2E                 3802 	.db	00117$
   0E61 53                 3803 	.db	00118$
   0E62 96                 3804 	.db	00120$
   0E63 35                 3805 	.db	00123$
   0E64 A1                 3806 	.db	00170$
   0E65 A1                 3807 	.db	00170$
   0E66 EE                 3808 	.db	00147$
   0E67 6D                 3809 	.db	00152$
   0E68 94                 3810 	.db	00153$
   0E69 07                 3811 	.db	00156$
   0E6A 2C                 3812 	.db	00157$
   0E6B 3F                 3813 	.db	00158$
   0E6C B3                 3814 	.db	00159$
   0E6D 1F                 3815 	.db	00140$
   0E6E 54                 3816 	.db	00151$
   0E6F A1                 3817 	.db	00170$
   0E70 A1                 3818 	.db	00170$
   0E71 A1                 3819 	.db	00170$
   0E72 A1                 3820 	.db	00170$
   0E73 A1                 3821 	.db	00170$
   0E74 A1                 3822 	.db	00170$
   0E75 A1                 3823 	.db	00170$
   0E76 06                 3824 	.db	00161$
   0E77 8F                 3825 	.db	00169$
   0E78 D6                 3826 	.db	00160$
   0E79 C4                 3827 	.db	00154$
   0E7A E7                 3828 	.db	00155$
   0E7B A1                 3829 	.db	00170$
   0E7C A1                 3830 	.db	00170$
   0E7D A1                 3831 	.db	00170$
   0E7E A1                 3832 	.db	00170$
   0E7F A1                 3833 	.db	00170$
   0E80 A1                 3834 	.db	00170$
   0E81 A1                 3835 	.db	00170$
   0E82 A1                 3836 	.db	00170$
   0E83 A1                 3837 	.db	00170$
   0E84 A1                 3838 	.db	00170$
   0E85 A1                 3839 	.db	00170$
   0E86 A1                 3840 	.db	00170$
   0E87 A1                 3841 	.db	00170$
   0E88 A1                 3842 	.db	00170$
   0E89 A1                 3843 	.db	00170$
   0E8A A1                 3844 	.db	00170$
   0E8B A1                 3845 	.db	00170$
   0E8C A1                 3846 	.db	00170$
   0E8D A1                 3847 	.db	00170$
   0E8E A1                 3848 	.db	00170$
   0E8F A1                 3849 	.db	00170$
   0E90 A1                 3850 	.db	00170$
   0E91 A1                 3851 	.db	00170$
   0E92 A1                 3852 	.db	00170$
   0E93 A1                 3853 	.db	00170$
   0E94 A1                 3854 	.db	00170$
   0E95 A1                 3855 	.db	00170$
   0E96 DA                 3856 	.db	00102$
   0E97 14                 3857 	.db	00103$
   0E98                    3858 00236$:
   0E98 17                 3859 	.db	00170$>>8
   0E99 17                 3860 	.db	00170$>>8
   0E9A 0F                 3861 	.db	00104$>>8
   0E9B 11                 3862 	.db	00119$>>8
   0E9C 17                 3863 	.db	00170$>>8
   0E9D 0F                 3864 	.db	00107$>>8
   0E9E 10                 3865 	.db	00113$>>8
   0E9F 10                 3866 	.db	00114$>>8
   0EA0 10                 3867 	.db	00115$>>8
   0EA1 10                 3868 	.db	00116$>>8
   0EA2 11                 3869 	.db	00117$>>8
   0EA3 11                 3870 	.db	00118$>>8
   0EA4 11                 3871 	.db	00120$>>8
   0EA5 12                 3872 	.db	00123$>>8
   0EA6 17                 3873 	.db	00170$>>8
   0EA7 17                 3874 	.db	00170$>>8
   0EA8 14                 3875 	.db	00147$>>8
   0EA9 15                 3876 	.db	00152$>>8
   0EAA 15                 3877 	.db	00153$>>8
   0EAB 16                 3878 	.db	00156$>>8
   0EAC 16                 3879 	.db	00157$>>8
   0EAD 16                 3880 	.db	00158$>>8
   0EAE 16                 3881 	.db	00159$>>8
   0EAF 14                 3882 	.db	00140$>>8
   0EB0 15                 3883 	.db	00151$>>8
   0EB1 17                 3884 	.db	00170$>>8
   0EB2 17                 3885 	.db	00170$>>8
   0EB3 17                 3886 	.db	00170$>>8
   0EB4 17                 3887 	.db	00170$>>8
   0EB5 17                 3888 	.db	00170$>>8
   0EB6 17                 3889 	.db	00170$>>8
   0EB7 17                 3890 	.db	00170$>>8
   0EB8 17                 3891 	.db	00161$>>8
   0EB9 17                 3892 	.db	00169$>>8
   0EBA 16                 3893 	.db	00160$>>8
   0EBB 15                 3894 	.db	00154$>>8
   0EBC 15                 3895 	.db	00155$>>8
   0EBD 17                 3896 	.db	00170$>>8
   0EBE 17                 3897 	.db	00170$>>8
   0EBF 17                 3898 	.db	00170$>>8
   0EC0 17                 3899 	.db	00170$>>8
   0EC1 17                 3900 	.db	00170$>>8
   0EC2 17                 3901 	.db	00170$>>8
   0EC3 17                 3902 	.db	00170$>>8
   0EC4 17                 3903 	.db	00170$>>8
   0EC5 17                 3904 	.db	00170$>>8
   0EC6 17                 3905 	.db	00170$>>8
   0EC7 17                 3906 	.db	00170$>>8
   0EC8 17                 3907 	.db	00170$>>8
   0EC9 17                 3908 	.db	00170$>>8
   0ECA 17                 3909 	.db	00170$>>8
   0ECB 17                 3910 	.db	00170$>>8
   0ECC 17                 3911 	.db	00170$>>8
   0ECD 17                 3912 	.db	00170$>>8
   0ECE 17                 3913 	.db	00170$>>8
   0ECF 17                 3914 	.db	00170$>>8
   0ED0 17                 3915 	.db	00170$>>8
   0ED1 17                 3916 	.db	00170$>>8
   0ED2 17                 3917 	.db	00170$>>8
   0ED3 17                 3918 	.db	00170$>>8
   0ED4 17                 3919 	.db	00170$>>8
   0ED5 17                 3920 	.db	00170$>>8
   0ED6 17                 3921 	.db	00170$>>8
   0ED7 17                 3922 	.db	00170$>>8
   0ED8 0E                 3923 	.db	00102$>>8
   0ED9 0F                 3924 	.db	00103$>>8
                           3925 ;	appFHSSNIC.c:812: case RFCAT_START_SPECAN:
   0EDA                    3926 00102$:
                           3927 ;	appFHSSNIC.c:815: stop_hopping();
   0EDA C0 07         [24] 3928 	push	ar7
   0EDC C0 06         [24] 3929 	push	ar6
   0EDE C0 05         [24] 3930 	push	ar5
   0EE0 12 01 9E      [24] 3931 	lcall	_stop_hopping
   0EE3 D0 05         [24] 3932 	pop	ar5
   0EE5 D0 06         [24] 3933 	pop	ar6
   0EE7 D0 07         [24] 3934 	pop	ar7
                           3935 ;	appFHSSNIC.c:816: macdata.mac_state = MAC_STATE_PREP_SPECAN;
   0EE9 90 FD 91      [24] 3936 	mov	dptr,#_macdata
   0EEC 74 40         [12] 3937 	mov	a,#0x40
   0EEE F0            [24] 3938 	movx	@dptr,a
                           3939 ;	appFHSSNIC.c:817: macdata.synched_chans = buf[0];
   0EEF 8D 82         [24] 3940 	mov	dpl,r5
   0EF1 8E 83         [24] 3941 	mov	dph,r6
   0EF3 8F F0         [24] 3942 	mov	b,r7
   0EF5 12 35 6B      [24] 3943 	lcall	__gptrget
   0EF8 FC            [12] 3944 	mov	r4,a
   0EF9 7B 00         [12] 3945 	mov	r3,#0x00
   0EFB 90 FD A4      [24] 3946 	mov	dptr,#(_macdata + 0x0013)
   0EFE EC            [12] 3947 	mov	a,r4
   0EFF F0            [24] 3948 	movx	@dptr,a
   0F00 EB            [12] 3949 	mov	a,r3
   0F01 A3            [24] 3950 	inc	dptr
   0F02 F0            [24] 3951 	movx	@dptr,a
                           3952 ;	appFHSSNIC.c:818: appReturn( 1, buf);
   0F03 90 F9 59      [24] 3953 	mov	dptr,#_appReturn_PARM_2
   0F06 ED            [12] 3954 	mov	a,r5
   0F07 F0            [24] 3955 	movx	@dptr,a
   0F08 EE            [12] 3956 	mov	a,r6
   0F09 A3            [24] 3957 	inc	dptr
   0F0A F0            [24] 3958 	movx	@dptr,a
   0F0B 75 82 01      [24] 3959 	mov	dpl,#0x01
   0F0E 12 1C 5E      [24] 3960 	lcall	_appReturn
                           3961 ;	appFHSSNIC.c:819: break;
   0F11 02 17 AF      [24] 3962 	ljmp	00172$
                           3963 ;	appFHSSNIC.c:821: case RFCAT_STOP_SPECAN:
   0F14                    3964 00103$:
                           3965 ;	appFHSSNIC.c:822: macdata.mac_state = MAC_STATE_NONHOPPING;
   0F14 90 FD 91      [24] 3966 	mov	dptr,#_macdata
   0F17 E4            [12] 3967 	clr	a
   0F18 F0            [24] 3968 	movx	@dptr,a
                           3969 ;	appFHSSNIC.c:823: appReturn( 1, buf);
   0F19 90 F9 59      [24] 3970 	mov	dptr,#_appReturn_PARM_2
   0F1C ED            [12] 3971 	mov	a,r5
   0F1D F0            [24] 3972 	movx	@dptr,a
   0F1E EE            [12] 3973 	mov	a,r6
   0F1F A3            [24] 3974 	inc	dptr
   0F20 F0            [24] 3975 	movx	@dptr,a
   0F21 75 82 01      [24] 3976 	mov	dpl,#0x01
   0F24 12 1C 5E      [24] 3977 	lcall	_appReturn
                           3978 ;	appFHSSNIC.c:824: break;
   0F27 02 17 AF      [24] 3979 	ljmp	00172$
                           3980 ;	appFHSSNIC.c:826: case NIC_XMIT:
   0F2A                    3981 00104$:
                           3982 ;	appFHSSNIC.c:829: if (macdata.mac_state != MAC_STATE_NONHOPPING)
   0F2A 90 FD 91      [24] 3983 	mov	dptr,#_macdata
   0F2D E0            [24] 3984 	movx	a,@dptr
   0F2E 60 09         [24] 3985 	jz	00106$
                           3986 ;	appFHSSNIC.c:831: debug("crap, please use FHSSxmit() instead!");
   0F30 90 36 EC      [24] 3987 	mov	dptr,#__str_9
   0F33 12 21 70      [24] 3988 	lcall	_debug
                           3989 ;	appFHSSNIC.c:832: break;
   0F36 02 17 AF      [24] 3990 	ljmp	00172$
   0F39                    3991 00106$:
                           3992 ;	appFHSSNIC.c:834: len = buf[0];
   0F39 8D 82         [24] 3993 	mov	dpl,r5
   0F3B 8E 83         [24] 3994 	mov	dph,r6
   0F3D 8F F0         [24] 3995 	mov	b,r7
   0F3F 12 35 6B      [24] 3996 	lcall	__gptrget
   0F42 FC            [12] 3997 	mov	r4,a
   0F43 7B 00         [12] 3998 	mov	r3,#0x00
   0F45 90 F5 86      [24] 3999 	mov	dptr,#_appHandleEP5_len_1_179
   0F48 EC            [12] 4000 	mov	a,r4
   0F49 F0            [24] 4001 	movx	@dptr,a
   0F4A EB            [12] 4002 	mov	a,r3
   0F4B A3            [24] 4003 	inc	dptr
   0F4C F0            [24] 4004 	movx	@dptr,a
                           4005 ;	appFHSSNIC.c:835: len += buf[1] << 8;
   0F4D 8D 82         [24] 4006 	mov	dpl,r5
   0F4F 8E 83         [24] 4007 	mov	dph,r6
   0F51 A3            [24] 4008 	inc	dptr
   0F52 E0            [24] 4009 	movx	a,@dptr
   0F53 FA            [12] 4010 	mov	r2,a
   0F54 E4            [12] 4011 	clr	a
   0F55 2C            [12] 4012 	add	a,r4
   0F56 FC            [12] 4013 	mov	r4,a
   0F57 EA            [12] 4014 	mov	a,r2
   0F58 3B            [12] 4015 	addc	a,r3
   0F59 FB            [12] 4016 	mov	r3,a
   0F5A 90 F5 86      [24] 4017 	mov	dptr,#_appHandleEP5_len_1_179
   0F5D EC            [12] 4018 	mov	a,r4
   0F5E F0            [24] 4019 	movx	@dptr,a
   0F5F EB            [12] 4020 	mov	a,r3
   0F60 A3            [24] 4021 	inc	dptr
   0F61 F0            [24] 4022 	movx	@dptr,a
                           4023 ;	appFHSSNIC.c:838: offset = buf[4];
   0F62 8D 82         [24] 4024 	mov	dpl,r5
   0F64 8E 83         [24] 4025 	mov	dph,r6
   0F66 A3            [24] 4026 	inc	dptr
   0F67 A3            [24] 4027 	inc	dptr
   0F68 A3            [24] 4028 	inc	dptr
   0F69 A3            [24] 4029 	inc	dptr
   0F6A E0            [24] 4030 	movx	a,@dptr
   0F6B FA            [12] 4031 	mov	r2,a
   0F6C 8A 08         [24] 4032 	mov	_appHandleEP5_sloc0_1_0,r2
   0F6E 75 09 00      [24] 4033 	mov	(_appHandleEP5_sloc0_1_0 + 1),#0x00
                           4034 ;	appFHSSNIC.c:839: offset += buf[5] << 8;
   0F71 8D 82         [24] 4035 	mov	dpl,r5
   0F73 8E 83         [24] 4036 	mov	dph,r6
   0F75 A3            [24] 4037 	inc	dptr
   0F76 A3            [24] 4038 	inc	dptr
   0F77 A3            [24] 4039 	inc	dptr
   0F78 A3            [24] 4040 	inc	dptr
   0F79 A3            [24] 4041 	inc	dptr
   0F7A E0            [24] 4042 	movx	a,@dptr
   0F7B FA            [12] 4043 	mov	r2,a
   0F7C E4            [12] 4044 	clr	a
   0F7D 25 08         [12] 4045 	add	a,_appHandleEP5_sloc0_1_0
   0F7F F5 08         [12] 4046 	mov	_appHandleEP5_sloc0_1_0,a
   0F81 EA            [12] 4047 	mov	a,r2
   0F82 35 09         [12] 4048 	addc	a,(_appHandleEP5_sloc0_1_0 + 1)
   0F84 F5 09         [12] 4049 	mov	(_appHandleEP5_sloc0_1_0 + 1),a
                           4050 ;	appFHSSNIC.c:840: txTotal= 0;
   0F86 90 FD 8A      [24] 4051 	mov	dptr,#_txTotal
   0F89 E4            [12] 4052 	clr	a
   0F8A F0            [24] 4053 	movx	@dptr,a
   0F8B E4            [12] 4054 	clr	a
   0F8C A3            [24] 4055 	inc	dptr
   0F8D F0            [24] 4056 	movx	@dptr,a
                           4057 ;	appFHSSNIC.c:841: buf[0] = transmit(&buf[6], len, 0, offset);
   0F8E 74 06         [12] 4058 	mov	a,#0x06
   0F90 2D            [12] 4059 	add	a,r5
   0F91 F9            [12] 4060 	mov	r1,a
   0F92 E4            [12] 4061 	clr	a
   0F93 3E            [12] 4062 	addc	a,r6
   0F94 FA            [12] 4063 	mov	r2,a
   0F95 90 FD A6      [24] 4064 	mov	dptr,#_transmit_PARM_2
   0F98 EC            [12] 4065 	mov	a,r4
   0F99 F0            [24] 4066 	movx	@dptr,a
   0F9A EB            [12] 4067 	mov	a,r3
   0F9B A3            [24] 4068 	inc	dptr
   0F9C F0            [24] 4069 	movx	@dptr,a
   0F9D 90 FD A8      [24] 4070 	mov	dptr,#_transmit_PARM_3
   0FA0 E4            [12] 4071 	clr	a
   0FA1 F0            [24] 4072 	movx	@dptr,a
   0FA2 E4            [12] 4073 	clr	a
   0FA3 A3            [24] 4074 	inc	dptr
   0FA4 F0            [24] 4075 	movx	@dptr,a
   0FA5 90 FD AA      [24] 4076 	mov	dptr,#_transmit_PARM_4
   0FA8 E5 08         [12] 4077 	mov	a,_appHandleEP5_sloc0_1_0
   0FAA F0            [24] 4078 	movx	@dptr,a
   0FAB E5 09         [12] 4079 	mov	a,(_appHandleEP5_sloc0_1_0 + 1)
   0FAD A3            [24] 4080 	inc	dptr
   0FAE F0            [24] 4081 	movx	@dptr,a
   0FAF 89 82         [24] 4082 	mov	dpl,r1
   0FB1 8A 83         [24] 4083 	mov	dph,r2
   0FB3 C0 07         [24] 4084 	push	ar7
   0FB5 C0 06         [24] 4085 	push	ar6
   0FB7 C0 05         [24] 4086 	push	ar5
   0FB9 12 24 05      [24] 4087 	lcall	_transmit
   0FBC AC 82         [24] 4088 	mov	r4,dpl
   0FBE D0 05         [24] 4089 	pop	ar5
   0FC0 D0 06         [24] 4090 	pop	ar6
   0FC2 D0 07         [24] 4091 	pop	ar7
   0FC4 8D 82         [24] 4092 	mov	dpl,r5
   0FC6 8E 83         [24] 4093 	mov	dph,r6
   0FC8 8F F0         [24] 4094 	mov	b,r7
   0FCA EC            [12] 4095 	mov	a,r4
   0FCB 12 33 D4      [24] 4096 	lcall	__gptrput
                           4097 ;	appFHSSNIC.c:842: appReturn( 1, buf);
   0FCE 90 F9 59      [24] 4098 	mov	dptr,#_appReturn_PARM_2
   0FD1 ED            [12] 4099 	mov	a,r5
   0FD2 F0            [24] 4100 	movx	@dptr,a
   0FD3 EE            [12] 4101 	mov	a,r6
   0FD4 A3            [24] 4102 	inc	dptr
   0FD5 F0            [24] 4103 	movx	@dptr,a
   0FD6 75 82 01      [24] 4104 	mov	dpl,#0x01
   0FD9 12 1C 5E      [24] 4105 	lcall	_appReturn
                           4106 ;	appFHSSNIC.c:843: break;
   0FDC 02 17 AF      [24] 4107 	ljmp	00172$
                           4108 ;	appFHSSNIC.c:845: case NIC_SET_RECV_LARGE:
   0FDF                    4109 00107$:
                           4110 ;	appFHSSNIC.c:850: rfRxLargeLen = buf[0];
   0FDF 8D 82         [24] 4111 	mov	dpl,r5
   0FE1 8E 83         [24] 4112 	mov	dph,r6
   0FE3 8F F0         [24] 4113 	mov	b,r7
   0FE5 12 35 6B      [24] 4114 	lcall	__gptrget
   0FE8 90 FD EA      [24] 4115 	mov	dptr,#_rfRxLargeLen
   0FEB F0            [24] 4116 	movx	@dptr,a
   0FEC E4            [12] 4117 	clr	a
   0FED A3            [24] 4118 	inc	dptr
   0FEE F0            [24] 4119 	movx	@dptr,a
                           4120 ;	appFHSSNIC.c:851: rfRxLargeLen += buf[1] << 8;
   0FEF 8D 82         [24] 4121 	mov	dpl,r5
   0FF1 8E 83         [24] 4122 	mov	dph,r6
   0FF3 A3            [24] 4123 	inc	dptr
   0FF4 E0            [24] 4124 	movx	a,@dptr
   0FF5 FB            [12] 4125 	mov	r3,a
   0FF6 7C 00         [12] 4126 	mov	r4,#0x00
   0FF8 90 FD EA      [24] 4127 	mov	dptr,#_rfRxLargeLen
   0FFB E0            [24] 4128 	movx	a,@dptr
   0FFC F9            [12] 4129 	mov	r1,a
   0FFD A3            [24] 4130 	inc	dptr
   0FFE E0            [24] 4131 	movx	a,@dptr
   0FFF FA            [12] 4132 	mov	r2,a
   1000 90 FD EA      [24] 4133 	mov	dptr,#_rfRxLargeLen
   1003 EC            [12] 4134 	mov	a,r4
   1004 29            [12] 4135 	add	a,r1
   1005 F0            [24] 4136 	movx	@dptr,a
   1006 EB            [12] 4137 	mov	a,r3
   1007 3A            [12] 4138 	addc	a,r2
   1008 A3            [24] 4139 	inc	dptr
   1009 F0            [24] 4140 	movx	@dptr,a
                           4141 ;	appFHSSNIC.c:852: if(rfRxLargeLen)
   100A 90 FD EA      [24] 4142 	mov	dptr,#_rfRxLargeLen
   100D E0            [24] 4143 	movx	a,@dptr
   100E FB            [12] 4144 	mov	r3,a
   100F A3            [24] 4145 	inc	dptr
   1010 E0            [24] 4146 	movx	a,@dptr
   1011 FC            [12] 4147 	mov	r4,a
   1012 4B            [12] 4148 	orl	a,r3
   1013 60 40         [24] 4149 	jz	00111$
                           4150 ;	appFHSSNIC.c:854: rfRxInfMode = 1;
   1015 90 FD E7      [24] 4151 	mov	dptr,#_rfRxInfMode
   1018 74 01         [12] 4152 	mov	a,#0x01
   101A F0            [24] 4153 	movx	@dptr,a
                           4154 ;	appFHSSNIC.c:856: if(!rfRxTotalRXLen)
   101B 90 FD E8      [24] 4155 	mov	dptr,#_rfRxTotalRXLen
   101E E0            [24] 4156 	movx	a,@dptr
   101F FB            [12] 4157 	mov	r3,a
   1020 A3            [24] 4158 	inc	dptr
   1021 E0            [24] 4159 	movx	a,@dptr
   1022 FC            [12] 4160 	mov	r4,a
   1023 4B            [12] 4161 	orl	a,r3
   1024 70 46         [24] 4162 	jnz	00112$
                           4163 ;	appFHSSNIC.c:858: IdleMode();
   1026 12 23 3A      [24] 4164 	lcall	_IdleMode
                           4165 ;	appFHSSNIC.c:859: rfRxTotalRXLen = rfRxLargeLen;
   1029 90 FD EA      [24] 4166 	mov	dptr,#_rfRxLargeLen
   102C E0            [24] 4167 	movx	a,@dptr
   102D FB            [12] 4168 	mov	r3,a
   102E A3            [24] 4169 	inc	dptr
   102F E0            [24] 4170 	movx	a,@dptr
   1030 FC            [12] 4171 	mov	r4,a
   1031 90 FD E8      [24] 4172 	mov	dptr,#_rfRxTotalRXLen
   1034 EB            [12] 4173 	mov	a,r3
   1035 F0            [24] 4174 	movx	@dptr,a
   1036 EC            [12] 4175 	mov	a,r4
   1037 A3            [24] 4176 	inc	dptr
   1038 F0            [24] 4177 	movx	@dptr,a
                           4178 ;	appFHSSNIC.c:860: PKTLEN = (u8) (rfRxTotalRXLen % 256);
   1039 90 FD E8      [24] 4179 	mov	dptr,#_rfRxTotalRXLen
   103C E0            [24] 4180 	movx	a,@dptr
   103D FB            [12] 4181 	mov	r3,a
   103E A3            [24] 4182 	inc	dptr
   103F E0            [24] 4183 	movx	a,@dptr
   1040 90 DF 02      [24] 4184 	mov	dptr,#_PKTLEN
   1043 EB            [12] 4185 	mov	a,r3
   1044 F0            [24] 4186 	movx	@dptr,a
                           4187 ;	appFHSSNIC.c:861: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
                           4188 ;	appFHSSNIC.c:862: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
   1045 90 DF 04      [24] 4189 	mov	dptr,#_PKTCTRL0
   1048 E0            [24] 4190 	movx	a,@dptr
   1049 54 FC         [12] 4191 	anl	a,#0xFC
   104B F0            [24] 4192 	movx	@dptr,a
   104C E0            [24] 4193 	movx	a,@dptr
   104D 44 02         [12] 4194 	orl	a,#0x02
   104F F0            [24] 4195 	movx	@dptr,a
                           4196 ;	appFHSSNIC.c:863: RxMode();
   1050 12 22 F6      [24] 4197 	lcall	_RxMode
   1053 80 17         [24] 4198 	sjmp	00112$
   1055                    4199 00111$:
                           4200 ;	appFHSSNIC.c:868: rfRxInfMode = 0;
   1055 90 FD E7      [24] 4201 	mov	dptr,#_rfRxInfMode
                           4202 ;	appFHSSNIC.c:869: rfRxTotalRXLen = 0;
   1058 E4            [12] 4203 	clr	a
   1059 F0            [24] 4204 	movx	@dptr,a
   105A 90 FD E8      [24] 4205 	mov	dptr,#_rfRxTotalRXLen
   105D F0            [24] 4206 	movx	@dptr,a
   105E E4            [12] 4207 	clr	a
   105F A3            [24] 4208 	inc	dptr
   1060 F0            [24] 4209 	movx	@dptr,a
                           4210 ;	appFHSSNIC.c:870: rfRxLargeLen = 0;
   1061 90 FD EA      [24] 4211 	mov	dptr,#_rfRxLargeLen
   1064 E4            [12] 4212 	clr	a
   1065 F0            [24] 4213 	movx	@dptr,a
   1066 E4            [12] 4214 	clr	a
   1067 A3            [24] 4215 	inc	dptr
   1068 F0            [24] 4216 	movx	@dptr,a
                           4217 ;	appFHSSNIC.c:871: IdleMode();
   1069 12 23 3A      [24] 4218 	lcall	_IdleMode
   106C                    4219 00112$:
                           4220 ;	appFHSSNIC.c:873: txdata(ep5.OUTapp, ep5.OUTcmd, 1, (__xdata u8*)&rfRxLargeLen);
   106C 90 F9 4E      [24] 4221 	mov	dptr,#(_ep5 + 0x000a)
   106F E0            [24] 4222 	movx	a,@dptr
   1070 FC            [12] 4223 	mov	r4,a
   1071 90 F9 4F      [24] 4224 	mov	dptr,#(_ep5 + 0x000b)
   1074 E0            [24] 4225 	movx	a,@dptr
   1075 F5 2E         [12] 4226 	mov	_txdata_PARM_2,a
   1077 75 31 EA      [24] 4227 	mov	_txdata_PARM_4,#_rfRxLargeLen
   107A 75 32 FD      [24] 4228 	mov	(_txdata_PARM_4 + 1),#(_rfRxLargeLen >> 8)
   107D 75 2F 01      [24] 4229 	mov	_txdata_PARM_3,#0x01
   1080 75 30 00      [24] 4230 	mov	(_txdata_PARM_3 + 1),#0x00
   1083 8C 82         [24] 4231 	mov	dpl,r4
   1085 12 1C 0B      [24] 4232 	lcall	_txdata
                           4233 ;	appFHSSNIC.c:874: break;
   1088 02 17 AF      [24] 4234 	ljmp	00172$
                           4235 ;	appFHSSNIC.c:876: case NIC_SET_AES_MODE:
   108B                    4236 00113$:
                           4237 ;	appFHSSNIC.c:877: rfAESMode= buf[0];
   108B 8D 82         [24] 4238 	mov	dpl,r5
   108D 8E 83         [24] 4239 	mov	dph,r6
   108F 8F F0         [24] 4240 	mov	b,r7
   1091 12 35 6B      [24] 4241 	lcall	__gptrget
   1094 90 FD FB      [24] 4242 	mov	dptr,#_rfAESMode
   1097 F0            [24] 4243 	movx	@dptr,a
                           4244 ;	appFHSSNIC.c:878: appReturn( 1, buf);
   1098 90 F9 59      [24] 4245 	mov	dptr,#_appReturn_PARM_2
   109B ED            [12] 4246 	mov	a,r5
   109C F0            [24] 4247 	movx	@dptr,a
   109D EE            [12] 4248 	mov	a,r6
   109E A3            [24] 4249 	inc	dptr
   109F F0            [24] 4250 	movx	@dptr,a
   10A0 75 82 01      [24] 4251 	mov	dpl,#0x01
   10A3 12 1C 5E      [24] 4252 	lcall	_appReturn
                           4253 ;	appFHSSNIC.c:879: break;
   10A6 02 17 AF      [24] 4254 	ljmp	00172$
                           4255 ;	appFHSSNIC.c:881: case NIC_GET_AES_MODE:
   10A9                    4256 00114$:
                           4257 ;	appFHSSNIC.c:882: appReturn( 1, (__xdata u8*) &rfAESMode);
   10A9 90 F9 59      [24] 4258 	mov	dptr,#_appReturn_PARM_2
   10AC 74 FB         [12] 4259 	mov	a,#_rfAESMode
   10AE F0            [24] 4260 	movx	@dptr,a
   10AF 74 FD         [12] 4261 	mov	a,#(_rfAESMode >> 8)
   10B1 A3            [24] 4262 	inc	dptr
   10B2 F0            [24] 4263 	movx	@dptr,a
   10B3 75 82 01      [24] 4264 	mov	dpl,#0x01
   10B6 12 1C 5E      [24] 4265 	lcall	_appReturn
                           4266 ;	appFHSSNIC.c:883: break;
   10B9 02 17 AF      [24] 4267 	ljmp	00172$
                           4268 ;	appFHSSNIC.c:885: case NIC_SET_AES_IV:
   10BC                    4269 00115$:
                           4270 ;	appFHSSNIC.c:886: setAES(buf, ENCCS_CMD_LDIV, (rfAESMode & AES_CRYPTO_MODE));
   10BC 90 FD FB      [24] 4271 	mov	dptr,#_rfAESMode
   10BF E0            [24] 4272 	movx	a,@dptr
   10C0 FC            [12] 4273 	mov	r4,a
   10C1 53 04 F0      [24] 4274 	anl	ar4,#0xF0
   10C4 90 FD C9      [24] 4275 	mov	dptr,#_setAES_PARM_2
   10C7 74 06         [12] 4276 	mov	a,#0x06
   10C9 F0            [24] 4277 	movx	@dptr,a
   10CA 90 FD CA      [24] 4278 	mov	dptr,#_setAES_PARM_3
   10CD EC            [12] 4279 	mov	a,r4
   10CE F0            [24] 4280 	movx	@dptr,a
   10CF 8D 82         [24] 4281 	mov	dpl,r5
   10D1 8E 83         [24] 4282 	mov	dph,r6
   10D3 8F F0         [24] 4283 	mov	b,r7
   10D5 C0 07         [24] 4284 	push	ar7
   10D7 C0 06         [24] 4285 	push	ar6
   10D9 C0 05         [24] 4286 	push	ar5
   10DB 12 2F F9      [24] 4287 	lcall	_setAES
   10DE D0 05         [24] 4288 	pop	ar5
   10E0 D0 06         [24] 4289 	pop	ar6
   10E2 D0 07         [24] 4290 	pop	ar7
                           4291 ;	appFHSSNIC.c:887: appReturn( 16, buf);
   10E4 90 F9 59      [24] 4292 	mov	dptr,#_appReturn_PARM_2
   10E7 ED            [12] 4293 	mov	a,r5
   10E8 F0            [24] 4294 	movx	@dptr,a
   10E9 EE            [12] 4295 	mov	a,r6
   10EA A3            [24] 4296 	inc	dptr
   10EB F0            [24] 4297 	movx	@dptr,a
   10EC 75 82 10      [24] 4298 	mov	dpl,#0x10
   10EF 12 1C 5E      [24] 4299 	lcall	_appReturn
                           4300 ;	appFHSSNIC.c:888: break;
   10F2 02 17 AF      [24] 4301 	ljmp	00172$
                           4302 ;	appFHSSNIC.c:890: case NIC_SET_AES_KEY:
   10F5                    4303 00116$:
                           4304 ;	appFHSSNIC.c:891: setAES(buf, ENCCS_CMD_LDKEY, (rfAESMode & AES_CRYPTO_MODE));
   10F5 90 FD FB      [24] 4305 	mov	dptr,#_rfAESMode
   10F8 E0            [24] 4306 	movx	a,@dptr
   10F9 FC            [12] 4307 	mov	r4,a
   10FA 53 04 F0      [24] 4308 	anl	ar4,#0xF0
   10FD 90 FD C9      [24] 4309 	mov	dptr,#_setAES_PARM_2
   1100 74 04         [12] 4310 	mov	a,#0x04
   1102 F0            [24] 4311 	movx	@dptr,a
   1103 90 FD CA      [24] 4312 	mov	dptr,#_setAES_PARM_3
   1106 EC            [12] 4313 	mov	a,r4
   1107 F0            [24] 4314 	movx	@dptr,a
   1108 8D 82         [24] 4315 	mov	dpl,r5
   110A 8E 83         [24] 4316 	mov	dph,r6
   110C 8F F0         [24] 4317 	mov	b,r7
   110E C0 07         [24] 4318 	push	ar7
   1110 C0 06         [24] 4319 	push	ar6
   1112 C0 05         [24] 4320 	push	ar5
   1114 12 2F F9      [24] 4321 	lcall	_setAES
   1117 D0 05         [24] 4322 	pop	ar5
   1119 D0 06         [24] 4323 	pop	ar6
   111B D0 07         [24] 4324 	pop	ar7
                           4325 ;	appFHSSNIC.c:892: appReturn( 16, buf);
   111D 90 F9 59      [24] 4326 	mov	dptr,#_appReturn_PARM_2
   1120 ED            [12] 4327 	mov	a,r5
   1121 F0            [24] 4328 	movx	@dptr,a
   1122 EE            [12] 4329 	mov	a,r6
   1123 A3            [24] 4330 	inc	dptr
   1124 F0            [24] 4331 	movx	@dptr,a
   1125 75 82 10      [24] 4332 	mov	dpl,#0x10
   1128 12 1C 5E      [24] 4333 	lcall	_appReturn
                           4334 ;	appFHSSNIC.c:893: break;
   112B 02 17 AF      [24] 4335 	ljmp	00172$
                           4336 ;	appFHSSNIC.c:895: case NIC_SET_AMP_MODE:
   112E                    4337 00117$:
                           4338 ;	appFHSSNIC.c:896: rfAmpMode= *buf;
   112E 8D 82         [24] 4339 	mov	dpl,r5
   1130 8E 83         [24] 4340 	mov	dph,r6
   1132 8F F0         [24] 4341 	mov	b,r7
   1134 12 35 6B      [24] 4342 	lcall	__gptrget
   1137 90 FD FC      [24] 4343 	mov	dptr,#_rfAmpMode
   113A F0            [24] 4344 	movx	@dptr,a
                           4345 ;	appFHSSNIC.c:897: rfAmpMode &= 1;
   113B 90 FD FC      [24] 4346 	mov	dptr,#_rfAmpMode
   113E E0            [24] 4347 	movx	a,@dptr
   113F 54 01         [12] 4348 	anl	a,#0x01
   1141 F0            [24] 4349 	movx	@dptr,a
                           4350 ;	appFHSSNIC.c:898: appReturn( 1, buf);
   1142 90 F9 59      [24] 4351 	mov	dptr,#_appReturn_PARM_2
   1145 ED            [12] 4352 	mov	a,r5
   1146 F0            [24] 4353 	movx	@dptr,a
   1147 EE            [12] 4354 	mov	a,r6
   1148 A3            [24] 4355 	inc	dptr
   1149 F0            [24] 4356 	movx	@dptr,a
   114A 75 82 01      [24] 4357 	mov	dpl,#0x01
   114D 12 1C 5E      [24] 4358 	lcall	_appReturn
                           4359 ;	appFHSSNIC.c:899: break;
   1150 02 17 AF      [24] 4360 	ljmp	00172$
                           4361 ;	appFHSSNIC.c:901: case NIC_GET_AMP_MODE:
   1153                    4362 00118$:
                           4363 ;	appFHSSNIC.c:902: appReturn( 1, (__xdata u8*) &rfAmpMode);
   1153 90 F9 59      [24] 4364 	mov	dptr,#_appReturn_PARM_2
   1156 74 FC         [12] 4365 	mov	a,#_rfAmpMode
   1158 F0            [24] 4366 	movx	@dptr,a
   1159 74 FD         [12] 4367 	mov	a,#(_rfAmpMode >> 8)
   115B A3            [24] 4368 	inc	dptr
   115C F0            [24] 4369 	movx	@dptr,a
   115D 75 82 01      [24] 4370 	mov	dpl,#0x01
   1160 12 1C 5E      [24] 4371 	lcall	_appReturn
                           4372 ;	appFHSSNIC.c:903: break;
   1163 02 17 AF      [24] 4373 	ljmp	00172$
                           4374 ;	appFHSSNIC.c:905: case NIC_SET_ID:
   1166                    4375 00119$:
                           4376 ;	appFHSSNIC.c:907: MAC_set_NIC_ID(buf[0]);
   1166 8D 82         [24] 4377 	mov	dpl,r5
   1168 8E 83         [24] 4378 	mov	dph,r6
   116A 8F F0         [24] 4379 	mov	b,r7
   116C 12 35 6B      [24] 4380 	lcall	__gptrget
   116F FC            [12] 4381 	mov	r4,a
   1170 7B 00         [12] 4382 	mov	r3,#0x00
   1172 8C 82         [24] 4383 	mov	dpl,r4
   1174 8B 83         [24] 4384 	mov	dph,r3
   1176 C0 07         [24] 4385 	push	ar7
   1178 C0 06         [24] 4386 	push	ar6
   117A C0 05         [24] 4387 	push	ar5
   117C 12 06 51      [24] 4388 	lcall	_MAC_set_NIC_ID
   117F D0 05         [24] 4389 	pop	ar5
   1181 D0 06         [24] 4390 	pop	ar6
   1183 D0 07         [24] 4391 	pop	ar7
                           4392 ;	appFHSSNIC.c:908: appReturn( 1, buf);
   1185 90 F9 59      [24] 4393 	mov	dptr,#_appReturn_PARM_2
   1188 ED            [12] 4394 	mov	a,r5
   1189 F0            [24] 4395 	movx	@dptr,a
   118A EE            [12] 4396 	mov	a,r6
   118B A3            [24] 4397 	inc	dptr
   118C F0            [24] 4398 	movx	@dptr,a
   118D 75 82 01      [24] 4399 	mov	dpl,#0x01
   1190 12 1C 5E      [24] 4400 	lcall	_appReturn
                           4401 ;	appFHSSNIC.c:909: break;
   1193 02 17 AF      [24] 4402 	ljmp	00172$
                           4403 ;	appFHSSNIC.c:911: case NIC_LONG_XMIT:
   1196                    4404 00120$:
                           4405 ;	appFHSSNIC.c:916: if (macdata.mac_state != MAC_STATE_NONHOPPING)
   1196 90 FD 91      [24] 4406 	mov	dptr,#_macdata
   1199 E0            [24] 4407 	movx	a,@dptr
   119A 60 1C         [24] 4408 	jz	00122$
                           4409 ;	appFHSSNIC.c:918: buf[0] = RC_RF_MODE_INCOMPAT;
   119C 8D 82         [24] 4410 	mov	dpl,r5
   119E 8E 83         [24] 4411 	mov	dph,r6
   11A0 8F F0         [24] 4412 	mov	b,r7
   11A2 74 EF         [12] 4413 	mov	a,#0xEF
   11A4 12 33 D4      [24] 4414 	lcall	__gptrput
                           4415 ;	appFHSSNIC.c:919: appReturn( 1, buf);
   11A7 90 F9 59      [24] 4416 	mov	dptr,#_appReturn_PARM_2
   11AA ED            [12] 4417 	mov	a,r5
   11AB F0            [24] 4418 	movx	@dptr,a
   11AC EE            [12] 4419 	mov	a,r6
   11AD A3            [24] 4420 	inc	dptr
   11AE F0            [24] 4421 	movx	@dptr,a
   11AF 75 82 01      [24] 4422 	mov	dpl,#0x01
   11B2 12 1C 5E      [24] 4423 	lcall	_appReturn
                           4424 ;	appFHSSNIC.c:920: break;
   11B5 02 17 AF      [24] 4425 	ljmp	00172$
   11B8                    4426 00122$:
                           4427 ;	appFHSSNIC.c:922: len = buf[0];
   11B8 8D 82         [24] 4428 	mov	dpl,r5
   11BA 8E 83         [24] 4429 	mov	dph,r6
   11BC 8F F0         [24] 4430 	mov	b,r7
   11BE 12 35 6B      [24] 4431 	lcall	__gptrget
   11C1 FC            [12] 4432 	mov	r4,a
   11C2 7B 00         [12] 4433 	mov	r3,#0x00
   11C4 90 F5 86      [24] 4434 	mov	dptr,#_appHandleEP5_len_1_179
   11C7 EC            [12] 4435 	mov	a,r4
   11C8 F0            [24] 4436 	movx	@dptr,a
   11C9 EB            [12] 4437 	mov	a,r3
   11CA A3            [24] 4438 	inc	dptr
   11CB F0            [24] 4439 	movx	@dptr,a
                           4440 ;	appFHSSNIC.c:923: len += buf[1] << 8;
   11CC 8D 82         [24] 4441 	mov	dpl,r5
   11CE 8E 83         [24] 4442 	mov	dph,r6
   11D0 A3            [24] 4443 	inc	dptr
   11D1 E0            [24] 4444 	movx	a,@dptr
   11D2 FA            [12] 4445 	mov	r2,a
   11D3 E4            [12] 4446 	clr	a
   11D4 2C            [12] 4447 	add	a,r4
   11D5 FC            [12] 4448 	mov	r4,a
   11D6 EA            [12] 4449 	mov	a,r2
   11D7 3B            [12] 4450 	addc	a,r3
   11D8 FB            [12] 4451 	mov	r3,a
   11D9 90 F5 86      [24] 4452 	mov	dptr,#_appHandleEP5_len_1_179
   11DC EC            [12] 4453 	mov	a,r4
   11DD F0            [24] 4454 	movx	@dptr,a
   11DE EB            [12] 4455 	mov	a,r3
   11DF A3            [24] 4456 	inc	dptr
   11E0 F0            [24] 4457 	movx	@dptr,a
                           4458 ;	appFHSSNIC.c:924: blocks = buf[2];
   11E1 8D 82         [24] 4459 	mov	dpl,r5
   11E3 8E 83         [24] 4460 	mov	dph,r6
   11E5 A3            [24] 4461 	inc	dptr
   11E6 A3            [24] 4462 	inc	dptr
   11E7 E0            [24] 4463 	movx	a,@dptr
   11E8 FA            [12] 4464 	mov	r2,a
                           4465 ;	appFHSSNIC.c:925: txTotal= 0;
   11E9 90 FD 8A      [24] 4466 	mov	dptr,#_txTotal
   11EC E4            [12] 4467 	clr	a
   11ED F0            [24] 4468 	movx	@dptr,a
   11EE E4            [12] 4469 	clr	a
   11EF A3            [24] 4470 	inc	dptr
   11F0 F0            [24] 4471 	movx	@dptr,a
                           4472 ;	appFHSSNIC.c:926: buf[0] = transmit_long(&buf[3], len, blocks);
   11F1 74 03         [12] 4473 	mov	a,#0x03
   11F3 2D            [12] 4474 	add	a,r5
   11F4 F8            [12] 4475 	mov	r0,a
   11F5 E4            [12] 4476 	clr	a
   11F6 3E            [12] 4477 	addc	a,r6
   11F7 F9            [12] 4478 	mov	r1,a
   11F8 90 F5 57      [24] 4479 	mov	dptr,#_transmit_long_PARM_2
   11FB EC            [12] 4480 	mov	a,r4
   11FC F0            [24] 4481 	movx	@dptr,a
   11FD EB            [12] 4482 	mov	a,r3
   11FE A3            [24] 4483 	inc	dptr
   11FF F0            [24] 4484 	movx	@dptr,a
   1200 90 F5 59      [24] 4485 	mov	dptr,#_transmit_long_PARM_3
   1203 EA            [12] 4486 	mov	a,r2
   1204 F0            [24] 4487 	movx	@dptr,a
   1205 88 82         [24] 4488 	mov	dpl,r0
   1207 89 83         [24] 4489 	mov	dph,r1
   1209 C0 07         [24] 4490 	push	ar7
   120B C0 06         [24] 4491 	push	ar6
   120D C0 05         [24] 4492 	push	ar5
   120F 12 01 A6      [24] 4493 	lcall	_transmit_long
   1212 AC 82         [24] 4494 	mov	r4,dpl
   1214 D0 05         [24] 4495 	pop	ar5
   1216 D0 06         [24] 4496 	pop	ar6
   1218 D0 07         [24] 4497 	pop	ar7
   121A 8D 82         [24] 4498 	mov	dpl,r5
   121C 8E 83         [24] 4499 	mov	dph,r6
   121E 8F F0         [24] 4500 	mov	b,r7
   1220 EC            [12] 4501 	mov	a,r4
   1221 12 33 D4      [24] 4502 	lcall	__gptrput
                           4503 ;	appFHSSNIC.c:927: appReturn( 1, buf);
   1224 90 F9 59      [24] 4504 	mov	dptr,#_appReturn_PARM_2
   1227 ED            [12] 4505 	mov	a,r5
   1228 F0            [24] 4506 	movx	@dptr,a
   1229 EE            [12] 4507 	mov	a,r6
   122A A3            [24] 4508 	inc	dptr
   122B F0            [24] 4509 	movx	@dptr,a
   122C 75 82 01      [24] 4510 	mov	dpl,#0x01
   122F 12 1C 5E      [24] 4511 	lcall	_appReturn
                           4512 ;	appFHSSNIC.c:928: break;
   1232 02 17 AF      [24] 4513 	ljmp	00172$
                           4514 ;	appFHSSNIC.c:930: case NIC_LONG_XMIT_MORE:
   1235                    4515 00123$:
                           4516 ;	appFHSSNIC.c:931: len = buf[0];
   1235 8D 82         [24] 4517 	mov	dpl,r5
   1237 8E 83         [24] 4518 	mov	dph,r6
   1239 8F F0         [24] 4519 	mov	b,r7
   123B 12 35 6B      [24] 4520 	lcall	__gptrget
   123E FB            [12] 4521 	mov	r3,a
   123F 7C 00         [12] 4522 	mov	r4,#0x00
   1241 90 F5 86      [24] 4523 	mov	dptr,#_appHandleEP5_len_1_179
   1244 EB            [12] 4524 	mov	a,r3
   1245 F0            [24] 4525 	movx	@dptr,a
   1246 EC            [12] 4526 	mov	a,r4
   1247 A3            [24] 4527 	inc	dptr
   1248 F0            [24] 4528 	movx	@dptr,a
                           4529 ;	appFHSSNIC.c:932: if (len == 0)
   1249 EB            [12] 4530 	mov	a,r3
   124A 4C            [12] 4531 	orl	a,r4
   124B 60 03         [24] 4532 	jz	00241$
   124D 02 13 30      [24] 4533 	ljmp	00131$
   1250                    4534 00241$:
                           4535 ;	appFHSSNIC.c:935: while (rfTxTotalTXLen && MARCSTATE == MARC_STATE_TX) 
   1250                    4536 00125$:
   1250 90 FD F8      [24] 4537 	mov	dptr,#_rfTxTotalTXLen
   1253 E0            [24] 4538 	movx	a,@dptr
   1254 F9            [12] 4539 	mov	r1,a
   1255 A3            [24] 4540 	inc	dptr
   1256 E0            [24] 4541 	movx	a,@dptr
   1257 FA            [12] 4542 	mov	r2,a
   1258 49            [12] 4543 	orl	a,r1
   1259 60 1C         [24] 4544 	jz	00127$
   125B 90 DF 3B      [24] 4545 	mov	dptr,#_MARCSTATE
   125E E0            [24] 4546 	movx	a,@dptr
   125F FA            [12] 4547 	mov	r2,a
   1260 BA 13 14      [24] 4548 	cjne	r2,#0x13,00127$
                           4549 ;	appFHSSNIC.c:937: sleepMillis(40); // delay to avoid race condition that will cause mis-read of rfTxTotalTXLen == 0
   1263 90 00 28      [24] 4550 	mov	dptr,#0x0028
   1266 C0 07         [24] 4551 	push	ar7
   1268 C0 06         [24] 4552 	push	ar6
   126A C0 05         [24] 4553 	push	ar5
   126C 12 2D 4B      [24] 4554 	lcall	_sleepMillis
   126F D0 05         [24] 4555 	pop	ar5
   1271 D0 06         [24] 4556 	pop	ar6
   1273 D0 07         [24] 4557 	pop	ar7
   1275 80 D9         [24] 4558 	sjmp	00125$
   1277                    4559 00127$:
                           4560 ;	appFHSSNIC.c:939: if(rfTxTotalTXLen)
   1277 90 FD F8      [24] 4561 	mov	dptr,#_rfTxTotalTXLen
   127A E0            [24] 4562 	movx	a,@dptr
   127B F9            [12] 4563 	mov	r1,a
   127C A3            [24] 4564 	inc	dptr
   127D E0            [24] 4565 	movx	a,@dptr
   127E FA            [12] 4566 	mov	r2,a
   127F 49            [12] 4567 	orl	a,r1
   1280 60 6B         [24] 4568 	jz	00129$
                           4569 ;	appFHSSNIC.c:941: debug("dropout final wait!");
   1282 90 37 11      [24] 4570 	mov	dptr,#__str_10
   1285 C0 07         [24] 4571 	push	ar7
   1287 C0 06         [24] 4572 	push	ar6
   1289 C0 05         [24] 4573 	push	ar5
   128B 12 21 70      [24] 4574 	lcall	_debug
                           4575 ;	appFHSSNIC.c:942: debughex16(rfTxTotalTXLen);
   128E 90 FD F8      [24] 4576 	mov	dptr,#_rfTxTotalTXLen
   1291 E0            [24] 4577 	movx	a,@dptr
   1292 F9            [12] 4578 	mov	r1,a
   1293 A3            [24] 4579 	inc	dptr
   1294 E0            [24] 4580 	movx	a,@dptr
   1295 FA            [12] 4581 	mov	r2,a
   1296 89 82         [24] 4582 	mov	dpl,r1
   1298 8A 83         [24] 4583 	mov	dph,r2
   129A 12 21 CD      [24] 4584 	lcall	_debughex16
                           4585 ;	appFHSSNIC.c:943: debughex(g_txMsgQueue[0][0]);
   129D 90 F3 72      [24] 4586 	mov	dptr,#_g_txMsgQueue
   12A0 E0            [24] 4587 	movx	a,@dptr
   12A1 F5 82         [12] 4588 	mov	dpl,a
   12A3 12 21 B2      [24] 4589 	lcall	_debughex
                           4590 ;	appFHSSNIC.c:944: debughex(g_txMsgQueue[1][0]);
   12A6 90 F4 63      [24] 4591 	mov	dptr,#(_g_txMsgQueue + 0x00f1)
   12A9 E0            [24] 4592 	movx	a,@dptr
   12AA F5 82         [12] 4593 	mov	dpl,a
   12AC 12 21 B2      [24] 4594 	lcall	_debughex
   12AF D0 05         [24] 4595 	pop	ar5
   12B1 D0 06         [24] 4596 	pop	ar6
   12B3 D0 07         [24] 4597 	pop	ar7
                           4598 ;	appFHSSNIC.c:945: lastCode[1] = LCE_DROPPED_PACKET;
   12B5 90 FD B6      [24] 4599 	mov	dptr,#(_lastCode + 0x0001)
   12B8 74 12         [12] 4600 	mov	a,#0x12
   12BA F0            [24] 4601 	movx	@dptr,a
                           4602 ;	appFHSSNIC.c:946: buf[0] = RC_TX_DROPPED_PACKET;
   12BB 8D 82         [24] 4603 	mov	dpl,r5
   12BD 8E 83         [24] 4604 	mov	dph,r6
   12BF 8F F0         [24] 4605 	mov	b,r7
   12C1 74 EC         [12] 4606 	mov	a,#0xEC
   12C3 12 33 D4      [24] 4607 	lcall	__gptrput
                           4608 ;	appFHSSNIC.c:947: LED = 0;
   12C6 C2 A4         [12] 4609 	clr	_P2_4
                           4610 ;	appFHSSNIC.c:948: resetRFSTATE();
   12C8 C0 07         [24] 4611 	push	ar7
   12CA C0 06         [24] 4612 	push	ar6
   12CC C0 05         [24] 4613 	push	ar5
   12CE 12 22 D1      [24] 4614 	lcall	_resetRFSTATE
   12D1 D0 05         [24] 4615 	pop	ar5
   12D3 D0 06         [24] 4616 	pop	ar6
   12D5 D0 07         [24] 4617 	pop	ar7
                           4618 ;	appFHSSNIC.c:949: macdata.mac_state = MAC_STATE_NONHOPPING;
   12D7 90 FD 91      [24] 4619 	mov	dptr,#_macdata
   12DA E4            [12] 4620 	clr	a
   12DB F0            [24] 4621 	movx	@dptr,a
                           4622 ;	appFHSSNIC.c:950: appReturn( 1, buf);
   12DC 90 F9 59      [24] 4623 	mov	dptr,#_appReturn_PARM_2
   12DF ED            [12] 4624 	mov	a,r5
   12E0 F0            [24] 4625 	movx	@dptr,a
   12E1 EE            [12] 4626 	mov	a,r6
   12E2 A3            [24] 4627 	inc	dptr
   12E3 F0            [24] 4628 	movx	@dptr,a
   12E4 75 82 01      [24] 4629 	mov	dpl,#0x01
   12E7 12 1C 5E      [24] 4630 	lcall	_appReturn
                           4631 ;	appFHSSNIC.c:951: break;
   12EA 02 17 AF      [24] 4632 	ljmp	00172$
   12ED                    4633 00129$:
                           4634 ;	appFHSSNIC.c:953: LED = 0;
   12ED C2 A4         [12] 4635 	clr	_P2_4
                           4636 ;	appFHSSNIC.c:954: macdata.mac_state = MAC_STATE_NONHOPPING;
   12EF 90 FD 91      [24] 4637 	mov	dptr,#_macdata
   12F2 E4            [12] 4638 	clr	a
   12F3 F0            [24] 4639 	movx	@dptr,a
                           4640 ;	appFHSSNIC.c:955: buf[0] = LCE_NO_ERROR;
   12F4 8D 82         [24] 4641 	mov	dpl,r5
   12F6 8E 83         [24] 4642 	mov	dph,r6
   12F8 8F F0         [24] 4643 	mov	b,r7
   12FA E4            [12] 4644 	clr	a
   12FB 12 33 D4      [24] 4645 	lcall	__gptrput
                           4646 ;	appFHSSNIC.c:956: debug("total bytes tx:");
   12FE 90 37 25      [24] 4647 	mov	dptr,#__str_11
   1301 C0 07         [24] 4648 	push	ar7
   1303 C0 06         [24] 4649 	push	ar6
   1305 C0 05         [24] 4650 	push	ar5
   1307 12 21 70      [24] 4651 	lcall	_debug
                           4652 ;	appFHSSNIC.c:957: debughex16(txTotal);
   130A 90 FD 8A      [24] 4653 	mov	dptr,#_txTotal
   130D E0            [24] 4654 	movx	a,@dptr
   130E F9            [12] 4655 	mov	r1,a
   130F A3            [24] 4656 	inc	dptr
   1310 E0            [24] 4657 	movx	a,@dptr
   1311 FA            [12] 4658 	mov	r2,a
   1312 89 82         [24] 4659 	mov	dpl,r1
   1314 8A 83         [24] 4660 	mov	dph,r2
   1316 12 21 CD      [24] 4661 	lcall	_debughex16
   1319 D0 05         [24] 4662 	pop	ar5
   131B D0 06         [24] 4663 	pop	ar6
   131D D0 07         [24] 4664 	pop	ar7
                           4665 ;	appFHSSNIC.c:958: appReturn( 1, buf);
   131F 90 F9 59      [24] 4666 	mov	dptr,#_appReturn_PARM_2
   1322 ED            [12] 4667 	mov	a,r5
   1323 F0            [24] 4668 	movx	@dptr,a
   1324 EE            [12] 4669 	mov	a,r6
   1325 A3            [24] 4670 	inc	dptr
   1326 F0            [24] 4671 	movx	@dptr,a
   1327 75 82 01      [24] 4672 	mov	dpl,#0x01
   132A 12 1C 5E      [24] 4673 	lcall	_appReturn
                           4674 ;	appFHSSNIC.c:959: break;
   132D 02 17 AF      [24] 4675 	ljmp	00172$
   1330                    4676 00131$:
                           4677 ;	appFHSSNIC.c:962: if (macdata.mac_state != MAC_STATE_LONG_XMIT)
   1330 90 FD 91      [24] 4678 	mov	dptr,#_macdata
   1333 E0            [24] 4679 	movx	a,@dptr
   1334 FA            [12] 4680 	mov	r2,a
   1335 BA 06 02      [24] 4681 	cjne	r2,#0x06,00246$
   1338 80 61         [24] 4682 	sjmp	00136$
   133A                    4683 00246$:
                           4684 ;	appFHSSNIC.c:964: debug("underrun");
   133A 90 37 35      [24] 4685 	mov	dptr,#__str_12
   133D C0 07         [24] 4686 	push	ar7
   133F C0 06         [24] 4687 	push	ar6
   1341 C0 05         [24] 4688 	push	ar5
   1343 12 21 70      [24] 4689 	lcall	_debug
   1346 D0 05         [24] 4690 	pop	ar5
   1348 D0 06         [24] 4691 	pop	ar6
   134A D0 07         [24] 4692 	pop	ar7
                           4693 ;	appFHSSNIC.c:966: if(lastCode[1] == LCE_DROPPED_PACKET)
   134C 90 FD B6      [24] 4694 	mov	dptr,#(_lastCode + 0x0001)
   134F E0            [24] 4695 	movx	a,@dptr
   1350 FA            [12] 4696 	mov	r2,a
   1351 BA 12 1B      [24] 4697 	cjne	r2,#0x12,00133$
                           4698 ;	appFHSSNIC.c:968: buf[0] = RC_TX_DROPPED_PACKET;
   1354 8D 82         [24] 4699 	mov	dpl,r5
   1356 8E 83         [24] 4700 	mov	dph,r6
   1358 8F F0         [24] 4701 	mov	b,r7
   135A 74 EC         [12] 4702 	mov	a,#0xEC
   135C 12 33 D4      [24] 4703 	lcall	__gptrput
                           4704 ;	appFHSSNIC.c:969: appReturn( 1, buf);
   135F 90 F9 59      [24] 4705 	mov	dptr,#_appReturn_PARM_2
   1362 ED            [12] 4706 	mov	a,r5
   1363 F0            [24] 4707 	movx	@dptr,a
   1364 EE            [12] 4708 	mov	a,r6
   1365 A3            [24] 4709 	inc	dptr
   1366 F0            [24] 4710 	movx	@dptr,a
   1367 75 82 01      [24] 4711 	mov	dpl,#0x01
   136A 12 1C 5E      [24] 4712 	lcall	_appReturn
   136D 80 1F         [24] 4713 	sjmp	00134$
   136F                    4714 00133$:
                           4715 ;	appFHSSNIC.c:973: lastCode[1] = LCE_RF_MULTI_BUFFER_NOT_INIT;
   136F 90 FD B6      [24] 4716 	mov	dptr,#(_lastCode + 0x0001)
   1372 74 17         [12] 4717 	mov	a,#0x17
   1374 F0            [24] 4718 	movx	@dptr,a
                           4719 ;	appFHSSNIC.c:974: buf[0] = RC_RF_MODE_INCOMPAT;
   1375 8D 82         [24] 4720 	mov	dpl,r5
   1377 8E 83         [24] 4721 	mov	dph,r6
   1379 8F F0         [24] 4722 	mov	b,r7
   137B 74 EF         [12] 4723 	mov	a,#0xEF
   137D 12 33 D4      [24] 4724 	lcall	__gptrput
                           4725 ;	appFHSSNIC.c:975: appReturn( 1, buf);
   1380 90 F9 59      [24] 4726 	mov	dptr,#_appReturn_PARM_2
   1383 ED            [12] 4727 	mov	a,r5
   1384 F0            [24] 4728 	movx	@dptr,a
   1385 EE            [12] 4729 	mov	a,r6
   1386 A3            [24] 4730 	inc	dptr
   1387 F0            [24] 4731 	movx	@dptr,a
   1388 75 82 01      [24] 4732 	mov	dpl,#0x01
   138B 12 1C 5E      [24] 4733 	lcall	_appReturn
   138E                    4734 00134$:
                           4735 ;	appFHSSNIC.c:977: LED = 0;
   138E C2 A4         [12] 4736 	clr	_P2_4
                           4737 ;	appFHSSNIC.c:978: resetRFSTATE();
   1390 12 22 D1      [24] 4738 	lcall	_resetRFSTATE
                           4739 ;	appFHSSNIC.c:979: macdata.mac_state = MAC_STATE_NONHOPPING;
   1393 90 FD 91      [24] 4740 	mov	dptr,#_macdata
   1396 E4            [12] 4741 	clr	a
   1397 F0            [24] 4742 	movx	@dptr,a
                           4743 ;	appFHSSNIC.c:980: break;
   1398 02 17 AF      [24] 4744 	ljmp	00172$
   139B                    4745 00136$:
                           4746 ;	appFHSSNIC.c:983: buf[0] = MAC_tx(&buf[1], (__xdata u8) len);
   139B 74 01         [12] 4747 	mov	a,#0x01
   139D 2D            [12] 4748 	add	a,r5
   139E F9            [12] 4749 	mov	r1,a
   139F E4            [12] 4750 	clr	a
   13A0 3E            [12] 4751 	addc	a,r6
   13A1 FA            [12] 4752 	mov	r2,a
   13A2 90 F5 5C      [24] 4753 	mov	dptr,#_MAC_tx_PARM_2
   13A5 EB            [12] 4754 	mov	a,r3
   13A6 F0            [24] 4755 	movx	@dptr,a
   13A7 89 82         [24] 4756 	mov	dpl,r1
   13A9 8A 83         [24] 4757 	mov	dph,r2
   13AB C0 07         [24] 4758 	push	ar7
   13AD C0 06         [24] 4759 	push	ar6
   13AF C0 05         [24] 4760 	push	ar5
   13B1 12 03 45      [24] 4761 	lcall	_MAC_tx
   13B4 AC 82         [24] 4762 	mov	r4,dpl
   13B6 D0 05         [24] 4763 	pop	ar5
   13B8 D0 06         [24] 4764 	pop	ar6
   13BA D0 07         [24] 4765 	pop	ar7
   13BC 8D 82         [24] 4766 	mov	dpl,r5
   13BE 8E 83         [24] 4767 	mov	dph,r6
   13C0 8F F0         [24] 4768 	mov	b,r7
   13C2 EC            [12] 4769 	mov	a,r4
   13C3 12 33 D4      [24] 4770 	lcall	__gptrput
                           4771 ;	appFHSSNIC.c:985: if(buf[0] && buf[0] != RC_ERR_BUFFER_NOT_AVAILABLE)
   13C6 8D 82         [24] 4772 	mov	dpl,r5
   13C8 8E 83         [24] 4773 	mov	dph,r6
   13CA 8F F0         [24] 4774 	mov	b,r7
   13CC 12 35 6B      [24] 4775 	lcall	__gptrget
   13CF FB            [12] 4776 	mov	r3,a
   13D0 EC            [12] 4777 	mov	a,r4
   13D1 60 3B         [24] 4778 	jz	00138$
   13D3 BB FE 02      [24] 4779 	cjne	r3,#0xFE,00250$
   13D6 80 36         [24] 4780 	sjmp	00138$
   13D8                    4781 00250$:
                           4782 ;	appFHSSNIC.c:987: debug("buffer error");
   13D8 90 37 3E      [24] 4783 	mov	dptr,#__str_13
   13DB C0 07         [24] 4784 	push	ar7
   13DD C0 06         [24] 4785 	push	ar6
   13DF C0 05         [24] 4786 	push	ar5
   13E1 12 21 70      [24] 4787 	lcall	_debug
   13E4 D0 05         [24] 4788 	pop	ar5
   13E6 D0 06         [24] 4789 	pop	ar6
   13E8 D0 07         [24] 4790 	pop	ar7
                           4791 ;	appFHSSNIC.c:988: debughex(buf[0]);
   13EA 8D 82         [24] 4792 	mov	dpl,r5
   13EC 8E 83         [24] 4793 	mov	dph,r6
   13EE 8F F0         [24] 4794 	mov	b,r7
   13F0 12 35 6B      [24] 4795 	lcall	__gptrget
   13F3 F5 82         [12] 4796 	mov	dpl,a
   13F5 C0 07         [24] 4797 	push	ar7
   13F7 C0 06         [24] 4798 	push	ar6
   13F9 C0 05         [24] 4799 	push	ar5
   13FB 12 21 B2      [24] 4800 	lcall	_debughex
                           4801 ;	appFHSSNIC.c:989: LED = 0;
   13FE C2 A4         [12] 4802 	clr	_P2_4
                           4803 ;	appFHSSNIC.c:990: resetRFSTATE();
   1400 12 22 D1      [24] 4804 	lcall	_resetRFSTATE
   1403 D0 05         [24] 4805 	pop	ar5
   1405 D0 06         [24] 4806 	pop	ar6
   1407 D0 07         [24] 4807 	pop	ar7
                           4808 ;	appFHSSNIC.c:991: macdata.mac_state = MAC_STATE_NONHOPPING;
   1409 90 FD 91      [24] 4809 	mov	dptr,#_macdata
   140C E4            [12] 4810 	clr	a
   140D F0            [24] 4811 	movx	@dptr,a
   140E                    4812 00138$:
                           4813 ;	appFHSSNIC.c:993: appReturn( 1, buf);
   140E 90 F9 59      [24] 4814 	mov	dptr,#_appReturn_PARM_2
   1411 ED            [12] 4815 	mov	a,r5
   1412 F0            [24] 4816 	movx	@dptr,a
   1413 EE            [12] 4817 	mov	a,r6
   1414 A3            [24] 4818 	inc	dptr
   1415 F0            [24] 4819 	movx	@dptr,a
   1416 75 82 01      [24] 4820 	mov	dpl,#0x01
   1419 12 1C 5E      [24] 4821 	lcall	_appReturn
                           4822 ;	appFHSSNIC.c:994: break;
   141C 02 17 AF      [24] 4823 	ljmp	00172$
                           4824 ;	appFHSSNIC.c:996: case FHSS_XMIT:
   141F                    4825 00140$:
                           4826 ;	appFHSSNIC.c:997: len = buf[0];
   141F 8D 82         [24] 4827 	mov	dpl,r5
   1421 8E 83         [24] 4828 	mov	dph,r6
   1423 8F F0         [24] 4829 	mov	b,r7
   1425 12 35 6B      [24] 4830 	lcall	__gptrget
   1428 FB            [12] 4831 	mov	r3,a
   1429 7C 00         [12] 4832 	mov	r4,#0x00
   142B 90 F5 86      [24] 4833 	mov	dptr,#_appHandleEP5_len_1_179
   142E EB            [12] 4834 	mov	a,r3
   142F F0            [24] 4835 	movx	@dptr,a
   1430 EC            [12] 4836 	mov	a,r4
   1431 A3            [24] 4837 	inc	dptr
   1432 F0            [24] 4838 	movx	@dptr,a
                           4839 ;	appFHSSNIC.c:1006: if (len > MAX_TX_MSGLEN)
   1433 C3            [12] 4840 	clr	c
   1434 74 F0         [12] 4841 	mov	a,#0xF0
   1436 9B            [12] 4842 	subb	a,r3
   1437 E4            [12] 4843 	clr	a
   1438 9C            [12] 4844 	subb	a,r4
   1439 50 19         [24] 4845 	jnc	00142$
                           4846 ;	appFHSSNIC.c:1008: debug("FHSSxmit message too long");
   143B 90 36 49      [24] 4847 	mov	dptr,#__str_3
   143E 12 21 70      [24] 4848 	lcall	_debug
                           4849 ;	appFHSSNIC.c:1009: appReturn( 1, (__xdata u8*)&len);
   1441 90 F9 59      [24] 4850 	mov	dptr,#_appReturn_PARM_2
   1444 74 86         [12] 4851 	mov	a,#_appHandleEP5_len_1_179
   1446 F0            [24] 4852 	movx	@dptr,a
   1447 74 F5         [12] 4853 	mov	a,#(_appHandleEP5_len_1_179 >> 8)
   1449 A3            [24] 4854 	inc	dptr
   144A F0            [24] 4855 	movx	@dptr,a
   144B 75 82 01      [24] 4856 	mov	dpl,#0x01
   144E 12 1C 5E      [24] 4857 	lcall	_appReturn
                           4858 ;	appFHSSNIC.c:1010: break;
   1451 02 17 AF      [24] 4859 	ljmp	00172$
   1454                    4860 00142$:
                           4861 ;	appFHSSNIC.c:1013: if (g_txMsgQueue[macdata.txMsgIdx][0] != 0)
   1454 90 FD A2      [24] 4862 	mov	dptr,#(_macdata + 0x0011)
   1457 E0            [24] 4863 	movx	a,@dptr
   1458 75 F0 F1      [24] 4864 	mov	b,#0xF1
   145B A4            [48] 4865 	mul	ab
   145C 24 72         [12] 4866 	add	a,#_g_txMsgQueue
   145E F9            [12] 4867 	mov	r1,a
   145F 74 F3         [12] 4868 	mov	a,#(_g_txMsgQueue >> 8)
   1461 35 F0         [12] 4869 	addc	a,b
   1463 FA            [12] 4870 	mov	r2,a
   1464 89 82         [24] 4871 	mov	dpl,r1
   1466 8A 83         [24] 4872 	mov	dph,r2
   1468 E0            [24] 4873 	movx	a,@dptr
   1469 60 19         [24] 4874 	jz	00144$
                           4875 ;	appFHSSNIC.c:1015: debug("still waiting on the last packet");
   146B 90 37 4B      [24] 4876 	mov	dptr,#__str_14
   146E 12 21 70      [24] 4877 	lcall	_debug
                           4878 ;	appFHSSNIC.c:1016: appReturn( 1, (__xdata u8*)&len);
   1471 90 F9 59      [24] 4879 	mov	dptr,#_appReturn_PARM_2
   1474 74 86         [12] 4880 	mov	a,#_appHandleEP5_len_1_179
   1476 F0            [24] 4881 	movx	@dptr,a
   1477 74 F5         [12] 4882 	mov	a,#(_appHandleEP5_len_1_179 >> 8)
   1479 A3            [24] 4883 	inc	dptr
   147A F0            [24] 4884 	movx	@dptr,a
   147B 75 82 01      [24] 4885 	mov	dpl,#0x01
   147E 12 1C 5E      [24] 4886 	lcall	_appReturn
                           4887 ;	appFHSSNIC.c:1017: break;
   1481 02 17 AF      [24] 4888 	ljmp	00172$
   1484                    4889 00144$:
                           4890 ;	appFHSSNIC.c:1020: g_txMsgQueue[macdata.txMsgIdx][0] = len;
   1484 8B 00         [24] 4891 	mov	ar0,r3
   1486 89 82         [24] 4892 	mov	dpl,r1
   1488 8A 83         [24] 4893 	mov	dph,r2
   148A E8            [12] 4894 	mov	a,r0
   148B F0            [24] 4895 	movx	@dptr,a
                           4896 ;	appFHSSNIC.c:1021: memcpy(&g_txMsgQueue[macdata.txMsgIdx][1], &buf[1], len);
   148C 90 FD A2      [24] 4897 	mov	dptr,#(_macdata + 0x0011)
   148F E0            [24] 4898 	movx	a,@dptr
   1490 75 F0 F1      [24] 4899 	mov	b,#0xF1
   1493 A4            [48] 4900 	mul	ab
   1494 24 72         [12] 4901 	add	a,#_g_txMsgQueue
   1496 F9            [12] 4902 	mov	r1,a
   1497 74 F3         [12] 4903 	mov	a,#(_g_txMsgQueue >> 8)
   1499 35 F0         [12] 4904 	addc	a,b
   149B FA            [12] 4905 	mov	r2,a
   149C 09            [12] 4906 	inc	r1
   149D B9 00 01      [24] 4907 	cjne	r1,#0x00,00253$
   14A0 0A            [12] 4908 	inc	r2
   14A1                    4909 00253$:
   14A1 89 0A         [24] 4910 	mov	_appHandleEP5_sloc1_1_0,r1
   14A3 8A 0B         [24] 4911 	mov	(_appHandleEP5_sloc1_1_0 + 1),r2
   14A5 75 0C 00      [24] 4912 	mov	(_appHandleEP5_sloc1_1_0 + 2),#0x00
   14A8 74 01         [12] 4913 	mov	a,#0x01
   14AA 2D            [12] 4914 	add	a,r5
   14AB F9            [12] 4915 	mov	r1,a
   14AC E4            [12] 4916 	clr	a
   14AD 3E            [12] 4917 	addc	a,r6
   14AE FA            [12] 4918 	mov	r2,a
   14AF 89 14         [24] 4919 	mov	_memcpy_PARM_2,r1
   14B1 8A 15         [24] 4920 	mov	(_memcpy_PARM_2 + 1),r2
   14B3 75 16 00      [24] 4921 	mov	(_memcpy_PARM_2 + 2),#0x00
   14B6 8B 17         [24] 4922 	mov	_memcpy_PARM_3,r3
   14B8 8C 18         [24] 4923 	mov	(_memcpy_PARM_3 + 1),r4
   14BA 85 0A 82      [24] 4924 	mov	dpl,_appHandleEP5_sloc1_1_0
   14BD 85 0B 83      [24] 4925 	mov	dph,(_appHandleEP5_sloc1_1_0 + 1)
   14C0 85 0C F0      [24] 4926 	mov	b,(_appHandleEP5_sloc1_1_0 + 2)
   14C3 12 33 33      [24] 4927 	lcall	_memcpy
                           4928 ;	appFHSSNIC.c:1023: if (++macdata.txMsgIdx >= MAX_TX_MSGS)
   14C6 90 FD A2      [24] 4929 	mov	dptr,#(_macdata + 0x0011)
   14C9 E0            [24] 4930 	movx	a,@dptr
   14CA FC            [12] 4931 	mov	r4,a
   14CB 0C            [12] 4932 	inc	r4
   14CC 90 FD A2      [24] 4933 	mov	dptr,#(_macdata + 0x0011)
   14CF EC            [12] 4934 	mov	a,r4
   14D0 F0            [24] 4935 	movx	@dptr,a
   14D1 BC 02 00      [24] 4936 	cjne	r4,#0x02,00254$
   14D4                    4937 00254$:
   14D4 40 05         [24] 4938 	jc	00146$
                           4939 ;	appFHSSNIC.c:1025: macdata.txMsgIdx = 0;
   14D6 90 FD A2      [24] 4940 	mov	dptr,#(_macdata + 0x0011)
   14D9 E4            [12] 4941 	clr	a
   14DA F0            [24] 4942 	movx	@dptr,a
   14DB                    4943 00146$:
                           4944 ;	appFHSSNIC.c:1028: appReturn( 1, (__xdata u8*)&len);
   14DB 90 F9 59      [24] 4945 	mov	dptr,#_appReturn_PARM_2
   14DE 74 86         [12] 4946 	mov	a,#_appHandleEP5_len_1_179
   14E0 F0            [24] 4947 	movx	@dptr,a
   14E1 74 F5         [12] 4948 	mov	a,#(_appHandleEP5_len_1_179 >> 8)
   14E3 A3            [24] 4949 	inc	dptr
   14E4 F0            [24] 4950 	movx	@dptr,a
   14E5 75 82 01      [24] 4951 	mov	dpl,#0x01
   14E8 12 1C 5E      [24] 4952 	lcall	_appReturn
                           4953 ;	appFHSSNIC.c:1029: break;
   14EB 02 17 AF      [24] 4954 	ljmp	00172$
                           4955 ;	appFHSSNIC.c:1031: case FHSS_SET_CHANNELS:
   14EE                    4956 00147$:
                           4957 ;	appFHSSNIC.c:1032: macdata.NumChannels = (__xdata u16)buf[0];
   14EE 8D 82         [24] 4958 	mov	dpl,r5
   14F0 8E 83         [24] 4959 	mov	dph,r6
   14F2 8F F0         [24] 4960 	mov	b,r7
   14F4 12 35 6B      [24] 4961 	lcall	__gptrget
   14F7 FC            [12] 4962 	mov	r4,a
   14F8 7B 00         [12] 4963 	mov	r3,#0x00
   14FA 90 FD 96      [24] 4964 	mov	dptr,#(_macdata + 0x0005)
   14FD EC            [12] 4965 	mov	a,r4
   14FE F0            [24] 4966 	movx	@dptr,a
   14FF EB            [12] 4967 	mov	a,r3
   1500 A3            [24] 4968 	inc	dptr
   1501 F0            [24] 4969 	movx	@dptr,a
                           4970 ;	appFHSSNIC.c:1033: if (macdata.NumChannels <= MAX_CHANNELS)
   1502 90 FD 96      [24] 4971 	mov	dptr,#(_macdata + 0x0005)
   1505 E0            [24] 4972 	movx	a,@dptr
   1506 F9            [12] 4973 	mov	r1,a
   1507 A3            [24] 4974 	inc	dptr
   1508 E0            [24] 4975 	movx	a,@dptr
   1509 FA            [12] 4976 	mov	r2,a
   150A C3            [12] 4977 	clr	c
   150B 74 70         [12] 4978 	mov	a,#0x70
   150D 9C            [12] 4979 	subb	a,r4
   150E 74 03         [12] 4980 	mov	a,#0x03
   1510 9B            [12] 4981 	subb	a,r3
   1511 40 2E         [24] 4982 	jc	00149$
                           4983 ;	appFHSSNIC.c:1036: memcpy(&g_Channels[0], &buf[2], macdata.NumChannels);
   1513 74 02         [12] 4984 	mov	a,#0x02
   1515 2D            [12] 4985 	add	a,r5
   1516 FB            [12] 4986 	mov	r3,a
   1517 E4            [12] 4987 	clr	a
   1518 3E            [12] 4988 	addc	a,r6
   1519 FC            [12] 4989 	mov	r4,a
   151A 8B 14         [24] 4990 	mov	_memcpy_PARM_2,r3
   151C 8C 15         [24] 4991 	mov	(_memcpy_PARM_2 + 1),r4
   151E 75 16 00      [24] 4992 	mov	(_memcpy_PARM_2 + 2),#0x00
   1521 89 17         [24] 4993 	mov	_memcpy_PARM_3,r1
   1523 8A 18         [24] 4994 	mov	(_memcpy_PARM_3 + 1),r2
   1525 90 F0 00      [24] 4995 	mov	dptr,#_g_Channels
   1528 75 F0 00      [24] 4996 	mov	b,#0x00
   152B 12 33 33      [24] 4997 	lcall	_memcpy
                           4998 ;	appFHSSNIC.c:1037: appReturn( 2, (u8*)&macdata.NumChannels);
   152E 90 F9 59      [24] 4999 	mov	dptr,#_appReturn_PARM_2
   1531 74 96         [12] 5000 	mov	a,#(_macdata + 0x0005)
   1533 F0            [24] 5001 	movx	@dptr,a
   1534 74 FD         [12] 5002 	mov	a,#((_macdata + 0x0005) >> 8)
   1536 A3            [24] 5003 	inc	dptr
   1537 F0            [24] 5004 	movx	@dptr,a
   1538 75 82 02      [24] 5005 	mov	dpl,#0x02
   153B 12 1C 5E      [24] 5006 	lcall	_appReturn
   153E 02 17 AF      [24] 5007 	ljmp	00172$
   1541                    5008 00149$:
                           5009 ;	appFHSSNIC.c:1039: appReturn( 8, (__xdata u8*)"NO DEAL");
   1541 90 F9 59      [24] 5010 	mov	dptr,#_appReturn_PARM_2
   1544 74 6C         [12] 5011 	mov	a,#__str_15
   1546 F0            [24] 5012 	movx	@dptr,a
   1547 74 37         [12] 5013 	mov	a,#(__str_15 >> 8)
   1549 A3            [24] 5014 	inc	dptr
   154A F0            [24] 5015 	movx	@dptr,a
   154B 75 82 08      [24] 5016 	mov	dpl,#0x08
   154E 12 1C 5E      [24] 5017 	lcall	_appReturn
                           5018 ;	appFHSSNIC.c:1041: break;
   1551 02 17 AF      [24] 5019 	ljmp	00172$
                           5020 ;	appFHSSNIC.c:1043: case FHSS_GET_CHANNELS:
   1554                    5021 00151$:
                           5022 ;	appFHSSNIC.c:1044: appReturn( macdata.NumChannels, &g_Channels[0]);
   1554 90 FD 96      [24] 5023 	mov	dptr,#(_macdata + 0x0005)
   1557 E0            [24] 5024 	movx	a,@dptr
   1558 FB            [12] 5025 	mov	r3,a
   1559 A3            [24] 5026 	inc	dptr
   155A E0            [24] 5027 	movx	a,@dptr
   155B 90 F9 59      [24] 5028 	mov	dptr,#_appReturn_PARM_2
   155E 74 00         [12] 5029 	mov	a,#_g_Channels
   1560 F0            [24] 5030 	movx	@dptr,a
   1561 74 F0         [12] 5031 	mov	a,#(_g_Channels >> 8)
   1563 A3            [24] 5032 	inc	dptr
   1564 F0            [24] 5033 	movx	@dptr,a
   1565 8B 82         [24] 5034 	mov	dpl,r3
   1567 12 1C 5E      [24] 5035 	lcall	_appReturn
                           5036 ;	appFHSSNIC.c:1045: break;
   156A 02 17 AF      [24] 5037 	ljmp	00172$
                           5038 ;	appFHSSNIC.c:1047: case FHSS_NEXT_CHANNEL:
   156D                    5039 00152$:
                           5040 ;	appFHSSNIC.c:1048: MAC_set_chanidx(MAC_getNextChannel());
   156D 12 06 6E      [24] 5041 	lcall	_MAC_getNextChannel
   1570 7B 00         [12] 5042 	mov	r3,#0x00
   1572 8B 83         [24] 5043 	mov	dph,r3
   1574 12 06 29      [24] 5044 	lcall	_MAC_set_chanidx
                           5045 ;	appFHSSNIC.c:1049: appReturn( 1, &g_Channels[macdata.curChanIdx]);
   1577 90 FD 9A      [24] 5046 	mov	dptr,#(_macdata + 0x0009)
   157A E0            [24] 5047 	movx	a,@dptr
   157B FB            [12] 5048 	mov	r3,a
   157C A3            [24] 5049 	inc	dptr
   157D E0            [24] 5050 	movx	a,@dptr
   157E FC            [12] 5051 	mov	r4,a
   157F 90 F9 59      [24] 5052 	mov	dptr,#_appReturn_PARM_2
   1582 EB            [12] 5053 	mov	a,r3
   1583 24 00         [12] 5054 	add	a,#_g_Channels
   1585 F0            [24] 5055 	movx	@dptr,a
   1586 EC            [12] 5056 	mov	a,r4
   1587 34 F0         [12] 5057 	addc	a,#(_g_Channels >> 8)
   1589 A3            [24] 5058 	inc	dptr
   158A F0            [24] 5059 	movx	@dptr,a
   158B 75 82 01      [24] 5060 	mov	dpl,#0x01
   158E 12 1C 5E      [24] 5061 	lcall	_appReturn
                           5062 ;	appFHSSNIC.c:1050: break;
   1591 02 17 AF      [24] 5063 	ljmp	00172$
                           5064 ;	appFHSSNIC.c:1052: case FHSS_CHANGE_CHANNEL:
   1594                    5065 00153$:
                           5066 ;	appFHSSNIC.c:1053: PHY_set_channel(buf[0]);
   1594 8D 82         [24] 5067 	mov	dpl,r5
   1596 8E 83         [24] 5068 	mov	dph,r6
   1598 8F F0         [24] 5069 	mov	b,r7
   159A 12 35 6B      [24] 5070 	lcall	__gptrget
   159D FC            [12] 5071 	mov	r4,a
   159E 7B 00         [12] 5072 	mov	r3,#0x00
   15A0 8C 82         [24] 5073 	mov	dpl,r4
   15A2 8B 83         [24] 5074 	mov	dph,r3
   15A4 C0 07         [24] 5075 	push	ar7
   15A6 C0 06         [24] 5076 	push	ar6
   15A8 C0 05         [24] 5077 	push	ar5
   15AA 12 01 04      [24] 5078 	lcall	_PHY_set_channel
   15AD D0 05         [24] 5079 	pop	ar5
   15AF D0 06         [24] 5080 	pop	ar6
   15B1 D0 07         [24] 5081 	pop	ar7
                           5082 ;	appFHSSNIC.c:1054: appReturn( 1, buf);
   15B3 90 F9 59      [24] 5083 	mov	dptr,#_appReturn_PARM_2
   15B6 ED            [12] 5084 	mov	a,r5
   15B7 F0            [24] 5085 	movx	@dptr,a
   15B8 EE            [12] 5086 	mov	a,r6
   15B9 A3            [24] 5087 	inc	dptr
   15BA F0            [24] 5088 	movx	@dptr,a
   15BB 75 82 01      [24] 5089 	mov	dpl,#0x01
   15BE 12 1C 5E      [24] 5090 	lcall	_appReturn
                           5091 ;	appFHSSNIC.c:1055: break;
   15C1 02 17 AF      [24] 5092 	ljmp	00172$
                           5093 ;	appFHSSNIC.c:1057: case FHSS_START_HOPPING:
   15C4                    5094 00154$:
                           5095 ;	appFHSSNIC.c:1058: begin_hopping(0);
   15C4 75 82 00      [24] 5096 	mov	dpl,#0x00
   15C7 C0 07         [24] 5097 	push	ar7
   15C9 C0 06         [24] 5098 	push	ar6
   15CB C0 05         [24] 5099 	push	ar5
   15CD 12 01 85      [24] 5100 	lcall	_begin_hopping
   15D0 D0 05         [24] 5101 	pop	ar5
   15D2 D0 06         [24] 5102 	pop	ar6
   15D4 D0 07         [24] 5103 	pop	ar7
                           5104 ;	appFHSSNIC.c:1059: appReturn( 1, buf);
   15D6 90 F9 59      [24] 5105 	mov	dptr,#_appReturn_PARM_2
   15D9 ED            [12] 5106 	mov	a,r5
   15DA F0            [24] 5107 	movx	@dptr,a
   15DB EE            [12] 5108 	mov	a,r6
   15DC A3            [24] 5109 	inc	dptr
   15DD F0            [24] 5110 	movx	@dptr,a
   15DE 75 82 01      [24] 5111 	mov	dpl,#0x01
   15E1 12 1C 5E      [24] 5112 	lcall	_appReturn
                           5113 ;	appFHSSNIC.c:1060: break;
   15E4 02 17 AF      [24] 5114 	ljmp	00172$
                           5115 ;	appFHSSNIC.c:1062: case FHSS_STOP_HOPPING:
   15E7                    5116 00155$:
                           5117 ;	appFHSSNIC.c:1063: stop_hopping();
   15E7 C0 07         [24] 5118 	push	ar7
   15E9 C0 06         [24] 5119 	push	ar6
   15EB C0 05         [24] 5120 	push	ar5
   15ED 12 01 9E      [24] 5121 	lcall	_stop_hopping
   15F0 D0 05         [24] 5122 	pop	ar5
   15F2 D0 06         [24] 5123 	pop	ar6
   15F4 D0 07         [24] 5124 	pop	ar7
                           5125 ;	appFHSSNIC.c:1064: appReturn( 1, buf);
   15F6 90 F9 59      [24] 5126 	mov	dptr,#_appReturn_PARM_2
   15F9 ED            [12] 5127 	mov	a,r5
   15FA F0            [24] 5128 	movx	@dptr,a
   15FB EE            [12] 5129 	mov	a,r6
   15FC A3            [24] 5130 	inc	dptr
   15FD F0            [24] 5131 	movx	@dptr,a
   15FE 75 82 01      [24] 5132 	mov	dpl,#0x01
   1601 12 1C 5E      [24] 5133 	lcall	_appReturn
                           5134 ;	appFHSSNIC.c:1065: break;
   1604 02 17 AF      [24] 5135 	ljmp	00172$
                           5136 ;	appFHSSNIC.c:1068: case FHSS_SET_MAC_THRESHOLD:
   1607                    5137 00156$:
                           5138 ;	appFHSSNIC.c:1069: macdata.MAC_threshold = buf[0];
   1607 8D 82         [24] 5139 	mov	dpl,r5
   1609 8E 83         [24] 5140 	mov	dph,r6
   160B 8F F0         [24] 5141 	mov	b,r7
   160D 12 35 6B      [24] 5142 	lcall	__gptrget
   1610 FC            [12] 5143 	mov	r4,a
   1611 7B 00         [12] 5144 	mov	r3,#0x00
   1613 90 FD 92      [24] 5145 	mov	dptr,#(_macdata + 0x0001)
   1616 EC            [12] 5146 	mov	a,r4
   1617 F0            [24] 5147 	movx	@dptr,a
   1618 EB            [12] 5148 	mov	a,r3
   1619 A3            [24] 5149 	inc	dptr
   161A F0            [24] 5150 	movx	@dptr,a
                           5151 ;	appFHSSNIC.c:1070: appReturn( 1, buf);
   161B 90 F9 59      [24] 5152 	mov	dptr,#_appReturn_PARM_2
   161E ED            [12] 5153 	mov	a,r5
   161F F0            [24] 5154 	movx	@dptr,a
   1620 EE            [12] 5155 	mov	a,r6
   1621 A3            [24] 5156 	inc	dptr
   1622 F0            [24] 5157 	movx	@dptr,a
   1623 75 82 01      [24] 5158 	mov	dpl,#0x01
   1626 12 1C 5E      [24] 5159 	lcall	_appReturn
                           5160 ;	appFHSSNIC.c:1071: break;
   1629 02 17 AF      [24] 5161 	ljmp	00172$
                           5162 ;	appFHSSNIC.c:1073: case FHSS_GET_MAC_THRESHOLD:
   162C                    5163 00157$:
                           5164 ;	appFHSSNIC.c:1074: appReturn( 4, (__xdata u8*)&macdata.MAC_threshold);
   162C 90 F9 59      [24] 5165 	mov	dptr,#_appReturn_PARM_2
   162F 74 92         [12] 5166 	mov	a,#(_macdata + 0x0001)
   1631 F0            [24] 5167 	movx	@dptr,a
   1632 74 FD         [12] 5168 	mov	a,#((_macdata + 0x0001) >> 8)
   1634 A3            [24] 5169 	inc	dptr
   1635 F0            [24] 5170 	movx	@dptr,a
   1636 75 82 04      [24] 5171 	mov	dpl,#0x04
   1639 12 1C 5E      [24] 5172 	lcall	_appReturn
                           5173 ;	appFHSSNIC.c:1075: break;
   163C 02 17 AF      [24] 5174 	ljmp	00172$
                           5175 ;	appFHSSNIC.c:1077: case FHSS_SET_MAC_DATA:
   163F                    5176 00158$:
                           5177 ;	appFHSSNIC.c:1078: debugx(buf);
   163F 8D 82         [24] 5178 	mov	dpl,r5
   1641 8E 83         [24] 5179 	mov	dph,r6
   1643 8F F0         [24] 5180 	mov	b,r7
   1645 C0 07         [24] 5181 	push	ar7
   1647 C0 06         [24] 5182 	push	ar6
   1649 C0 05         [24] 5183 	push	ar5
   164B 12 21 2F      [24] 5184 	lcall	_debugx
   164E D0 05         [24] 5185 	pop	ar5
   1650 D0 06         [24] 5186 	pop	ar6
   1652 D0 07         [24] 5187 	pop	ar7
                           5188 ;	appFHSSNIC.c:1079: debughex(buf[0]);
   1654 8D 82         [24] 5189 	mov	dpl,r5
   1656 8E 83         [24] 5190 	mov	dph,r6
   1658 8F F0         [24] 5191 	mov	b,r7
   165A 12 35 6B      [24] 5192 	lcall	__gptrget
   165D F5 82         [12] 5193 	mov	dpl,a
   165F C0 07         [24] 5194 	push	ar7
   1661 C0 06         [24] 5195 	push	ar6
   1663 C0 05         [24] 5196 	push	ar5
   1665 12 21 B2      [24] 5197 	lcall	_debughex
   1668 D0 05         [24] 5198 	pop	ar5
   166A D0 06         [24] 5199 	pop	ar6
   166C D0 07         [24] 5200 	pop	ar7
                           5201 ;	appFHSSNIC.c:1080: memcpy((__xdata u8*)&macdata, (__xdata u8*)*buf, sizeof(macdata));
   166E 7B 91         [12] 5202 	mov	r3,#_macdata
   1670 7C FD         [12] 5203 	mov	r4,#(_macdata >> 8)
   1672 7A 00         [12] 5204 	mov	r2,#0x00
   1674 8D 82         [24] 5205 	mov	dpl,r5
   1676 8E 83         [24] 5206 	mov	dph,r6
   1678 8F F0         [24] 5207 	mov	b,r7
   167A 12 35 6B      [24] 5208 	lcall	__gptrget
   167D F8            [12] 5209 	mov	r0,a
   167E 79 00         [12] 5210 	mov	r1,#0x00
   1680 88 14         [24] 5211 	mov	_memcpy_PARM_2,r0
   1682 89 15         [24] 5212 	mov	(_memcpy_PARM_2 + 1),r1
   1684 75 16 00      [24] 5213 	mov	(_memcpy_PARM_2 + 2),#0x00
   1687 75 17 15      [24] 5214 	mov	_memcpy_PARM_3,#0x15
   168A 75 18 00      [24] 5215 	mov	(_memcpy_PARM_3 + 1),#0x00
   168D 8B 82         [24] 5216 	mov	dpl,r3
   168F 8C 83         [24] 5217 	mov	dph,r4
   1691 8A F0         [24] 5218 	mov	b,r2
   1693 C0 07         [24] 5219 	push	ar7
   1695 C0 06         [24] 5220 	push	ar6
   1697 C0 05         [24] 5221 	push	ar5
   1699 12 33 33      [24] 5222 	lcall	_memcpy
   169C D0 05         [24] 5223 	pop	ar5
   169E D0 06         [24] 5224 	pop	ar6
   16A0 D0 07         [24] 5225 	pop	ar7
                           5226 ;	appFHSSNIC.c:1081: appReturn( sizeof(macdata), buf);
   16A2 90 F9 59      [24] 5227 	mov	dptr,#_appReturn_PARM_2
   16A5 ED            [12] 5228 	mov	a,r5
   16A6 F0            [24] 5229 	movx	@dptr,a
   16A7 EE            [12] 5230 	mov	a,r6
   16A8 A3            [24] 5231 	inc	dptr
   16A9 F0            [24] 5232 	movx	@dptr,a
   16AA 75 82 15      [24] 5233 	mov	dpl,#0x15
   16AD 12 1C 5E      [24] 5234 	lcall	_appReturn
                           5235 ;	appFHSSNIC.c:1082: break;
   16B0 02 17 AF      [24] 5236 	ljmp	00172$
                           5237 ;	appFHSSNIC.c:1084: case FHSS_GET_MAC_DATA:
   16B3                    5238 00159$:
                           5239 ;	appFHSSNIC.c:1085: macdata.MAC_timer = rf_MAC_timer;
   16B3 90 FD 8D      [24] 5240 	mov	dptr,#_rf_MAC_timer
   16B6 E0            [24] 5241 	movx	a,@dptr
   16B7 FB            [12] 5242 	mov	r3,a
   16B8 A3            [24] 5243 	inc	dptr
   16B9 E0            [24] 5244 	movx	a,@dptr
   16BA FC            [12] 5245 	mov	r4,a
   16BB 90 FD 94      [24] 5246 	mov	dptr,#(_macdata + 0x0003)
   16BE EB            [12] 5247 	mov	a,r3
   16BF F0            [24] 5248 	movx	@dptr,a
   16C0 EC            [12] 5249 	mov	a,r4
   16C1 A3            [24] 5250 	inc	dptr
   16C2 F0            [24] 5251 	movx	@dptr,a
                           5252 ;	appFHSSNIC.c:1086: appReturn( sizeof(macdata), (__xdata u8*)&macdata);
   16C3 90 F9 59      [24] 5253 	mov	dptr,#_appReturn_PARM_2
   16C6 74 91         [12] 5254 	mov	a,#_macdata
   16C8 F0            [24] 5255 	movx	@dptr,a
   16C9 74 FD         [12] 5256 	mov	a,#(_macdata >> 8)
   16CB A3            [24] 5257 	inc	dptr
   16CC F0            [24] 5258 	movx	@dptr,a
   16CD 75 82 15      [24] 5259 	mov	dpl,#0x15
   16D0 12 1C 5E      [24] 5260 	lcall	_appReturn
                           5261 ;	appFHSSNIC.c:1087: break;
   16D3 02 17 AF      [24] 5262 	ljmp	00172$
                           5263 ;	appFHSSNIC.c:1089: case FHSS_START_SYNC:
   16D6                    5264 00160$:
                           5265 ;	appFHSSNIC.c:1090: MAC_sync(buf[0]);
   16D6 8D 82         [24] 5266 	mov	dpl,r5
   16D8 8E 83         [24] 5267 	mov	dph,r6
   16DA 8F F0         [24] 5268 	mov	b,r7
   16DC 12 35 6B      [24] 5269 	lcall	__gptrget
   16DF FC            [12] 5270 	mov	r4,a
   16E0 7B 00         [12] 5271 	mov	r3,#0x00
   16E2 8C 82         [24] 5272 	mov	dpl,r4
   16E4 8B 83         [24] 5273 	mov	dph,r3
   16E6 C0 07         [24] 5274 	push	ar7
   16E8 C0 06         [24] 5275 	push	ar6
   16EA C0 05         [24] 5276 	push	ar5
   16EC 12 05 25      [24] 5277 	lcall	_MAC_sync
   16EF D0 05         [24] 5278 	pop	ar5
   16F1 D0 06         [24] 5279 	pop	ar6
   16F3 D0 07         [24] 5280 	pop	ar7
                           5281 ;	appFHSSNIC.c:1091: appReturn( 1, buf);
   16F5 90 F9 59      [24] 5282 	mov	dptr,#_appReturn_PARM_2
   16F8 ED            [12] 5283 	mov	a,r5
   16F9 F0            [24] 5284 	movx	@dptr,a
   16FA EE            [12] 5285 	mov	a,r6
   16FB A3            [24] 5286 	inc	dptr
   16FC F0            [24] 5287 	movx	@dptr,a
   16FD 75 82 01      [24] 5288 	mov	dpl,#0x01
   1700 12 1C 5E      [24] 5289 	lcall	_appReturn
                           5290 ;	appFHSSNIC.c:1092: break;
   1703 02 17 AF      [24] 5291 	ljmp	00172$
                           5292 ;	appFHSSNIC.c:1094: case FHSS_SET_STATE:
   1706                    5293 00161$:
                           5294 ;	appFHSSNIC.c:1096: macdata.tLastStateChange = clock;
   1706 90 FD B7      [24] 5295 	mov	dptr,#_clock
   1709 E0            [24] 5296 	movx	a,@dptr
   170A F9            [12] 5297 	mov	r1,a
   170B A3            [24] 5298 	inc	dptr
   170C E0            [24] 5299 	movx	a,@dptr
   170D FA            [12] 5300 	mov	r2,a
   170E A3            [24] 5301 	inc	dptr
   170F E0            [24] 5302 	movx	a,@dptr
   1710 A3            [24] 5303 	inc	dptr
   1711 E0            [24] 5304 	movx	a,@dptr
   1712 90 FD 9C      [24] 5305 	mov	dptr,#(_macdata + 0x000b)
   1715 E9            [12] 5306 	mov	a,r1
   1716 F0            [24] 5307 	movx	@dptr,a
   1717 EA            [12] 5308 	mov	a,r2
   1718 A3            [24] 5309 	inc	dptr
   1719 F0            [24] 5310 	movx	@dptr,a
                           5311 ;	appFHSSNIC.c:1097: macdata.mac_state = (u8)buf[0];
   171A 8D 82         [24] 5312 	mov	dpl,r5
   171C 8E 83         [24] 5313 	mov	dph,r6
   171E 8F F0         [24] 5314 	mov	b,r7
   1720 12 35 6B      [24] 5315 	lcall	__gptrget
   1723 FC            [12] 5316 	mov	r4,a
   1724 90 FD 91      [24] 5317 	mov	dptr,#_macdata
   1727 F0            [24] 5318 	movx	@dptr,a
                           5319 ;	appFHSSNIC.c:1101: switch (macdata.mac_state)
   1728 90 FD 91      [24] 5320 	mov	dptr,#_macdata
   172B E0            [24] 5321 	movx	a,@dptr
   172C FB            [12] 5322 	mov	r3,a
   172D EC            [12] 5323 	mov	a,r4
   172E 24 FA         [12] 5324 	add	a,#0xff - 0x05
   1730 40 4D         [24] 5325 	jc	00168$
   1732 EB            [12] 5326 	mov	a,r3
   1733 2B            [12] 5327 	add	a,r3
   1734 2B            [12] 5328 	add	a,r3
   1735 90 17 39      [24] 5329 	mov	dptr,#00258$
   1738 73            [24] 5330 	jmp	@a+dptr
   1739                    5331 00258$:
   1739 02 17 4B      [24] 5332 	ljmp	00162$
   173C 02 17 4B      [24] 5333 	ljmp	00163$
   173F 02 17 4B      [24] 5334 	ljmp	00164$
   1742 02 17 6D      [24] 5335 	ljmp	00166$
   1745 02 17 6D      [24] 5336 	ljmp	00167$
   1748 02 17 5C      [24] 5337 	ljmp	00165$
                           5338 ;	appFHSSNIC.c:1103: case MAC_STATE_NONHOPPING:
   174B                    5339 00162$:
                           5340 ;	appFHSSNIC.c:1104: case MAC_STATE_DISCOVERY:
   174B                    5341 00163$:
                           5342 ;	appFHSSNIC.c:1105: case MAC_STATE_SYNCHING:
   174B                    5343 00164$:
                           5344 ;	appFHSSNIC.c:1107: stop_hopping();
   174B C0 07         [24] 5345 	push	ar7
   174D C0 06         [24] 5346 	push	ar6
   174F C0 05         [24] 5347 	push	ar5
   1751 12 01 9E      [24] 5348 	lcall	_stop_hopping
   1754 D0 05         [24] 5349 	pop	ar5
   1756 D0 06         [24] 5350 	pop	ar6
   1758 D0 07         [24] 5351 	pop	ar7
                           5352 ;	appFHSSNIC.c:1108: break;
                           5353 ;	appFHSSNIC.c:1110: case MAC_STATE_SYNCINGMASTER:
   175A 80 23         [24] 5354 	sjmp	00168$
   175C                    5355 00165$:
                           5356 ;	appFHSSNIC.c:1111: MAC_do_Master_scanny_thingy();
   175C C0 07         [24] 5357 	push	ar7
   175E C0 06         [24] 5358 	push	ar6
   1760 C0 05         [24] 5359 	push	ar5
   1762 12 06 01      [24] 5360 	lcall	_MAC_do_Master_scanny_thingy
   1765 D0 05         [24] 5361 	pop	ar5
   1767 D0 06         [24] 5362 	pop	ar6
   1769 D0 07         [24] 5363 	pop	ar7
                           5364 ;	appFHSSNIC.c:1112: break;
                           5365 ;	appFHSSNIC.c:1114: case MAC_STATE_SYNCHED:
   176B 80 12         [24] 5366 	sjmp	00168$
   176D                    5367 00166$:
                           5368 ;	appFHSSNIC.c:1115: case MAC_STATE_SYNC_MASTER:
   176D                    5369 00167$:
                           5370 ;	appFHSSNIC.c:1116: begin_hopping(0);
   176D 75 82 00      [24] 5371 	mov	dpl,#0x00
   1770 C0 07         [24] 5372 	push	ar7
   1772 C0 06         [24] 5373 	push	ar6
   1774 C0 05         [24] 5374 	push	ar5
   1776 12 01 85      [24] 5375 	lcall	_begin_hopping
   1779 D0 05         [24] 5376 	pop	ar5
   177B D0 06         [24] 5377 	pop	ar6
   177D D0 07         [24] 5378 	pop	ar7
                           5379 ;	appFHSSNIC.c:1118: }
   177F                    5380 00168$:
                           5381 ;	appFHSSNIC.c:1120: appReturn( 1, buf);
   177F 90 F9 59      [24] 5382 	mov	dptr,#_appReturn_PARM_2
   1782 ED            [12] 5383 	mov	a,r5
   1783 F0            [24] 5384 	movx	@dptr,a
   1784 EE            [12] 5385 	mov	a,r6
   1785 A3            [24] 5386 	inc	dptr
   1786 F0            [24] 5387 	movx	@dptr,a
   1787 75 82 01      [24] 5388 	mov	dpl,#0x01
   178A 12 1C 5E      [24] 5389 	lcall	_appReturn
                           5390 ;	appFHSSNIC.c:1121: break;
                           5391 ;	appFHSSNIC.c:1123: case FHSS_GET_STATE:
   178D 80 20         [24] 5392 	sjmp	00172$
   178F                    5393 00169$:
                           5394 ;	appFHSSNIC.c:1124: appReturn( 1, (__xdata u8*)&macdata.mac_state);
   178F 90 F9 59      [24] 5395 	mov	dptr,#_appReturn_PARM_2
   1792 74 91         [12] 5396 	mov	a,#_macdata
   1794 F0            [24] 5397 	movx	@dptr,a
   1795 74 FD         [12] 5398 	mov	a,#(_macdata >> 8)
   1797 A3            [24] 5399 	inc	dptr
   1798 F0            [24] 5400 	movx	@dptr,a
   1799 75 82 01      [24] 5401 	mov	dpl,#0x01
   179C 12 1C 5E      [24] 5402 	lcall	_appReturn
                           5403 ;	appFHSSNIC.c:1125: break;
                           5404 ;	appFHSSNIC.c:1127: default:
   179F 80 0E         [24] 5405 	sjmp	00172$
   17A1                    5406 00170$:
                           5407 ;	appFHSSNIC.c:1128: appReturn( 1, buf);
   17A1 90 F9 59      [24] 5408 	mov	dptr,#_appReturn_PARM_2
   17A4 ED            [12] 5409 	mov	a,r5
   17A5 F0            [24] 5410 	movx	@dptr,a
   17A6 EE            [12] 5411 	mov	a,r6
   17A7 A3            [24] 5412 	inc	dptr
   17A8 F0            [24] 5413 	movx	@dptr,a
   17A9 75 82 01      [24] 5414 	mov	dpl,#0x01
   17AC 12 1C 5E      [24] 5415 	lcall	_appReturn
                           5416 ;	appFHSSNIC.c:1132: }
   17AF                    5417 00172$:
                           5418 ;	appFHSSNIC.c:1135: return 0;
   17AF 90 00 00      [24] 5419 	mov	dptr,#0x0000
   17B2 22            [24] 5420 	ret
                           5421 ;------------------------------------------------------------
                           5422 ;Allocation info for local variables in function 'appHandleEP0OUTdone'
                           5423 ;------------------------------------------------------------
                           5424 ;	appFHSSNIC.c:1139: void appHandleEP0OUTdone(void)
                           5425 ;	-----------------------------------------
                           5426 ;	 function appHandleEP0OUTdone
                           5427 ;	-----------------------------------------
   17B3                    5428 _appHandleEP0OUTdone:
                           5429 ;	appFHSSNIC.c:1141: }
   17B3 22            [24] 5430 	ret
                           5431 ;------------------------------------------------------------
                           5432 ;Allocation info for local variables in function 'appHandleEP0OUT'
                           5433 ;------------------------------------------------------------
                           5434 ;	appFHSSNIC.c:1144: void appHandleEP0OUT(void)
                           5435 ;	-----------------------------------------
                           5436 ;	 function appHandleEP0OUT
                           5437 ;	-----------------------------------------
   17B4                    5438 _appHandleEP0OUT:
                           5439 ;	appFHSSNIC.c:1174: }
   17B4 22            [24] 5440 	ret
                           5441 ;------------------------------------------------------------
                           5442 ;Allocation info for local variables in function 'appHandleEP0'
                           5443 ;------------------------------------------------------------
                           5444 ;pReq                      Allocated to registers 
                           5445 ;------------------------------------------------------------
                           5446 ;	appFHSSNIC.c:1181: int appHandleEP0(__xdata USB_Setup_Header* pReq)
                           5447 ;	-----------------------------------------
                           5448 ;	 function appHandleEP0
                           5449 ;	-----------------------------------------
   17B5                    5450 _appHandleEP0:
                           5451 ;	appFHSSNIC.c:1217: return 0;
   17B5 90 00 00      [24] 5452 	mov	dptr,#0x0000
   17B8 22            [24] 5453 	ret
                           5454 ;------------------------------------------------------------
                           5455 ;Allocation info for local variables in function 'appInitRf'
                           5456 ;------------------------------------------------------------
                           5457 ;	appFHSSNIC.c:1227: void appInitRf(void)
                           5458 ;	-----------------------------------------
                           5459 ;	 function appInitRf
                           5460 ;	-----------------------------------------
   17B9                    5461 _appInitRf:
                           5462 ;	appFHSSNIC.c:1233: IOCFG2      = 0x00;
   17B9 90 DF 2F      [24] 5463 	mov	dptr,#_IOCFG2
                           5464 ;	appFHSSNIC.c:1234: IOCFG1      = 0x00;
                           5465 ;	appFHSSNIC.c:1235: IOCFG0      = 0x00;
   17BC E4            [12] 5466 	clr	a
   17BD F0            [24] 5467 	movx	@dptr,a
   17BE 90 DF 30      [24] 5468 	mov	dptr,#_IOCFG1
   17C1 F0            [24] 5469 	movx	@dptr,a
   17C2 90 DF 31      [24] 5470 	mov	dptr,#_IOCFG0
   17C5 F0            [24] 5471 	movx	@dptr,a
                           5472 ;	appFHSSNIC.c:1236: SYNC1       = 0x0c;
   17C6 90 DF 00      [24] 5473 	mov	dptr,#_SYNC1
   17C9 74 0C         [12] 5474 	mov	a,#0x0C
   17CB F0            [24] 5475 	movx	@dptr,a
                           5476 ;	appFHSSNIC.c:1237: SYNC0       = 0x4e;
   17CC 90 DF 01      [24] 5477 	mov	dptr,#_SYNC0
   17CF 74 4E         [12] 5478 	mov	a,#0x4E
   17D1 F0            [24] 5479 	movx	@dptr,a
                           5480 ;	appFHSSNIC.c:1238: PKTLEN      = 0xff;
   17D2 90 DF 02      [24] 5481 	mov	dptr,#_PKTLEN
   17D5 74 FF         [12] 5482 	mov	a,#0xFF
   17D7 F0            [24] 5483 	movx	@dptr,a
                           5484 ;	appFHSSNIC.c:1239: PKTCTRL1    = 0x40; // PQT threshold  - was 0x00
   17D8 90 DF 03      [24] 5485 	mov	dptr,#_PKTCTRL1
   17DB 74 40         [12] 5486 	mov	a,#0x40
   17DD F0            [24] 5487 	movx	@dptr,a
                           5488 ;	appFHSSNIC.c:1240: PKTCTRL0    = 0x00; // FLEN.  for VLEN use |1 (ie.  FLEN=00, VLEN=01)
   17DE 90 DF 04      [24] 5489 	mov	dptr,#_PKTCTRL0
                           5490 ;	appFHSSNIC.c:1241: ADDR        = 0x00;
                           5491 ;	appFHSSNIC.c:1242: CHANNR      = 0x00;
   17E1 E4            [12] 5492 	clr	a
   17E2 F0            [24] 5493 	movx	@dptr,a
   17E3 90 DF 05      [24] 5494 	mov	dptr,#_ADDR
   17E6 F0            [24] 5495 	movx	@dptr,a
   17E7 90 DF 06      [24] 5496 	mov	dptr,#_CHANNR
   17EA F0            [24] 5497 	movx	@dptr,a
                           5498 ;	appFHSSNIC.c:1243: FSCTRL1     = 0x06;
   17EB 90 DF 07      [24] 5499 	mov	dptr,#_FSCTRL1
   17EE 74 06         [12] 5500 	mov	a,#0x06
   17F0 F0            [24] 5501 	movx	@dptr,a
                           5502 ;	appFHSSNIC.c:1244: FSCTRL0     = 0x00;
   17F1 90 DF 08      [24] 5503 	mov	dptr,#_FSCTRL0
   17F4 E4            [12] 5504 	clr	a
   17F5 F0            [24] 5505 	movx	@dptr,a
                           5506 ;	appFHSSNIC.c:1245: FREQ2       = 0x24;
   17F6 90 DF 09      [24] 5507 	mov	dptr,#_FREQ2
   17F9 74 24         [12] 5508 	mov	a,#0x24
   17FB F0            [24] 5509 	movx	@dptr,a
                           5510 ;	appFHSSNIC.c:1246: FREQ1       = 0x3a;
   17FC 90 DF 0A      [24] 5511 	mov	dptr,#_FREQ1
   17FF 74 3A         [12] 5512 	mov	a,#0x3A
   1801 F0            [24] 5513 	movx	@dptr,a
                           5514 ;	appFHSSNIC.c:1247: FREQ0       = 0xf1;
   1802 90 DF 0B      [24] 5515 	mov	dptr,#_FREQ0
   1805 74 F1         [12] 5516 	mov	a,#0xF1
   1807 F0            [24] 5517 	movx	@dptr,a
                           5518 ;	appFHSSNIC.c:1248: MDMCFG4     = 0xca;
   1808 90 DF 0C      [24] 5519 	mov	dptr,#_MDMCFG4
   180B 74 CA         [12] 5520 	mov	a,#0xCA
   180D F0            [24] 5521 	movx	@dptr,a
                           5522 ;	appFHSSNIC.c:1249: MDMCFG3     = 0xa3;
   180E 90 DF 0D      [24] 5523 	mov	dptr,#_MDMCFG3
   1811 74 A3         [12] 5524 	mov	a,#0xA3
   1813 F0            [24] 5525 	movx	@dptr,a
                           5526 ;	appFHSSNIC.c:1250: MDMCFG2     = 0x01;
   1814 90 DF 0E      [24] 5527 	mov	dptr,#_MDMCFG2
   1817 74 01         [12] 5528 	mov	a,#0x01
   1819 F0            [24] 5529 	movx	@dptr,a
                           5530 ;	appFHSSNIC.c:1251: MDMCFG1     = 0x23;
   181A 90 DF 0F      [24] 5531 	mov	dptr,#_MDMCFG1
   181D 74 23         [12] 5532 	mov	a,#0x23
   181F F0            [24] 5533 	movx	@dptr,a
                           5534 ;	appFHSSNIC.c:1252: MDMCFG0     = 0x11;
   1820 90 DF 10      [24] 5535 	mov	dptr,#_MDMCFG0
   1823 74 11         [12] 5536 	mov	a,#0x11
   1825 F0            [24] 5537 	movx	@dptr,a
                           5538 ;	appFHSSNIC.c:1253: DEVIATN     = 0x36;
   1826 90 DF 11      [24] 5539 	mov	dptr,#_DEVIATN
   1829 74 36         [12] 5540 	mov	a,#0x36
   182B F0            [24] 5541 	movx	@dptr,a
                           5542 ;	appFHSSNIC.c:1254: MCSM2       = 0x07;             // RX_TIMEOUT
   182C 90 DF 12      [24] 5543 	mov	dptr,#_MCSM2
   182F 74 07         [12] 5544 	mov	a,#0x07
   1831 F0            [24] 5545 	movx	@dptr,a
                           5546 ;	appFHSSNIC.c:1255: MCSM1       = 0x0f;             // was 'CCA_MODE RSSI below threshold unless currently recvg pkt'-3, now 'Always'-0 - always end up in RX mode
   1832 90 DF 13      [24] 5547 	mov	dptr,#_MCSM1
   1835 74 0F         [12] 5548 	mov	a,#0x0F
   1837 F0            [24] 5549 	movx	@dptr,a
                           5550 ;	appFHSSNIC.c:1256: MCSM0       = 0x18;             // fsautosync when going from idle to rx/tx/fstxon
   1838 90 DF 14      [24] 5551 	mov	dptr,#_MCSM0
   183B 74 18         [12] 5552 	mov	a,#0x18
   183D F0            [24] 5553 	movx	@dptr,a
                           5554 ;	appFHSSNIC.c:1257: FOCCFG      = 0x17;
   183E 90 DF 15      [24] 5555 	mov	dptr,#_FOCCFG
   1841 74 17         [12] 5556 	mov	a,#0x17
   1843 F0            [24] 5557 	movx	@dptr,a
                           5558 ;	appFHSSNIC.c:1258: BSCFG       = 0x6c;
   1844 90 DF 16      [24] 5559 	mov	dptr,#_BSCFG
   1847 74 6C         [12] 5560 	mov	a,#0x6C
   1849 F0            [24] 5561 	movx	@dptr,a
                           5562 ;	appFHSSNIC.c:1259: AGCCTRL2    = 0x03;
   184A 90 DF 17      [24] 5563 	mov	dptr,#_AGCCTRL2
   184D 74 03         [12] 5564 	mov	a,#0x03
   184F F0            [24] 5565 	movx	@dptr,a
                           5566 ;	appFHSSNIC.c:1260: AGCCTRL1    = 0x40;
   1850 90 DF 18      [24] 5567 	mov	dptr,#_AGCCTRL1
   1853 74 40         [12] 5568 	mov	a,#0x40
   1855 F0            [24] 5569 	movx	@dptr,a
                           5570 ;	appFHSSNIC.c:1261: AGCCTRL0    = 0x91;
   1856 90 DF 19      [24] 5571 	mov	dptr,#_AGCCTRL0
   1859 74 91         [12] 5572 	mov	a,#0x91
   185B F0            [24] 5573 	movx	@dptr,a
                           5574 ;	appFHSSNIC.c:1262: FREND1      = 0x56;
   185C 90 DF 1A      [24] 5575 	mov	dptr,#_FREND1
   185F 74 56         [12] 5576 	mov	a,#0x56
   1861 F0            [24] 5577 	movx	@dptr,a
                           5578 ;	appFHSSNIC.c:1263: FREND0      = 0x10;
   1862 90 DF 1B      [24] 5579 	mov	dptr,#_FREND0
   1865 74 10         [12] 5580 	mov	a,#0x10
   1867 F0            [24] 5581 	movx	@dptr,a
                           5582 ;	appFHSSNIC.c:1264: FSCAL3      = 0xe9;
   1868 90 DF 1C      [24] 5583 	mov	dptr,#_FSCAL3
   186B 74 E9         [12] 5584 	mov	a,#0xE9
   186D F0            [24] 5585 	movx	@dptr,a
                           5586 ;	appFHSSNIC.c:1265: FSCAL2      = 0x2a;
   186E 90 DF 1D      [24] 5587 	mov	dptr,#_FSCAL2
   1871 74 2A         [12] 5588 	mov	a,#0x2A
   1873 F0            [24] 5589 	movx	@dptr,a
                           5590 ;	appFHSSNIC.c:1266: FSCAL1      = 0x00;
   1874 90 DF 1E      [24] 5591 	mov	dptr,#_FSCAL1
   1877 E4            [12] 5592 	clr	a
   1878 F0            [24] 5593 	movx	@dptr,a
                           5594 ;	appFHSSNIC.c:1267: FSCAL0      = 0x1f;
   1879 90 DF 1F      [24] 5595 	mov	dptr,#_FSCAL0
   187C 74 1F         [12] 5596 	mov	a,#0x1F
   187E F0            [24] 5597 	movx	@dptr,a
                           5598 ;	appFHSSNIC.c:1268: TEST2       = 0x88; // low data rates, increased sensitivity provided by 0x81- was 0x88
   187F 90 DF 23      [24] 5599 	mov	dptr,#_TEST2
   1882 74 88         [12] 5600 	mov	a,#0x88
   1884 F0            [24] 5601 	movx	@dptr,a
                           5602 ;	appFHSSNIC.c:1269: TEST1       = 0x31; // always 0x31 in tx-mode, for low data rates 0x35 provides increased sensitivity - was 0x31
   1885 90 DF 24      [24] 5603 	mov	dptr,#_TEST1
   1888 74 31         [12] 5604 	mov	a,#0x31
   188A F0            [24] 5605 	movx	@dptr,a
                           5606 ;	appFHSSNIC.c:1270: TEST0       = 0x09;
   188B 90 DF 25      [24] 5607 	mov	dptr,#_TEST0
   188E 74 09         [12] 5608 	mov	a,#0x09
   1890 F0            [24] 5609 	movx	@dptr,a
                           5610 ;	appFHSSNIC.c:1271: PA_TABLE0   = 0xc0;
   1891 90 DF 2E      [24] 5611 	mov	dptr,#_PA_TABLE0
   1894 74 C0         [12] 5612 	mov	a,#0xC0
   1896 F0            [24] 5613 	movx	@dptr,a
                           5614 ;	appFHSSNIC.c:1279: FSCTRL1     = 0x0c;             // Intermediate Frequency
   1897 90 DF 07      [24] 5615 	mov	dptr,#_FSCTRL1
   189A 74 0C         [12] 5616 	mov	a,#0x0C
   189C F0            [24] 5617 	movx	@dptr,a
                           5618 ;	appFHSSNIC.c:1281: FREQ2       = 0x25;
   189D 90 DF 09      [24] 5619 	mov	dptr,#_FREQ2
   18A0 74 25         [12] 5620 	mov	a,#0x25
   18A2 F0            [24] 5621 	movx	@dptr,a
                           5622 ;	appFHSSNIC.c:1282: FREQ1       = 0x95;
   18A3 90 DF 0A      [24] 5623 	mov	dptr,#_FREQ1
   18A6 74 95         [12] 5624 	mov	a,#0x95
   18A8 F0            [24] 5625 	movx	@dptr,a
                           5626 ;	appFHSSNIC.c:1283: FREQ0       = 0x55;
   18A9 90 DF 0B      [24] 5627 	mov	dptr,#_FREQ0
   18AC 74 55         [12] 5628 	mov	a,#0x55
   18AE F0            [24] 5629 	movx	@dptr,a
                           5630 ;	appFHSSNIC.c:1295: FREND1      = 0xb6;
   18AF 90 DF 1A      [24] 5631 	mov	dptr,#_FREND1
   18B2 74 B6         [12] 5632 	mov	a,#0xB6
   18B4 F0            [24] 5633 	movx	@dptr,a
                           5634 ;	appFHSSNIC.c:1296: FREND0      = 0x10;
   18B5 90 DF 1B      [24] 5635 	mov	dptr,#_FREND0
   18B8 74 10         [12] 5636 	mov	a,#0x10
   18BA F0            [24] 5637 	movx	@dptr,a
                           5638 ;	appFHSSNIC.c:1297: FSCAL3      = 0xea;
   18BB 90 DF 1C      [24] 5639 	mov	dptr,#_FSCAL3
   18BE 74 EA         [12] 5640 	mov	a,#0xEA
   18C0 F0            [24] 5641 	movx	@dptr,a
                           5642 ;	appFHSSNIC.c:1298: FSCAL2      = 0x2a;
   18C1 90 DF 1D      [24] 5643 	mov	dptr,#_FSCAL2
   18C4 74 2A         [12] 5644 	mov	a,#0x2A
   18C6 F0            [24] 5645 	movx	@dptr,a
                           5646 ;	appFHSSNIC.c:1299: FSCAL1      = 0x00;
   18C7 90 DF 1E      [24] 5647 	mov	dptr,#_FSCAL1
   18CA E4            [12] 5648 	clr	a
   18CB F0            [24] 5649 	movx	@dptr,a
                           5650 ;	appFHSSNIC.c:1300: FSCAL0      = 0x1f;
   18CC 90 DF 1F      [24] 5651 	mov	dptr,#_FSCAL0
   18CF 74 1F         [12] 5652 	mov	a,#0x1F
   18D1 F0            [24] 5653 	movx	@dptr,a
   18D2 22            [24] 5654 	ret
                           5655 ;------------------------------------------------------------
                           5656 ;Allocation info for local variables in function 'initBoard'
                           5657 ;------------------------------------------------------------
                           5658 ;	appFHSSNIC.c:1346: void initBoard(void)
                           5659 ;	-----------------------------------------
                           5660 ;	 function initBoard
                           5661 ;	-----------------------------------------
   18D3                    5662 _initBoard:
                           5663 ;	appFHSSNIC.c:1349: clock_init();
   18D3 12 2E 95      [24] 5664 	lcall	_clock_init
                           5665 ;	appFHSSNIC.c:1350: io_init();
   18D6 02 2E C1      [24] 5666 	ljmp	_io_init
                           5667 ;------------------------------------------------------------
                           5668 ;Allocation info for local variables in function 'main'
                           5669 ;------------------------------------------------------------
                           5670 ;	appFHSSNIC.c:1354: void main (void)
                           5671 ;	-----------------------------------------
                           5672 ;	 function main
                           5673 ;	-----------------------------------------
   18D9                    5674 _main:
                           5675 ;	appFHSSNIC.c:1356: initBoard();
   18D9 12 18 D3      [24] 5676 	lcall	_initBoard
                           5677 ;	appFHSSNIC.c:1357: initDMA();  // do this early so peripherals that use DMA can allocate channels correctly
   18DC 12 22 17      [24] 5678 	lcall	_initDMA
                           5679 ;	appFHSSNIC.c:1358: initAES();
   18DF 12 2E FE      [24] 5680 	lcall	_initAES
                           5681 ;	appFHSSNIC.c:1359: initUSB();
   18E2 12 1B 38      [24] 5682 	lcall	_initUSB
                           5683 ;	appFHSSNIC.c:1360: init_RF();
   18E5 12 23 71      [24] 5684 	lcall	_init_RF
                           5685 ;	appFHSSNIC.c:1361: appMainInit();
   18E8 12 09 FE      [24] 5686 	lcall	_appMainInit
                           5687 ;	appFHSSNIC.c:1363: usb_up();
   18EB 12 1C 05      [24] 5688 	lcall	_usb_up
                           5689 ;	appFHSSNIC.c:1366: EA = 1;
   18EE D2 AF         [12] 5690 	setb	_EA
                           5691 ;	appFHSSNIC.c:1367: waitForUSBsetup();
   18F0 12 1C 56      [24] 5692 	lcall	_waitForUSBsetup
                           5693 ;	appFHSSNIC.c:1369: REALLYFASTBLINK();
   18F3 D2 A4         [12] 5694 	setb	_P2_4
   18F5 90 00 02      [24] 5695 	mov	dptr,#0x0002
   18F8 12 2D 4B      [24] 5696 	lcall	_sleepMillis
   18FB C2 A4         [12] 5697 	clr	_P2_4
   18FD 90 00 0A      [24] 5698 	mov	dptr,#0x000A
   1900 12 2D 4B      [24] 5699 	lcall	_sleepMillis
                           5700 ;	appFHSSNIC.c:1371: while (1)
   1903                    5701 00102$:
                           5702 ;	appFHSSNIC.c:1373: usbProcessEvents();
   1903 12 1B 73      [24] 5703 	lcall	_usbProcessEvents
                           5704 ;	appFHSSNIC.c:1374: appMainLoop();
   1906 12 0A 25      [24] 5705 	lcall	_appMainLoop
   1909 80 F8         [24] 5706 	sjmp	00102$
                           5707 	.area CSEG    (CODE)
                           5708 	.area CONST   (CODE)
   35CE                    5709 __str_0:
   35CE 43 61 6E 6E 6F 74  5710 	.ascii "Cannot call transmit_long while FHSS Hopping or already proc"
        20 63 61 6C 6C 20
        74 72 61 6E 73 6D
        69 74 5F 6C 6F 6E
        67 20 77 68 69 6C
        65 20 46 48 53 53
        20 48 6F 70 70 69
        6E 67 20 6F 72 20
        61 6C 72 65 61 64
        79 20 70 72 6F 63
   360A 65 73 73 69 6E 67  5711 	.ascii "essing transmit_long!"
        20 74 72 61 6E 73
        6D 69 74 5F 6C 6F
        6E 67 21
   361F 00                 5712 	.db 0x00
   3620                    5713 __str_1:
   3620 4D 41 43 5F 74 78  5714 	.ascii "MAC_tx() returned error"
        28 29 20 72 65 74
        75 72 6E 65 64 20
        65 72 72 6F 72
   3637 00                 5715 	.db 0x00
   3638                    5716 __str_2:
   3638 6E 65 76 65 72 20  5717 	.ascii "never entered TX"
        65 6E 74 65 72 65
        64 20 54 58
   3648 00                 5718 	.db 0x00
   3649                    5719 __str_3:
   3649 46 48 53 53 78 6D  5720 	.ascii "FHSSxmit message too long"
        69 74 20 6D 65 73
        73 61 67 65 20 74
        6F 6F 20 6C 6F 6E
        67
   3662 00                 5721 	.db 0x00
   3663                    5722 __str_4:
   3663 46 48 53 53 20 73  5723 	.ascii "FHSS state entering SYNCHING from wrong state"
        74 61 74 65 20 65
        6E 74 65 72 69 6E
        67 20 53 59 4E 43
        48 49 4E 47 20 66
        72 6F 6D 20 77 72
        6F 6E 67 20 73 74
        61 74 65
   3690 00                 5724 	.db 0x00
   3691                    5725 __str_5:
   3691 53 59 4E 43 48 5F  5726 	.ascii "SYNCH_MASTER -> SYNCINGMASTER"
        4D 41 53 54 45 52
        20 2D 3E 20 53 59
        4E 43 49 4E 47 4D
        41 53 54 45 52
   36AE 00                 5727 	.db 0x00
   36AF                    5728 __str_6:
   36AF 46 48 53 53 78 6D  5729 	.ascii "FHSSxmit done"
        69 74 20 64 6F 6E
        65
   36BC 00                 5730 	.db 0x00
   36BD                    5731 __str_7:
   36BD 6E 65 74 77 6F 72  5732 	.ascii "network packet(sync)"
        6B 20 70 61 63 6B
        65 74 28 73 79 6E
        63 29
   36D1 00                 5733 	.db 0x00
   36D2                    5734 __str_8:
   36D2 6E 65 74 77 6F 72  5735 	.ascii "network packet(discovery)"
        6B 20 70 61 63 6B
        65 74 28 64 69 73
        63 6F 76 65 72 79
        29
   36EB 00                 5736 	.db 0x00
   36EC                    5737 __str_9:
   36EC 63 72 61 70 2C 20  5738 	.ascii "crap, please use FHSSxmit() instead!"
        70 6C 65 61 73 65
        20 75 73 65 20 46
        48 53 53 78 6D 69
        74 28 29 20 69 6E
        73 74 65 61 64 21
   3710 00                 5739 	.db 0x00
   3711                    5740 __str_10:
   3711 64 72 6F 70 6F 75  5741 	.ascii "dropout final wait!"
        74 20 66 69 6E 61
        6C 20 77 61 69 74
        21
   3724 00                 5742 	.db 0x00
   3725                    5743 __str_11:
   3725 74 6F 74 61 6C 20  5744 	.ascii "total bytes tx:"
        62 79 74 65 73 20
        74 78 3A
   3734 00                 5745 	.db 0x00
   3735                    5746 __str_12:
   3735 75 6E 64 65 72 72  5747 	.ascii "underrun"
        75 6E
   373D 00                 5748 	.db 0x00
   373E                    5749 __str_13:
   373E 62 75 66 66 65 72  5750 	.ascii "buffer error"
        20 65 72 72 6F 72
   374A 00                 5751 	.db 0x00
   374B                    5752 __str_14:
   374B 73 74 69 6C 6C 20  5753 	.ascii "still waiting on the last packet"
        77 61 69 74 69 6E
        67 20 6F 6E 20 74
        68 65 20 6C 61 73
        74 20 70 61 63 6B
        65 74
   376B 00                 5754 	.db 0x00
   376C                    5755 __str_15:
   376C 4E 4F 20 44 45 41  5756 	.ascii "NO DEAL"
        4C
   3773 00                 5757 	.db 0x00
                           5758 	.area XINIT   (CODE)
                           5759 	.area CABS    (ABS,CODE)
