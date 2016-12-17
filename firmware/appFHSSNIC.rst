                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Fri Dec 16 14:41:38 2016
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
   0044                     798 __start__stack:
   0044                     799 	.ds	1
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
   F554                    1057 _PHY_set_channel_chan_1_93:
   F554                    1058 	.ds 2
   F556                    1059 _begin_hopping_T2_offset_1_99:
   F556                    1060 	.ds 1
   F557                    1061 _transmit_long_PARM_2:
   F557                    1062 	.ds 2
   F559                    1063 _transmit_long_PARM_3:
   F559                    1064 	.ds 1
   F55A                    1065 _transmit_long_buf_1_103:
   F55A                    1066 	.ds 2
   F55C                    1067 _MAC_tx_PARM_2:
   F55C                    1068 	.ds 1
   F55D                    1069 _MAC_tx_msg_1_114:
   F55D                    1070 	.ds 2
   F55F                    1071 _MAC_sync_CellID_1_124:
   F55F                    1072 	.ds 2
   F561                    1073 _MAC_set_chanidx_chanidx_1_132:
   F561                    1074 	.ds 2
   F563                    1075 _MAC_set_NIC_ID_NIC_ID_1_134:
   F563                    1076 	.ds 2
   F565                    1077 _MAC_rx_handle_PARM_2:
   F565                    1078 	.ds 2
   F567                    1079 _t2IntHandler_packet_1_141:
   F567                    1080 	.ds 28
   F583                    1081 _processbuffer::
   F583                    1082 	.ds 1
   F584                    1083 _chan_table::
   F584                    1084 	.ds 2
   F586                    1085 _appHandleEP5_len_1_181:
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
   0003 02 28 0A      [24] 1111 	ljmp	_rfTxRxIntHandler
   0006                    1112 	.ds	5
   000B 32            [24] 1113 	reti
   000C                    1114 	.ds	7
   0013 32            [24] 1115 	reti
   0014                    1116 	.ds	7
   001B 02 19 25      [24] 1117 	ljmp	_rx1_isr
   001E                    1118 	.ds	5
   0023 32            [24] 1119 	reti
   0024                    1120 	.ds	7
   002B 32            [24] 1121 	reti
   002C                    1122 	.ds	7
   0033 02 1C C5      [24] 1123 	ljmp	_usbIntHandler
   0036                    1124 	.ds	5
   003B 32            [24] 1125 	reti
   003C                    1126 	.ds	7
   0043 32            [24] 1127 	reti
   0044                    1128 	.ds	7
   004B 02 2F 5F      [24] 1129 	ljmp	_t1IntHandler
   004E                    1130 	.ds	5
   0053 02 06 BA      [24] 1131 	ljmp	_t2IntHandler
   0056                    1132 	.ds	5
   005B 02 09 9E      [24] 1133 	ljmp	_t3IntHandler
   005E                    1134 	.ds	5
   0063 32            [24] 1135 	reti
   0064                    1136 	.ds	7
   006B 02 1C C6      [24] 1137 	ljmp	_p0IntHandler
   006E                    1138 	.ds	5
   0073 02 1A 55      [24] 1139 	ljmp	_tx1_isr
   0076                    1140 	.ds	5
   007B 32            [24] 1141 	reti
   007C                    1142 	.ds	7
   0083 02 2B 1E      [24] 1143 	ljmp	_rfIntHandler
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
   0111 02 00 86      [24] 1158 	ljmp	__sdcc_program_startup
                           1159 ;--------------------------------------------------------
                           1160 ; Home
                           1161 ;--------------------------------------------------------
                           1162 	.area HOME    (CODE)
                           1163 	.area HOME    (CODE)
   0086                    1164 __sdcc_program_startup:
   0086 02 18 E9      [24] 1165 	ljmp	_main
                           1166 ;	return from main will return to caller
                           1167 ;--------------------------------------------------------
                           1168 ; code
                           1169 ;--------------------------------------------------------
                           1170 	.area CSEG    (CODE)
                           1171 ;------------------------------------------------------------
                           1172 ;Allocation info for local variables in function 'PHY_set_channel'
                           1173 ;------------------------------------------------------------
                           1174 ;chan                      Allocated with name '_PHY_set_channel_chan_1_93'
                           1175 ;------------------------------------------------------------
                           1176 ;	appFHSSNIC.c:79: void PHY_set_channel(__xdata u16 chan)
                           1177 ;	-----------------------------------------
                           1178 ;	 function PHY_set_channel
                           1179 ;	-----------------------------------------
   0114                    1180 _PHY_set_channel:
                     0007  1181 	ar7 = 0x07
                     0006  1182 	ar6 = 0x06
                     0005  1183 	ar5 = 0x05
                     0004  1184 	ar4 = 0x04
                     0003  1185 	ar3 = 0x03
                     0002  1186 	ar2 = 0x02
                     0001  1187 	ar1 = 0x01
                     0000  1188 	ar0 = 0x00
   0114 AF 83         [24] 1189 	mov	r7,dph
   0116 E5 82         [12] 1190 	mov	a,dpl
   0118 90 F5 54      [24] 1191 	mov	dptr,#_PHY_set_channel_chan_1_93
   011B F0            [24] 1192 	movx	@dptr,a
   011C EF            [12] 1193 	mov	a,r7
   011D A3            [24] 1194 	inc	dptr
   011E F0            [24] 1195 	movx	@dptr,a
                           1196 ;	appFHSSNIC.c:82: RFOFF;
   011F 75 E1 04      [24] 1197 	mov	_RFST,#0x04
   0122                    1198 00101$:
   0122 90 DF 3B      [24] 1199 	mov	dptr,#_MARCSTATE
   0125 E0            [24] 1200 	movx	a,@dptr
   0126 FF            [12] 1201 	mov	r7,a
   0127 BF 01 F8      [24] 1202 	cjne	r7,#0x01,00101$
                           1203 ;	appFHSSNIC.c:84: CHANNR = chan;
   012A 90 F5 54      [24] 1204 	mov	dptr,#_PHY_set_channel_chan_1_93
   012D E0            [24] 1205 	movx	a,@dptr
   012E FE            [12] 1206 	mov	r6,a
   012F A3            [24] 1207 	inc	dptr
   0130 E0            [24] 1208 	movx	a,@dptr
   0131 FF            [12] 1209 	mov	r7,a
   0132 90 DF 06      [24] 1210 	mov	dptr,#_CHANNR
   0135 EE            [12] 1211 	mov	a,r6
   0136 F0            [24] 1212 	movx	@dptr,a
                           1213 ;	appFHSSNIC.c:86: RFRX;
   0137 75 E1 02      [24] 1214 	mov	_RFST,#0x02
   013A                    1215 00107$:
   013A 90 DF 3B      [24] 1216 	mov	dptr,#_MARCSTATE
   013D E0            [24] 1217 	movx	a,@dptr
   013E FF            [12] 1218 	mov	r7,a
   013F BF 0D F8      [24] 1219 	cjne	r7,#0x0D,00107$
   0142 22            [24] 1220 	ret
                           1221 ;------------------------------------------------------------
                           1222 ;Allocation info for local variables in function 'MAC_initChannels'
                           1223 ;------------------------------------------------------------
                           1224 ;loop                      Allocated to registers r6 r7 
                           1225 ;------------------------------------------------------------
                           1226 ;	appFHSSNIC.c:93: void MAC_initChannels()
                           1227 ;	-----------------------------------------
                           1228 ;	 function MAC_initChannels
                           1229 ;	-----------------------------------------
   0143                    1230 _MAC_initChannels:
                           1231 ;	appFHSSNIC.c:97: for (loop=0; loop<macdata.NumChannelHops; loop++)
   0143 7E 00         [12] 1232 	mov	r6,#0x00
   0145 7F 00         [12] 1233 	mov	r7,#0x00
   0147                    1234 00103$:
   0147 90 FD E4      [24] 1235 	mov	dptr,#(_macdata + 0x0007)
   014A E0            [24] 1236 	movx	a,@dptr
   014B FC            [12] 1237 	mov	r4,a
   014C A3            [24] 1238 	inc	dptr
   014D E0            [24] 1239 	movx	a,@dptr
   014E FD            [12] 1240 	mov	r5,a
   014F 8E 02         [24] 1241 	mov	ar2,r6
   0151 8F 03         [24] 1242 	mov	ar3,r7
   0153 C3            [12] 1243 	clr	c
   0154 EA            [12] 1244 	mov	a,r2
   0155 9C            [12] 1245 	subb	a,r4
   0156 EB            [12] 1246 	mov	a,r3
   0157 9D            [12] 1247 	subb	a,r5
   0158 50 3A         [24] 1248 	jnc	00105$
                           1249 ;	appFHSSNIC.c:99: g_Channels[loop] = loop % macdata.NumChannels;
   015A EE            [12] 1250 	mov	a,r6
   015B 24 00         [12] 1251 	add	a,#_g_Channels
   015D FC            [12] 1252 	mov	r4,a
   015E EF            [12] 1253 	mov	a,r7
   015F 34 F0         [12] 1254 	addc	a,#(_g_Channels >> 8)
   0161 FD            [12] 1255 	mov	r5,a
   0162 90 FD E2      [24] 1256 	mov	dptr,#(_macdata + 0x0005)
   0165 E0            [24] 1257 	movx	a,@dptr
   0166 F5 14         [12] 1258 	mov	__moduint_PARM_2,a
   0168 A3            [24] 1259 	inc	dptr
   0169 E0            [24] 1260 	movx	a,@dptr
   016A F5 15         [12] 1261 	mov	(__moduint_PARM_2 + 1),a
   016C 8A 82         [24] 1262 	mov	dpl,r2
   016E 8B 83         [24] 1263 	mov	dph,r3
   0170 C0 07         [24] 1264 	push	ar7
   0172 C0 06         [24] 1265 	push	ar6
   0174 C0 05         [24] 1266 	push	ar5
   0176 C0 04         [24] 1267 	push	ar4
   0178 12 34 94      [24] 1268 	lcall	__moduint
   017B AA 82         [24] 1269 	mov	r2,dpl
   017D AB 83         [24] 1270 	mov	r3,dph
   017F D0 04         [24] 1271 	pop	ar4
   0181 D0 05         [24] 1272 	pop	ar5
   0183 D0 06         [24] 1273 	pop	ar6
   0185 D0 07         [24] 1274 	pop	ar7
   0187 8C 82         [24] 1275 	mov	dpl,r4
   0189 8D 83         [24] 1276 	mov	dph,r5
   018B EA            [12] 1277 	mov	a,r2
   018C F0            [24] 1278 	movx	@dptr,a
                           1279 ;	appFHSSNIC.c:97: for (loop=0; loop<macdata.NumChannelHops; loop++)
   018D 0E            [12] 1280 	inc	r6
   018E BE 00 B6      [24] 1281 	cjne	r6,#0x00,00103$
   0191 0F            [12] 1282 	inc	r7
   0192 80 B3         [24] 1283 	sjmp	00103$
   0194                    1284 00105$:
   0194 22            [24] 1285 	ret
                           1286 ;------------------------------------------------------------
                           1287 ;Allocation info for local variables in function 'begin_hopping'
                           1288 ;------------------------------------------------------------
                           1289 ;T2_offset                 Allocated with name '_begin_hopping_T2_offset_1_99'
                           1290 ;------------------------------------------------------------
                           1291 ;	appFHSSNIC.c:104: void begin_hopping(__xdata u8 T2_offset)
                           1292 ;	-----------------------------------------
                           1293 ;	 function begin_hopping
                           1294 ;	-----------------------------------------
   0195                    1295 _begin_hopping:
   0195 E5 82         [12] 1296 	mov	a,dpl
                           1297 ;	appFHSSNIC.c:107: T2CT -= T2_offset;
   0197 90 F5 56      [24] 1298 	mov	dptr,#_begin_hopping_T2_offset_1_99
   019A F0            [24] 1299 	movx	@dptr,a
   019B FF            [12] 1300 	mov	r7,a
   019C E5 9C         [12] 1301 	mov	a,_T2CT
   019E C3            [12] 1302 	clr	c
   019F 9F            [12] 1303 	subb	a,r7
   01A0 F5 9C         [12] 1304 	mov	_T2CT,a
                           1305 ;	appFHSSNIC.c:108: T2CT -= MAC_TIMER_STATIC_DIFF;
   01A2 E5 9C         [12] 1306 	mov	a,_T2CT
   01A4 24 FA         [12] 1307 	add	a,#0xFA
   01A6 F5 9C         [12] 1308 	mov	_T2CT,a
                           1309 ;	appFHSSNIC.c:110: T2CTL |= T2CTL_INT;
   01A8 43 9E 10      [24] 1310 	orl	_T2CTL,#0x10
                           1311 ;	appFHSSNIC.c:111: T2IE = 1;
   01AB D2 BA         [12] 1312 	setb	_T2IE
   01AD 22            [24] 1313 	ret
                           1314 ;------------------------------------------------------------
                           1315 ;Allocation info for local variables in function 'stop_hopping'
                           1316 ;------------------------------------------------------------
                           1317 ;	appFHSSNIC.c:115: void stop_hopping(void)
                           1318 ;	-----------------------------------------
                           1319 ;	 function stop_hopping
                           1320 ;	-----------------------------------------
   01AE                    1321 _stop_hopping:
                           1322 ;	appFHSSNIC.c:118: T2CTL &= ~T2CTL_INT;
   01AE AF 9E         [24] 1323 	mov	r7,_T2CTL
   01B0 74 EF         [12] 1324 	mov	a,#0xEF
   01B2 5F            [12] 1325 	anl	a,r7
   01B3 F5 9E         [12] 1326 	mov	_T2CTL,a
   01B5 22            [24] 1327 	ret
                           1328 ;------------------------------------------------------------
                           1329 ;Allocation info for local variables in function 'transmit_long'
                           1330 ;------------------------------------------------------------
                           1331 ;len                       Allocated with name '_transmit_long_PARM_2'
                           1332 ;blocks                    Allocated with name '_transmit_long_PARM_3'
                           1333 ;buf                       Allocated with name '_transmit_long_buf_1_103'
                           1334 ;countdown                 Allocated with name '_transmit_long_countdown_1_104'
                           1335 ;err                       Allocated with name '_transmit_long_err_1_104'
                           1336 ;------------------------------------------------------------
                           1337 ;	appFHSSNIC.c:123: __xdata u8 transmit_long(__xdata u8* __xdata buf, __xdata u16 len, __xdata u8 blocks)
                           1338 ;	-----------------------------------------
                           1339 ;	 function transmit_long
                           1340 ;	-----------------------------------------
   01B6                    1341 _transmit_long:
   01B6 AF 83         [24] 1342 	mov	r7,dph
   01B8 E5 82         [12] 1343 	mov	a,dpl
   01BA 90 F5 5A      [24] 1344 	mov	dptr,#_transmit_long_buf_1_103
   01BD F0            [24] 1345 	movx	@dptr,a
   01BE EF            [12] 1346 	mov	a,r7
   01BF A3            [24] 1347 	inc	dptr
   01C0 F0            [24] 1348 	movx	@dptr,a
                           1349 ;	appFHSSNIC.c:131: if (macdata.mac_state != MAC_STATE_NONHOPPING)
   01C1 90 FD DD      [24] 1350 	mov	dptr,#_macdata
   01C4 E0            [24] 1351 	movx	a,@dptr
   01C5 60 13         [24] 1352 	jz	00102$
                           1353 ;	appFHSSNIC.c:133: debug("Cannot call transmit_long while FHSS Hopping or already processing transmit_long!");
   01C7 90 36 56      [24] 1354 	mov	dptr,#__str_0
   01CA 12 21 F8      [24] 1355 	lcall	_debug
                           1356 ;	appFHSSNIC.c:134: debughex(macdata.mac_state);
   01CD 90 FD DD      [24] 1357 	mov	dptr,#_macdata
   01D0 E0            [24] 1358 	movx	a,@dptr
   01D1 F5 82         [12] 1359 	mov	dpl,a
   01D3 12 22 3A      [24] 1360 	lcall	_debughex
                           1361 ;	appFHSSNIC.c:135: return RC_RF_MODE_INCOMPAT;
   01D6 75 82 EF      [24] 1362 	mov	dpl,#0xEF
   01D9 22            [24] 1363 	ret
   01DA                    1364 00102$:
                           1365 ;	appFHSSNIC.c:138: macdata.mac_state = MAC_STATE_LONG_XMIT;
   01DA 90 FD DD      [24] 1366 	mov	dptr,#_macdata
   01DD 74 06         [12] 1367 	mov	a,#0x06
   01DF F0            [24] 1368 	movx	@dptr,a
                           1369 ;	appFHSSNIC.c:139: while (MARCSTATE == MARC_STATE_TX)
   01E0                    1370 00103$:
   01E0 90 DF 3B      [24] 1371 	mov	dptr,#_MARCSTATE
   01E3 E0            [24] 1372 	movx	a,@dptr
   01E4 FF            [12] 1373 	mov	r7,a
   01E5 BF 13 02      [24] 1374 	cjne	r7,#0x13,00164$
   01E8 80 F6         [24] 1375 	sjmp	00103$
   01EA                    1376 00164$:
                           1377 ;	appFHSSNIC.c:144: LED = 0;
   01EA C2 A4         [12] 1378 	clr	_P2_4
                           1379 ;	appFHSSNIC.c:147: rfTxTotalTXLen = len;
   01EC 90 F5 57      [24] 1380 	mov	dptr,#_transmit_long_PARM_2
   01EF E0            [24] 1381 	movx	a,@dptr
   01F0 FE            [12] 1382 	mov	r6,a
   01F1 A3            [24] 1383 	inc	dptr
   01F2 E0            [24] 1384 	movx	a,@dptr
   01F3 FF            [12] 1385 	mov	r7,a
   01F4 90 FE 44      [24] 1386 	mov	dptr,#_rfTxTotalTXLen
   01F7 EE            [12] 1387 	mov	a,r6
   01F8 F0            [24] 1388 	movx	@dptr,a
   01F9 EF            [12] 1389 	mov	a,r7
   01FA A3            [24] 1390 	inc	dptr
   01FB F0            [24] 1391 	movx	@dptr,a
                           1392 ;	appFHSSNIC.c:149: rfTxBufferEnd = MAX_TX_MSGLEN + 1; // add 1 for length byte
   01FC 90 FE 3E      [24] 1393 	mov	dptr,#_rfTxBufferEnd
   01FF 74 F1         [12] 1394 	mov	a,#0xF1
   0201 F0            [24] 1395 	movx	@dptr,a
   0202 E4            [12] 1396 	clr	a
   0203 A3            [24] 1397 	inc	dptr
   0204 F0            [24] 1398 	movx	@dptr,a
                           1399 ;	appFHSSNIC.c:151: rftxbuf = (volatile __xdata u8*)&g_txMsgQueue[0][0];
   0205 90 FD D4      [24] 1400 	mov	dptr,#_rftxbuf
   0208 74 72         [12] 1401 	mov	a,#_g_txMsgQueue
   020A F0            [24] 1402 	movx	@dptr,a
   020B 74 F3         [12] 1403 	mov	a,#(_g_txMsgQueue >> 8)
   020D A3            [24] 1404 	inc	dptr
   020E F0            [24] 1405 	movx	@dptr,a
                           1406 ;	appFHSSNIC.c:152: rfTxRepeatCounter = 0;
   020F 90 FE 3C      [24] 1407 	mov	dptr,#_rfTxRepeatCounter
   0212 E4            [12] 1408 	clr	a
   0213 F0            [24] 1409 	movx	@dptr,a
   0214 E4            [12] 1410 	clr	a
   0215 A3            [24] 1411 	inc	dptr
   0216 F0            [24] 1412 	movx	@dptr,a
                           1413 ;	appFHSSNIC.c:153: rfTxCurBufIdx = macdata.txMsgIdxDone = 0;
   0217 90 FD EF      [24] 1414 	mov	dptr,#(_macdata + 0x0012)
                           1415 ;	appFHSSNIC.c:154: macdata.txMsgIdx = 0;
   021A E4            [12] 1416 	clr	a
   021B F0            [24] 1417 	movx	@dptr,a
   021C 90 FE 38      [24] 1418 	mov	dptr,#_rfTxCurBufIdx
   021F F0            [24] 1419 	movx	@dptr,a
   0220 90 FD EE      [24] 1420 	mov	dptr,#(_macdata + 0x0011)
   0223 F0            [24] 1421 	movx	@dptr,a
                           1422 ;	appFHSSNIC.c:155: rfTxCounter = 1; // don't transmit length byte
   0224 90 FE 3A      [24] 1423 	mov	dptr,#_rfTxCounter
   0227 74 01         [12] 1424 	mov	a,#0x01
   0229 F0            [24] 1425 	movx	@dptr,a
   022A E4            [12] 1426 	clr	a
   022B A3            [24] 1427 	inc	dptr
   022C F0            [24] 1428 	movx	@dptr,a
                           1429 ;	appFHSSNIC.c:156: rfTxBufCount = MAX_TX_MSGS;
   022D 90 FE 39      [24] 1430 	mov	dptr,#_rfTxBufCount
   0230 74 02         [12] 1431 	mov	a,#0x02
   0232 F0            [24] 1432 	movx	@dptr,a
                           1433 ;	appFHSSNIC.c:159: MAC_tx(NULL, 0);
   0233 90 F5 5C      [24] 1434 	mov	dptr,#_MAC_tx_PARM_2
   0236 E4            [12] 1435 	clr	a
   0237 F0            [24] 1436 	movx	@dptr,a
   0238 90 00 00      [24] 1437 	mov	dptr,#0x0000
   023B 12 03 55      [24] 1438 	lcall	_MAC_tx
                           1439 ;	appFHSSNIC.c:162: for(countdown = 0 ; countdown < blocks ; ++countdown)
   023E 90 F5 5A      [24] 1440 	mov	dptr,#_transmit_long_buf_1_103
   0241 E0            [24] 1441 	movx	a,@dptr
   0242 FE            [12] 1442 	mov	r6,a
   0243 A3            [24] 1443 	inc	dptr
   0244 E0            [24] 1444 	movx	a,@dptr
   0245 FF            [12] 1445 	mov	r7,a
   0246 90 F5 59      [24] 1446 	mov	dptr,#_transmit_long_PARM_3
   0249 E0            [24] 1447 	movx	a,@dptr
   024A FD            [12] 1448 	mov	r5,a
   024B 7B 00         [12] 1449 	mov	r3,#0x00
   024D 7C 00         [12] 1450 	mov	r4,#0x00
   024F                    1451 00122$:
   024F 8D 01         [24] 1452 	mov	ar1,r5
   0251 7A 00         [12] 1453 	mov	r2,#0x00
   0253 C3            [12] 1454 	clr	c
   0254 EB            [12] 1455 	mov	a,r3
   0255 99            [12] 1456 	subb	a,r1
   0256 EC            [12] 1457 	mov	a,r4
   0257 9A            [12] 1458 	subb	a,r2
   0258 50 54         [24] 1459 	jnc	00108$
                           1460 ;	appFHSSNIC.c:164: err = MAC_tx(buf + (u8) (countdown * MAX_TX_MSGLEN), (u8) MAX_TX_MSGLEN);
   025A 8B 02         [24] 1461 	mov	ar2,r3
   025C EA            [12] 1462 	mov	a,r2
   025D 75 F0 F0      [24] 1463 	mov	b,#0xF0
   0260 A4            [48] 1464 	mul	ab
   0261 2E            [12] 1465 	add	a,r6
   0262 F9            [12] 1466 	mov	r1,a
   0263 E4            [12] 1467 	clr	a
   0264 3F            [12] 1468 	addc	a,r7
   0265 FA            [12] 1469 	mov	r2,a
   0266 90 F5 5C      [24] 1470 	mov	dptr,#_MAC_tx_PARM_2
   0269 74 F0         [12] 1471 	mov	a,#0xF0
   026B F0            [24] 1472 	movx	@dptr,a
   026C 89 82         [24] 1473 	mov	dpl,r1
   026E 8A 83         [24] 1474 	mov	dph,r2
   0270 C0 07         [24] 1475 	push	ar7
   0272 C0 06         [24] 1476 	push	ar6
   0274 C0 05         [24] 1477 	push	ar5
   0276 C0 04         [24] 1478 	push	ar4
   0278 C0 03         [24] 1479 	push	ar3
   027A 12 03 55      [24] 1480 	lcall	_MAC_tx
   027D AA 82         [24] 1481 	mov	r2,dpl
   027F D0 03         [24] 1482 	pop	ar3
   0281 D0 04         [24] 1483 	pop	ar4
   0283 D0 05         [24] 1484 	pop	ar5
   0285 D0 06         [24] 1485 	pop	ar6
   0287 D0 07         [24] 1486 	pop	ar7
                           1487 ;	appFHSSNIC.c:165: if(err)
   0289 EA            [12] 1488 	mov	a,r2
   028A 60 1B         [24] 1489 	jz	00123$
                           1490 ;	appFHSSNIC.c:167: debug("MAC_tx() returned error");
   028C 90 36 A8      [24] 1491 	mov	dptr,#__str_1
   028F C0 02         [24] 1492 	push	ar2
   0291 12 21 F8      [24] 1493 	lcall	_debug
   0294 D0 02         [24] 1494 	pop	ar2
                           1495 ;	appFHSSNIC.c:168: macdata.mac_state = MAC_STATE_NONHOPPING;
   0296 90 FD DD      [24] 1496 	mov	dptr,#_macdata
   0299 E4            [12] 1497 	clr	a
   029A F0            [24] 1498 	movx	@dptr,a
                           1499 ;	appFHSSNIC.c:169: debughex(err);
   029B 8A 82         [24] 1500 	mov	dpl,r2
   029D C0 02         [24] 1501 	push	ar2
   029F 12 22 3A      [24] 1502 	lcall	_debughex
   02A2 D0 02         [24] 1503 	pop	ar2
                           1504 ;	appFHSSNIC.c:170: return err;
   02A4 8A 82         [24] 1505 	mov	dpl,r2
   02A6 22            [24] 1506 	ret
   02A7                    1507 00123$:
                           1508 ;	appFHSSNIC.c:162: for(countdown = 0 ; countdown < blocks ; ++countdown)
   02A7 0B            [12] 1509 	inc	r3
   02A8 BB 00 A4      [24] 1510 	cjne	r3,#0x00,00122$
   02AB 0C            [12] 1511 	inc	r4
   02AC 80 A1         [24] 1512 	sjmp	00122$
   02AE                    1513 00108$:
                           1514 ;	appFHSSNIC.c:175: if(rfAESMode & AES_CRYPTO_OUT_ENABLE && rfTxTotalTXLen % 16)
   02AE 90 FE 47      [24] 1515 	mov	dptr,#_rfAESMode
   02B1 E0            [24] 1516 	movx	a,@dptr
   02B2 FF            [12] 1517 	mov	r7,a
   02B3 30 E3 33      [24] 1518 	jnb	acc.3,00110$
   02B6 90 FE 44      [24] 1519 	mov	dptr,#_rfTxTotalTXLen
   02B9 E0            [24] 1520 	movx	a,@dptr
   02BA FE            [12] 1521 	mov	r6,a
   02BB A3            [24] 1522 	inc	dptr
   02BC E0            [24] 1523 	movx	a,@dptr
   02BD FF            [12] 1524 	mov	r7,a
   02BE EE            [12] 1525 	mov	a,r6
   02BF 54 0F         [12] 1526 	anl	a,#0x0F
   02C1 60 26         [24] 1527 	jz	00110$
                           1528 ;	appFHSSNIC.c:178: rfTxTotalTXLen += 16 - (rfTxTotalTXLen % 16);
   02C3 90 FE 44      [24] 1529 	mov	dptr,#_rfTxTotalTXLen
   02C6 E0            [24] 1530 	movx	a,@dptr
   02C7 FE            [12] 1531 	mov	r6,a
   02C8 A3            [24] 1532 	inc	dptr
   02C9 E0            [24] 1533 	movx	a,@dptr
   02CA 53 06 0F      [24] 1534 	anl	ar6,#0x0F
   02CD 7F 00         [12] 1535 	mov	r7,#0x00
   02CF 74 10         [12] 1536 	mov	a,#0x10
   02D1 C3            [12] 1537 	clr	c
   02D2 9E            [12] 1538 	subb	a,r6
   02D3 FE            [12] 1539 	mov	r6,a
   02D4 E4            [12] 1540 	clr	a
   02D5 9F            [12] 1541 	subb	a,r7
   02D6 FF            [12] 1542 	mov	r7,a
   02D7 90 FE 44      [24] 1543 	mov	dptr,#_rfTxTotalTXLen
   02DA E0            [24] 1544 	movx	a,@dptr
   02DB FC            [12] 1545 	mov	r4,a
   02DC A3            [24] 1546 	inc	dptr
   02DD E0            [24] 1547 	movx	a,@dptr
   02DE FD            [12] 1548 	mov	r5,a
   02DF 90 FE 44      [24] 1549 	mov	dptr,#_rfTxTotalTXLen
   02E2 EE            [12] 1550 	mov	a,r6
   02E3 2C            [12] 1551 	add	a,r4
   02E4 F0            [24] 1552 	movx	@dptr,a
   02E5 EF            [12] 1553 	mov	a,r7
   02E6 3D            [12] 1554 	addc	a,r5
   02E7 A3            [24] 1555 	inc	dptr
   02E8 F0            [24] 1556 	movx	@dptr,a
   02E9                    1557 00110$:
                           1558 ;	appFHSSNIC.c:182: if(rfTxTotalTXLen > RF_MAX_TX_BLOCK)
   02E9 90 FE 44      [24] 1559 	mov	dptr,#_rfTxTotalTXLen
   02EC E0            [24] 1560 	movx	a,@dptr
   02ED FE            [12] 1561 	mov	r6,a
   02EE A3            [24] 1562 	inc	dptr
   02EF E0            [24] 1563 	movx	a,@dptr
   02F0 FF            [12] 1564 	mov	r7,a
   02F1 60 20         [24] 1565 	jz	00113$
                           1566 ;	appFHSSNIC.c:184: PKTLEN = (u8) (rfTxTotalTXLen % 256);
   02F3 90 FE 44      [24] 1567 	mov	dptr,#_rfTxTotalTXLen
   02F6 E0            [24] 1568 	movx	a,@dptr
   02F7 FE            [12] 1569 	mov	r6,a
   02F8 A3            [24] 1570 	inc	dptr
   02F9 E0            [24] 1571 	movx	a,@dptr
   02FA 90 DF 02      [24] 1572 	mov	dptr,#_PKTLEN
   02FD EE            [12] 1573 	mov	a,r6
   02FE F0            [24] 1574 	movx	@dptr,a
                           1575 ;	appFHSSNIC.c:185: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
                           1576 ;	appFHSSNIC.c:186: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
   02FF 90 DF 04      [24] 1577 	mov	dptr,#_PKTCTRL0
   0302 E0            [24] 1578 	movx	a,@dptr
   0303 54 FC         [12] 1579 	anl	a,#0xFC
   0305 F0            [24] 1580 	movx	@dptr,a
   0306 E0            [24] 1581 	movx	a,@dptr
   0307 FF            [12] 1582 	mov	r7,a
   0308 44 02         [12] 1583 	orl	a,#0x02
   030A F0            [24] 1584 	movx	@dptr,a
                           1585 ;	appFHSSNIC.c:187: rfTxInfMode = 1;
   030B 90 FE 46      [24] 1586 	mov	dptr,#_rfTxInfMode
   030E 74 01         [12] 1587 	mov	a,#0x01
   0310 F0            [24] 1588 	movx	@dptr,a
   0311 80 12         [24] 1589 	sjmp	00114$
   0313                    1590 00113$:
                           1591 ;	appFHSSNIC.c:191: PKTLEN = (u8) rfTxTotalTXLen;
   0313 90 FE 44      [24] 1592 	mov	dptr,#_rfTxTotalTXLen
   0316 E0            [24] 1593 	movx	a,@dptr
   0317 FE            [12] 1594 	mov	r6,a
   0318 A3            [24] 1595 	inc	dptr
   0319 E0            [24] 1596 	movx	a,@dptr
   031A FF            [12] 1597 	mov	r7,a
   031B 90 DF 02      [24] 1598 	mov	dptr,#_PKTLEN
   031E EE            [12] 1599 	mov	a,r6
   031F F0            [24] 1600 	movx	@dptr,a
                           1601 ;	appFHSSNIC.c:192: rfTxInfMode = 0;
   0320 90 FE 46      [24] 1602 	mov	dptr,#_rfTxInfMode
   0323 E4            [12] 1603 	clr	a
   0324 F0            [24] 1604 	movx	@dptr,a
   0325                    1605 00114$:
                           1606 ;	appFHSSNIC.c:199: RFST = RFST_STX;
   0325 75 E1 03      [24] 1607 	mov	_RFST,#0x03
                           1608 ;	appFHSSNIC.c:203: while (MARCSTATE != MARC_STATE_TX && --countdown)
   0328 7E 60         [12] 1609 	mov	r6,#0x60
   032A 7F EA         [12] 1610 	mov	r7,#0xEA
   032C                    1611 00116$:
   032C 90 DF 3B      [24] 1612 	mov	dptr,#_MARCSTATE
   032F E0            [24] 1613 	movx	a,@dptr
   0330 FD            [12] 1614 	mov	r5,a
   0331 BD 13 02      [24] 1615 	cjne	r5,#0x13,00171$
   0334 80 09         [24] 1616 	sjmp	00118$
   0336                    1617 00171$:
   0336 1E            [12] 1618 	dec	r6
   0337 BE FF 01      [24] 1619 	cjne	r6,#0xFF,00172$
   033A 1F            [12] 1620 	dec	r7
   033B                    1621 00172$:
   033B EE            [12] 1622 	mov	a,r6
   033C 4F            [12] 1623 	orl	a,r7
   033D 70 ED         [24] 1624 	jnz	00116$
   033F                    1625 00118$:
                           1626 ;	appFHSSNIC.c:208: LED = 1;
   033F D2 A4         [12] 1627 	setb	_P2_4
                           1628 ;	appFHSSNIC.c:209: if (!countdown)
   0341 EE            [12] 1629 	mov	a,r6
   0342 4F            [12] 1630 	orl	a,r7
   0343 70 0C         [24] 1631 	jnz	00120$
                           1632 ;	appFHSSNIC.c:211: lastCode[1] = LCE_RFTX_NEVER_TX;
   0345 90 FE 02      [24] 1633 	mov	dptr,#(_lastCode + 0x0001)
   0348 74 13         [12] 1634 	mov	a,#0x13
   034A F0            [24] 1635 	movx	@dptr,a
                           1636 ;	appFHSSNIC.c:212: debug("never entered TX");
   034B 90 36 C0      [24] 1637 	mov	dptr,#__str_2
   034E 12 21 F8      [24] 1638 	lcall	_debug
   0351                    1639 00120$:
                           1640 ;	appFHSSNIC.c:215: return RC_NO_ERROR;
   0351 75 82 00      [24] 1641 	mov	dpl,#0x00
   0354 22            [24] 1642 	ret
                           1643 ;------------------------------------------------------------
                           1644 ;Allocation info for local variables in function 'MAC_tx'
                           1645 ;------------------------------------------------------------
                           1646 ;len                       Allocated with name '_MAC_tx_PARM_2'
                           1647 ;msg                       Allocated with name '_MAC_tx_msg_1_114'
                           1648 ;------------------------------------------------------------
                           1649 ;	appFHSSNIC.c:218: __xdata u8 MAC_tx(__xdata u8* __xdata msg, __xdata u8 len)
                           1650 ;	-----------------------------------------
                           1651 ;	 function MAC_tx
                           1652 ;	-----------------------------------------
   0355                    1653 _MAC_tx:
   0355 AF 83         [24] 1654 	mov	r7,dph
   0357 E5 82         [12] 1655 	mov	a,dpl
   0359 90 F5 5D      [24] 1656 	mov	dptr,#_MAC_tx_msg_1_114
   035C F0            [24] 1657 	movx	@dptr,a
   035D EF            [12] 1658 	mov	a,r7
   035E A3            [24] 1659 	inc	dptr
   035F F0            [24] 1660 	movx	@dptr,a
                           1661 ;	appFHSSNIC.c:228: if (len > MAX_TX_MSGLEN)
   0360 90 F5 5C      [24] 1662 	mov	dptr,#_MAC_tx_PARM_2
   0363 E0            [24] 1663 	movx	a,@dptr
   0364 FF            [12] 1664 	mov  r7,a
   0365 24 0F         [12] 1665 	add	a,#0xff - 0xF0
   0367 50 0A         [24] 1666 	jnc	00102$
                           1667 ;	appFHSSNIC.c:230: debug("FHSSxmit message too long");
   0369 90 36 D1      [24] 1668 	mov	dptr,#__str_3
   036C 12 21 F8      [24] 1669 	lcall	_debug
                           1670 ;	appFHSSNIC.c:231: return RC_ERR_BUFFER_SIZE_EXCEEDED;
   036F 75 82 FF      [24] 1671 	mov	dpl,#0xFF
   0372 22            [24] 1672 	ret
   0373                    1673 00102$:
                           1674 ;	appFHSSNIC.c:235: if(len == 0)
   0373 EF            [12] 1675 	mov	a,r7
   0374 70 3E         [24] 1676 	jnz	00105$
                           1677 ;	appFHSSNIC.c:238: for(macdata.txMsgIdx = 0 ; macdata.txMsgIdx < rfTxBufCount ; ++macdata.txMsgIdx)
   0376 90 FD EE      [24] 1678 	mov	dptr,#(_macdata + 0x0011)
   0379 E4            [12] 1679 	clr	a
   037A F0            [24] 1680 	movx	@dptr,a
   037B                    1681 00122$:
   037B 90 FD EE      [24] 1682 	mov	dptr,#(_macdata + 0x0011)
   037E E0            [24] 1683 	movx	a,@dptr
   037F FE            [12] 1684 	mov	r6,a
   0380 90 FE 39      [24] 1685 	mov	dptr,#_rfTxBufCount
   0383 E0            [24] 1686 	movx	a,@dptr
   0384 FD            [12] 1687 	mov	r5,a
   0385 C3            [12] 1688 	clr	c
   0386 EE            [12] 1689 	mov	a,r6
   0387 9D            [12] 1690 	subb	a,r5
   0388 50 21         [24] 1691 	jnc	00103$
                           1692 ;	appFHSSNIC.c:240: g_txMsgQueue[macdata.txMsgIdx][0] = BUFFER_AVAILABLE;
   038A 90 FD EE      [24] 1693 	mov	dptr,#(_macdata + 0x0011)
   038D E0            [24] 1694 	movx	a,@dptr
   038E 75 F0 F1      [24] 1695 	mov	b,#0xF1
   0391 A4            [48] 1696 	mul	ab
   0392 24 72         [12] 1697 	add	a,#_g_txMsgQueue
   0394 F5 82         [12] 1698 	mov	dpl,a
   0396 74 F3         [12] 1699 	mov	a,#(_g_txMsgQueue >> 8)
   0398 35 F0         [12] 1700 	addc	a,b
   039A F5 83         [12] 1701 	mov	dph,a
   039C E4            [12] 1702 	clr	a
   039D F0            [24] 1703 	movx	@dptr,a
                           1704 ;	appFHSSNIC.c:238: for(macdata.txMsgIdx = 0 ; macdata.txMsgIdx < rfTxBufCount ; ++macdata.txMsgIdx)
   039E 90 FD EE      [24] 1705 	mov	dptr,#(_macdata + 0x0011)
   03A1 E0            [24] 1706 	movx	a,@dptr
   03A2 FE            [12] 1707 	mov	r6,a
   03A3 0E            [12] 1708 	inc	r6
   03A4 90 FD EE      [24] 1709 	mov	dptr,#(_macdata + 0x0011)
   03A7 EE            [12] 1710 	mov	a,r6
   03A8 F0            [24] 1711 	movx	@dptr,a
   03A9 80 D0         [24] 1712 	sjmp	00122$
   03AB                    1713 00103$:
                           1714 ;	appFHSSNIC.c:242: macdata.txMsgIdx = 0;
   03AB 90 FD EE      [24] 1715 	mov	dptr,#(_macdata + 0x0011)
   03AE E4            [12] 1716 	clr	a
   03AF F0            [24] 1717 	movx	@dptr,a
                           1718 ;	appFHSSNIC.c:243: return RC_NO_ERROR;
   03B0 75 82 00      [24] 1719 	mov	dpl,#0x00
   03B3 22            [24] 1720 	ret
   03B4                    1721 00105$:
                           1722 ;	appFHSSNIC.c:246: switch (macdata.mac_state)
   03B4 90 FD DD      [24] 1723 	mov	dptr,#_macdata
   03B7 E0            [24] 1724 	movx	a,@dptr
   03B8 FE            [12] 1725 	mov	r6,a
   03B9 60 1D         [24] 1726 	jz	00110$
   03BB BE 06 1E      [24] 1727 	cjne	r6,#0x06,00111$
                           1728 ;	appFHSSNIC.c:249: if (macdata.txMsgIdx && MARCSTATE != MARC_STATE_TX)
   03BE 90 FD EE      [24] 1729 	mov	dptr,#(_macdata + 0x0011)
   03C1 E0            [24] 1730 	movx	a,@dptr
   03C2 60 18         [24] 1731 	jz	00111$
   03C4 90 DF 3B      [24] 1732 	mov	dptr,#_MARCSTATE
   03C7 E0            [24] 1733 	movx	a,@dptr
   03C8 FE            [12] 1734 	mov	r6,a
   03C9 BE 13 02      [24] 1735 	cjne	r6,#0x13,00169$
   03CC 80 0E         [24] 1736 	sjmp	00111$
   03CE                    1737 00169$:
                           1738 ;	appFHSSNIC.c:251: macdata.mac_state = MAC_STATE_LONG_XMIT_FAIL;
   03CE 90 FD DD      [24] 1739 	mov	dptr,#_macdata
   03D1 74 07         [12] 1740 	mov	a,#0x07
   03D3 F0            [24] 1741 	movx	@dptr,a
                           1742 ;	appFHSSNIC.c:252: return RC_TX_ERROR;
   03D4 75 82 ED      [24] 1743 	mov	dpl,#0xED
   03D7 22            [24] 1744 	ret
                           1745 ;	appFHSSNIC.c:255: case MAC_STATE_NONHOPPING:
   03D8                    1746 00110$:
                           1747 ;	appFHSSNIC.c:256: return RC_TX_ERROR;
   03D8 75 82 ED      [24] 1748 	mov	dpl,#0xED
   03DB 22            [24] 1749 	ret
                           1750 ;	appFHSSNIC.c:257: }
   03DC                    1751 00111$:
                           1752 ;	appFHSSNIC.c:258: if (g_txMsgQueue[macdata.txMsgIdx][0] != BUFFER_AVAILABLE)
   03DC 90 FD EE      [24] 1753 	mov	dptr,#(_macdata + 0x0011)
   03DF E0            [24] 1754 	movx	a,@dptr
   03E0 75 F0 F1      [24] 1755 	mov	b,#0xF1
   03E3 A4            [48] 1756 	mul	ab
   03E4 24 72         [12] 1757 	add	a,#_g_txMsgQueue
   03E6 FD            [12] 1758 	mov	r5,a
   03E7 74 F3         [12] 1759 	mov	a,#(_g_txMsgQueue >> 8)
   03E9 35 F0         [12] 1760 	addc	a,b
   03EB FE            [12] 1761 	mov	r6,a
   03EC 8D 82         [24] 1762 	mov	dpl,r5
   03EE 8E 83         [24] 1763 	mov	dph,r6
   03F0 E0            [24] 1764 	movx	a,@dptr
   03F1 60 0A         [24] 1765 	jz	00113$
                           1766 ;	appFHSSNIC.c:261: lastCode[1] = LCE_RF_MULTI_BUFFER_NOT_FREE;
   03F3 90 FE 02      [24] 1767 	mov	dptr,#(_lastCode + 0x0001)
   03F6 74 18         [12] 1768 	mov	a,#0x18
   03F8 F0            [24] 1769 	movx	@dptr,a
                           1770 ;	appFHSSNIC.c:262: return RC_ERR_BUFFER_NOT_AVAILABLE;
   03F9 75 82 FE      [24] 1771 	mov	dpl,#0xFE
   03FC 22            [24] 1772 	ret
   03FD                    1773 00113$:
                           1774 ;	appFHSSNIC.c:266: g_txMsgQueue[macdata.txMsgIdx][0] = BUFFER_FILLING;
   03FD 8D 82         [24] 1775 	mov	dpl,r5
   03FF 8E 83         [24] 1776 	mov	dph,r6
   0401 74 FF         [12] 1777 	mov	a,#0xFF
   0403 F0            [24] 1778 	movx	@dptr,a
                           1779 ;	appFHSSNIC.c:268: memcpy(&g_txMsgQueue[macdata.txMsgIdx][1], msg, len);
   0404 90 FD EE      [24] 1780 	mov	dptr,#(_macdata + 0x0011)
   0407 E0            [24] 1781 	movx	a,@dptr
   0408 75 F0 F1      [24] 1782 	mov	b,#0xF1
   040B A4            [48] 1783 	mul	ab
   040C 24 72         [12] 1784 	add	a,#_g_txMsgQueue
   040E FD            [12] 1785 	mov	r5,a
   040F 74 F3         [12] 1786 	mov	a,#(_g_txMsgQueue >> 8)
   0411 35 F0         [12] 1787 	addc	a,b
   0413 FE            [12] 1788 	mov	r6,a
   0414 0D            [12] 1789 	inc	r5
   0415 BD 00 01      [24] 1790 	cjne	r5,#0x00,00171$
   0418 0E            [12] 1791 	inc	r6
   0419                    1792 00171$:
   0419 7C 00         [12] 1793 	mov	r4,#0x00
   041B 90 F5 5D      [24] 1794 	mov	dptr,#_MAC_tx_msg_1_114
   041E E0            [24] 1795 	movx	a,@dptr
   041F FA            [12] 1796 	mov	r2,a
   0420 A3            [24] 1797 	inc	dptr
   0421 E0            [24] 1798 	movx	a,@dptr
   0422 FB            [12] 1799 	mov	r3,a
   0423 8A 14         [24] 1800 	mov	_memcpy_PARM_2,r2
   0425 8B 15         [24] 1801 	mov	(_memcpy_PARM_2 + 1),r3
   0427 75 16 00      [24] 1802 	mov	(_memcpy_PARM_2 + 2),#0x00
   042A 8F 03         [24] 1803 	mov	ar3,r7
   042C 7F 00         [12] 1804 	mov	r7,#0x00
   042E 8B 17         [24] 1805 	mov	_memcpy_PARM_3,r3
   0430 8F 18         [24] 1806 	mov	(_memcpy_PARM_3 + 1),r7
   0432 8D 82         [24] 1807 	mov	dpl,r5
   0434 8E 83         [24] 1808 	mov	dph,r6
   0436 8C F0         [24] 1809 	mov	b,r4
   0438 C0 07         [24] 1810 	push	ar7
   043A C0 03         [24] 1811 	push	ar3
   043C 12 33 BB      [24] 1812 	lcall	_memcpy
   043F D0 03         [24] 1813 	pop	ar3
   0441 D0 07         [24] 1814 	pop	ar7
                           1815 ;	appFHSSNIC.c:273: if(rfAESMode & AES_CRYPTO_OUT_ENABLE)
   0443 90 FE 47      [24] 1816 	mov	dptr,#_rfAESMode
   0446 E0            [24] 1817 	movx	a,@dptr
   0447 FE            [12] 1818 	mov	r6,a
   0448 20 E3 03      [24] 1819 	jb	acc.3,00172$
   044B 02 04 FE      [24] 1820 	ljmp	00118$
   044E                    1821 00172$:
                           1822 ;	appFHSSNIC.c:275: len = padAES(&g_txMsgQueue[macdata.txMsgIdx][1], len);
   044E 90 FD EE      [24] 1823 	mov	dptr,#(_macdata + 0x0011)
   0451 E0            [24] 1824 	movx	a,@dptr
   0452 75 F0 F1      [24] 1825 	mov	b,#0xF1
   0455 A4            [48] 1826 	mul	ab
   0456 24 72         [12] 1827 	add	a,#_g_txMsgQueue
   0458 FD            [12] 1828 	mov	r5,a
   0459 74 F3         [12] 1829 	mov	a,#(_g_txMsgQueue >> 8)
   045B 35 F0         [12] 1830 	addc	a,b
   045D FE            [12] 1831 	mov	r6,a
   045E 0D            [12] 1832 	inc	r5
   045F BD 00 01      [24] 1833 	cjne	r5,#0x00,00173$
   0462 0E            [12] 1834 	inc	r6
   0463                    1835 00173$:
   0463 90 FE 19      [24] 1836 	mov	dptr,#_padAES_PARM_2
   0466 EB            [12] 1837 	mov	a,r3
   0467 F0            [24] 1838 	movx	@dptr,a
   0468 EF            [12] 1839 	mov	a,r7
   0469 A3            [24] 1840 	inc	dptr
   046A F0            [24] 1841 	movx	@dptr,a
   046B 8D 82         [24] 1842 	mov	dpl,r5
   046D 8E 83         [24] 1843 	mov	dph,r6
   046F 12 30 D9      [24] 1844 	lcall	_padAES
   0472 AE 82         [24] 1845 	mov	r6,dpl
   0474 90 F5 5C      [24] 1846 	mov	dptr,#_MAC_tx_PARM_2
   0477 EE            [12] 1847 	mov	a,r6
   0478 F0            [24] 1848 	movx	@dptr,a
                           1849 ;	appFHSSNIC.c:276: if((rfAESMode & AES_CRYPTO_OUT_TYPE) == AES_CRYPTO_OUT_ENCRYPT)
   0479 90 FE 47      [24] 1850 	mov	dptr,#_rfAESMode
   047C E0            [24] 1851 	movx	a,@dptr
   047D FF            [12] 1852 	mov	r7,a
   047E 53 07 04      [24] 1853 	anl	ar7,#0x04
   0481 BF 04 3F      [24] 1854 	cjne	r7,#0x04,00115$
                           1855 ;	appFHSSNIC.c:277: encAES(&g_txMsgQueue[macdata.txMsgIdx][1], &g_txMsgQueue[macdata.txMsgIdx][1], len, (rfAESMode & AES_CRYPTO_MODE));
   0484 90 FD EE      [24] 1856 	mov	dptr,#(_macdata + 0x0011)
   0487 E0            [24] 1857 	movx	a,@dptr
   0488 75 F0 F1      [24] 1858 	mov	b,#0xF1
   048B A4            [48] 1859 	mul	ab
   048C 24 72         [12] 1860 	add	a,#_g_txMsgQueue
   048E FD            [12] 1861 	mov	r5,a
   048F 74 F3         [12] 1862 	mov	a,#(_g_txMsgQueue >> 8)
   0491 35 F0         [12] 1863 	addc	a,b
   0493 FF            [12] 1864 	mov	r7,a
   0494 0D            [12] 1865 	inc	r5
   0495 BD 00 01      [24] 1866 	cjne	r5,#0x00,00176$
   0498 0F            [12] 1867 	inc	r7
   0499                    1868 00176$:
   0499 8E 03         [24] 1869 	mov	ar3,r6
   049B 7C 00         [12] 1870 	mov	r4,#0x00
   049D 90 FE 47      [24] 1871 	mov	dptr,#_rfAESMode
   04A0 E0            [24] 1872 	movx	a,@dptr
   04A1 FA            [12] 1873 	mov	r2,a
   04A2 53 02 F0      [24] 1874 	anl	ar2,#0xF0
   04A5 90 FE 1D      [24] 1875 	mov	dptr,#_encAES_PARM_2
   04A8 ED            [12] 1876 	mov	a,r5
   04A9 F0            [24] 1877 	movx	@dptr,a
   04AA EF            [12] 1878 	mov	a,r7
   04AB A3            [24] 1879 	inc	dptr
   04AC F0            [24] 1880 	movx	@dptr,a
   04AD 90 FE 1F      [24] 1881 	mov	dptr,#_encAES_PARM_3
   04B0 EB            [12] 1882 	mov	a,r3
   04B1 F0            [24] 1883 	movx	@dptr,a
   04B2 EC            [12] 1884 	mov	a,r4
   04B3 A3            [24] 1885 	inc	dptr
   04B4 F0            [24] 1886 	movx	@dptr,a
   04B5 90 FE 21      [24] 1887 	mov	dptr,#_encAES_PARM_4
   04B8 EA            [12] 1888 	mov	a,r2
   04B9 F0            [24] 1889 	movx	@dptr,a
   04BA 8D 82         [24] 1890 	mov	dpl,r5
   04BC 8F 83         [24] 1891 	mov	dph,r7
   04BE 12 31 13      [24] 1892 	lcall	_encAES
   04C1 80 3B         [24] 1893 	sjmp	00118$
   04C3                    1894 00115$:
                           1895 ;	appFHSSNIC.c:279: decAES(&g_txMsgQueue[macdata.txMsgIdx][1], &g_txMsgQueue[macdata.txMsgIdx][1], len, (rfAESMode & AES_CRYPTO_MODE));
   04C3 90 FD EE      [24] 1896 	mov	dptr,#(_macdata + 0x0011)
   04C6 E0            [24] 1897 	movx	a,@dptr
   04C7 75 F0 F1      [24] 1898 	mov	b,#0xF1
   04CA A4            [48] 1899 	mul	ab
   04CB 24 72         [12] 1900 	add	a,#_g_txMsgQueue
   04CD FD            [12] 1901 	mov	r5,a
   04CE 74 F3         [12] 1902 	mov	a,#(_g_txMsgQueue >> 8)
   04D0 35 F0         [12] 1903 	addc	a,b
   04D2 FF            [12] 1904 	mov	r7,a
   04D3 0D            [12] 1905 	inc	r5
   04D4 BD 00 01      [24] 1906 	cjne	r5,#0x00,00177$
   04D7 0F            [12] 1907 	inc	r7
   04D8                    1908 00177$:
   04D8 7C 00         [12] 1909 	mov	r4,#0x00
   04DA 90 FE 47      [24] 1910 	mov	dptr,#_rfAESMode
   04DD E0            [24] 1911 	movx	a,@dptr
   04DE FB            [12] 1912 	mov	r3,a
   04DF 53 03 F0      [24] 1913 	anl	ar3,#0xF0
   04E2 90 FE 24      [24] 1914 	mov	dptr,#_decAES_PARM_2
   04E5 ED            [12] 1915 	mov	a,r5
   04E6 F0            [24] 1916 	movx	@dptr,a
   04E7 EF            [12] 1917 	mov	a,r7
   04E8 A3            [24] 1918 	inc	dptr
   04E9 F0            [24] 1919 	movx	@dptr,a
   04EA 90 FE 26      [24] 1920 	mov	dptr,#_decAES_PARM_3
   04ED EE            [12] 1921 	mov	a,r6
   04EE F0            [24] 1922 	movx	@dptr,a
   04EF EC            [12] 1923 	mov	a,r4
   04F0 A3            [24] 1924 	inc	dptr
   04F1 F0            [24] 1925 	movx	@dptr,a
   04F2 90 FE 28      [24] 1926 	mov	dptr,#_decAES_PARM_4
   04F5 EB            [12] 1927 	mov	a,r3
   04F6 F0            [24] 1928 	movx	@dptr,a
   04F7 8D 82         [24] 1929 	mov	dpl,r5
   04F9 8F 83         [24] 1930 	mov	dph,r7
   04FB 12 31 5C      [24] 1931 	lcall	_decAES
   04FE                    1932 00118$:
                           1933 ;	appFHSSNIC.c:282: g_txMsgQueue[macdata.txMsgIdx][0] = len;
   04FE 90 FD EE      [24] 1934 	mov	dptr,#(_macdata + 0x0011)
   0501 E0            [24] 1935 	movx	a,@dptr
   0502 75 F0 F1      [24] 1936 	mov	b,#0xF1
   0505 A4            [48] 1937 	mul	ab
   0506 24 72         [12] 1938 	add	a,#_g_txMsgQueue
   0508 FE            [12] 1939 	mov	r6,a
   0509 74 F3         [12] 1940 	mov	a,#(_g_txMsgQueue >> 8)
   050B 35 F0         [12] 1941 	addc	a,b
   050D FF            [12] 1942 	mov	r7,a
   050E 90 F5 5C      [24] 1943 	mov	dptr,#_MAC_tx_PARM_2
   0511 E0            [24] 1944 	movx	a,@dptr
   0512 FD            [12] 1945 	mov	r5,a
   0513 8E 82         [24] 1946 	mov	dpl,r6
   0515 8F 83         [24] 1947 	mov	dph,r7
   0517 F0            [24] 1948 	movx	@dptr,a
                           1949 ;	appFHSSNIC.c:289: if (++macdata.txMsgIdx == rfTxBufCount)
   0518 90 FD EE      [24] 1950 	mov	dptr,#(_macdata + 0x0011)
   051B E0            [24] 1951 	movx	a,@dptr
   051C FF            [12] 1952 	mov	r7,a
   051D 0F            [12] 1953 	inc	r7
   051E 90 FD EE      [24] 1954 	mov	dptr,#(_macdata + 0x0011)
   0521 EF            [12] 1955 	mov	a,r7
   0522 F0            [24] 1956 	movx	@dptr,a
   0523 90 FE 39      [24] 1957 	mov	dptr,#_rfTxBufCount
   0526 E0            [24] 1958 	movx	a,@dptr
   0527 FE            [12] 1959 	mov	r6,a
   0528 EF            [12] 1960 	mov	a,r7
   0529 B5 06 05      [24] 1961 	cjne	a,ar6,00120$
                           1962 ;	appFHSSNIC.c:291: macdata.txMsgIdx = 0;
   052C 90 FD EE      [24] 1963 	mov	dptr,#(_macdata + 0x0011)
   052F E4            [12] 1964 	clr	a
   0530 F0            [24] 1965 	movx	@dptr,a
   0531                    1966 00120$:
                           1967 ;	appFHSSNIC.c:294: return RC_NO_ERROR;
   0531 75 82 00      [24] 1968 	mov	dpl,#0x00
   0534 22            [24] 1969 	ret
                           1970 ;------------------------------------------------------------
                           1971 ;Allocation info for local variables in function 'MAC_sync'
                           1972 ;------------------------------------------------------------
                           1973 ;CellID                    Allocated with name '_MAC_sync_CellID_1_124'
                           1974 ;------------------------------------------------------------
                           1975 ;	appFHSSNIC.c:297: void MAC_sync(__xdata u16 CellID)
                           1976 ;	-----------------------------------------
                           1977 ;	 function MAC_sync
                           1978 ;	-----------------------------------------
   0535                    1979 _MAC_sync:
   0535 AF 83         [24] 1980 	mov	r7,dph
   0537 E5 82         [12] 1981 	mov	a,dpl
   0539 90 F5 5F      [24] 1982 	mov	dptr,#_MAC_sync_CellID_1_124
   053C F0            [24] 1983 	movx	@dptr,a
   053D EF            [12] 1984 	mov	a,r7
   053E A3            [24] 1985 	inc	dptr
   053F F0            [24] 1986 	movx	@dptr,a
                           1987 ;	appFHSSNIC.c:305: if (macdata.mac_state != MAC_STATE_NONHOPPING && macdata.mac_state != MAC_STATE_DISCOVERY)
   0540 90 FD DD      [24] 1988 	mov	dptr,#_macdata
   0543 E0            [24] 1989 	movx	a,@dptr
   0544 FF            [12] 1990 	mov	r7,a
   0545 60 14         [24] 1991 	jz	00102$
   0547 BF 01 02      [24] 1992 	cjne	r7,#0x01,00133$
   054A 80 0F         [24] 1993 	sjmp	00102$
   054C                    1994 00133$:
                           1995 ;	appFHSSNIC.c:307: debug("FHSS state entering SYNCHING from wrong state");
   054C 90 36 EB      [24] 1996 	mov	dptr,#__str_4
   054F 12 21 F8      [24] 1997 	lcall	_debug
                           1998 ;	appFHSSNIC.c:308: debughex(macdata.mac_state);
   0552 90 FD DD      [24] 1999 	mov	dptr,#_macdata
   0555 E0            [24] 2000 	movx	a,@dptr
   0556 F5 82         [12] 2001 	mov	dpl,a
   0558 12 22 3A      [24] 2002 	lcall	_debughex
   055B                    2003 00102$:
                           2004 ;	appFHSSNIC.c:312: stop_hopping();
   055B 12 01 AE      [24] 2005 	lcall	_stop_hopping
                           2006 ;	appFHSSNIC.c:315: macdata.curChanIdx = 0;
   055E 90 FD E6      [24] 2007 	mov	dptr,#(_macdata + 0x0009)
   0561 E4            [12] 2008 	clr	a
   0562 F0            [24] 2009 	movx	@dptr,a
   0563 E4            [12] 2010 	clr	a
   0564 A3            [24] 2011 	inc	dptr
   0565 F0            [24] 2012 	movx	@dptr,a
                           2013 ;	appFHSSNIC.c:316: while (1)
   0566                    2014 00110$:
                           2015 ;	appFHSSNIC.c:318: MAC_set_chanidx(macdata.curChanIdx);
   0566 90 FD E6      [24] 2016 	mov	dptr,#(_macdata + 0x0009)
   0569 E0            [24] 2017 	movx	a,@dptr
   056A FE            [12] 2018 	mov	r6,a
   056B A3            [24] 2019 	inc	dptr
   056C E0            [24] 2020 	movx	a,@dptr
   056D FF            [12] 2021 	mov	r7,a
   056E 8E 82         [24] 2022 	mov	dpl,r6
   0570 8F 83         [24] 2023 	mov	dph,r7
   0572 12 06 39      [24] 2024 	lcall	_MAC_set_chanidx
                           2025 ;	appFHSSNIC.c:319: while (MARCSTATE != MARC_STATE_RX)
   0575                    2026 00104$:
   0575 90 DF 3B      [24] 2027 	mov	dptr,#_MARCSTATE
   0578 E0            [24] 2028 	movx	a,@dptr
   0579 FF            [12] 2029 	mov	r7,a
   057A BF 0D F8      [24] 2030 	cjne	r7,#0x0D,00104$
                           2031 ;	appFHSSNIC.c:321: if ((RSSI&0x7f) < 0x60)
   057D 90 DF 3A      [24] 2032 	mov	dptr,#_RSSI
   0580 E0            [24] 2033 	movx	a,@dptr
   0581 FF            [12] 2034 	mov	r7,a
   0582 53 07 7F      [24] 2035 	anl	ar7,#0x7F
   0585 BF 60 00      [24] 2036 	cjne	r7,#0x60,00136$
   0588                    2037 00136$:
   0588 40 27         [24] 2038 	jc	00111$
                           2039 ;	appFHSSNIC.c:324: macdata.curChanIdx++;
   058A 90 FD E6      [24] 2040 	mov	dptr,#(_macdata + 0x0009)
   058D E0            [24] 2041 	movx	a,@dptr
   058E FE            [12] 2042 	mov	r6,a
   058F A3            [24] 2043 	inc	dptr
   0590 E0            [24] 2044 	movx	a,@dptr
   0591 FF            [12] 2045 	mov	r7,a
   0592 0E            [12] 2046 	inc	r6
   0593 BE 00 01      [24] 2047 	cjne	r6,#0x00,00138$
   0596 0F            [12] 2048 	inc	r7
   0597                    2049 00138$:
   0597 90 FD E6      [24] 2050 	mov	dptr,#(_macdata + 0x0009)
   059A EE            [12] 2051 	mov	a,r6
   059B F0            [24] 2052 	movx	@dptr,a
   059C EF            [12] 2053 	mov	a,r7
   059D A3            [24] 2054 	inc	dptr
   059E F0            [24] 2055 	movx	@dptr,a
                           2056 ;	appFHSSNIC.c:325: blink(10,10);
   059F D2 A4         [12] 2057 	setb	_P2_4
   05A1 90 00 0A      [24] 2058 	mov	dptr,#0x000A
   05A4 12 2D D3      [24] 2059 	lcall	_sleepMillis
   05A7 C2 A4         [12] 2060 	clr	_P2_4
   05A9 90 00 0A      [24] 2061 	mov	dptr,#0x000A
   05AC 12 2D D3      [24] 2062 	lcall	_sleepMillis
   05AF 80 B5         [24] 2063 	sjmp	00110$
   05B1                    2064 00111$:
                           2065 ;	appFHSSNIC.c:329: macdata.mac_state = MAC_STATE_SYNCHING;
   05B1 90 FD DD      [24] 2066 	mov	dptr,#_macdata
   05B4 74 02         [12] 2067 	mov	a,#0x02
   05B6 F0            [24] 2068 	movx	@dptr,a
                           2069 ;	appFHSSNIC.c:332: macdata.tLastStateChange = clock;
   05B7 90 FE 03      [24] 2070 	mov	dptr,#_clock
   05BA E0            [24] 2071 	movx	a,@dptr
   05BB FC            [12] 2072 	mov	r4,a
   05BC A3            [24] 2073 	inc	dptr
   05BD E0            [24] 2074 	movx	a,@dptr
   05BE FD            [12] 2075 	mov	r5,a
   05BF A3            [24] 2076 	inc	dptr
   05C0 E0            [24] 2077 	movx	a,@dptr
   05C1 A3            [24] 2078 	inc	dptr
   05C2 E0            [24] 2079 	movx	a,@dptr
   05C3 90 FD E8      [24] 2080 	mov	dptr,#(_macdata + 0x000b)
   05C6 EC            [12] 2081 	mov	a,r4
   05C7 F0            [24] 2082 	movx	@dptr,a
   05C8 ED            [12] 2083 	mov	a,r5
   05C9 A3            [24] 2084 	inc	dptr
   05CA F0            [24] 2085 	movx	@dptr,a
                           2086 ;	appFHSSNIC.c:335: macdata.desperatelySeeking = CellID;
   05CB 90 F5 5F      [24] 2087 	mov	dptr,#_MAC_sync_CellID_1_124
   05CE E0            [24] 2088 	movx	a,@dptr
   05CF FE            [12] 2089 	mov	r6,a
   05D0 A3            [24] 2090 	inc	dptr
   05D1 E0            [24] 2091 	movx	a,@dptr
   05D2 FF            [12] 2092 	mov	r7,a
   05D3 90 FD EC      [24] 2093 	mov	dptr,#(_macdata + 0x000f)
   05D6 EE            [12] 2094 	mov	a,r6
   05D7 F0            [24] 2095 	movx	@dptr,a
   05D8 EF            [12] 2096 	mov	a,r7
   05D9 A3            [24] 2097 	inc	dptr
   05DA F0            [24] 2098 	movx	@dptr,a
   05DB 22            [24] 2099 	ret
                           2100 ;------------------------------------------------------------
                           2101 ;Allocation info for local variables in function 'MAC_stop_sync'
                           2102 ;------------------------------------------------------------
                           2103 ;	appFHSSNIC.c:340: void MAC_stop_sync()
                           2104 ;	-----------------------------------------
                           2105 ;	 function MAC_stop_sync
                           2106 ;	-----------------------------------------
   05DC                    2107 _MAC_stop_sync:
                           2108 ;	appFHSSNIC.c:343: macdata.mac_state = MAC_STATE_NONHOPPING;
   05DC 90 FD DD      [24] 2109 	mov	dptr,#_macdata
   05DF E4            [12] 2110 	clr	a
   05E0 F0            [24] 2111 	movx	@dptr,a
                           2112 ;	appFHSSNIC.c:344: macdata.tLastStateChange = clock;
   05E1 90 FE 03      [24] 2113 	mov	dptr,#_clock
   05E4 E0            [24] 2114 	movx	a,@dptr
   05E5 FC            [12] 2115 	mov	r4,a
   05E6 A3            [24] 2116 	inc	dptr
   05E7 E0            [24] 2117 	movx	a,@dptr
   05E8 FD            [12] 2118 	mov	r5,a
   05E9 A3            [24] 2119 	inc	dptr
   05EA E0            [24] 2120 	movx	a,@dptr
   05EB A3            [24] 2121 	inc	dptr
   05EC E0            [24] 2122 	movx	a,@dptr
   05ED 90 FD E8      [24] 2123 	mov	dptr,#(_macdata + 0x000b)
   05F0 EC            [12] 2124 	mov	a,r4
   05F1 F0            [24] 2125 	movx	@dptr,a
   05F2 ED            [12] 2126 	mov	a,r5
   05F3 A3            [24] 2127 	inc	dptr
   05F4 F0            [24] 2128 	movx	@dptr,a
   05F5 22            [24] 2129 	ret
                           2130 ;------------------------------------------------------------
                           2131 ;Allocation info for local variables in function 'MAC_become_master'
                           2132 ;------------------------------------------------------------
                           2133 ;	appFHSSNIC.c:348: void MAC_become_master()
                           2134 ;	-----------------------------------------
                           2135 ;	 function MAC_become_master
                           2136 ;	-----------------------------------------
   05F6                    2137 _MAC_become_master:
                           2138 ;	appFHSSNIC.c:351: macdata.mac_state = MAC_STATE_SYNC_MASTER;
   05F6 90 FD DD      [24] 2139 	mov	dptr,#_macdata
   05F9 74 04         [12] 2140 	mov	a,#0x04
   05FB F0            [24] 2141 	movx	@dptr,a
                           2142 ;	appFHSSNIC.c:352: macdata.tLastStateChange = clock;
   05FC 90 FE 03      [24] 2143 	mov	dptr,#_clock
   05FF E0            [24] 2144 	movx	a,@dptr
   0600 FC            [12] 2145 	mov	r4,a
   0601 A3            [24] 2146 	inc	dptr
   0602 E0            [24] 2147 	movx	a,@dptr
   0603 FD            [12] 2148 	mov	r5,a
   0604 A3            [24] 2149 	inc	dptr
   0605 E0            [24] 2150 	movx	a,@dptr
   0606 A3            [24] 2151 	inc	dptr
   0607 E0            [24] 2152 	movx	a,@dptr
   0608 90 FD E8      [24] 2153 	mov	dptr,#(_macdata + 0x000b)
   060B EC            [12] 2154 	mov	a,r4
   060C F0            [24] 2155 	movx	@dptr,a
   060D ED            [12] 2156 	mov	a,r5
   060E A3            [24] 2157 	inc	dptr
   060F F0            [24] 2158 	movx	@dptr,a
   0610 22            [24] 2159 	ret
                           2160 ;------------------------------------------------------------
                           2161 ;Allocation info for local variables in function 'MAC_do_Master_scanny_thingy'
                           2162 ;------------------------------------------------------------
                           2163 ;	appFHSSNIC.c:356: void MAC_do_Master_scanny_thingy()
                           2164 ;	-----------------------------------------
                           2165 ;	 function MAC_do_Master_scanny_thingy
                           2166 ;	-----------------------------------------
   0611                    2167 _MAC_do_Master_scanny_thingy:
                           2168 ;	appFHSSNIC.c:358: macdata.mac_state = MAC_STATE_SYNCINGMASTER;
   0611 90 FD DD      [24] 2169 	mov	dptr,#_macdata
   0614 74 05         [12] 2170 	mov	a,#0x05
   0616 F0            [24] 2171 	movx	@dptr,a
                           2172 ;	appFHSSNIC.c:359: macdata.synched_chans = 0;
   0617 90 FD F0      [24] 2173 	mov	dptr,#(_macdata + 0x0013)
   061A E4            [12] 2174 	clr	a
   061B F0            [24] 2175 	movx	@dptr,a
   061C E4            [12] 2176 	clr	a
   061D A3            [24] 2177 	inc	dptr
   061E F0            [24] 2178 	movx	@dptr,a
                           2179 ;	appFHSSNIC.c:360: macdata.tLastStateChange = clock;
   061F 90 FE 03      [24] 2180 	mov	dptr,#_clock
   0622 E0            [24] 2181 	movx	a,@dptr
   0623 FC            [12] 2182 	mov	r4,a
   0624 A3            [24] 2183 	inc	dptr
   0625 E0            [24] 2184 	movx	a,@dptr
   0626 FD            [12] 2185 	mov	r5,a
   0627 A3            [24] 2186 	inc	dptr
   0628 E0            [24] 2187 	movx	a,@dptr
   0629 A3            [24] 2188 	inc	dptr
   062A E0            [24] 2189 	movx	a,@dptr
   062B 90 FD E8      [24] 2190 	mov	dptr,#(_macdata + 0x000b)
   062E EC            [12] 2191 	mov	a,r4
   062F F0            [24] 2192 	movx	@dptr,a
   0630 ED            [12] 2193 	mov	a,r5
   0631 A3            [24] 2194 	inc	dptr
   0632 F0            [24] 2195 	movx	@dptr,a
                           2196 ;	appFHSSNIC.c:361: begin_hopping(0);
   0633 75 82 00      [24] 2197 	mov	dpl,#0x00
   0636 02 01 95      [24] 2198 	ljmp	_begin_hopping
                           2199 ;------------------------------------------------------------
                           2200 ;Allocation info for local variables in function 'MAC_set_chanidx'
                           2201 ;------------------------------------------------------------
                           2202 ;chanidx                   Allocated with name '_MAC_set_chanidx_chanidx_1_132'
                           2203 ;------------------------------------------------------------
                           2204 ;	appFHSSNIC.c:365: void MAC_set_chanidx(__xdata u16 chanidx)
                           2205 ;	-----------------------------------------
                           2206 ;	 function MAC_set_chanidx
                           2207 ;	-----------------------------------------
   0639                    2208 _MAC_set_chanidx:
   0639 AF 83         [24] 2209 	mov	r7,dph
   063B E5 82         [12] 2210 	mov	a,dpl
   063D 90 F5 61      [24] 2211 	mov	dptr,#_MAC_set_chanidx_chanidx_1_132
   0640 F0            [24] 2212 	movx	@dptr,a
   0641 EF            [12] 2213 	mov	a,r7
   0642 A3            [24] 2214 	inc	dptr
   0643 F0            [24] 2215 	movx	@dptr,a
                           2216 ;	appFHSSNIC.c:367: PHY_set_channel( g_Channels[ chanidx ] );
   0644 90 F5 61      [24] 2217 	mov	dptr,#_MAC_set_chanidx_chanidx_1_132
   0647 E0            [24] 2218 	movx	a,@dptr
   0648 FE            [12] 2219 	mov	r6,a
   0649 A3            [24] 2220 	inc	dptr
   064A E0            [24] 2221 	movx	a,@dptr
   064B FF            [12] 2222 	mov	r7,a
   064C EE            [12] 2223 	mov	a,r6
   064D 24 00         [12] 2224 	add	a,#_g_Channels
   064F F5 82         [12] 2225 	mov	dpl,a
   0651 EF            [12] 2226 	mov	a,r7
   0652 34 F0         [12] 2227 	addc	a,#(_g_Channels >> 8)
   0654 F5 83         [12] 2228 	mov	dph,a
   0656 E0            [24] 2229 	movx	a,@dptr
   0657 FF            [12] 2230 	mov	r7,a
   0658 7E 00         [12] 2231 	mov	r6,#0x00
   065A 8F 82         [24] 2232 	mov	dpl,r7
   065C 8E 83         [24] 2233 	mov	dph,r6
   065E 02 01 14      [24] 2234 	ljmp	_PHY_set_channel
                           2235 ;------------------------------------------------------------
                           2236 ;Allocation info for local variables in function 'MAC_set_NIC_ID'
                           2237 ;------------------------------------------------------------
                           2238 ;NIC_ID                    Allocated with name '_MAC_set_NIC_ID_NIC_ID_1_134'
                           2239 ;------------------------------------------------------------
                           2240 ;	appFHSSNIC.c:371: void MAC_set_NIC_ID(__xdata u16 NIC_ID)
                           2241 ;	-----------------------------------------
                           2242 ;	 function MAC_set_NIC_ID
                           2243 ;	-----------------------------------------
   0661                    2244 _MAC_set_NIC_ID:
   0661 AF 83         [24] 2245 	mov	r7,dph
   0663 E5 82         [12] 2246 	mov	a,dpl
   0665 90 F5 63      [24] 2247 	mov	dptr,#_MAC_set_NIC_ID_NIC_ID_1_134
   0668 F0            [24] 2248 	movx	@dptr,a
   0669 EF            [12] 2249 	mov	a,r7
   066A A3            [24] 2250 	inc	dptr
   066B F0            [24] 2251 	movx	@dptr,a
                           2252 ;	appFHSSNIC.c:374: g_NIC_ID = NIC_ID;
   066C 90 F5 63      [24] 2253 	mov	dptr,#_MAC_set_NIC_ID_NIC_ID_1_134
   066F E0            [24] 2254 	movx	a,@dptr
   0670 FE            [12] 2255 	mov	r6,a
   0671 A3            [24] 2256 	inc	dptr
   0672 E0            [24] 2257 	movx	a,@dptr
   0673 FF            [12] 2258 	mov	r7,a
   0674 90 F3 70      [24] 2259 	mov	dptr,#_g_NIC_ID
   0677 EE            [12] 2260 	mov	a,r6
   0678 F0            [24] 2261 	movx	@dptr,a
   0679 EF            [12] 2262 	mov	a,r7
   067A A3            [24] 2263 	inc	dptr
   067B F0            [24] 2264 	movx	@dptr,a
   067C 22            [24] 2265 	ret
                           2266 ;------------------------------------------------------------
                           2267 ;Allocation info for local variables in function 'MAC_rx_handle'
                           2268 ;------------------------------------------------------------
                           2269 ;message                   Allocated with name '_MAC_rx_handle_PARM_2'
                           2270 ;len                       Allocated with name '_MAC_rx_handle_len_1_136'
                           2271 ;------------------------------------------------------------
                           2272 ;	appFHSSNIC.c:377: void MAC_rx_handle(__xdata u8 len, __xdata u8* __xdata message)
                           2273 ;	-----------------------------------------
                           2274 ;	 function MAC_rx_handle
                           2275 ;	-----------------------------------------
   067D                    2276 _MAC_rx_handle:
                           2277 ;	appFHSSNIC.c:380: message;
   067D 22            [24] 2278 	ret
                           2279 ;------------------------------------------------------------
                           2280 ;Allocation info for local variables in function 'MAC_getNextChannel'
                           2281 ;------------------------------------------------------------
                           2282 ;	appFHSSNIC.c:386: __xdata u8 MAC_getNextChannel()
                           2283 ;	-----------------------------------------
                           2284 ;	 function MAC_getNextChannel
                           2285 ;	-----------------------------------------
   067E                    2286 _MAC_getNextChannel:
                           2287 ;	appFHSSNIC.c:388: macdata.curChanIdx++;
   067E 90 FD E6      [24] 2288 	mov	dptr,#(_macdata + 0x0009)
   0681 E0            [24] 2289 	movx	a,@dptr
   0682 FE            [12] 2290 	mov	r6,a
   0683 A3            [24] 2291 	inc	dptr
   0684 E0            [24] 2292 	movx	a,@dptr
   0685 FF            [12] 2293 	mov	r7,a
   0686 0E            [12] 2294 	inc	r6
   0687 BE 00 01      [24] 2295 	cjne	r6,#0x00,00108$
   068A 0F            [12] 2296 	inc	r7
   068B                    2297 00108$:
   068B 90 FD E6      [24] 2298 	mov	dptr,#(_macdata + 0x0009)
   068E EE            [12] 2299 	mov	a,r6
   068F F0            [24] 2300 	movx	@dptr,a
   0690 EF            [12] 2301 	mov	a,r7
   0691 A3            [24] 2302 	inc	dptr
   0692 F0            [24] 2303 	movx	@dptr,a
                           2304 ;	appFHSSNIC.c:389: if (macdata.curChanIdx >= MAX_CHANNELS)
   0693 C3            [12] 2305 	clr	c
   0694 EE            [12] 2306 	mov	a,r6
   0695 94 70         [12] 2307 	subb	a,#0x70
   0697 EF            [12] 2308 	mov	a,r7
   0698 94 03         [12] 2309 	subb	a,#0x03
   069A 40 08         [24] 2310 	jc	00102$
                           2311 ;	appFHSSNIC.c:391: macdata.curChanIdx = 0;
   069C 90 FD E6      [24] 2312 	mov	dptr,#(_macdata + 0x0009)
   069F E4            [12] 2313 	clr	a
   06A0 F0            [24] 2314 	movx	@dptr,a
   06A1 E4            [12] 2315 	clr	a
   06A2 A3            [24] 2316 	inc	dptr
   06A3 F0            [24] 2317 	movx	@dptr,a
   06A4                    2318 00102$:
                           2319 ;	appFHSSNIC.c:393: return g_Channels[macdata.curChanIdx];
   06A4 90 FD E6      [24] 2320 	mov	dptr,#(_macdata + 0x0009)
   06A7 E0            [24] 2321 	movx	a,@dptr
   06A8 FE            [12] 2322 	mov	r6,a
   06A9 A3            [24] 2323 	inc	dptr
   06AA E0            [24] 2324 	movx	a,@dptr
   06AB FF            [12] 2325 	mov	r7,a
   06AC EE            [12] 2326 	mov	a,r6
   06AD 24 00         [12] 2327 	add	a,#_g_Channels
   06AF F5 82         [12] 2328 	mov	dpl,a
   06B1 EF            [12] 2329 	mov	a,r7
   06B2 34 F0         [12] 2330 	addc	a,#(_g_Channels >> 8)
   06B4 F5 83         [12] 2331 	mov	dph,a
   06B6 E0            [24] 2332 	movx	a,@dptr
   06B7 F5 82         [12] 2333 	mov	dpl,a
   06B9 22            [24] 2334 	ret
                           2335 ;------------------------------------------------------------
                           2336 ;Allocation info for local variables in function 't2IntHandler'
                           2337 ;------------------------------------------------------------
                           2338 ;packet                    Allocated with name '_t2IntHandler_packet_1_141'
                           2339 ;------------------------------------------------------------
                           2340 ;	appFHSSNIC.c:400: void t2IntHandler(void) __interrupt T2_VECTOR  // interrupt handler should trigger on T2 overflow
                           2341 ;	-----------------------------------------
                           2342 ;	 function t2IntHandler
                           2343 ;	-----------------------------------------
   06BA                    2344 _t2IntHandler:
   06BA C0 21         [24] 2345 	push	bits
   06BC C0 E0         [24] 2346 	push	acc
   06BE C0 F0         [24] 2347 	push	b
   06C0 C0 82         [24] 2348 	push	dpl
   06C2 C0 83         [24] 2349 	push	dph
   06C4 C0 07         [24] 2350 	push	(0+7)
   06C6 C0 06         [24] 2351 	push	(0+6)
   06C8 C0 05         [24] 2352 	push	(0+5)
   06CA C0 04         [24] 2353 	push	(0+4)
   06CC C0 03         [24] 2354 	push	(0+3)
   06CE C0 02         [24] 2355 	push	(0+2)
   06D0 C0 01         [24] 2356 	push	(0+1)
   06D2 C0 00         [24] 2357 	push	(0+0)
   06D4 C0 D0         [24] 2358 	push	psw
   06D6 75 D0 00      [24] 2359 	mov	psw,#0x00
                           2360 ;	appFHSSNIC.c:409: if (++rf_MAC_timer == macdata.MAC_threshold)
   06D9 90 FD D9      [24] 2361 	mov	dptr,#_rf_MAC_timer
   06DC E0            [24] 2362 	movx	a,@dptr
   06DD 24 01         [12] 2363 	add	a,#0x01
   06DF F0            [24] 2364 	movx	@dptr,a
   06E0 A3            [24] 2365 	inc	dptr
   06E1 E0            [24] 2366 	movx	a,@dptr
   06E2 34 00         [12] 2367 	addc	a,#0x00
   06E4 F0            [24] 2368 	movx	@dptr,a
   06E5 90 FD DE      [24] 2369 	mov	dptr,#(_macdata + 0x0001)
   06E8 E0            [24] 2370 	movx	a,@dptr
   06E9 FE            [12] 2371 	mov	r6,a
   06EA A3            [24] 2372 	inc	dptr
   06EB E0            [24] 2373 	movx	a,@dptr
   06EC FF            [12] 2374 	mov	r7,a
   06ED 90 FD D9      [24] 2375 	mov	dptr,#_rf_MAC_timer
   06F0 E0            [24] 2376 	movx	a,@dptr
   06F1 FC            [12] 2377 	mov	r4,a
   06F2 A3            [24] 2378 	inc	dptr
   06F3 E0            [24] 2379 	movx	a,@dptr
   06F4 FD            [12] 2380 	mov	r5,a
   06F5 EC            [12] 2381 	mov	a,r4
   06F6 B5 06 0C      [24] 2382 	cjne	a,ar6,00102$
   06F9 ED            [12] 2383 	mov	a,r5
   06FA B5 07 08      [24] 2384 	cjne	a,ar7,00102$
                           2385 ;	appFHSSNIC.c:410: rf_MAC_timer = 0;   // since we're 0-based, MAC_threshold is actually past the end of our state machine, which makes it 0 *right now*
   06FD 90 FD D9      [24] 2386 	mov	dptr,#_rf_MAC_timer
   0700 E4            [12] 2387 	clr	a
   0701 F0            [24] 2388 	movx	@dptr,a
   0702 E4            [12] 2389 	clr	a
   0703 A3            [24] 2390 	inc	dptr
   0704 F0            [24] 2391 	movx	@dptr,a
   0705                    2392 00102$:
                           2393 ;	appFHSSNIC.c:412: switch (rf_MAC_timer)
   0705 90 FD D9      [24] 2394 	mov	dptr,#_rf_MAC_timer
   0708 E0            [24] 2395 	movx	a,@dptr
   0709 FE            [12] 2396 	mov	r6,a
   070A A3            [24] 2397 	inc	dptr
   070B E0            [24] 2398 	movx	a,@dptr
   070C FF            [12] 2399 	mov	r7,a
   070D BE 00 05      [24] 2400 	cjne	r6,#0x00,00160$
   0710 BF 00 02      [24] 2401 	cjne	r7,#0x00,00160$
   0713 80 0B         [24] 2402 	sjmp	00103$
   0715                    2403 00160$:
   0715 BE 01 05      [24] 2404 	cjne	r6,#0x01,00161$
   0718 BF 00 02      [24] 2405 	cjne	r7,#0x00,00161$
   071B 80 69         [24] 2406 	sjmp	00108$
   071D                    2407 00161$:
   071D 02 08 82      [24] 2408 	ljmp	00111$
                           2409 ;	appFHSSNIC.c:414: case 0:     // change channels
   0720                    2410 00103$:
                           2411 ;	appFHSSNIC.c:416: macdata.tLastHop = T2CT | (rf_MAC_timer<<8);        // should this be based on clock and T1?
   0720 90 FD D9      [24] 2412 	mov	dptr,#_rf_MAC_timer
   0723 E0            [24] 2413 	movx	a,@dptr
   0724 FE            [12] 2414 	mov	r6,a
   0725 A3            [24] 2415 	inc	dptr
   0726 E0            [24] 2416 	movx	a,@dptr
   0727 8E 07         [24] 2417 	mov	ar7,r6
   0729 7E 00         [12] 2418 	mov	r6,#0x00
   072B AC 9C         [24] 2419 	mov	r4,_T2CT
   072D 7D 00         [12] 2420 	mov	r5,#0x00
   072F EC            [12] 2421 	mov	a,r4
   0730 42 06         [12] 2422 	orl	ar6,a
   0732 ED            [12] 2423 	mov	a,r5
   0733 42 07         [12] 2424 	orl	ar7,a
   0735 90 FD EA      [24] 2425 	mov	dptr,#(_macdata + 0x000d)
   0738 EE            [12] 2426 	mov	a,r6
   0739 F0            [24] 2427 	movx	@dptr,a
   073A EF            [12] 2428 	mov	a,r7
   073B A3            [24] 2429 	inc	dptr
   073C F0            [24] 2430 	movx	@dptr,a
                           2431 ;	appFHSSNIC.c:419: if (++macdata.curChanIdx >= macdata.NumChannelHops)
   073D 90 FD E6      [24] 2432 	mov	dptr,#(_macdata + 0x0009)
   0740 E0            [24] 2433 	movx	a,@dptr
   0741 FE            [12] 2434 	mov	r6,a
   0742 A3            [24] 2435 	inc	dptr
   0743 E0            [24] 2436 	movx	a,@dptr
   0744 FF            [12] 2437 	mov	r7,a
   0745 0E            [12] 2438 	inc	r6
   0746 BE 00 01      [24] 2439 	cjne	r6,#0x00,00162$
   0749 0F            [12] 2440 	inc	r7
   074A                    2441 00162$:
   074A 90 FD E6      [24] 2442 	mov	dptr,#(_macdata + 0x0009)
   074D EE            [12] 2443 	mov	a,r6
   074E F0            [24] 2444 	movx	@dptr,a
   074F EF            [12] 2445 	mov	a,r7
   0750 A3            [24] 2446 	inc	dptr
   0751 F0            [24] 2447 	movx	@dptr,a
   0752 90 FD E4      [24] 2448 	mov	dptr,#(_macdata + 0x0007)
   0755 E0            [24] 2449 	movx	a,@dptr
   0756 FC            [12] 2450 	mov	r4,a
   0757 A3            [24] 2451 	inc	dptr
   0758 E0            [24] 2452 	movx	a,@dptr
   0759 FD            [12] 2453 	mov	r5,a
   075A C3            [12] 2454 	clr	c
   075B EE            [12] 2455 	mov	a,r6
   075C 9C            [12] 2456 	subb	a,r4
   075D EF            [12] 2457 	mov	a,r7
   075E 9D            [12] 2458 	subb	a,r5
   075F 40 08         [24] 2459 	jc	00105$
                           2460 ;	appFHSSNIC.c:421: macdata.curChanIdx = 0;
   0761 90 FD E6      [24] 2461 	mov	dptr,#(_macdata + 0x0009)
   0764 E4            [12] 2462 	clr	a
   0765 F0            [24] 2463 	movx	@dptr,a
   0766 E4            [12] 2464 	clr	a
   0767 A3            [24] 2465 	inc	dptr
   0768 F0            [24] 2466 	movx	@dptr,a
   0769                    2467 00105$:
                           2468 ;	appFHSSNIC.c:426: if (MARCSTATE == MARC_STATE_TX)
   0769 90 DF 3B      [24] 2469 	mov	dptr,#_MARCSTATE
   076C E0            [24] 2470 	movx	a,@dptr
   076D FF            [12] 2471 	mov	r7,a
   076E BF 13 03      [24] 2472 	cjne	r7,#0x13,00107$
                           2473 ;	appFHSSNIC.c:427: return;
   0771 02 09 81      [24] 2474 	ljmp	00123$
   0774                    2475 00107$:
                           2476 ;	appFHSSNIC.c:431: MAC_set_chanidx(macdata.curChanIdx);
   0774 90 FD E6      [24] 2477 	mov	dptr,#(_macdata + 0x0009)
   0777 E0            [24] 2478 	movx	a,@dptr
   0778 FE            [12] 2479 	mov	r6,a
   0779 A3            [24] 2480 	inc	dptr
   077A E0            [24] 2481 	movx	a,@dptr
   077B FF            [12] 2482 	mov	r7,a
   077C 8E 82         [24] 2483 	mov	dpl,r6
   077E 8F 83         [24] 2484 	mov	dph,r7
   0780 12 06 39      [24] 2485 	lcall	_MAC_set_chanidx
                           2486 ;	appFHSSNIC.c:442: break;
   0783 02 09 81      [24] 2487 	ljmp	00123$
                           2488 ;	appFHSSNIC.c:444: case 1:
   0786                    2489 00108$:
                           2490 ;	appFHSSNIC.c:446: if (macdata.mac_state == MAC_STATE_SYNCINGMASTER)
   0786 90 FD DD      [24] 2491 	mov	dptr,#_macdata
   0789 E0            [24] 2492 	movx	a,@dptr
   078A FF            [12] 2493 	mov	r7,a
   078B BF 05 02      [24] 2494 	cjne	r7,#0x05,00166$
   078E 80 03         [24] 2495 	sjmp	00167$
   0790                    2496 00166$:
   0790 02 09 81      [24] 2497 	ljmp	00123$
   0793                    2498 00167$:
                           2499 ;	appFHSSNIC.c:448: sleepMillis(FHSS_TX_SLEEP_DELAY);
   0793 90 00 19      [24] 2500 	mov	dptr,#0x0019
   0796 12 2D D3      [24] 2501 	lcall	_sleepMillis
                           2502 ;	appFHSSNIC.c:449: packet[0] = 28;
   0799 90 F5 67      [24] 2503 	mov	dptr,#_t2IntHandler_packet_1_141
   079C 74 1C         [12] 2504 	mov	a,#0x1C
   079E F0            [24] 2505 	movx	@dptr,a
                           2506 ;	appFHSSNIC.c:450: packet[1] = macdata.curChanIdx & 0xff;
   079F 90 FD E6      [24] 2507 	mov	dptr,#(_macdata + 0x0009)
   07A2 E0            [24] 2508 	movx	a,@dptr
   07A3 FE            [12] 2509 	mov	r6,a
   07A4 A3            [24] 2510 	inc	dptr
   07A5 E0            [24] 2511 	movx	a,@dptr
   07A6 90 F5 68      [24] 2512 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0001)
   07A9 EE            [12] 2513 	mov	a,r6
   07AA F0            [24] 2514 	movx	@dptr,a
                           2515 ;	appFHSSNIC.c:451: packet[2] = macdata.curChanIdx >> 8;
   07AB 90 FD E6      [24] 2516 	mov	dptr,#(_macdata + 0x0009)
   07AE E0            [24] 2517 	movx	a,@dptr
   07AF A3            [24] 2518 	inc	dptr
   07B0 E0            [24] 2519 	movx	a,@dptr
   07B1 90 F5 69      [24] 2520 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0002)
   07B4 F0            [24] 2521 	movx	@dptr,a
                           2522 ;	appFHSSNIC.c:452: packet[3] =  'B';
   07B5 90 F5 6A      [24] 2523 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0003)
   07B8 74 42         [12] 2524 	mov	a,#0x42
   07BA F0            [24] 2525 	movx	@dptr,a
                           2526 ;	appFHSSNIC.c:453: packet[4] =  'L';
   07BB 90 F5 6B      [24] 2527 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0004)
   07BE 74 4C         [12] 2528 	mov	a,#0x4C
   07C0 F0            [24] 2529 	movx	@dptr,a
                           2530 ;	appFHSSNIC.c:454: packet[5] =  'A';
   07C1 90 F5 6C      [24] 2531 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0005)
   07C4 74 41         [12] 2532 	mov	a,#0x41
   07C6 F0            [24] 2533 	movx	@dptr,a
                           2534 ;	appFHSSNIC.c:455: packet[6] =  'H';
   07C7 90 F5 6D      [24] 2535 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0006)
   07CA 74 48         [12] 2536 	mov	a,#0x48
   07CC F0            [24] 2537 	movx	@dptr,a
                           2538 ;	appFHSSNIC.c:456: packet[7] =  'B';
   07CD 90 F5 6E      [24] 2539 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0007)
   07D0 74 42         [12] 2540 	mov	a,#0x42
   07D2 F0            [24] 2541 	movx	@dptr,a
                           2542 ;	appFHSSNIC.c:457: packet[8] =  'L';
   07D3 90 F5 6F      [24] 2543 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0008)
   07D6 74 4C         [12] 2544 	mov	a,#0x4C
   07D8 F0            [24] 2545 	movx	@dptr,a
                           2546 ;	appFHSSNIC.c:458: packet[9] =  'A';
   07D9 90 F5 70      [24] 2547 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0009)
   07DC 74 41         [12] 2548 	mov	a,#0x41
   07DE F0            [24] 2549 	movx	@dptr,a
                           2550 ;	appFHSSNIC.c:459: packet[10] = 'H';
   07DF 90 F5 71      [24] 2551 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x000a)
   07E2 74 48         [12] 2552 	mov	a,#0x48
   07E4 F0            [24] 2553 	movx	@dptr,a
                           2554 ;	appFHSSNIC.c:460: packet[11] = 'B';
   07E5 90 F5 72      [24] 2555 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x000b)
   07E8 74 42         [12] 2556 	mov	a,#0x42
   07EA F0            [24] 2557 	movx	@dptr,a
                           2558 ;	appFHSSNIC.c:461: packet[12] = 'L';
   07EB 90 F5 73      [24] 2559 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x000c)
   07EE 74 4C         [12] 2560 	mov	a,#0x4C
   07F0 F0            [24] 2561 	movx	@dptr,a
                           2562 ;	appFHSSNIC.c:462: packet[13] = 'A';
   07F1 90 F5 74      [24] 2563 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x000d)
   07F4 74 41         [12] 2564 	mov	a,#0x41
   07F6 F0            [24] 2565 	movx	@dptr,a
                           2566 ;	appFHSSNIC.c:463: packet[14] = 'H';
   07F7 90 F5 75      [24] 2567 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x000e)
   07FA 74 48         [12] 2568 	mov	a,#0x48
   07FC F0            [24] 2569 	movx	@dptr,a
                           2570 ;	appFHSSNIC.c:464: packet[15] = 'B';
   07FD 90 F5 76      [24] 2571 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x000f)
   0800 74 42         [12] 2572 	mov	a,#0x42
   0802 F0            [24] 2573 	movx	@dptr,a
                           2574 ;	appFHSSNIC.c:465: packet[16] = 'L';
   0803 90 F5 77      [24] 2575 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0010)
   0806 74 4C         [12] 2576 	mov	a,#0x4C
   0808 F0            [24] 2577 	movx	@dptr,a
                           2578 ;	appFHSSNIC.c:466: packet[17] = 'A';
   0809 90 F5 78      [24] 2579 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0011)
   080C 74 41         [12] 2580 	mov	a,#0x41
   080E F0            [24] 2581 	movx	@dptr,a
                           2582 ;	appFHSSNIC.c:467: packet[18] = 'H';
   080F 90 F5 79      [24] 2583 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0012)
   0812 74 48         [12] 2584 	mov	a,#0x48
   0814 F0            [24] 2585 	movx	@dptr,a
                           2586 ;	appFHSSNIC.c:468: packet[19] = 'B';
   0815 90 F5 7A      [24] 2587 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0013)
   0818 74 42         [12] 2588 	mov	a,#0x42
   081A F0            [24] 2589 	movx	@dptr,a
                           2590 ;	appFHSSNIC.c:469: packet[20] = 'L';
   081B 90 F5 7B      [24] 2591 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0014)
   081E 74 4C         [12] 2592 	mov	a,#0x4C
   0820 F0            [24] 2593 	movx	@dptr,a
                           2594 ;	appFHSSNIC.c:470: packet[21] = 'A';
   0821 90 F5 7C      [24] 2595 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0015)
   0824 74 41         [12] 2596 	mov	a,#0x41
   0826 F0            [24] 2597 	movx	@dptr,a
                           2598 ;	appFHSSNIC.c:471: packet[22] = 'H';
   0827 90 F5 7D      [24] 2599 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0016)
   082A 74 48         [12] 2600 	mov	a,#0x48
   082C F0            [24] 2601 	movx	@dptr,a
                           2602 ;	appFHSSNIC.c:472: packet[23] = 'B';
   082D 90 F5 7E      [24] 2603 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0017)
   0830 74 42         [12] 2604 	mov	a,#0x42
   0832 F0            [24] 2605 	movx	@dptr,a
                           2606 ;	appFHSSNIC.c:473: packet[24] = 'L';
   0833 90 F5 7F      [24] 2607 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0018)
   0836 74 4C         [12] 2608 	mov	a,#0x4C
   0838 F0            [24] 2609 	movx	@dptr,a
                           2610 ;	appFHSSNIC.c:474: packet[25] = 'A';
   0839 90 F5 80      [24] 2611 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0019)
   083C 74 41         [12] 2612 	mov	a,#0x41
   083E F0            [24] 2613 	movx	@dptr,a
                           2614 ;	appFHSSNIC.c:475: packet[26] = 'H';
   083F 90 F5 81      [24] 2615 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x001a)
   0842 74 48         [12] 2616 	mov	a,#0x48
   0844 F0            [24] 2617 	movx	@dptr,a
                           2618 ;	appFHSSNIC.c:476: packet[27] = ' ';
   0845 90 F5 82      [24] 2619 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x001b)
   0848 74 20         [12] 2620 	mov	a,#0x20
   084A F0            [24] 2621 	movx	@dptr,a
                           2622 ;	appFHSSNIC.c:478: transmit((__xdata u8*)&packet[1], 28, 0, 0);
   084B 90 FD F2      [24] 2623 	mov	dptr,#_transmit_PARM_2
   084E 74 1C         [12] 2624 	mov	a,#0x1C
   0850 F0            [24] 2625 	movx	@dptr,a
   0851 E4            [12] 2626 	clr	a
   0852 A3            [24] 2627 	inc	dptr
   0853 F0            [24] 2628 	movx	@dptr,a
   0854 90 FD F4      [24] 2629 	mov	dptr,#_transmit_PARM_3
   0857 E4            [12] 2630 	clr	a
   0858 F0            [24] 2631 	movx	@dptr,a
   0859 E4            [12] 2632 	clr	a
   085A A3            [24] 2633 	inc	dptr
   085B F0            [24] 2634 	movx	@dptr,a
   085C 90 FD F6      [24] 2635 	mov	dptr,#_transmit_PARM_4
   085F E4            [12] 2636 	clr	a
   0860 F0            [24] 2637 	movx	@dptr,a
   0861 E4            [12] 2638 	clr	a
   0862 A3            [24] 2639 	inc	dptr
   0863 F0            [24] 2640 	movx	@dptr,a
   0864 90 F5 68      [24] 2641 	mov	dptr,#(_t2IntHandler_packet_1_141 + 0x0001)
   0867 12 24 8D      [24] 2642 	lcall	_transmit
                           2643 ;	appFHSSNIC.c:479: macdata.synched_chans++;
   086A 90 FD F0      [24] 2644 	mov	dptr,#(_macdata + 0x0013)
   086D E0            [24] 2645 	movx	a,@dptr
   086E FE            [12] 2646 	mov	r6,a
   086F A3            [24] 2647 	inc	dptr
   0870 E0            [24] 2648 	movx	a,@dptr
   0871 FF            [12] 2649 	mov	r7,a
   0872 0E            [12] 2650 	inc	r6
   0873 BE 00 01      [24] 2651 	cjne	r6,#0x00,00168$
   0876 0F            [12] 2652 	inc	r7
   0877                    2653 00168$:
   0877 90 FD F0      [24] 2654 	mov	dptr,#(_macdata + 0x0013)
   087A EE            [12] 2655 	mov	a,r6
   087B F0            [24] 2656 	movx	@dptr,a
   087C EF            [12] 2657 	mov	a,r7
   087D A3            [24] 2658 	inc	dptr
   087E F0            [24] 2659 	movx	@dptr,a
                           2660 ;	appFHSSNIC.c:480: break;      // don't want to do anything else if we're in this state.
   087F 02 09 81      [24] 2661 	ljmp	00123$
                           2662 ;	appFHSSNIC.c:484: default:    // all other ticks we can transmit
   0882                    2663 00111$:
                           2664 ;	appFHSSNIC.c:487: switch (macdata.mac_state)
   0882 90 FD DD      [24] 2665 	mov	dptr,#_macdata
   0885 E0            [24] 2666 	movx	a,@dptr
   0886 FF            [12] 2667 	mov	r7,a
   0887 BF 03 02      [24] 2668 	cjne	r7,#0x03,00169$
   088A 80 65         [24] 2669 	sjmp	00116$
   088C                    2670 00169$:
   088C BF 04 02      [24] 2671 	cjne	r7,#0x04,00170$
   088F 80 08         [24] 2672 	sjmp	00113$
   0891                    2673 00170$:
   0891 BF 05 02      [24] 2674 	cjne	r7,#0x05,00171$
   0894 80 03         [24] 2675 	sjmp	00172$
   0896                    2676 00171$:
   0896 02 09 81      [24] 2677 	ljmp	00123$
   0899                    2678 00172$:
                           2679 ;	appFHSSNIC.c:490: case MAC_STATE_SYNC_MASTER:
   0899                    2680 00113$:
                           2681 ;	appFHSSNIC.c:491: if (100 < (clock - macdata.tLastStateChange))   // periodically shift back to beaconing
   0899 90 FD E8      [24] 2682 	mov	dptr,#(_macdata + 0x000b)
   089C E0            [24] 2683 	movx	a,@dptr
   089D FE            [12] 2684 	mov	r6,a
   089E A3            [24] 2685 	inc	dptr
   089F E0            [24] 2686 	movx	a,@dptr
   08A0 FF            [12] 2687 	mov	r7,a
   08A1 90 FE 03      [24] 2688 	mov	dptr,#_clock
   08A4 E0            [24] 2689 	movx	a,@dptr
   08A5 FA            [12] 2690 	mov	r2,a
   08A6 A3            [24] 2691 	inc	dptr
   08A7 E0            [24] 2692 	movx	a,@dptr
   08A8 FB            [12] 2693 	mov	r3,a
   08A9 A3            [24] 2694 	inc	dptr
   08AA E0            [24] 2695 	movx	a,@dptr
   08AB FC            [12] 2696 	mov	r4,a
   08AC A3            [24] 2697 	inc	dptr
   08AD E0            [24] 2698 	movx	a,@dptr
   08AE FD            [12] 2699 	mov	r5,a
   08AF 8E 00         [24] 2700 	mov	ar0,r6
   08B1 8F 01         [24] 2701 	mov	ar1,r7
   08B3 E4            [12] 2702 	clr	a
   08B4 FE            [12] 2703 	mov	r6,a
   08B5 FF            [12] 2704 	mov	r7,a
   08B6 EA            [12] 2705 	mov	a,r2
   08B7 C3            [12] 2706 	clr	c
   08B8 98            [12] 2707 	subb	a,r0
   08B9 FA            [12] 2708 	mov	r2,a
   08BA EB            [12] 2709 	mov	a,r3
   08BB 99            [12] 2710 	subb	a,r1
   08BC FB            [12] 2711 	mov	r3,a
   08BD EC            [12] 2712 	mov	a,r4
   08BE 9E            [12] 2713 	subb	a,r6
   08BF FC            [12] 2714 	mov	r4,a
   08C0 ED            [12] 2715 	mov	a,r5
   08C1 9F            [12] 2716 	subb	a,r7
   08C2 FD            [12] 2717 	mov	r5,a
   08C3 C3            [12] 2718 	clr	c
   08C4 74 64         [12] 2719 	mov	a,#0x64
   08C6 9A            [12] 2720 	subb	a,r2
   08C7 E4            [12] 2721 	clr	a
   08C8 9B            [12] 2722 	subb	a,r3
   08C9 E4            [12] 2723 	clr	a
   08CA 9C            [12] 2724 	subb	a,r4
   08CB E4            [12] 2725 	clr	a
   08CC 9D            [12] 2726 	subb	a,r5
   08CD 50 22         [24] 2727 	jnc	00116$
                           2728 ;	appFHSSNIC.c:493: debug("SYNCH_MASTER -> SYNCINGMASTER");
   08CF 90 37 19      [24] 2729 	mov	dptr,#__str_5
   08D2 12 21 F8      [24] 2730 	lcall	_debug
                           2731 ;	appFHSSNIC.c:494: macdata.mac_state = MAC_STATE_SYNCINGMASTER;
   08D5 90 FD DD      [24] 2732 	mov	dptr,#_macdata
   08D8 74 05         [12] 2733 	mov	a,#0x05
   08DA F0            [24] 2734 	movx	@dptr,a
                           2735 ;	appFHSSNIC.c:495: macdata.tLastStateChange = clock;
   08DB 90 FE 03      [24] 2736 	mov	dptr,#_clock
   08DE E0            [24] 2737 	movx	a,@dptr
   08DF FC            [12] 2738 	mov	r4,a
   08E0 A3            [24] 2739 	inc	dptr
   08E1 E0            [24] 2740 	movx	a,@dptr
   08E2 FD            [12] 2741 	mov	r5,a
   08E3 A3            [24] 2742 	inc	dptr
   08E4 E0            [24] 2743 	movx	a,@dptr
   08E5 FE            [12] 2744 	mov	r6,a
   08E6 A3            [24] 2745 	inc	dptr
   08E7 E0            [24] 2746 	movx	a,@dptr
   08E8 FF            [12] 2747 	mov	r7,a
   08E9 90 FD E8      [24] 2748 	mov	dptr,#(_macdata + 0x000b)
   08EC EC            [12] 2749 	mov	a,r4
   08ED F0            [24] 2750 	movx	@dptr,a
   08EE ED            [12] 2751 	mov	a,r5
   08EF A3            [24] 2752 	inc	dptr
   08F0 F0            [24] 2753 	movx	@dptr,a
                           2754 ;	appFHSSNIC.c:498: case MAC_STATE_SYNCHED:
   08F1                    2755 00116$:
                           2756 ;	appFHSSNIC.c:508: if ( g_txMsgQueue[macdata.txMsgIdxDone][0])      // if length byte >0
   08F1 90 FD EF      [24] 2757 	mov	dptr,#(_macdata + 0x0012)
   08F4 E0            [24] 2758 	movx	a,@dptr
   08F5 75 F0 F1      [24] 2759 	mov	b,#0xF1
   08F8 A4            [48] 2760 	mul	ab
   08F9 24 72         [12] 2761 	add	a,#_g_txMsgQueue
   08FB FE            [12] 2762 	mov	r6,a
   08FC 74 F3         [12] 2763 	mov	a,#(_g_txMsgQueue >> 8)
   08FE 35 F0         [12] 2764 	addc	a,b
   0900 FF            [12] 2765 	mov	r7,a
   0901 8E 82         [24] 2766 	mov	dpl,r6
   0903 8F 83         [24] 2767 	mov	dph,r7
   0905 E0            [24] 2768 	movx	a,@dptr
   0906 60 79         [24] 2769 	jz	00123$
                           2770 ;	appFHSSNIC.c:511: sleepMillis(FHSS_TX_SLEEP_DELAY);
   0908 90 00 19      [24] 2771 	mov	dptr,#0x0019
   090B 12 2D D3      [24] 2772 	lcall	_sleepMillis
                           2773 ;	appFHSSNIC.c:512: transmit(&g_txMsgQueue[macdata.txMsgIdxDone][!(PKTCTRL0&1)], g_txMsgQueue[macdata.txMsgIdxDone][0], 0, 0);
   090E 90 FD EF      [24] 2774 	mov	dptr,#(_macdata + 0x0012)
   0911 E0            [24] 2775 	movx	a,@dptr
   0912 75 F0 F1      [24] 2776 	mov	b,#0xF1
   0915 A4            [48] 2777 	mul	ab
   0916 24 72         [12] 2778 	add	a,#_g_txMsgQueue
   0918 FE            [12] 2779 	mov	r6,a
   0919 74 F3         [12] 2780 	mov	a,#(_g_txMsgQueue >> 8)
   091B 35 F0         [12] 2781 	addc	a,b
   091D FF            [12] 2782 	mov	r7,a
   091E 90 DF 04      [24] 2783 	mov	dptr,#_PKTCTRL0
   0921 E0            [24] 2784 	movx	a,@dptr
   0922 54 01         [12] 2785 	anl	a,#0x01
   0924 FD            [12] 2786 	mov	r5,a
   0925 B4 01 00      [24] 2787 	cjne	a,#0x01,00175$
   0928                    2788 00175$:
   0928 E4            [12] 2789 	clr	a
   0929 33            [12] 2790 	rlc	a
   092A 2E            [12] 2791 	add	a,r6
   092B FD            [12] 2792 	mov	r5,a
   092C E4            [12] 2793 	clr	a
   092D 3F            [12] 2794 	addc	a,r7
   092E FC            [12] 2795 	mov	r4,a
   092F 8E 82         [24] 2796 	mov	dpl,r6
   0931 8F 83         [24] 2797 	mov	dph,r7
   0933 E0            [24] 2798 	movx	a,@dptr
   0934 90 FD F2      [24] 2799 	mov	dptr,#_transmit_PARM_2
   0937 F0            [24] 2800 	movx	@dptr,a
   0938 E4            [12] 2801 	clr	a
   0939 A3            [24] 2802 	inc	dptr
   093A F0            [24] 2803 	movx	@dptr,a
   093B 90 FD F4      [24] 2804 	mov	dptr,#_transmit_PARM_3
   093E E4            [12] 2805 	clr	a
   093F F0            [24] 2806 	movx	@dptr,a
   0940 E4            [12] 2807 	clr	a
   0941 A3            [24] 2808 	inc	dptr
   0942 F0            [24] 2809 	movx	@dptr,a
   0943 90 FD F6      [24] 2810 	mov	dptr,#_transmit_PARM_4
   0946 E4            [12] 2811 	clr	a
   0947 F0            [24] 2812 	movx	@dptr,a
   0948 E4            [12] 2813 	clr	a
   0949 A3            [24] 2814 	inc	dptr
   094A F0            [24] 2815 	movx	@dptr,a
   094B 8D 82         [24] 2816 	mov	dpl,r5
   094D 8C 83         [24] 2817 	mov	dph,r4
   094F 12 24 8D      [24] 2818 	lcall	_transmit
                           2819 ;	appFHSSNIC.c:514: g_txMsgQueue[macdata.txMsgIdxDone][0] = 0;
   0952 90 FD EF      [24] 2820 	mov	dptr,#(_macdata + 0x0012)
   0955 E0            [24] 2821 	movx	a,@dptr
   0956 75 F0 F1      [24] 2822 	mov	b,#0xF1
   0959 A4            [48] 2823 	mul	ab
   095A 24 72         [12] 2824 	add	a,#_g_txMsgQueue
   095C F5 82         [12] 2825 	mov	dpl,a
   095E 74 F3         [12] 2826 	mov	a,#(_g_txMsgQueue >> 8)
   0960 35 F0         [12] 2827 	addc	a,b
   0962 F5 83         [12] 2828 	mov	dph,a
   0964 E4            [12] 2829 	clr	a
   0965 F0            [24] 2830 	movx	@dptr,a
                           2831 ;	appFHSSNIC.c:516: if (++macdata.txMsgIdxDone >= MAX_TX_MSGS)
   0966 90 FD EF      [24] 2832 	mov	dptr,#(_macdata + 0x0012)
   0969 E0            [24] 2833 	movx	a,@dptr
   096A FF            [12] 2834 	mov	r7,a
   096B 0F            [12] 2835 	inc	r7
   096C 90 FD EF      [24] 2836 	mov	dptr,#(_macdata + 0x0012)
   096F EF            [12] 2837 	mov	a,r7
   0970 F0            [24] 2838 	movx	@dptr,a
   0971 BF 02 00      [24] 2839 	cjne	r7,#0x02,00176$
   0974                    2840 00176$:
   0974 40 05         [24] 2841 	jc	00118$
                           2842 ;	appFHSSNIC.c:518: macdata.txMsgIdxDone = 0;
   0976 90 FD EF      [24] 2843 	mov	dptr,#(_macdata + 0x0012)
   0979 E4            [12] 2844 	clr	a
   097A F0            [24] 2845 	movx	@dptr,a
   097B                    2846 00118$:
                           2847 ;	appFHSSNIC.c:520: debug("FHSSxmit done");
   097B 90 37 37      [24] 2848 	mov	dptr,#__str_6
   097E 12 21 F8      [24] 2849 	lcall	_debug
                           2850 ;	appFHSSNIC.c:523: }
   0981                    2851 00123$:
   0981 D0 D0         [24] 2852 	pop	psw
   0983 D0 00         [24] 2853 	pop	(0+0)
   0985 D0 01         [24] 2854 	pop	(0+1)
   0987 D0 02         [24] 2855 	pop	(0+2)
   0989 D0 03         [24] 2856 	pop	(0+3)
   098B D0 04         [24] 2857 	pop	(0+4)
   098D D0 05         [24] 2858 	pop	(0+5)
   098F D0 06         [24] 2859 	pop	(0+6)
   0991 D0 07         [24] 2860 	pop	(0+7)
   0993 D0 83         [24] 2861 	pop	dph
   0995 D0 82         [24] 2862 	pop	dpl
   0997 D0 F0         [24] 2863 	pop	b
   0999 D0 E0         [24] 2864 	pop	acc
   099B D0 21         [24] 2865 	pop	bits
   099D 32            [24] 2866 	reti
                           2867 ;------------------------------------------------------------
                           2868 ;Allocation info for local variables in function 't3IntHandler'
                           2869 ;------------------------------------------------------------
                           2870 ;	appFHSSNIC.c:526: void t3IntHandler(void) __interrupt T3_VECTOR
                           2871 ;	-----------------------------------------
                           2872 ;	 function t3IntHandler
                           2873 ;	-----------------------------------------
   099E                    2874 _t3IntHandler:
                           2875 ;	appFHSSNIC.c:530: }
   099E 32            [24] 2876 	reti
                           2877 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           2878 ;	eliminated unneeded push/pop psw
                           2879 ;	eliminated unneeded push/pop dpl
                           2880 ;	eliminated unneeded push/pop dph
                           2881 ;	eliminated unneeded push/pop b
                           2882 ;	eliminated unneeded push/pop acc
                           2883 ;------------------------------------------------------------
                           2884 ;Allocation info for local variables in function 'init_FHSS'
                           2885 ;------------------------------------------------------------
                           2886 ;	appFHSSNIC.c:532: void init_FHSS(void)
                           2887 ;	-----------------------------------------
                           2888 ;	 function init_FHSS
                           2889 ;	-----------------------------------------
   099F                    2890 _init_FHSS:
                           2891 ;	appFHSSNIC.c:534: macdata.mac_state = 0;
   099F 90 FD DD      [24] 2892 	mov	dptr,#_macdata
                           2893 ;	appFHSSNIC.c:535: macdata.txMsgIdx = 0;
                           2894 ;	appFHSSNIC.c:536: macdata.txMsgIdxDone = 0;
                           2895 ;	appFHSSNIC.c:537: macdata.curChanIdx = 0;
   09A2 E4            [12] 2896 	clr	a
   09A3 F0            [24] 2897 	movx	@dptr,a
   09A4 90 FD EE      [24] 2898 	mov	dptr,#(_macdata + 0x0011)
   09A7 F0            [24] 2899 	movx	@dptr,a
   09A8 90 FD EF      [24] 2900 	mov	dptr,#(_macdata + 0x0012)
   09AB F0            [24] 2901 	movx	@dptr,a
   09AC 90 FD E6      [24] 2902 	mov	dptr,#(_macdata + 0x0009)
   09AF F0            [24] 2903 	movx	@dptr,a
   09B0 E4            [12] 2904 	clr	a
   09B1 A3            [24] 2905 	inc	dptr
   09B2 F0            [24] 2906 	movx	@dptr,a
                           2907 ;	appFHSSNIC.c:538: macdata.NumChannels = DEFAULT_NUM_CHANS;
   09B3 90 FD E2      [24] 2908 	mov	dptr,#(_macdata + 0x0005)
   09B6 74 53         [12] 2909 	mov	a,#0x53
   09B8 F0            [24] 2910 	movx	@dptr,a
   09B9 E4            [12] 2911 	clr	a
   09BA A3            [24] 2912 	inc	dptr
   09BB F0            [24] 2913 	movx	@dptr,a
                           2914 ;	appFHSSNIC.c:539: macdata.NumChannelHops = DEFAULT_NUM_CHANHOPS;
   09BC 90 FD E4      [24] 2915 	mov	dptr,#(_macdata + 0x0007)
   09BF 74 53         [12] 2916 	mov	a,#0x53
   09C1 F0            [24] 2917 	movx	@dptr,a
   09C2 E4            [12] 2918 	clr	a
   09C3 A3            [24] 2919 	inc	dptr
   09C4 F0            [24] 2920 	movx	@dptr,a
                           2921 ;	appFHSSNIC.c:540: macdata.tLastHop = 0;
   09C5 90 FD EA      [24] 2922 	mov	dptr,#(_macdata + 0x000d)
   09C8 E4            [12] 2923 	clr	a
   09C9 F0            [24] 2924 	movx	@dptr,a
   09CA E4            [12] 2925 	clr	a
   09CB A3            [24] 2926 	inc	dptr
   09CC F0            [24] 2927 	movx	@dptr,a
                           2928 ;	appFHSSNIC.c:541: macdata.tLastStateChange = 0;
   09CD 90 FD E8      [24] 2929 	mov	dptr,#(_macdata + 0x000b)
   09D0 E4            [12] 2930 	clr	a
   09D1 F0            [24] 2931 	movx	@dptr,a
   09D2 E4            [12] 2932 	clr	a
   09D3 A3            [24] 2933 	inc	dptr
   09D4 F0            [24] 2934 	movx	@dptr,a
                           2935 ;	appFHSSNIC.c:542: macdata.MAC_threshold = 6;
   09D5 90 FD DE      [24] 2936 	mov	dptr,#(_macdata + 0x0001)
   09D8 74 06         [12] 2937 	mov	a,#0x06
   09DA F0            [24] 2938 	movx	@dptr,a
   09DB E4            [12] 2939 	clr	a
   09DC A3            [24] 2940 	inc	dptr
   09DD F0            [24] 2941 	movx	@dptr,a
                           2942 ;	appFHSSNIC.c:543: macdata.MAC_timer = 0;
   09DE 90 FD E0      [24] 2943 	mov	dptr,#(_macdata + 0x0003)
   09E1 E4            [12] 2944 	clr	a
   09E2 F0            [24] 2945 	movx	@dptr,a
   09E3 E4            [12] 2946 	clr	a
   09E4 A3            [24] 2947 	inc	dptr
   09E5 F0            [24] 2948 	movx	@dptr,a
                           2949 ;	appFHSSNIC.c:544: macdata.desperatelySeeking = 0;
   09E6 90 FD EC      [24] 2950 	mov	dptr,#(_macdata + 0x000f)
   09E9 E4            [12] 2951 	clr	a
   09EA F0            [24] 2952 	movx	@dptr,a
   09EB E4            [12] 2953 	clr	a
   09EC A3            [24] 2954 	inc	dptr
   09ED F0            [24] 2955 	movx	@dptr,a
                           2956 ;	appFHSSNIC.c:545: macdata.synched_chans = 0;
   09EE 90 FD F0      [24] 2957 	mov	dptr,#(_macdata + 0x0013)
   09F1 E4            [12] 2958 	clr	a
   09F2 F0            [24] 2959 	movx	@dptr,a
   09F3 E4            [12] 2960 	clr	a
   09F4 A3            [24] 2961 	inc	dptr
   09F5 F0            [24] 2962 	movx	@dptr,a
                           2963 ;	appFHSSNIC.c:547: MAC_initChannels();
   09F6 12 01 43      [24] 2964 	lcall	_MAC_initChannels
                           2965 ;	appFHSSNIC.c:549: macdata.mac_state = MAC_STATE_NONHOPPING;   // this is basic NIC functionality
   09F9 90 FD DD      [24] 2966 	mov	dptr,#_macdata
   09FC E4            [12] 2967 	clr	a
   09FD F0            [24] 2968 	movx	@dptr,a
                           2969 ;	appFHSSNIC.c:559: T2PR = 0xdc;        
   09FE 75 9D DC      [24] 2970 	mov	_T2PR,#0xDC
                           2971 ;	appFHSSNIC.c:560: T2CTL |= T2CTL_TIP_64;  // 64, 128, 256, 1024
   0A01 85 9E 9E      [24] 2972 	mov	_T2CTL,_T2CTL
                           2973 ;	appFHSSNIC.c:594: T2CTL |= T2CTL_TIG;
   0A04 43 9E 04      [24] 2974 	orl	_T2CTL,#0x04
                           2975 ;	appFHSSNIC.c:600: T3CTL |= T3CTL_START;
   0A07 43 CB 10      [24] 2976 	orl	_T3CTL,#0x10
   0A0A 22            [24] 2977 	ret
                           2978 ;------------------------------------------------------------
                           2979 ;Allocation info for local variables in function 'init_MAC'
                           2980 ;------------------------------------------------------------
                           2981 ;	appFHSSNIC.c:604: void init_MAC(void)
                           2982 ;	-----------------------------------------
                           2983 ;	 function init_MAC
                           2984 ;	-----------------------------------------
   0A0B                    2985 _init_MAC:
                           2986 ;	appFHSSNIC.c:606: init_FHSS();
   0A0B 02 09 9F      [24] 2987 	ljmp	_init_FHSS
                           2988 ;------------------------------------------------------------
                           2989 ;Allocation info for local variables in function 'appMainInit'
                           2990 ;------------------------------------------------------------
                           2991 ;	appFHSSNIC.c:617: void appMainInit(void)
                           2992 ;	-----------------------------------------
                           2993 ;	 function appMainInit
                           2994 ;	-----------------------------------------
   0A0E                    2995 _appMainInit:
                           2996 ;	appFHSSNIC.c:620: registerCb_ep5( appHandleEP5 );
   0A0E 90 0E 34      [24] 2997 	mov	dptr,#_appHandleEP5
   0A11 12 1C C8      [24] 2998 	lcall	_registerCb_ep5
                           2999 ;	appFHSSNIC.c:622: clock = 0;
   0A14 90 FE 03      [24] 3000 	mov	dptr,#_clock
   0A17 E4            [12] 3001 	clr	a
   0A18 F0            [24] 3002 	movx	@dptr,a
   0A19 E4            [12] 3003 	clr	a
   0A1A A3            [24] 3004 	inc	dptr
   0A1B F0            [24] 3005 	movx	@dptr,a
   0A1C E4            [12] 3006 	clr	a
   0A1D A3            [24] 3007 	inc	dptr
   0A1E F0            [24] 3008 	movx	@dptr,a
   0A1F E4            [12] 3009 	clr	a
   0A20 A3            [24] 3010 	inc	dptr
   0A21 F0            [24] 3011 	movx	@dptr,a
                           3012 ;	appFHSSNIC.c:624: init_MAC();
   0A22 12 0A 0B      [24] 3013 	lcall	_init_MAC
                           3014 ;	appFHSSNIC.c:626: processbuffer = 0;
   0A25 90 F5 83      [24] 3015 	mov	dptr,#_processbuffer
   0A28 E4            [12] 3016 	clr	a
   0A29 F0            [24] 3017 	movx	@dptr,a
                           3018 ;	appFHSSNIC.c:627: chan_table = rfrxbuf[0];
   0A2A 90 F5 84      [24] 3019 	mov	dptr,#_chan_table
   0A2D 74 CE         [12] 3020 	mov	a,#_rfrxbuf
   0A2F F0            [24] 3021 	movx	@dptr,a
   0A30 74 F9         [12] 3022 	mov	a,#(_rfrxbuf >> 8)
   0A32 A3            [24] 3023 	inc	dptr
   0A33 F0            [24] 3024 	movx	@dptr,a
   0A34 22            [24] 3025 	ret
                           3026 ;------------------------------------------------------------
                           3027 ;Allocation info for local variables in function 'appMainLoop'
                           3028 ;------------------------------------------------------------
                           3029 ;	appFHSSNIC.c:633: void appMainLoop(void)
                           3030 ;	-----------------------------------------
                           3031 ;	 function appMainLoop
                           3032 ;	-----------------------------------------
   0A35                    3033 _appMainLoop:
                           3034 ;	appFHSSNIC.c:636: switch  (macdata.mac_state)
   0A35 90 FD DD      [24] 3035 	mov	dptr,#_macdata
   0A38 E0            [24] 3036 	movx	a,@dptr
   0A39 FF            [12] 3037 	mov	r7,a
   0A3A BF 00 03      [24] 3038 	cjne	r7,#0x00,00271$
   0A3D 02 0D 69      [24] 3039 	ljmp	00154$
   0A40                    3040 00271$:
   0A40 BF 01 03      [24] 3041 	cjne	r7,#0x01,00272$
   0A43 02 0C 3A      [24] 3042 	ljmp	00139$
   0A46                    3043 00272$:
   0A46 BF 02 03      [24] 3044 	cjne	r7,#0x02,00273$
   0A49 02 0B 38      [24] 3045 	ljmp	00129$
   0A4C                    3046 00273$:
   0A4C BF 03 03      [24] 3047 	cjne	r7,#0x03,00274$
   0A4F 02 0D 69      [24] 3048 	ljmp	00154$
   0A52                    3049 00274$:
   0A52 BF 04 03      [24] 3050 	cjne	r7,#0x04,00275$
   0A55 02 0D 69      [24] 3051 	ljmp	00154$
   0A58                    3052 00275$:
   0A58 BF 05 03      [24] 3053 	cjne	r7,#0x05,00276$
   0A5B 02 0D 4A      [24] 3054 	ljmp	00149$
   0A5E                    3055 00276$:
   0A5E BF 06 01      [24] 3056 	cjne	r7,#0x06,00277$
   0A61 22            [24] 3057 	ret
   0A62                    3058 00277$:
   0A62 BF 40 02      [24] 3059 	cjne	r7,#0x40,00278$
   0A65 80 06         [24] 3060 	sjmp	00106$
   0A67                    3061 00278$:
   0A67 BF 41 02      [24] 3062 	cjne	r7,#0x41,00279$
   0A6A 80 41         [24] 3063 	sjmp	00109$
   0A6C                    3064 00279$:
   0A6C 22            [24] 3065 	ret
                           3066 ;	appFHSSNIC.c:643: RFOFF;
   0A6D                    3067 00106$:
   0A6D 75 E1 04      [24] 3068 	mov	_RFST,#0x04
   0A70                    3069 00103$:
   0A70 90 DF 3B      [24] 3070 	mov	dptr,#_MARCSTATE
   0A73 E0            [24] 3071 	movx	a,@dptr
   0A74 FF            [12] 3072 	mov	r7,a
   0A75 BF 01 F8      [24] 3073 	cjne	r7,#0x01,00103$
                           3074 ;	appFHSSNIC.c:644: PKTCTRL1 =  0xE5;       // highest PQT, address check, append_status
   0A78 90 DF 03      [24] 3075 	mov	dptr,#_PKTCTRL1
   0A7B 74 E5         [12] 3076 	mov	a,#0xE5
   0A7D F0            [24] 3077 	movx	@dptr,a
                           3078 ;	appFHSSNIC.c:645: PKTCTRL0 =  0x04;       // crc enabled      ( we really don't want any packets coming our way :)
   0A7E 90 DF 04      [24] 3079 	mov	dptr,#_PKTCTRL0
   0A81 74 04         [12] 3080 	mov	a,#0x04
   0A83 F0            [24] 3081 	movx	@dptr,a
                           3082 ;	appFHSSNIC.c:646: FSCTRL1 =   0x12;       // freq if
   0A84 90 DF 07      [24] 3083 	mov	dptr,#_FSCTRL1
   0A87 74 12         [12] 3084 	mov	a,#0x12
   0A89 F0            [24] 3085 	movx	@dptr,a
                           3086 ;	appFHSSNIC.c:647: FSCTRL0 =   0x00;
   0A8A 90 DF 08      [24] 3087 	mov	dptr,#_FSCTRL0
   0A8D E4            [12] 3088 	clr	a
   0A8E F0            [24] 3089 	movx	@dptr,a
                           3090 ;	appFHSSNIC.c:648: MCSM0 =     0x10;       // autocal/no auto-cal....  hmmm...
   0A8F 90 DF 14      [24] 3091 	mov	dptr,#_MCSM0
   0A92 74 10         [12] 3092 	mov	a,#0x10
   0A94 F0            [24] 3093 	movx	@dptr,a
                           3094 ;	appFHSSNIC.c:649: AGCCTRL2 |= AGCCTRL2_MAX_DVGA_GAIN;     // disable 3 highest gain settings
   0A95 90 DF 17      [24] 3095 	mov	dptr,#_AGCCTRL2
   0A98 E0            [24] 3096 	movx	a,@dptr
   0A99 FF            [12] 3097 	mov	r7,a
   0A9A 44 C0         [12] 3098 	orl	a,#0xC0
   0A9C F0            [24] 3099 	movx	@dptr,a
                           3100 ;	appFHSSNIC.c:650: macdata.mac_state = MAC_STATE_SPECAN;
   0A9D 90 FD DD      [24] 3101 	mov	dptr,#_macdata
   0AA0 74 41         [12] 3102 	mov	a,#0x41
   0AA2 F0            [24] 3103 	movx	@dptr,a
                           3104 ;	appFHSSNIC.c:652: chan_table = rfrxbuf[0];
   0AA3 90 F5 84      [24] 3105 	mov	dptr,#_chan_table
   0AA6 74 CE         [12] 3106 	mov	a,#_rfrxbuf
   0AA8 F0            [24] 3107 	movx	@dptr,a
   0AA9 74 F9         [12] 3108 	mov	a,#(_rfrxbuf >> 8)
   0AAB A3            [24] 3109 	inc	dptr
   0AAC F0            [24] 3110 	movx	@dptr,a
                           3111 ;	appFHSSNIC.c:654: case MAC_STATE_SPECAN:
   0AAD                    3112 00109$:
                           3113 ;	appFHSSNIC.c:655: for (processbuffer = 0; processbuffer < macdata.synched_chans; processbuffer++)
   0AAD 90 F5 83      [24] 3114 	mov	dptr,#_processbuffer
   0AB0 E4            [12] 3115 	clr	a
   0AB1 F0            [24] 3116 	movx	@dptr,a
   0AB2                    3117 00166$:
   0AB2 90 FD F0      [24] 3118 	mov	dptr,#(_macdata + 0x0013)
   0AB5 E0            [24] 3119 	movx	a,@dptr
   0AB6 FE            [12] 3120 	mov	r6,a
   0AB7 A3            [24] 3121 	inc	dptr
   0AB8 E0            [24] 3122 	movx	a,@dptr
   0AB9 FF            [12] 3123 	mov	r7,a
   0ABA 90 F5 83      [24] 3124 	mov	dptr,#_processbuffer
   0ABD E0            [24] 3125 	movx	a,@dptr
   0ABE FD            [12] 3126 	mov	r5,a
   0ABF FB            [12] 3127 	mov	r3,a
   0AC0 7C 00         [12] 3128 	mov	r4,#0x00
   0AC2 C3            [12] 3129 	clr	c
   0AC3 EB            [12] 3130 	mov	a,r3
   0AC4 9E            [12] 3131 	subb	a,r6
   0AC5 EC            [12] 3132 	mov	a,r4
   0AC6 9F            [12] 3133 	subb	a,r7
   0AC7 50 45         [24] 3134 	jnc	00126$
                           3135 ;	appFHSSNIC.c:658: CHANNR = processbuffer;        // may not be the fastest, but otherwise we have to store FSCAL data for each channel
   0AC9 90 DF 06      [24] 3136 	mov	dptr,#_CHANNR
   0ACC ED            [12] 3137 	mov	a,r5
   0ACD F0            [24] 3138 	movx	@dptr,a
                           3139 ;	appFHSSNIC.c:659: RFOFF;
   0ACE 75 E1 04      [24] 3140 	mov	_RFST,#0x04
   0AD1                    3141 00110$:
   0AD1 90 DF 3B      [24] 3142 	mov	dptr,#_MARCSTATE
   0AD4 E0            [24] 3143 	movx	a,@dptr
   0AD5 FF            [12] 3144 	mov	r7,a
   0AD6 BF 01 F8      [24] 3145 	cjne	r7,#0x01,00110$
                           3146 ;	appFHSSNIC.c:660: RFRX;
   0AD9 75 E1 02      [24] 3147 	mov	_RFST,#0x02
   0ADC                    3148 00116$:
   0ADC 90 DF 3B      [24] 3149 	mov	dptr,#_MARCSTATE
   0ADF E0            [24] 3150 	movx	a,@dptr
   0AE0 FF            [12] 3151 	mov	r7,a
   0AE1 BF 0D F8      [24] 3152 	cjne	r7,#0x0D,00116$
                           3153 ;	appFHSSNIC.c:661: sleepMillis(2);
   0AE4 90 00 02      [24] 3154 	mov	dptr,#0x0002
   0AE7 12 2D D3      [24] 3155 	lcall	_sleepMillis
                           3156 ;	appFHSSNIC.c:664: chan_table[processbuffer] = (RSSI);
   0AEA 90 F5 84      [24] 3157 	mov	dptr,#_chan_table
   0AED E0            [24] 3158 	movx	a,@dptr
   0AEE FE            [12] 3159 	mov	r6,a
   0AEF A3            [24] 3160 	inc	dptr
   0AF0 E0            [24] 3161 	movx	a,@dptr
   0AF1 FF            [12] 3162 	mov	r7,a
   0AF2 90 F5 83      [24] 3163 	mov	dptr,#_processbuffer
   0AF5 E0            [24] 3164 	movx	a,@dptr
   0AF6 2E            [12] 3165 	add	a,r6
   0AF7 FE            [12] 3166 	mov	r6,a
   0AF8 E4            [12] 3167 	clr	a
   0AF9 3F            [12] 3168 	addc	a,r7
   0AFA FF            [12] 3169 	mov	r7,a
   0AFB 90 DF 3A      [24] 3170 	mov	dptr,#_RSSI
   0AFE E0            [24] 3171 	movx	a,@dptr
   0AFF FD            [12] 3172 	mov	r5,a
   0B00 8E 82         [24] 3173 	mov	dpl,r6
   0B02 8F 83         [24] 3174 	mov	dph,r7
   0B04 F0            [24] 3175 	movx	@dptr,a
                           3176 ;	appFHSSNIC.c:655: for (processbuffer = 0; processbuffer < macdata.synched_chans; processbuffer++)
   0B05 90 F5 83      [24] 3177 	mov	dptr,#_processbuffer
   0B08 E0            [24] 3178 	movx	a,@dptr
   0B09 24 01         [12] 3179 	add	a,#0x01
   0B0B F0            [24] 3180 	movx	@dptr,a
                           3181 ;	appFHSSNIC.c:668: RFOFF;
   0B0C 80 A4         [24] 3182 	sjmp	00166$
   0B0E                    3183 00126$:
   0B0E 75 E1 04      [24] 3184 	mov	_RFST,#0x04
   0B11                    3185 00123$:
   0B11 90 DF 3B      [24] 3186 	mov	dptr,#_MARCSTATE
   0B14 E0            [24] 3187 	movx	a,@dptr
   0B15 FF            [12] 3188 	mov	r7,a
   0B16 BF 01 F8      [24] 3189 	cjne	r7,#0x01,00123$
                           3190 ;	appFHSSNIC.c:669: txdata( APP_SPECAN, SPECAN_QUEUE, (u8)macdata.synched_chans, (__xdata u8*)&chan_table[0] );
   0B19 90 FD F0      [24] 3191 	mov	dptr,#(_macdata + 0x0013)
   0B1C E0            [24] 3192 	movx	a,@dptr
   0B1D FE            [12] 3193 	mov	r6,a
   0B1E A3            [24] 3194 	inc	dptr
   0B1F E0            [24] 3195 	movx	a,@dptr
   0B20 8E 38         [24] 3196 	mov	_txdata_PARM_3,r6
   0B22 75 39 00      [24] 3197 	mov	(_txdata_PARM_3 + 1),#0x00
   0B25 90 F5 84      [24] 3198 	mov	dptr,#_chan_table
   0B28 E0            [24] 3199 	movx	a,@dptr
   0B29 F5 3A         [12] 3200 	mov	_txdata_PARM_4,a
   0B2B A3            [24] 3201 	inc	dptr
   0B2C E0            [24] 3202 	movx	a,@dptr
   0B2D F5 3B         [12] 3203 	mov	(_txdata_PARM_4 + 1),a
   0B2F 75 37 01      [24] 3204 	mov	_txdata_PARM_2,#0x01
   0B32 75 82 43      [24] 3205 	mov	dpl,#0x43
                           3206 ;	appFHSSNIC.c:670: break;
   0B35 02 1C 70      [24] 3207 	ljmp	_txdata
                           3208 ;	appFHSSNIC.c:672: case MAC_STATE_SYNCHING:
   0B38                    3209 00129$:
                           3210 ;	appFHSSNIC.c:675: if (rfif)
   0B38 E5 0F         [12] 3211 	mov	a,_rfif
   0B3A 70 03         [24] 3212 	jnz	00289$
   0B3C 02 0C 28      [24] 3213 	ljmp	00138$
   0B3F                    3214 00289$:
                           3215 ;	appFHSSNIC.c:677: lastCode[0] = 0xd;
   0B3F 90 FE 01      [24] 3216 	mov	dptr,#_lastCode
   0B42 74 0D         [12] 3217 	mov	a,#0x0D
   0B44 F0            [24] 3218 	movx	@dptr,a
                           3219 ;	appFHSSNIC.c:678: IEN2 &= ~IEN2_RFIE;   // FIXME: is this ok?
   0B45 AF 9A         [24] 3220 	mov	r7,_IEN2
   0B47 74 FE         [12] 3221 	mov	a,#0xFE
   0B49 5F            [12] 3222 	anl	a,r7
   0B4A F5 9A         [12] 3223 	mov	_IEN2,a
                           3224 ;	appFHSSNIC.c:680: if(rfif & RFIF_IRQ_DONE)
   0B4C E5 0F         [12] 3225 	mov	a,_rfif
   0B4E 20 E4 03      [24] 3226 	jb	acc.4,00290$
   0B51 02 0C 28      [24] 3227 	ljmp	00138$
   0B54                    3228 00290$:
                           3229 ;	appFHSSNIC.c:684: macdata.mac_state = MAC_STATE_SYNCHED;
   0B54 90 FD DD      [24] 3230 	mov	dptr,#_macdata
   0B57 74 03         [12] 3231 	mov	a,#0x03
   0B59 F0            [24] 3232 	movx	@dptr,a
                           3233 ;	appFHSSNIC.c:685: begin_hopping((u8)(rf_tLastRecv & 0xff));       // synching happens within
   0B5A 90 FD DB      [24] 3234 	mov	dptr,#_rf_tLastRecv
   0B5D E0            [24] 3235 	movx	a,@dptr
   0B5E FE            [12] 3236 	mov	r6,a
   0B5F A3            [24] 3237 	inc	dptr
   0B60 E0            [24] 3238 	movx	a,@dptr
   0B61 8E 82         [24] 3239 	mov	dpl,r6
   0B63 12 01 95      [24] 3240 	lcall	_begin_hopping
                           3241 ;	appFHSSNIC.c:687: debug("network packet(sync)");
   0B66 90 37 45      [24] 3242 	mov	dptr,#__str_7
   0B69 12 21 F8      [24] 3243 	lcall	_debug
                           3244 ;	appFHSSNIC.c:688: debughex16((u16)rf_tLastRecv);
   0B6C 90 FD DB      [24] 3245 	mov	dptr,#_rf_tLastRecv
   0B6F E0            [24] 3246 	movx	a,@dptr
   0B70 FE            [12] 3247 	mov	r6,a
   0B71 A3            [24] 3248 	inc	dptr
   0B72 E0            [24] 3249 	movx	a,@dptr
   0B73 FF            [12] 3250 	mov	r7,a
   0B74 8E 82         [24] 3251 	mov	dpl,r6
   0B76 8F 83         [24] 3252 	mov	dph,r7
   0B78 12 22 55      [24] 3253 	lcall	_debughex16
                           3254 ;	appFHSSNIC.c:689: debug((__code u8*)&rfrxbuf[rfRxCurrentBuffer][0]);
   0B7B 90 F9 CD      [24] 3255 	mov	dptr,#_rfRxCurrentBuffer
   0B7E E0            [24] 3256 	movx	a,@dptr
   0B7F 25 E0         [12] 3257 	add	a,acc
   0B81 FE            [12] 3258 	mov	r6,a
   0B82 E4            [12] 3259 	clr	a
   0B83 24 CE         [12] 3260 	add	a,#_rfrxbuf
   0B85 FF            [12] 3261 	mov	r7,a
   0B86 EE            [12] 3262 	mov	a,r6
   0B87 34 F9         [12] 3263 	addc	a,#(_rfrxbuf >> 8)
   0B89 FE            [12] 3264 	mov	r6,a
   0B8A 8F 82         [24] 3265 	mov	dpl,r7
   0B8C 8E 83         [24] 3266 	mov	dph,r6
   0B8E 12 21 F8      [24] 3267 	lcall	_debug
                           3268 ;	appFHSSNIC.c:692: processbuffer = !rfRxCurrentBuffer;
   0B91 90 F9 CD      [24] 3269 	mov	dptr,#_rfRxCurrentBuffer
   0B94 E0            [24] 3270 	movx	a,@dptr
   0B95 FF            [12] 3271 	mov	r7,a
   0B96 B4 01 00      [24] 3272 	cjne	a,#0x01,00291$
   0B99                    3273 00291$:
   0B99 E4            [12] 3274 	clr	a
   0B9A 33            [12] 3275 	rlc	a
   0B9B FF            [12] 3276 	mov	r7,a
   0B9C 90 F5 83      [24] 3277 	mov	dptr,#_processbuffer
   0B9F F0            [24] 3278 	movx	@dptr,a
                           3279 ;	appFHSSNIC.c:693: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
   0BA0 EF            [12] 3280 	mov	a,r7
   0BA1 24 D2         [12] 3281 	add	a,#_rfRxProcessed
   0BA3 FD            [12] 3282 	mov	r5,a
   0BA4 E4            [12] 3283 	clr	a
   0BA5 34 FD         [12] 3284 	addc	a,#(_rfRxProcessed >> 8)
   0BA7 FE            [12] 3285 	mov	r6,a
   0BA8 8D 82         [24] 3286 	mov	dpl,r5
   0BAA 8E 83         [24] 3287 	mov	dph,r6
   0BAC E0            [24] 3288 	movx	a,@dptr
   0BAD 70 72         [24] 3289 	jnz	00134$
                           3290 ;	appFHSSNIC.c:696: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
   0BAF 90 DF 04      [24] 3291 	mov	dptr,#_PKTCTRL0
   0BB2 E0            [24] 3292 	movx	a,@dptr
   0BB3 FE            [12] 3293 	mov	r6,a
   0BB4 30 E0 37      [24] 3294 	jnb	acc.0,00131$
                           3295 ;	appFHSSNIC.c:697: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
   0BB7 8F 06         [24] 3296 	mov	ar6,r7
   0BB9 EE            [12] 3297 	mov	a,r6
   0BBA 2E            [12] 3298 	add	a,r6
   0BBB FD            [12] 3299 	mov	r5,a
   0BBC E4            [12] 3300 	clr	a
   0BBD 24 CE         [12] 3301 	add	a,#_rfrxbuf
   0BBF F5 82         [12] 3302 	mov	dpl,a
   0BC1 ED            [12] 3303 	mov	a,r5
   0BC2 34 F9         [12] 3304 	addc	a,#(_rfrxbuf >> 8)
   0BC4 F5 83         [12] 3305 	mov	dph,a
   0BC6 E0            [24] 3306 	movx	a,@dptr
   0BC7 FE            [12] 3307 	mov	r6,a
   0BC8 8E 38         [24] 3308 	mov	_txdata_PARM_3,r6
   0BCA 75 39 00      [24] 3309 	mov	(_txdata_PARM_3 + 1),#0x00
   0BCD 8F 06         [24] 3310 	mov	ar6,r7
   0BCF EE            [12] 3311 	mov	a,r6
   0BD0 2E            [12] 3312 	add	a,r6
   0BD1 FD            [12] 3313 	mov	r5,a
   0BD2 E4            [12] 3314 	clr	a
   0BD3 24 CE         [12] 3315 	add	a,#_rfrxbuf
   0BD5 FE            [12] 3316 	mov	r6,a
   0BD6 ED            [12] 3317 	mov	a,r5
   0BD7 34 F9         [12] 3318 	addc	a,#(_rfrxbuf >> 8)
   0BD9 FD            [12] 3319 	mov	r5,a
   0BDA 74 01         [12] 3320 	mov	a,#0x01
   0BDC 2E            [12] 3321 	add	a,r6
   0BDD F5 3A         [12] 3322 	mov	_txdata_PARM_4,a
   0BDF E4            [12] 3323 	clr	a
   0BE0 3D            [12] 3324 	addc	a,r5
   0BE1 F5 3B         [12] 3325 	mov	(_txdata_PARM_4 + 1),a
   0BE3 75 37 01      [24] 3326 	mov	_txdata_PARM_2,#0x01
   0BE6 75 82 42      [24] 3327 	mov	dpl,#0x42
   0BE9 12 1C 70      [24] 3328 	lcall	_txdata
   0BEC 80 22         [24] 3329 	sjmp	00132$
   0BEE                    3330 00131$:
                           3331 ;	appFHSSNIC.c:699: txdata(APP_NIC, NIC_RECV, PKTLEN, (u8*)&rfrxbuf[processbuffer]);
   0BEE 90 DF 02      [24] 3332 	mov	dptr,#_PKTLEN
   0BF1 E0            [24] 3333 	movx	a,@dptr
   0BF2 FE            [12] 3334 	mov	r6,a
   0BF3 8E 38         [24] 3335 	mov	_txdata_PARM_3,r6
   0BF5 E4            [12] 3336 	clr	a
   0BF6 F5 39         [12] 3337 	mov	(_txdata_PARM_3 + 1),a
   0BF8 EF            [12] 3338 	mov	a,r7
   0BF9 2F            [12] 3339 	add	a,r7
   0BFA FE            [12] 3340 	mov	r6,a
   0BFB E4            [12] 3341 	clr	a
   0BFC 24 CE         [12] 3342 	add	a,#_rfrxbuf
   0BFE FF            [12] 3343 	mov	r7,a
   0BFF EE            [12] 3344 	mov	a,r6
   0C00 34 F9         [12] 3345 	addc	a,#(_rfrxbuf >> 8)
   0C02 FE            [12] 3346 	mov	r6,a
   0C03 8F 3A         [24] 3347 	mov	_txdata_PARM_4,r7
   0C05 8E 3B         [24] 3348 	mov	(_txdata_PARM_4 + 1),r6
   0C07 75 37 01      [24] 3349 	mov	_txdata_PARM_2,#0x01
   0C0A 75 82 42      [24] 3350 	mov	dpl,#0x42
   0C0D 12 1C 70      [24] 3351 	lcall	_txdata
   0C10                    3352 00132$:
                           3353 ;	appFHSSNIC.c:702: rfRxProcessed[processbuffer] = RX_PROCESSED;
   0C10 90 F5 83      [24] 3354 	mov	dptr,#_processbuffer
   0C13 E0            [24] 3355 	movx	a,@dptr
   0C14 FF            [12] 3356 	mov	r7,a
   0C15 24 D2         [12] 3357 	add	a,#_rfRxProcessed
   0C17 F5 82         [12] 3358 	mov	dpl,a
   0C19 E4            [12] 3359 	clr	a
   0C1A 34 FD         [12] 3360 	addc	a,#(_rfRxProcessed >> 8)
   0C1C F5 83         [12] 3361 	mov	dph,a
   0C1E 74 01         [12] 3362 	mov	a,#0x01
   0C20 F0            [24] 3363 	movx	@dptr,a
   0C21                    3364 00134$:
                           3365 ;	appFHSSNIC.c:704: rfif &= ~RFIF_IRQ_DONE;
   0C21 AF 0F         [24] 3366 	mov	r7,_rfif
   0C23 74 EF         [12] 3367 	mov	a,#0xEF
   0C25 5F            [12] 3368 	anl	a,r7
   0C26 F5 0F         [12] 3369 	mov	_rfif,a
   0C28                    3370 00138$:
                           3371 ;	appFHSSNIC.c:708: __critical { rfif = 0; }
   0C28 D2 00         [12] 3372 	setb	_appMainLoop_sloc0_1_0
   0C2A 10 AF 02      [24] 3373 	jbc	ea,00294$
   0C2D C2 00         [12] 3374 	clr	_appMainLoop_sloc0_1_0
   0C2F                    3375 00294$:
   0C2F 75 0F 00      [24] 3376 	mov	_rfif,#0x00
   0C32 A2 00         [12] 3377 	mov	c,_appMainLoop_sloc0_1_0
   0C34 92 AF         [24] 3378 	mov	ea,c
                           3379 ;	appFHSSNIC.c:709: IEN2 |= IEN2_RFIE;
   0C36 43 9A 01      [24] 3380 	orl	_IEN2,#0x01
                           3381 ;	appFHSSNIC.c:710: break;
   0C39 22            [24] 3382 	ret
                           3383 ;	appFHSSNIC.c:712: case MAC_STATE_DISCOVERY:
   0C3A                    3384 00139$:
                           3385 ;	appFHSSNIC.c:715: if (rfif)
   0C3A E5 0F         [12] 3386 	mov	a,_rfif
   0C3C 70 03         [24] 3387 	jnz	00295$
   0C3E 02 0D 38      [24] 3388 	ljmp	00148$
   0C41                    3389 00295$:
                           3390 ;	appFHSSNIC.c:717: lastCode[0] = 0xd;
   0C41 90 FE 01      [24] 3391 	mov	dptr,#_lastCode
   0C44 74 0D         [12] 3392 	mov	a,#0x0D
   0C46 F0            [24] 3393 	movx	@dptr,a
                           3394 ;	appFHSSNIC.c:718: IEN2 &= ~IEN2_RFIE;
   0C47 AF 9A         [24] 3395 	mov	r7,_IEN2
   0C49 74 FE         [12] 3396 	mov	a,#0xFE
   0C4B 5F            [12] 3397 	anl	a,r7
   0C4C F5 9A         [12] 3398 	mov	_IEN2,a
                           3399 ;	appFHSSNIC.c:720: if(rfif & RFIF_IRQ_DONE)
   0C4E E5 0F         [12] 3400 	mov	a,_rfif
   0C50 20 E4 03      [24] 3401 	jb	acc.4,00296$
   0C53 02 0D 38      [24] 3402 	ljmp	00148$
   0C56                    3403 00296$:
                           3404 ;	appFHSSNIC.c:723: processbuffer = !rfRxCurrentBuffer;
   0C56 90 F9 CD      [24] 3405 	mov	dptr,#_rfRxCurrentBuffer
   0C59 E0            [24] 3406 	movx	a,@dptr
   0C5A FF            [12] 3407 	mov	r7,a
   0C5B 90 F5 83      [24] 3408 	mov	dptr,#_processbuffer
   0C5E B4 01 00      [24] 3409 	cjne	a,#0x01,00297$
   0C61                    3410 00297$:
   0C61 E4            [12] 3411 	clr	a
   0C62 33            [12] 3412 	rlc	a
   0C63 F0            [24] 3413 	movx	@dptr,a
                           3414 ;	appFHSSNIC.c:724: debug("network packet(discovery)");
   0C64 90 37 5A      [24] 3415 	mov	dptr,#__str_8
   0C67 12 21 F8      [24] 3416 	lcall	_debug
                           3417 ;	appFHSSNIC.c:725: debughex16((u16)rfrxbuf[processbuffer]);
   0C6A 90 F5 83      [24] 3418 	mov	dptr,#_processbuffer
   0C6D E0            [24] 3419 	movx	a,@dptr
   0C6E 25 E0         [12] 3420 	add	a,acc
   0C70 FE            [12] 3421 	mov	r6,a
   0C71 E4            [12] 3422 	clr	a
   0C72 24 CE         [12] 3423 	add	a,#_rfrxbuf
   0C74 FF            [12] 3424 	mov	r7,a
   0C75 EE            [12] 3425 	mov	a,r6
   0C76 34 F9         [12] 3426 	addc	a,#(_rfrxbuf >> 8)
   0C78 FE            [12] 3427 	mov	r6,a
   0C79 8F 82         [24] 3428 	mov	dpl,r7
   0C7B 8E 83         [24] 3429 	mov	dph,r6
   0C7D 12 22 55      [24] 3430 	lcall	_debughex16
                           3431 ;	appFHSSNIC.c:726: debug((__code u8*)&rfrxbuf[processbuffer][0]);
   0C80 90 F5 83      [24] 3432 	mov	dptr,#_processbuffer
   0C83 E0            [24] 3433 	movx	a,@dptr
   0C84 25 E0         [12] 3434 	add	a,acc
   0C86 FE            [12] 3435 	mov	r6,a
   0C87 E4            [12] 3436 	clr	a
   0C88 24 CE         [12] 3437 	add	a,#_rfrxbuf
   0C8A FF            [12] 3438 	mov	r7,a
   0C8B EE            [12] 3439 	mov	a,r6
   0C8C 34 F9         [12] 3440 	addc	a,#(_rfrxbuf >> 8)
   0C8E FE            [12] 3441 	mov	r6,a
   0C8F 8F 82         [24] 3442 	mov	dpl,r7
   0C91 8E 83         [24] 3443 	mov	dph,r6
   0C93 12 21 F8      [24] 3444 	lcall	_debug
                           3445 ;	appFHSSNIC.c:729: processbuffer = !rfRxCurrentBuffer;
   0C96 90 F9 CD      [24] 3446 	mov	dptr,#_rfRxCurrentBuffer
   0C99 E0            [24] 3447 	movx	a,@dptr
   0C9A FF            [12] 3448 	mov	r7,a
   0C9B B4 01 00      [24] 3449 	cjne	a,#0x01,00298$
   0C9E                    3450 00298$:
   0C9E E4            [12] 3451 	clr	a
   0C9F 33            [12] 3452 	rlc	a
   0CA0 FF            [12] 3453 	mov	r7,a
   0CA1 90 F5 83      [24] 3454 	mov	dptr,#_processbuffer
   0CA4 F0            [24] 3455 	movx	@dptr,a
                           3456 ;	appFHSSNIC.c:730: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
   0CA5 EF            [12] 3457 	mov	a,r7
   0CA6 24 D2         [12] 3458 	add	a,#_rfRxProcessed
   0CA8 FD            [12] 3459 	mov	r5,a
   0CA9 E4            [12] 3460 	clr	a
   0CAA 34 FD         [12] 3461 	addc	a,#(_rfRxProcessed >> 8)
   0CAC FE            [12] 3462 	mov	r6,a
   0CAD 8D 82         [24] 3463 	mov	dpl,r5
   0CAF 8E 83         [24] 3464 	mov	dph,r6
   0CB1 E0            [24] 3465 	movx	a,@dptr
   0CB2 70 72         [24] 3466 	jnz	00144$
                           3467 ;	appFHSSNIC.c:733: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
   0CB4 90 DF 04      [24] 3468 	mov	dptr,#_PKTCTRL0
   0CB7 E0            [24] 3469 	movx	a,@dptr
   0CB8 FE            [12] 3470 	mov	r6,a
   0CB9 30 E0 37      [24] 3471 	jnb	acc.0,00141$
                           3472 ;	appFHSSNIC.c:734: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
   0CBC 8F 06         [24] 3473 	mov	ar6,r7
   0CBE EE            [12] 3474 	mov	a,r6
   0CBF 2E            [12] 3475 	add	a,r6
   0CC0 FD            [12] 3476 	mov	r5,a
   0CC1 E4            [12] 3477 	clr	a
   0CC2 24 CE         [12] 3478 	add	a,#_rfrxbuf
   0CC4 F5 82         [12] 3479 	mov	dpl,a
   0CC6 ED            [12] 3480 	mov	a,r5
   0CC7 34 F9         [12] 3481 	addc	a,#(_rfrxbuf >> 8)
   0CC9 F5 83         [12] 3482 	mov	dph,a
   0CCB E0            [24] 3483 	movx	a,@dptr
   0CCC FE            [12] 3484 	mov	r6,a
   0CCD 8E 38         [24] 3485 	mov	_txdata_PARM_3,r6
   0CCF 75 39 00      [24] 3486 	mov	(_txdata_PARM_3 + 1),#0x00
   0CD2 8F 06         [24] 3487 	mov	ar6,r7
   0CD4 EE            [12] 3488 	mov	a,r6
   0CD5 2E            [12] 3489 	add	a,r6
   0CD6 FD            [12] 3490 	mov	r5,a
   0CD7 E4            [12] 3491 	clr	a
   0CD8 24 CE         [12] 3492 	add	a,#_rfrxbuf
   0CDA FE            [12] 3493 	mov	r6,a
   0CDB ED            [12] 3494 	mov	a,r5
   0CDC 34 F9         [12] 3495 	addc	a,#(_rfrxbuf >> 8)
   0CDE FD            [12] 3496 	mov	r5,a
   0CDF 74 01         [12] 3497 	mov	a,#0x01
   0CE1 2E            [12] 3498 	add	a,r6
   0CE2 F5 3A         [12] 3499 	mov	_txdata_PARM_4,a
   0CE4 E4            [12] 3500 	clr	a
   0CE5 3D            [12] 3501 	addc	a,r5
   0CE6 F5 3B         [12] 3502 	mov	(_txdata_PARM_4 + 1),a
   0CE8 75 37 01      [24] 3503 	mov	_txdata_PARM_2,#0x01
   0CEB 75 82 42      [24] 3504 	mov	dpl,#0x42
   0CEE 12 1C 70      [24] 3505 	lcall	_txdata
   0CF1 80 22         [24] 3506 	sjmp	00142$
   0CF3                    3507 00141$:
                           3508 ;	appFHSSNIC.c:736: txdata(APP_NIC, NIC_RECV, PKTLEN, (u8*)&rfrxbuf[processbuffer]);
   0CF3 90 DF 02      [24] 3509 	mov	dptr,#_PKTLEN
   0CF6 E0            [24] 3510 	movx	a,@dptr
   0CF7 FE            [12] 3511 	mov	r6,a
   0CF8 8E 38         [24] 3512 	mov	_txdata_PARM_3,r6
   0CFA E4            [12] 3513 	clr	a
   0CFB F5 39         [12] 3514 	mov	(_txdata_PARM_3 + 1),a
   0CFD EF            [12] 3515 	mov	a,r7
   0CFE 2F            [12] 3516 	add	a,r7
   0CFF FE            [12] 3517 	mov	r6,a
   0D00 E4            [12] 3518 	clr	a
   0D01 24 CE         [12] 3519 	add	a,#_rfrxbuf
   0D03 FF            [12] 3520 	mov	r7,a
   0D04 EE            [12] 3521 	mov	a,r6
   0D05 34 F9         [12] 3522 	addc	a,#(_rfrxbuf >> 8)
   0D07 FE            [12] 3523 	mov	r6,a
   0D08 8F 3A         [24] 3524 	mov	_txdata_PARM_4,r7
   0D0A 8E 3B         [24] 3525 	mov	(_txdata_PARM_4 + 1),r6
   0D0C 75 37 01      [24] 3526 	mov	_txdata_PARM_2,#0x01
   0D0F 75 82 42      [24] 3527 	mov	dpl,#0x42
   0D12 12 1C 70      [24] 3528 	lcall	_txdata
   0D15                    3529 00142$:
                           3530 ;	appFHSSNIC.c:739: rfRxProcessed[processbuffer] = RX_PROCESSED;
   0D15 90 F5 83      [24] 3531 	mov	dptr,#_processbuffer
   0D18 E0            [24] 3532 	movx	a,@dptr
   0D19 FF            [12] 3533 	mov	r7,a
   0D1A 24 D2         [12] 3534 	add	a,#_rfRxProcessed
   0D1C F5 82         [12] 3535 	mov	dpl,a
   0D1E E4            [12] 3536 	clr	a
   0D1F 34 FD         [12] 3537 	addc	a,#(_rfRxProcessed >> 8)
   0D21 F5 83         [12] 3538 	mov	dph,a
   0D23 74 01         [12] 3539 	mov	a,#0x01
   0D25 F0            [24] 3540 	movx	@dptr,a
   0D26                    3541 00144$:
                           3542 ;	appFHSSNIC.c:741: __critical { rfif &= ~RFIF_IRQ_DONE; }
   0D26 D2 00         [12] 3543 	setb	_appMainLoop_sloc0_1_0
   0D28 10 AF 02      [24] 3544 	jbc	ea,00301$
   0D2B C2 00         [12] 3545 	clr	_appMainLoop_sloc0_1_0
   0D2D                    3546 00301$:
   0D2D AF 0F         [24] 3547 	mov	r7,_rfif
   0D2F 74 EF         [12] 3548 	mov	a,#0xEF
   0D31 5F            [12] 3549 	anl	a,r7
   0D32 F5 0F         [12] 3550 	mov	_rfif,a
   0D34 A2 00         [12] 3551 	mov	c,_appMainLoop_sloc0_1_0
   0D36 92 AF         [24] 3552 	mov	ea,c
   0D38                    3553 00148$:
                           3554 ;	appFHSSNIC.c:745: __critical{ rfif = 0; }
   0D38 D2 00         [12] 3555 	setb	_appMainLoop_sloc0_1_0
   0D3A 10 AF 02      [24] 3556 	jbc	ea,00302$
   0D3D C2 00         [12] 3557 	clr	_appMainLoop_sloc0_1_0
   0D3F                    3558 00302$:
   0D3F 75 0F 00      [24] 3559 	mov	_rfif,#0x00
   0D42 A2 00         [12] 3560 	mov	c,_appMainLoop_sloc0_1_0
   0D44 92 AF         [24] 3561 	mov	ea,c
                           3562 ;	appFHSSNIC.c:746: IEN2 |= IEN2_RFIE;
   0D46 43 9A 01      [24] 3563 	orl	_IEN2,#0x01
                           3564 ;	appFHSSNIC.c:747: break;
   0D49 22            [24] 3565 	ret
                           3566 ;	appFHSSNIC.c:749: case MAC_STATE_SYNCINGMASTER:
   0D4A                    3567 00149$:
                           3568 ;	appFHSSNIC.c:751: if (macdata.synched_chans >= macdata.NumChannelHops)
   0D4A 90 FD F0      [24] 3569 	mov	dptr,#(_macdata + 0x0013)
   0D4D E0            [24] 3570 	movx	a,@dptr
   0D4E FE            [12] 3571 	mov	r6,a
   0D4F A3            [24] 3572 	inc	dptr
   0D50 E0            [24] 3573 	movx	a,@dptr
   0D51 FF            [12] 3574 	mov	r7,a
   0D52 90 FD E4      [24] 3575 	mov	dptr,#(_macdata + 0x0007)
   0D55 E0            [24] 3576 	movx	a,@dptr
   0D56 FC            [12] 3577 	mov	r4,a
   0D57 A3            [24] 3578 	inc	dptr
   0D58 E0            [24] 3579 	movx	a,@dptr
   0D59 FD            [12] 3580 	mov	r5,a
   0D5A C3            [12] 3581 	clr	c
   0D5B EE            [12] 3582 	mov	a,r6
   0D5C 9C            [12] 3583 	subb	a,r4
   0D5D EF            [12] 3584 	mov	a,r7
   0D5E 9D            [12] 3585 	subb	a,r5
   0D5F 50 01         [24] 3586 	jnc	00303$
   0D61 22            [24] 3587 	ret
   0D62                    3588 00303$:
                           3589 ;	appFHSSNIC.c:753: macdata.mac_state = MAC_STATE_SYNC_MASTER;
   0D62 90 FD DD      [24] 3590 	mov	dptr,#_macdata
   0D65 74 04         [12] 3591 	mov	a,#0x04
   0D67 F0            [24] 3592 	movx	@dptr,a
                           3593 ;	appFHSSNIC.c:755: break;
   0D68 22            [24] 3594 	ret
                           3595 ;	appFHSSNIC.c:759: case MAC_STATE_NONHOPPING:
   0D69                    3596 00154$:
                           3597 ;	appFHSSNIC.c:761: if (rfif)
   0D69 E5 0F         [12] 3598 	mov	a,_rfif
   0D6B 70 01         [24] 3599 	jnz	00304$
   0D6D 22            [24] 3600 	ret
   0D6E                    3601 00304$:
                           3602 ;	appFHSSNIC.c:764: lastCode[0] = 0xd;
   0D6E 90 FE 01      [24] 3603 	mov	dptr,#_lastCode
   0D71 74 0D         [12] 3604 	mov	a,#0x0D
   0D73 F0            [24] 3605 	movx	@dptr,a
                           3606 ;	appFHSSNIC.c:766: if(rfif & (RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT) )
   0D74 E5 0F         [12] 3607 	mov	a,_rfif
   0D76 54 30         [12] 3608 	anl	a,#0x30
   0D78 70 01         [24] 3609 	jnz	00305$
   0D7A 22            [24] 3610 	ret
   0D7B                    3611 00305$:
                           3612 ;	appFHSSNIC.c:768: processbuffer = !rfRxCurrentBuffer;
   0D7B 90 F9 CD      [24] 3613 	mov	dptr,#_rfRxCurrentBuffer
   0D7E E0            [24] 3614 	movx	a,@dptr
   0D7F FF            [12] 3615 	mov	r7,a
   0D80 B4 01 00      [24] 3616 	cjne	a,#0x01,00306$
   0D83                    3617 00306$:
   0D83 E4            [12] 3618 	clr	a
   0D84 33            [12] 3619 	rlc	a
   0D85 FF            [12] 3620 	mov	r7,a
   0D86 90 F5 83      [24] 3621 	mov	dptr,#_processbuffer
   0D89 F0            [24] 3622 	movx	@dptr,a
                           3623 ;	appFHSSNIC.c:769: if(rfRxProcessed[processbuffer] == RX_UNPROCESSED)
   0D8A EF            [12] 3624 	mov	a,r7
   0D8B 24 D2         [12] 3625 	add	a,#_rfRxProcessed
   0D8D FD            [12] 3626 	mov	r5,a
   0D8E E4            [12] 3627 	clr	a
   0D8F 34 FD         [12] 3628 	addc	a,#(_rfRxProcessed >> 8)
   0D91 FE            [12] 3629 	mov	r6,a
   0D92 8D 82         [24] 3630 	mov	dpl,r5
   0D94 8E 83         [24] 3631 	mov	dph,r6
   0D96 E0            [24] 3632 	movx	a,@dptr
   0D97 60 03         [24] 3633 	jz	00307$
   0D99 02 0E 21      [24] 3634 	ljmp	00159$
   0D9C                    3635 00307$:
                           3636 ;	appFHSSNIC.c:772: if (PKTCTRL0&1)     // variable length packets have a leading "length" byte, let's skip it
   0D9C 90 DF 04      [24] 3637 	mov	dptr,#_PKTCTRL0
   0D9F E0            [24] 3638 	movx	a,@dptr
   0DA0 FE            [12] 3639 	mov	r6,a
   0DA1 30 E0 37      [24] 3640 	jnb	acc.0,00156$
                           3641 ;	appFHSSNIC.c:774: txdata(APP_NIC, NIC_RECV, (u8)rfrxbuf[processbuffer][0], (u8*)&rfrxbuf[processbuffer][1]);
   0DA4 8F 06         [24] 3642 	mov	ar6,r7
   0DA6 EE            [12] 3643 	mov	a,r6
   0DA7 2E            [12] 3644 	add	a,r6
   0DA8 FD            [12] 3645 	mov	r5,a
   0DA9 E4            [12] 3646 	clr	a
   0DAA 24 CE         [12] 3647 	add	a,#_rfrxbuf
   0DAC F5 82         [12] 3648 	mov	dpl,a
   0DAE ED            [12] 3649 	mov	a,r5
   0DAF 34 F9         [12] 3650 	addc	a,#(_rfrxbuf >> 8)
   0DB1 F5 83         [12] 3651 	mov	dph,a
   0DB3 E0            [24] 3652 	movx	a,@dptr
   0DB4 FE            [12] 3653 	mov	r6,a
   0DB5 8E 38         [24] 3654 	mov	_txdata_PARM_3,r6
   0DB7 75 39 00      [24] 3655 	mov	(_txdata_PARM_3 + 1),#0x00
   0DBA 8F 06         [24] 3656 	mov	ar6,r7
   0DBC EE            [12] 3657 	mov	a,r6
   0DBD 2E            [12] 3658 	add	a,r6
   0DBE FD            [12] 3659 	mov	r5,a
   0DBF E4            [12] 3660 	clr	a
   0DC0 24 CE         [12] 3661 	add	a,#_rfrxbuf
   0DC2 FE            [12] 3662 	mov	r6,a
   0DC3 ED            [12] 3663 	mov	a,r5
   0DC4 34 F9         [12] 3664 	addc	a,#(_rfrxbuf >> 8)
   0DC6 FD            [12] 3665 	mov	r5,a
   0DC7 74 01         [12] 3666 	mov	a,#0x01
   0DC9 2E            [12] 3667 	add	a,r6
   0DCA F5 3A         [12] 3668 	mov	_txdata_PARM_4,a
   0DCC E4            [12] 3669 	clr	a
   0DCD 3D            [12] 3670 	addc	a,r5
   0DCE F5 3B         [12] 3671 	mov	(_txdata_PARM_4 + 1),a
   0DD0 75 37 01      [24] 3672 	mov	_txdata_PARM_2,#0x01
   0DD3 75 82 42      [24] 3673 	mov	dpl,#0x42
   0DD6 12 1C 70      [24] 3674 	lcall	_txdata
   0DD9 80 35         [24] 3675 	sjmp	00157$
   0DDB                    3676 00156$:
                           3677 ;	appFHSSNIC.c:776: txdata(APP_NIC, NIC_RECV, rfRxInfMode ? rfRxLargeLen : PKTLEN, (u8*)&rfrxbuf[processbuffer]);
   0DDB 90 FE 33      [24] 3678 	mov	dptr,#_rfRxInfMode
   0DDE E0            [24] 3679 	movx	a,@dptr
   0DDF FE            [12] 3680 	mov	r6,a
   0DE0 60 0A         [24] 3681 	jz	00170$
   0DE2 90 FE 36      [24] 3682 	mov	dptr,#_rfRxLargeLen
   0DE5 E0            [24] 3683 	movx	a,@dptr
   0DE6 FD            [12] 3684 	mov	r5,a
   0DE7 A3            [24] 3685 	inc	dptr
   0DE8 E0            [24] 3686 	movx	a,@dptr
   0DE9 FE            [12] 3687 	mov	r6,a
   0DEA 80 08         [24] 3688 	sjmp	00171$
   0DEC                    3689 00170$:
   0DEC 90 DF 02      [24] 3690 	mov	dptr,#_PKTLEN
   0DEF E0            [24] 3691 	movx	a,@dptr
   0DF0 FC            [12] 3692 	mov	r4,a
   0DF1 FD            [12] 3693 	mov	r5,a
   0DF2 7E 00         [12] 3694 	mov	r6,#0x00
   0DF4                    3695 00171$:
   0DF4 EF            [12] 3696 	mov	a,r7
   0DF5 2F            [12] 3697 	add	a,r7
   0DF6 FC            [12] 3698 	mov	r4,a
   0DF7 E4            [12] 3699 	clr	a
   0DF8 24 CE         [12] 3700 	add	a,#_rfrxbuf
   0DFA FF            [12] 3701 	mov	r7,a
   0DFB EC            [12] 3702 	mov	a,r4
   0DFC 34 F9         [12] 3703 	addc	a,#(_rfrxbuf >> 8)
   0DFE FC            [12] 3704 	mov	r4,a
   0DFF 8F 3A         [24] 3705 	mov	_txdata_PARM_4,r7
   0E01 8C 3B         [24] 3706 	mov	(_txdata_PARM_4 + 1),r4
   0E03 75 37 01      [24] 3707 	mov	_txdata_PARM_2,#0x01
   0E06 8D 38         [24] 3708 	mov	_txdata_PARM_3,r5
   0E08 8E 39         [24] 3709 	mov	(_txdata_PARM_3 + 1),r6
   0E0A 75 82 42      [24] 3710 	mov	dpl,#0x42
   0E0D 12 1C 70      [24] 3711 	lcall	_txdata
   0E10                    3712 00157$:
                           3713 ;	appFHSSNIC.c:780: rfRxProcessed[processbuffer] = RX_PROCESSED;
   0E10 90 F5 83      [24] 3714 	mov	dptr,#_processbuffer
   0E13 E0            [24] 3715 	movx	a,@dptr
   0E14 FF            [12] 3716 	mov	r7,a
   0E15 24 D2         [12] 3717 	add	a,#_rfRxProcessed
   0E17 F5 82         [12] 3718 	mov	dpl,a
   0E19 E4            [12] 3719 	clr	a
   0E1A 34 FD         [12] 3720 	addc	a,#(_rfRxProcessed >> 8)
   0E1C F5 83         [12] 3721 	mov	dph,a
   0E1E 74 01         [12] 3722 	mov	a,#0x01
   0E20 F0            [24] 3723 	movx	@dptr,a
   0E21                    3724 00159$:
                           3725 ;	appFHSSNIC.c:782: __critical { rfif &= ~( RFIF_IRQ_DONE | RFIF_IRQ_TIMEOUT );  }          // FIXME: rfif is way too easily tossed aside here...
   0E21 D2 00         [12] 3726 	setb	_appMainLoop_sloc0_1_0
   0E23 10 AF 02      [24] 3727 	jbc	ea,00310$
   0E26 C2 00         [12] 3728 	clr	_appMainLoop_sloc0_1_0
   0E28                    3729 00310$:
   0E28 AF 0F         [24] 3730 	mov	r7,_rfif
   0E2A 74 CF         [12] 3731 	mov	a,#0xCF
   0E2C 5F            [12] 3732 	anl	a,r7
   0E2D F5 0F         [12] 3733 	mov	_rfif,a
   0E2F A2 00         [12] 3734 	mov	c,_appMainLoop_sloc0_1_0
   0E31 92 AF         [24] 3735 	mov	ea,c
                           3736 ;	appFHSSNIC.c:788: }
   0E33 22            [24] 3737 	ret
                           3738 ;------------------------------------------------------------
                           3739 ;Allocation info for local variables in function 'appHandleEP5'
                           3740 ;------------------------------------------------------------
                           3741 ;sloc0                     Allocated with name '_appHandleEP5_sloc0_1_0'
                           3742 ;sloc1                     Allocated with name '_appHandleEP5_sloc1_1_0'
                           3743 ;len                       Allocated with name '_appHandleEP5_len_1_181'
                           3744 ;repeat                    Allocated with name '_appHandleEP5_repeat_1_181'
                           3745 ;offset                    Allocated with name '_appHandleEP5_offset_1_181'
                           3746 ;buf                       Allocated with name '_appHandleEP5_buf_1_181'
                           3747 ;blocks                    Allocated with name '_appHandleEP5_blocks_1_181'
                           3748 ;------------------------------------------------------------
                           3749 ;	appFHSSNIC.c:804: int appHandleEP5()
                           3750 ;	-----------------------------------------
                           3751 ;	 function appHandleEP5
                           3752 ;	-----------------------------------------
   0E34                    3753 _appHandleEP5:
                           3754 ;	appFHSSNIC.c:808: __xdata u8 * __xdata buf = &ep5.OUTbuf[0];
   0E34 90 F9 95      [24] 3755 	mov	dptr,#(_ep5 + 0x0005)
   0E37 E0            [24] 3756 	movx	a,@dptr
   0E38 FD            [12] 3757 	mov	r5,a
   0E39 A3            [24] 3758 	inc	dptr
   0E3A E0            [24] 3759 	movx	a,@dptr
   0E3B FE            [12] 3760 	mov	r6,a
   0E3C A3            [24] 3761 	inc	dptr
   0E3D E0            [24] 3762 	movx	a,@dptr
   0E3E FF            [12] 3763 	mov	r7,a
                           3764 ;	appFHSSNIC.c:811: switch (ep5.OUTapp)
   0E3F 90 F9 9A      [24] 3765 	mov	dptr,#(_ep5 + 0x000a)
   0E42 E0            [24] 3766 	movx	a,@dptr
   0E43 FC            [12] 3767 	mov	r4,a
   0E44 BC 42 02      [24] 3768 	cjne	r4,#0x42,00232$
   0E47 80 03         [24] 3769 	sjmp	00233$
   0E49                    3770 00232$:
   0E49 02 17 BF      [24] 3771 	ljmp	00172$
   0E4C                    3772 00233$:
                           3773 ;	appFHSSNIC.c:815: switch (ep5.OUTcmd)
   0E4C 90 F9 9B      [24] 3774 	mov	dptr,#(_ep5 + 0x000b)
   0E4F E0            [24] 3775 	movx	a,@dptr
   0E50 FC            [12] 3776 	mov  r4,a
   0E51 24 BE         [12] 3777 	add	a,#0xff - 0x41
   0E53 50 03         [24] 3778 	jnc	00234$
   0E55 02 17 B1      [24] 3779 	ljmp	00170$
   0E58                    3780 00234$:
   0E58 EC            [12] 3781 	mov	a,r4
   0E59 24 0A         [12] 3782 	add	a,#(00235$-3-.)
   0E5B 83            [24] 3783 	movc	a,@a+pc
   0E5C F5 82         [12] 3784 	mov	dpl,a
   0E5E EC            [12] 3785 	mov	a,r4
   0E5F 24 46         [12] 3786 	add	a,#(00236$-3-.)
   0E61 83            [24] 3787 	movc	a,@a+pc
   0E62 F5 83         [12] 3788 	mov	dph,a
   0E64 E4            [12] 3789 	clr	a
   0E65 73            [24] 3790 	jmp	@a+dptr
   0E66                    3791 00235$:
   0E66 B1                 3792 	.db	00170$
   0E67 B1                 3793 	.db	00170$
   0E68 3A                 3794 	.db	00104$
   0E69 76                 3795 	.db	00119$
   0E6A B1                 3796 	.db	00170$
   0E6B EF                 3797 	.db	00107$
   0E6C 9B                 3798 	.db	00113$
   0E6D B9                 3799 	.db	00114$
   0E6E CC                 3800 	.db	00115$
   0E6F 05                 3801 	.db	00116$
   0E70 3E                 3802 	.db	00117$
   0E71 63                 3803 	.db	00118$
   0E72 A6                 3804 	.db	00120$
   0E73 45                 3805 	.db	00123$
   0E74 B1                 3806 	.db	00170$
   0E75 B1                 3807 	.db	00170$
   0E76 FE                 3808 	.db	00147$
   0E77 7D                 3809 	.db	00152$
   0E78 A4                 3810 	.db	00153$
   0E79 17                 3811 	.db	00156$
   0E7A 3C                 3812 	.db	00157$
   0E7B 4F                 3813 	.db	00158$
   0E7C C3                 3814 	.db	00159$
   0E7D 2F                 3815 	.db	00140$
   0E7E 64                 3816 	.db	00151$
   0E7F B1                 3817 	.db	00170$
   0E80 B1                 3818 	.db	00170$
   0E81 B1                 3819 	.db	00170$
   0E82 B1                 3820 	.db	00170$
   0E83 B1                 3821 	.db	00170$
   0E84 B1                 3822 	.db	00170$
   0E85 B1                 3823 	.db	00170$
   0E86 16                 3824 	.db	00161$
   0E87 9F                 3825 	.db	00169$
   0E88 E6                 3826 	.db	00160$
   0E89 D4                 3827 	.db	00154$
   0E8A F7                 3828 	.db	00155$
   0E8B B1                 3829 	.db	00170$
   0E8C B1                 3830 	.db	00170$
   0E8D B1                 3831 	.db	00170$
   0E8E B1                 3832 	.db	00170$
   0E8F B1                 3833 	.db	00170$
   0E90 B1                 3834 	.db	00170$
   0E91 B1                 3835 	.db	00170$
   0E92 B1                 3836 	.db	00170$
   0E93 B1                 3837 	.db	00170$
   0E94 B1                 3838 	.db	00170$
   0E95 B1                 3839 	.db	00170$
   0E96 B1                 3840 	.db	00170$
   0E97 B1                 3841 	.db	00170$
   0E98 B1                 3842 	.db	00170$
   0E99 B1                 3843 	.db	00170$
   0E9A B1                 3844 	.db	00170$
   0E9B B1                 3845 	.db	00170$
   0E9C B1                 3846 	.db	00170$
   0E9D B1                 3847 	.db	00170$
   0E9E B1                 3848 	.db	00170$
   0E9F B1                 3849 	.db	00170$
   0EA0 B1                 3850 	.db	00170$
   0EA1 B1                 3851 	.db	00170$
   0EA2 B1                 3852 	.db	00170$
   0EA3 B1                 3853 	.db	00170$
   0EA4 B1                 3854 	.db	00170$
   0EA5 B1                 3855 	.db	00170$
   0EA6 EA                 3856 	.db	00102$
   0EA7 24                 3857 	.db	00103$
   0EA8                    3858 00236$:
   0EA8 17                 3859 	.db	00170$>>8
   0EA9 17                 3860 	.db	00170$>>8
   0EAA 0F                 3861 	.db	00104$>>8
   0EAB 11                 3862 	.db	00119$>>8
   0EAC 17                 3863 	.db	00170$>>8
   0EAD 0F                 3864 	.db	00107$>>8
   0EAE 10                 3865 	.db	00113$>>8
   0EAF 10                 3866 	.db	00114$>>8
   0EB0 10                 3867 	.db	00115$>>8
   0EB1 11                 3868 	.db	00116$>>8
   0EB2 11                 3869 	.db	00117$>>8
   0EB3 11                 3870 	.db	00118$>>8
   0EB4 11                 3871 	.db	00120$>>8
   0EB5 12                 3872 	.db	00123$>>8
   0EB6 17                 3873 	.db	00170$>>8
   0EB7 17                 3874 	.db	00170$>>8
   0EB8 14                 3875 	.db	00147$>>8
   0EB9 15                 3876 	.db	00152$>>8
   0EBA 15                 3877 	.db	00153$>>8
   0EBB 16                 3878 	.db	00156$>>8
   0EBC 16                 3879 	.db	00157$>>8
   0EBD 16                 3880 	.db	00158$>>8
   0EBE 16                 3881 	.db	00159$>>8
   0EBF 14                 3882 	.db	00140$>>8
   0EC0 15                 3883 	.db	00151$>>8
   0EC1 17                 3884 	.db	00170$>>8
   0EC2 17                 3885 	.db	00170$>>8
   0EC3 17                 3886 	.db	00170$>>8
   0EC4 17                 3887 	.db	00170$>>8
   0EC5 17                 3888 	.db	00170$>>8
   0EC6 17                 3889 	.db	00170$>>8
   0EC7 17                 3890 	.db	00170$>>8
   0EC8 17                 3891 	.db	00161$>>8
   0EC9 17                 3892 	.db	00169$>>8
   0ECA 16                 3893 	.db	00160$>>8
   0ECB 15                 3894 	.db	00154$>>8
   0ECC 15                 3895 	.db	00155$>>8
   0ECD 17                 3896 	.db	00170$>>8
   0ECE 17                 3897 	.db	00170$>>8
   0ECF 17                 3898 	.db	00170$>>8
   0ED0 17                 3899 	.db	00170$>>8
   0ED1 17                 3900 	.db	00170$>>8
   0ED2 17                 3901 	.db	00170$>>8
   0ED3 17                 3902 	.db	00170$>>8
   0ED4 17                 3903 	.db	00170$>>8
   0ED5 17                 3904 	.db	00170$>>8
   0ED6 17                 3905 	.db	00170$>>8
   0ED7 17                 3906 	.db	00170$>>8
   0ED8 17                 3907 	.db	00170$>>8
   0ED9 17                 3908 	.db	00170$>>8
   0EDA 17                 3909 	.db	00170$>>8
   0EDB 17                 3910 	.db	00170$>>8
   0EDC 17                 3911 	.db	00170$>>8
   0EDD 17                 3912 	.db	00170$>>8
   0EDE 17                 3913 	.db	00170$>>8
   0EDF 17                 3914 	.db	00170$>>8
   0EE0 17                 3915 	.db	00170$>>8
   0EE1 17                 3916 	.db	00170$>>8
   0EE2 17                 3917 	.db	00170$>>8
   0EE3 17                 3918 	.db	00170$>>8
   0EE4 17                 3919 	.db	00170$>>8
   0EE5 17                 3920 	.db	00170$>>8
   0EE6 17                 3921 	.db	00170$>>8
   0EE7 17                 3922 	.db	00170$>>8
   0EE8 0E                 3923 	.db	00102$>>8
   0EE9 0F                 3924 	.db	00103$>>8
                           3925 ;	appFHSSNIC.c:817: case RFCAT_START_SPECAN:
   0EEA                    3926 00102$:
                           3927 ;	appFHSSNIC.c:820: stop_hopping();
   0EEA C0 07         [24] 3928 	push	ar7
   0EEC C0 06         [24] 3929 	push	ar6
   0EEE C0 05         [24] 3930 	push	ar5
   0EF0 12 01 AE      [24] 3931 	lcall	_stop_hopping
   0EF3 D0 05         [24] 3932 	pop	ar5
   0EF5 D0 06         [24] 3933 	pop	ar6
   0EF7 D0 07         [24] 3934 	pop	ar7
                           3935 ;	appFHSSNIC.c:821: macdata.mac_state = MAC_STATE_PREP_SPECAN;
   0EF9 90 FD DD      [24] 3936 	mov	dptr,#_macdata
   0EFC 74 40         [12] 3937 	mov	a,#0x40
   0EFE F0            [24] 3938 	movx	@dptr,a
                           3939 ;	appFHSSNIC.c:822: macdata.synched_chans = buf[0];
   0EFF 8D 82         [24] 3940 	mov	dpl,r5
   0F01 8E 83         [24] 3941 	mov	dph,r6
   0F03 8F F0         [24] 3942 	mov	b,r7
   0F05 12 35 F3      [24] 3943 	lcall	__gptrget
   0F08 FC            [12] 3944 	mov	r4,a
   0F09 7B 00         [12] 3945 	mov	r3,#0x00
   0F0B 90 FD F0      [24] 3946 	mov	dptr,#(_macdata + 0x0013)
   0F0E EC            [12] 3947 	mov	a,r4
   0F0F F0            [24] 3948 	movx	@dptr,a
   0F10 EB            [12] 3949 	mov	a,r3
   0F11 A3            [24] 3950 	inc	dptr
   0F12 F0            [24] 3951 	movx	@dptr,a
                           3952 ;	appFHSSNIC.c:823: appReturn( 1, buf);
   0F13 90 F9 A5      [24] 3953 	mov	dptr,#_appReturn_PARM_2
   0F16 ED            [12] 3954 	mov	a,r5
   0F17 F0            [24] 3955 	movx	@dptr,a
   0F18 EE            [12] 3956 	mov	a,r6
   0F19 A3            [24] 3957 	inc	dptr
   0F1A F0            [24] 3958 	movx	@dptr,a
   0F1B 75 82 01      [24] 3959 	mov	dpl,#0x01
   0F1E 12 1C CF      [24] 3960 	lcall	_appReturn
                           3961 ;	appFHSSNIC.c:824: break;
   0F21 02 17 BF      [24] 3962 	ljmp	00172$
                           3963 ;	appFHSSNIC.c:826: case RFCAT_STOP_SPECAN:
   0F24                    3964 00103$:
                           3965 ;	appFHSSNIC.c:827: macdata.mac_state = MAC_STATE_NONHOPPING;
   0F24 90 FD DD      [24] 3966 	mov	dptr,#_macdata
   0F27 E4            [12] 3967 	clr	a
   0F28 F0            [24] 3968 	movx	@dptr,a
                           3969 ;	appFHSSNIC.c:828: appReturn( 1, buf);
   0F29 90 F9 A5      [24] 3970 	mov	dptr,#_appReturn_PARM_2
   0F2C ED            [12] 3971 	mov	a,r5
   0F2D F0            [24] 3972 	movx	@dptr,a
   0F2E EE            [12] 3973 	mov	a,r6
   0F2F A3            [24] 3974 	inc	dptr
   0F30 F0            [24] 3975 	movx	@dptr,a
   0F31 75 82 01      [24] 3976 	mov	dpl,#0x01
   0F34 12 1C CF      [24] 3977 	lcall	_appReturn
                           3978 ;	appFHSSNIC.c:829: break;
   0F37 02 17 BF      [24] 3979 	ljmp	00172$
                           3980 ;	appFHSSNIC.c:831: case NIC_XMIT:
   0F3A                    3981 00104$:
                           3982 ;	appFHSSNIC.c:834: if (macdata.mac_state != MAC_STATE_NONHOPPING)
   0F3A 90 FD DD      [24] 3983 	mov	dptr,#_macdata
   0F3D E0            [24] 3984 	movx	a,@dptr
   0F3E 60 09         [24] 3985 	jz	00106$
                           3986 ;	appFHSSNIC.c:836: debug("crap, please use FHSSxmit() instead!");
   0F40 90 37 74      [24] 3987 	mov	dptr,#__str_9
   0F43 12 21 F8      [24] 3988 	lcall	_debug
                           3989 ;	appFHSSNIC.c:837: break;
   0F46 02 17 BF      [24] 3990 	ljmp	00172$
   0F49                    3991 00106$:
                           3992 ;	appFHSSNIC.c:839: len = buf[0];
   0F49 8D 82         [24] 3993 	mov	dpl,r5
   0F4B 8E 83         [24] 3994 	mov	dph,r6
   0F4D 8F F0         [24] 3995 	mov	b,r7
   0F4F 12 35 F3      [24] 3996 	lcall	__gptrget
   0F52 FC            [12] 3997 	mov	r4,a
   0F53 7B 00         [12] 3998 	mov	r3,#0x00
   0F55 90 F5 86      [24] 3999 	mov	dptr,#_appHandleEP5_len_1_181
   0F58 EC            [12] 4000 	mov	a,r4
   0F59 F0            [24] 4001 	movx	@dptr,a
   0F5A EB            [12] 4002 	mov	a,r3
   0F5B A3            [24] 4003 	inc	dptr
   0F5C F0            [24] 4004 	movx	@dptr,a
                           4005 ;	appFHSSNIC.c:840: len += buf[1] << 8;
   0F5D 8D 82         [24] 4006 	mov	dpl,r5
   0F5F 8E 83         [24] 4007 	mov	dph,r6
   0F61 A3            [24] 4008 	inc	dptr
   0F62 E0            [24] 4009 	movx	a,@dptr
   0F63 FA            [12] 4010 	mov	r2,a
   0F64 E4            [12] 4011 	clr	a
   0F65 2C            [12] 4012 	add	a,r4
   0F66 FC            [12] 4013 	mov	r4,a
   0F67 EA            [12] 4014 	mov	a,r2
   0F68 3B            [12] 4015 	addc	a,r3
   0F69 FB            [12] 4016 	mov	r3,a
   0F6A 90 F5 86      [24] 4017 	mov	dptr,#_appHandleEP5_len_1_181
   0F6D EC            [12] 4018 	mov	a,r4
   0F6E F0            [24] 4019 	movx	@dptr,a
   0F6F EB            [12] 4020 	mov	a,r3
   0F70 A3            [24] 4021 	inc	dptr
   0F71 F0            [24] 4022 	movx	@dptr,a
                           4023 ;	appFHSSNIC.c:843: offset = buf[4];
   0F72 8D 82         [24] 4024 	mov	dpl,r5
   0F74 8E 83         [24] 4025 	mov	dph,r6
   0F76 A3            [24] 4026 	inc	dptr
   0F77 A3            [24] 4027 	inc	dptr
   0F78 A3            [24] 4028 	inc	dptr
   0F79 A3            [24] 4029 	inc	dptr
   0F7A E0            [24] 4030 	movx	a,@dptr
   0F7B FA            [12] 4031 	mov	r2,a
   0F7C 8A 08         [24] 4032 	mov	_appHandleEP5_sloc0_1_0,r2
   0F7E 75 09 00      [24] 4033 	mov	(_appHandleEP5_sloc0_1_0 + 1),#0x00
                           4034 ;	appFHSSNIC.c:844: offset += buf[5] << 8;
   0F81 8D 82         [24] 4035 	mov	dpl,r5
   0F83 8E 83         [24] 4036 	mov	dph,r6
   0F85 A3            [24] 4037 	inc	dptr
   0F86 A3            [24] 4038 	inc	dptr
   0F87 A3            [24] 4039 	inc	dptr
   0F88 A3            [24] 4040 	inc	dptr
   0F89 A3            [24] 4041 	inc	dptr
   0F8A E0            [24] 4042 	movx	a,@dptr
   0F8B FA            [12] 4043 	mov	r2,a
   0F8C E4            [12] 4044 	clr	a
   0F8D 25 08         [12] 4045 	add	a,_appHandleEP5_sloc0_1_0
   0F8F F5 08         [12] 4046 	mov	_appHandleEP5_sloc0_1_0,a
   0F91 EA            [12] 4047 	mov	a,r2
   0F92 35 09         [12] 4048 	addc	a,(_appHandleEP5_sloc0_1_0 + 1)
   0F94 F5 09         [12] 4049 	mov	(_appHandleEP5_sloc0_1_0 + 1),a
                           4050 ;	appFHSSNIC.c:845: txTotal= 0;
   0F96 90 FD D6      [24] 4051 	mov	dptr,#_txTotal
   0F99 E4            [12] 4052 	clr	a
   0F9A F0            [24] 4053 	movx	@dptr,a
   0F9B E4            [12] 4054 	clr	a
   0F9C A3            [24] 4055 	inc	dptr
   0F9D F0            [24] 4056 	movx	@dptr,a
                           4057 ;	appFHSSNIC.c:846: buf[0] = transmit(&buf[6], len, 0, offset);
   0F9E 74 06         [12] 4058 	mov	a,#0x06
   0FA0 2D            [12] 4059 	add	a,r5
   0FA1 F9            [12] 4060 	mov	r1,a
   0FA2 E4            [12] 4061 	clr	a
   0FA3 3E            [12] 4062 	addc	a,r6
   0FA4 FA            [12] 4063 	mov	r2,a
   0FA5 90 FD F2      [24] 4064 	mov	dptr,#_transmit_PARM_2
   0FA8 EC            [12] 4065 	mov	a,r4
   0FA9 F0            [24] 4066 	movx	@dptr,a
   0FAA EB            [12] 4067 	mov	a,r3
   0FAB A3            [24] 4068 	inc	dptr
   0FAC F0            [24] 4069 	movx	@dptr,a
   0FAD 90 FD F4      [24] 4070 	mov	dptr,#_transmit_PARM_3
   0FB0 E4            [12] 4071 	clr	a
   0FB1 F0            [24] 4072 	movx	@dptr,a
   0FB2 E4            [12] 4073 	clr	a
   0FB3 A3            [24] 4074 	inc	dptr
   0FB4 F0            [24] 4075 	movx	@dptr,a
   0FB5 90 FD F6      [24] 4076 	mov	dptr,#_transmit_PARM_4
   0FB8 E5 08         [12] 4077 	mov	a,_appHandleEP5_sloc0_1_0
   0FBA F0            [24] 4078 	movx	@dptr,a
   0FBB E5 09         [12] 4079 	mov	a,(_appHandleEP5_sloc0_1_0 + 1)
   0FBD A3            [24] 4080 	inc	dptr
   0FBE F0            [24] 4081 	movx	@dptr,a
   0FBF 89 82         [24] 4082 	mov	dpl,r1
   0FC1 8A 83         [24] 4083 	mov	dph,r2
   0FC3 C0 07         [24] 4084 	push	ar7
   0FC5 C0 06         [24] 4085 	push	ar6
   0FC7 C0 05         [24] 4086 	push	ar5
   0FC9 12 24 8D      [24] 4087 	lcall	_transmit
   0FCC AC 82         [24] 4088 	mov	r4,dpl
   0FCE D0 05         [24] 4089 	pop	ar5
   0FD0 D0 06         [24] 4090 	pop	ar6
   0FD2 D0 07         [24] 4091 	pop	ar7
   0FD4 8D 82         [24] 4092 	mov	dpl,r5
   0FD6 8E 83         [24] 4093 	mov	dph,r6
   0FD8 8F F0         [24] 4094 	mov	b,r7
   0FDA EC            [12] 4095 	mov	a,r4
   0FDB 12 34 5C      [24] 4096 	lcall	__gptrput
                           4097 ;	appFHSSNIC.c:847: appReturn( 1, buf);
   0FDE 90 F9 A5      [24] 4098 	mov	dptr,#_appReturn_PARM_2
   0FE1 ED            [12] 4099 	mov	a,r5
   0FE2 F0            [24] 4100 	movx	@dptr,a
   0FE3 EE            [12] 4101 	mov	a,r6
   0FE4 A3            [24] 4102 	inc	dptr
   0FE5 F0            [24] 4103 	movx	@dptr,a
   0FE6 75 82 01      [24] 4104 	mov	dpl,#0x01
   0FE9 12 1C CF      [24] 4105 	lcall	_appReturn
                           4106 ;	appFHSSNIC.c:848: break;
   0FEC 02 17 BF      [24] 4107 	ljmp	00172$
                           4108 ;	appFHSSNIC.c:850: case NIC_SET_RECV_LARGE:
   0FEF                    4109 00107$:
                           4110 ;	appFHSSNIC.c:855: rfRxLargeLen = buf[0];
   0FEF 8D 82         [24] 4111 	mov	dpl,r5
   0FF1 8E 83         [24] 4112 	mov	dph,r6
   0FF3 8F F0         [24] 4113 	mov	b,r7
   0FF5 12 35 F3      [24] 4114 	lcall	__gptrget
   0FF8 90 FE 36      [24] 4115 	mov	dptr,#_rfRxLargeLen
   0FFB F0            [24] 4116 	movx	@dptr,a
   0FFC E4            [12] 4117 	clr	a
   0FFD A3            [24] 4118 	inc	dptr
   0FFE F0            [24] 4119 	movx	@dptr,a
                           4120 ;	appFHSSNIC.c:856: rfRxLargeLen += buf[1] << 8;
   0FFF 8D 82         [24] 4121 	mov	dpl,r5
   1001 8E 83         [24] 4122 	mov	dph,r6
   1003 A3            [24] 4123 	inc	dptr
   1004 E0            [24] 4124 	movx	a,@dptr
   1005 FB            [12] 4125 	mov	r3,a
   1006 7C 00         [12] 4126 	mov	r4,#0x00
   1008 90 FE 36      [24] 4127 	mov	dptr,#_rfRxLargeLen
   100B E0            [24] 4128 	movx	a,@dptr
   100C F9            [12] 4129 	mov	r1,a
   100D A3            [24] 4130 	inc	dptr
   100E E0            [24] 4131 	movx	a,@dptr
   100F FA            [12] 4132 	mov	r2,a
   1010 90 FE 36      [24] 4133 	mov	dptr,#_rfRxLargeLen
   1013 EC            [12] 4134 	mov	a,r4
   1014 29            [12] 4135 	add	a,r1
   1015 F0            [24] 4136 	movx	@dptr,a
   1016 EB            [12] 4137 	mov	a,r3
   1017 3A            [12] 4138 	addc	a,r2
   1018 A3            [24] 4139 	inc	dptr
   1019 F0            [24] 4140 	movx	@dptr,a
                           4141 ;	appFHSSNIC.c:857: if(rfRxLargeLen)
   101A 90 FE 36      [24] 4142 	mov	dptr,#_rfRxLargeLen
   101D E0            [24] 4143 	movx	a,@dptr
   101E FB            [12] 4144 	mov	r3,a
   101F A3            [24] 4145 	inc	dptr
   1020 E0            [24] 4146 	movx	a,@dptr
   1021 FC            [12] 4147 	mov	r4,a
   1022 4B            [12] 4148 	orl	a,r3
   1023 60 40         [24] 4149 	jz	00111$
                           4150 ;	appFHSSNIC.c:859: rfRxInfMode = 1;
   1025 90 FE 33      [24] 4151 	mov	dptr,#_rfRxInfMode
   1028 74 01         [12] 4152 	mov	a,#0x01
   102A F0            [24] 4153 	movx	@dptr,a
                           4154 ;	appFHSSNIC.c:861: if(!rfRxTotalRXLen)
   102B 90 FE 34      [24] 4155 	mov	dptr,#_rfRxTotalRXLen
   102E E0            [24] 4156 	movx	a,@dptr
   102F FB            [12] 4157 	mov	r3,a
   1030 A3            [24] 4158 	inc	dptr
   1031 E0            [24] 4159 	movx	a,@dptr
   1032 FC            [12] 4160 	mov	r4,a
   1033 4B            [12] 4161 	orl	a,r3
   1034 70 46         [24] 4162 	jnz	00112$
                           4163 ;	appFHSSNIC.c:863: IdleMode();
   1036 12 23 C2      [24] 4164 	lcall	_IdleMode
                           4165 ;	appFHSSNIC.c:864: rfRxTotalRXLen = rfRxLargeLen;
   1039 90 FE 36      [24] 4166 	mov	dptr,#_rfRxLargeLen
   103C E0            [24] 4167 	movx	a,@dptr
   103D FB            [12] 4168 	mov	r3,a
   103E A3            [24] 4169 	inc	dptr
   103F E0            [24] 4170 	movx	a,@dptr
   1040 FC            [12] 4171 	mov	r4,a
   1041 90 FE 34      [24] 4172 	mov	dptr,#_rfRxTotalRXLen
   1044 EB            [12] 4173 	mov	a,r3
   1045 F0            [24] 4174 	movx	@dptr,a
   1046 EC            [12] 4175 	mov	a,r4
   1047 A3            [24] 4176 	inc	dptr
   1048 F0            [24] 4177 	movx	@dptr,a
                           4178 ;	appFHSSNIC.c:865: PKTLEN = (u8) (rfRxTotalRXLen % 256);
   1049 90 FE 34      [24] 4179 	mov	dptr,#_rfRxTotalRXLen
   104C E0            [24] 4180 	movx	a,@dptr
   104D FB            [12] 4181 	mov	r3,a
   104E A3            [24] 4182 	inc	dptr
   104F E0            [24] 4183 	movx	a,@dptr
   1050 90 DF 02      [24] 4184 	mov	dptr,#_PKTLEN
   1053 EB            [12] 4185 	mov	a,r3
   1054 F0            [24] 4186 	movx	@dptr,a
                           4187 ;	appFHSSNIC.c:866: PKTCTRL0 &= ~PKTCTRL0_LENGTH_CONFIG;
                           4188 ;	appFHSSNIC.c:867: PKTCTRL0 |= PKTCTRL0_LENGTH_CONFIG_INF;
   1055 90 DF 04      [24] 4189 	mov	dptr,#_PKTCTRL0
   1058 E0            [24] 4190 	movx	a,@dptr
   1059 54 FC         [12] 4191 	anl	a,#0xFC
   105B F0            [24] 4192 	movx	@dptr,a
   105C E0            [24] 4193 	movx	a,@dptr
   105D 44 02         [12] 4194 	orl	a,#0x02
   105F F0            [24] 4195 	movx	@dptr,a
                           4196 ;	appFHSSNIC.c:868: RxMode();
   1060 12 23 7E      [24] 4197 	lcall	_RxMode
   1063 80 17         [24] 4198 	sjmp	00112$
   1065                    4199 00111$:
                           4200 ;	appFHSSNIC.c:873: rfRxInfMode = 0;
   1065 90 FE 33      [24] 4201 	mov	dptr,#_rfRxInfMode
                           4202 ;	appFHSSNIC.c:874: rfRxTotalRXLen = 0;
   1068 E4            [12] 4203 	clr	a
   1069 F0            [24] 4204 	movx	@dptr,a
   106A 90 FE 34      [24] 4205 	mov	dptr,#_rfRxTotalRXLen
   106D F0            [24] 4206 	movx	@dptr,a
   106E E4            [12] 4207 	clr	a
   106F A3            [24] 4208 	inc	dptr
   1070 F0            [24] 4209 	movx	@dptr,a
                           4210 ;	appFHSSNIC.c:875: rfRxLargeLen = 0;
   1071 90 FE 36      [24] 4211 	mov	dptr,#_rfRxLargeLen
   1074 E4            [12] 4212 	clr	a
   1075 F0            [24] 4213 	movx	@dptr,a
   1076 E4            [12] 4214 	clr	a
   1077 A3            [24] 4215 	inc	dptr
   1078 F0            [24] 4216 	movx	@dptr,a
                           4217 ;	appFHSSNIC.c:876: IdleMode();
   1079 12 23 C2      [24] 4218 	lcall	_IdleMode
   107C                    4219 00112$:
                           4220 ;	appFHSSNIC.c:878: txdata(ep5.OUTapp, ep5.OUTcmd, 1, (__xdata u8*)&rfRxLargeLen);
   107C 90 F9 9A      [24] 4221 	mov	dptr,#(_ep5 + 0x000a)
   107F E0            [24] 4222 	movx	a,@dptr
   1080 FC            [12] 4223 	mov	r4,a
   1081 90 F9 9B      [24] 4224 	mov	dptr,#(_ep5 + 0x000b)
   1084 E0            [24] 4225 	movx	a,@dptr
   1085 F5 37         [12] 4226 	mov	_txdata_PARM_2,a
   1087 75 3A 36      [24] 4227 	mov	_txdata_PARM_4,#_rfRxLargeLen
   108A 75 3B FE      [24] 4228 	mov	(_txdata_PARM_4 + 1),#(_rfRxLargeLen >> 8)
   108D 75 38 01      [24] 4229 	mov	_txdata_PARM_3,#0x01
   1090 75 39 00      [24] 4230 	mov	(_txdata_PARM_3 + 1),#0x00
   1093 8C 82         [24] 4231 	mov	dpl,r4
   1095 12 1C 70      [24] 4232 	lcall	_txdata
                           4233 ;	appFHSSNIC.c:879: break;
   1098 02 17 BF      [24] 4234 	ljmp	00172$
                           4235 ;	appFHSSNIC.c:881: case NIC_SET_AES_MODE:
   109B                    4236 00113$:
                           4237 ;	appFHSSNIC.c:882: rfAESMode= buf[0];
   109B 8D 82         [24] 4238 	mov	dpl,r5
   109D 8E 83         [24] 4239 	mov	dph,r6
   109F 8F F0         [24] 4240 	mov	b,r7
   10A1 12 35 F3      [24] 4241 	lcall	__gptrget
   10A4 90 FE 47      [24] 4242 	mov	dptr,#_rfAESMode
   10A7 F0            [24] 4243 	movx	@dptr,a
                           4244 ;	appFHSSNIC.c:883: appReturn( 1, buf);
   10A8 90 F9 A5      [24] 4245 	mov	dptr,#_appReturn_PARM_2
   10AB ED            [12] 4246 	mov	a,r5
   10AC F0            [24] 4247 	movx	@dptr,a
   10AD EE            [12] 4248 	mov	a,r6
   10AE A3            [24] 4249 	inc	dptr
   10AF F0            [24] 4250 	movx	@dptr,a
   10B0 75 82 01      [24] 4251 	mov	dpl,#0x01
   10B3 12 1C CF      [24] 4252 	lcall	_appReturn
                           4253 ;	appFHSSNIC.c:884: break;
   10B6 02 17 BF      [24] 4254 	ljmp	00172$
                           4255 ;	appFHSSNIC.c:886: case NIC_GET_AES_MODE:
   10B9                    4256 00114$:
                           4257 ;	appFHSSNIC.c:887: appReturn( 1, (__xdata u8*) &rfAESMode);
   10B9 90 F9 A5      [24] 4258 	mov	dptr,#_appReturn_PARM_2
   10BC 74 47         [12] 4259 	mov	a,#_rfAESMode
   10BE F0            [24] 4260 	movx	@dptr,a
   10BF 74 FE         [12] 4261 	mov	a,#(_rfAESMode >> 8)
   10C1 A3            [24] 4262 	inc	dptr
   10C2 F0            [24] 4263 	movx	@dptr,a
   10C3 75 82 01      [24] 4264 	mov	dpl,#0x01
   10C6 12 1C CF      [24] 4265 	lcall	_appReturn
                           4266 ;	appFHSSNIC.c:888: break;
   10C9 02 17 BF      [24] 4267 	ljmp	00172$
                           4268 ;	appFHSSNIC.c:890: case NIC_SET_AES_IV:
   10CC                    4269 00115$:
                           4270 ;	appFHSSNIC.c:891: setAES(buf, ENCCS_CMD_LDIV, (rfAESMode & AES_CRYPTO_MODE));
   10CC 90 FE 47      [24] 4271 	mov	dptr,#_rfAESMode
   10CF E0            [24] 4272 	movx	a,@dptr
   10D0 FC            [12] 4273 	mov	r4,a
   10D1 53 04 F0      [24] 4274 	anl	ar4,#0xF0
   10D4 90 FE 15      [24] 4275 	mov	dptr,#_setAES_PARM_2
   10D7 74 06         [12] 4276 	mov	a,#0x06
   10D9 F0            [24] 4277 	movx	@dptr,a
   10DA 90 FE 16      [24] 4278 	mov	dptr,#_setAES_PARM_3
   10DD EC            [12] 4279 	mov	a,r4
   10DE F0            [24] 4280 	movx	@dptr,a
   10DF 8D 82         [24] 4281 	mov	dpl,r5
   10E1 8E 83         [24] 4282 	mov	dph,r6
   10E3 8F F0         [24] 4283 	mov	b,r7
   10E5 C0 07         [24] 4284 	push	ar7
   10E7 C0 06         [24] 4285 	push	ar6
   10E9 C0 05         [24] 4286 	push	ar5
   10EB 12 30 81      [24] 4287 	lcall	_setAES
   10EE D0 05         [24] 4288 	pop	ar5
   10F0 D0 06         [24] 4289 	pop	ar6
   10F2 D0 07         [24] 4290 	pop	ar7
                           4291 ;	appFHSSNIC.c:892: appReturn( 16, buf);
   10F4 90 F9 A5      [24] 4292 	mov	dptr,#_appReturn_PARM_2
   10F7 ED            [12] 4293 	mov	a,r5
   10F8 F0            [24] 4294 	movx	@dptr,a
   10F9 EE            [12] 4295 	mov	a,r6
   10FA A3            [24] 4296 	inc	dptr
   10FB F0            [24] 4297 	movx	@dptr,a
   10FC 75 82 10      [24] 4298 	mov	dpl,#0x10
   10FF 12 1C CF      [24] 4299 	lcall	_appReturn
                           4300 ;	appFHSSNIC.c:893: break;
   1102 02 17 BF      [24] 4301 	ljmp	00172$
                           4302 ;	appFHSSNIC.c:895: case NIC_SET_AES_KEY:
   1105                    4303 00116$:
                           4304 ;	appFHSSNIC.c:896: setAES(buf, ENCCS_CMD_LDKEY, (rfAESMode & AES_CRYPTO_MODE));
   1105 90 FE 47      [24] 4305 	mov	dptr,#_rfAESMode
   1108 E0            [24] 4306 	movx	a,@dptr
   1109 FC            [12] 4307 	mov	r4,a
   110A 53 04 F0      [24] 4308 	anl	ar4,#0xF0
   110D 90 FE 15      [24] 4309 	mov	dptr,#_setAES_PARM_2
   1110 74 04         [12] 4310 	mov	a,#0x04
   1112 F0            [24] 4311 	movx	@dptr,a
   1113 90 FE 16      [24] 4312 	mov	dptr,#_setAES_PARM_3
   1116 EC            [12] 4313 	mov	a,r4
   1117 F0            [24] 4314 	movx	@dptr,a
   1118 8D 82         [24] 4315 	mov	dpl,r5
   111A 8E 83         [24] 4316 	mov	dph,r6
   111C 8F F0         [24] 4317 	mov	b,r7
   111E C0 07         [24] 4318 	push	ar7
   1120 C0 06         [24] 4319 	push	ar6
   1122 C0 05         [24] 4320 	push	ar5
   1124 12 30 81      [24] 4321 	lcall	_setAES
   1127 D0 05         [24] 4322 	pop	ar5
   1129 D0 06         [24] 4323 	pop	ar6
   112B D0 07         [24] 4324 	pop	ar7
                           4325 ;	appFHSSNIC.c:897: appReturn( 16, buf);
   112D 90 F9 A5      [24] 4326 	mov	dptr,#_appReturn_PARM_2
   1130 ED            [12] 4327 	mov	a,r5
   1131 F0            [24] 4328 	movx	@dptr,a
   1132 EE            [12] 4329 	mov	a,r6
   1133 A3            [24] 4330 	inc	dptr
   1134 F0            [24] 4331 	movx	@dptr,a
   1135 75 82 10      [24] 4332 	mov	dpl,#0x10
   1138 12 1C CF      [24] 4333 	lcall	_appReturn
                           4334 ;	appFHSSNIC.c:898: break;
   113B 02 17 BF      [24] 4335 	ljmp	00172$
                           4336 ;	appFHSSNIC.c:900: case NIC_SET_AMP_MODE:
   113E                    4337 00117$:
                           4338 ;	appFHSSNIC.c:901: rfAmpMode= *buf;
   113E 8D 82         [24] 4339 	mov	dpl,r5
   1140 8E 83         [24] 4340 	mov	dph,r6
   1142 8F F0         [24] 4341 	mov	b,r7
   1144 12 35 F3      [24] 4342 	lcall	__gptrget
   1147 90 FE 48      [24] 4343 	mov	dptr,#_rfAmpMode
   114A F0            [24] 4344 	movx	@dptr,a
                           4345 ;	appFHSSNIC.c:902: rfAmpMode &= 1;
   114B 90 FE 48      [24] 4346 	mov	dptr,#_rfAmpMode
   114E E0            [24] 4347 	movx	a,@dptr
   114F 54 01         [12] 4348 	anl	a,#0x01
   1151 F0            [24] 4349 	movx	@dptr,a
                           4350 ;	appFHSSNIC.c:903: appReturn( 1, buf);
   1152 90 F9 A5      [24] 4351 	mov	dptr,#_appReturn_PARM_2
   1155 ED            [12] 4352 	mov	a,r5
   1156 F0            [24] 4353 	movx	@dptr,a
   1157 EE            [12] 4354 	mov	a,r6
   1158 A3            [24] 4355 	inc	dptr
   1159 F0            [24] 4356 	movx	@dptr,a
   115A 75 82 01      [24] 4357 	mov	dpl,#0x01
   115D 12 1C CF      [24] 4358 	lcall	_appReturn
                           4359 ;	appFHSSNIC.c:904: break;
   1160 02 17 BF      [24] 4360 	ljmp	00172$
                           4361 ;	appFHSSNIC.c:906: case NIC_GET_AMP_MODE:
   1163                    4362 00118$:
                           4363 ;	appFHSSNIC.c:907: appReturn( 1, (__xdata u8*) &rfAmpMode);
   1163 90 F9 A5      [24] 4364 	mov	dptr,#_appReturn_PARM_2
   1166 74 48         [12] 4365 	mov	a,#_rfAmpMode
   1168 F0            [24] 4366 	movx	@dptr,a
   1169 74 FE         [12] 4367 	mov	a,#(_rfAmpMode >> 8)
   116B A3            [24] 4368 	inc	dptr
   116C F0            [24] 4369 	movx	@dptr,a
   116D 75 82 01      [24] 4370 	mov	dpl,#0x01
   1170 12 1C CF      [24] 4371 	lcall	_appReturn
                           4372 ;	appFHSSNIC.c:908: break;
   1173 02 17 BF      [24] 4373 	ljmp	00172$
                           4374 ;	appFHSSNIC.c:910: case NIC_SET_ID:
   1176                    4375 00119$:
                           4376 ;	appFHSSNIC.c:912: MAC_set_NIC_ID(buf[0]);
   1176 8D 82         [24] 4377 	mov	dpl,r5
   1178 8E 83         [24] 4378 	mov	dph,r6
   117A 8F F0         [24] 4379 	mov	b,r7
   117C 12 35 F3      [24] 4380 	lcall	__gptrget
   117F FC            [12] 4381 	mov	r4,a
   1180 7B 00         [12] 4382 	mov	r3,#0x00
   1182 8C 82         [24] 4383 	mov	dpl,r4
   1184 8B 83         [24] 4384 	mov	dph,r3
   1186 C0 07         [24] 4385 	push	ar7
   1188 C0 06         [24] 4386 	push	ar6
   118A C0 05         [24] 4387 	push	ar5
   118C 12 06 61      [24] 4388 	lcall	_MAC_set_NIC_ID
   118F D0 05         [24] 4389 	pop	ar5
   1191 D0 06         [24] 4390 	pop	ar6
   1193 D0 07         [24] 4391 	pop	ar7
                           4392 ;	appFHSSNIC.c:913: appReturn( 1, buf);
   1195 90 F9 A5      [24] 4393 	mov	dptr,#_appReturn_PARM_2
   1198 ED            [12] 4394 	mov	a,r5
   1199 F0            [24] 4395 	movx	@dptr,a
   119A EE            [12] 4396 	mov	a,r6
   119B A3            [24] 4397 	inc	dptr
   119C F0            [24] 4398 	movx	@dptr,a
   119D 75 82 01      [24] 4399 	mov	dpl,#0x01
   11A0 12 1C CF      [24] 4400 	lcall	_appReturn
                           4401 ;	appFHSSNIC.c:914: break;
   11A3 02 17 BF      [24] 4402 	ljmp	00172$
                           4403 ;	appFHSSNIC.c:916: case NIC_LONG_XMIT:
   11A6                    4404 00120$:
                           4405 ;	appFHSSNIC.c:921: if (macdata.mac_state != MAC_STATE_NONHOPPING)
   11A6 90 FD DD      [24] 4406 	mov	dptr,#_macdata
   11A9 E0            [24] 4407 	movx	a,@dptr
   11AA 60 1C         [24] 4408 	jz	00122$
                           4409 ;	appFHSSNIC.c:923: buf[0] = RC_RF_MODE_INCOMPAT;
   11AC 8D 82         [24] 4410 	mov	dpl,r5
   11AE 8E 83         [24] 4411 	mov	dph,r6
   11B0 8F F0         [24] 4412 	mov	b,r7
   11B2 74 EF         [12] 4413 	mov	a,#0xEF
   11B4 12 34 5C      [24] 4414 	lcall	__gptrput
                           4415 ;	appFHSSNIC.c:924: appReturn( 1, buf);
   11B7 90 F9 A5      [24] 4416 	mov	dptr,#_appReturn_PARM_2
   11BA ED            [12] 4417 	mov	a,r5
   11BB F0            [24] 4418 	movx	@dptr,a
   11BC EE            [12] 4419 	mov	a,r6
   11BD A3            [24] 4420 	inc	dptr
   11BE F0            [24] 4421 	movx	@dptr,a
   11BF 75 82 01      [24] 4422 	mov	dpl,#0x01
   11C2 12 1C CF      [24] 4423 	lcall	_appReturn
                           4424 ;	appFHSSNIC.c:925: break;
   11C5 02 17 BF      [24] 4425 	ljmp	00172$
   11C8                    4426 00122$:
                           4427 ;	appFHSSNIC.c:927: len = buf[0];
   11C8 8D 82         [24] 4428 	mov	dpl,r5
   11CA 8E 83         [24] 4429 	mov	dph,r6
   11CC 8F F0         [24] 4430 	mov	b,r7
   11CE 12 35 F3      [24] 4431 	lcall	__gptrget
   11D1 FC            [12] 4432 	mov	r4,a
   11D2 7B 00         [12] 4433 	mov	r3,#0x00
   11D4 90 F5 86      [24] 4434 	mov	dptr,#_appHandleEP5_len_1_181
   11D7 EC            [12] 4435 	mov	a,r4
   11D8 F0            [24] 4436 	movx	@dptr,a
   11D9 EB            [12] 4437 	mov	a,r3
   11DA A3            [24] 4438 	inc	dptr
   11DB F0            [24] 4439 	movx	@dptr,a
                           4440 ;	appFHSSNIC.c:928: len += buf[1] << 8;
   11DC 8D 82         [24] 4441 	mov	dpl,r5
   11DE 8E 83         [24] 4442 	mov	dph,r6
   11E0 A3            [24] 4443 	inc	dptr
   11E1 E0            [24] 4444 	movx	a,@dptr
   11E2 FA            [12] 4445 	mov	r2,a
   11E3 E4            [12] 4446 	clr	a
   11E4 2C            [12] 4447 	add	a,r4
   11E5 FC            [12] 4448 	mov	r4,a
   11E6 EA            [12] 4449 	mov	a,r2
   11E7 3B            [12] 4450 	addc	a,r3
   11E8 FB            [12] 4451 	mov	r3,a
   11E9 90 F5 86      [24] 4452 	mov	dptr,#_appHandleEP5_len_1_181
   11EC EC            [12] 4453 	mov	a,r4
   11ED F0            [24] 4454 	movx	@dptr,a
   11EE EB            [12] 4455 	mov	a,r3
   11EF A3            [24] 4456 	inc	dptr
   11F0 F0            [24] 4457 	movx	@dptr,a
                           4458 ;	appFHSSNIC.c:929: blocks = buf[2];
   11F1 8D 82         [24] 4459 	mov	dpl,r5
   11F3 8E 83         [24] 4460 	mov	dph,r6
   11F5 A3            [24] 4461 	inc	dptr
   11F6 A3            [24] 4462 	inc	dptr
   11F7 E0            [24] 4463 	movx	a,@dptr
   11F8 FA            [12] 4464 	mov	r2,a
                           4465 ;	appFHSSNIC.c:930: txTotal= 0;
   11F9 90 FD D6      [24] 4466 	mov	dptr,#_txTotal
   11FC E4            [12] 4467 	clr	a
   11FD F0            [24] 4468 	movx	@dptr,a
   11FE E4            [12] 4469 	clr	a
   11FF A3            [24] 4470 	inc	dptr
   1200 F0            [24] 4471 	movx	@dptr,a
                           4472 ;	appFHSSNIC.c:931: buf[0] = transmit_long(&buf[3], len, blocks);
   1201 74 03         [12] 4473 	mov	a,#0x03
   1203 2D            [12] 4474 	add	a,r5
   1204 F8            [12] 4475 	mov	r0,a
   1205 E4            [12] 4476 	clr	a
   1206 3E            [12] 4477 	addc	a,r6
   1207 F9            [12] 4478 	mov	r1,a
   1208 90 F5 57      [24] 4479 	mov	dptr,#_transmit_long_PARM_2
   120B EC            [12] 4480 	mov	a,r4
   120C F0            [24] 4481 	movx	@dptr,a
   120D EB            [12] 4482 	mov	a,r3
   120E A3            [24] 4483 	inc	dptr
   120F F0            [24] 4484 	movx	@dptr,a
   1210 90 F5 59      [24] 4485 	mov	dptr,#_transmit_long_PARM_3
   1213 EA            [12] 4486 	mov	a,r2
   1214 F0            [24] 4487 	movx	@dptr,a
   1215 88 82         [24] 4488 	mov	dpl,r0
   1217 89 83         [24] 4489 	mov	dph,r1
   1219 C0 07         [24] 4490 	push	ar7
   121B C0 06         [24] 4491 	push	ar6
   121D C0 05         [24] 4492 	push	ar5
   121F 12 01 B6      [24] 4493 	lcall	_transmit_long
   1222 AC 82         [24] 4494 	mov	r4,dpl
   1224 D0 05         [24] 4495 	pop	ar5
   1226 D0 06         [24] 4496 	pop	ar6
   1228 D0 07         [24] 4497 	pop	ar7
   122A 8D 82         [24] 4498 	mov	dpl,r5
   122C 8E 83         [24] 4499 	mov	dph,r6
   122E 8F F0         [24] 4500 	mov	b,r7
   1230 EC            [12] 4501 	mov	a,r4
   1231 12 34 5C      [24] 4502 	lcall	__gptrput
                           4503 ;	appFHSSNIC.c:932: appReturn( 1, buf);
   1234 90 F9 A5      [24] 4504 	mov	dptr,#_appReturn_PARM_2
   1237 ED            [12] 4505 	mov	a,r5
   1238 F0            [24] 4506 	movx	@dptr,a
   1239 EE            [12] 4507 	mov	a,r6
   123A A3            [24] 4508 	inc	dptr
   123B F0            [24] 4509 	movx	@dptr,a
   123C 75 82 01      [24] 4510 	mov	dpl,#0x01
   123F 12 1C CF      [24] 4511 	lcall	_appReturn
                           4512 ;	appFHSSNIC.c:933: break;
   1242 02 17 BF      [24] 4513 	ljmp	00172$
                           4514 ;	appFHSSNIC.c:935: case NIC_LONG_XMIT_MORE:
   1245                    4515 00123$:
                           4516 ;	appFHSSNIC.c:936: len = buf[0];
   1245 8D 82         [24] 4517 	mov	dpl,r5
   1247 8E 83         [24] 4518 	mov	dph,r6
   1249 8F F0         [24] 4519 	mov	b,r7
   124B 12 35 F3      [24] 4520 	lcall	__gptrget
   124E FB            [12] 4521 	mov	r3,a
   124F 7C 00         [12] 4522 	mov	r4,#0x00
   1251 90 F5 86      [24] 4523 	mov	dptr,#_appHandleEP5_len_1_181
   1254 EB            [12] 4524 	mov	a,r3
   1255 F0            [24] 4525 	movx	@dptr,a
   1256 EC            [12] 4526 	mov	a,r4
   1257 A3            [24] 4527 	inc	dptr
   1258 F0            [24] 4528 	movx	@dptr,a
                           4529 ;	appFHSSNIC.c:937: if (len == 0)
   1259 EB            [12] 4530 	mov	a,r3
   125A 4C            [12] 4531 	orl	a,r4
   125B 60 03         [24] 4532 	jz	00241$
   125D 02 13 40      [24] 4533 	ljmp	00131$
   1260                    4534 00241$:
                           4535 ;	appFHSSNIC.c:940: while (rfTxTotalTXLen && MARCSTATE == MARC_STATE_TX) 
   1260                    4536 00125$:
   1260 90 FE 44      [24] 4537 	mov	dptr,#_rfTxTotalTXLen
   1263 E0            [24] 4538 	movx	a,@dptr
   1264 F9            [12] 4539 	mov	r1,a
   1265 A3            [24] 4540 	inc	dptr
   1266 E0            [24] 4541 	movx	a,@dptr
   1267 FA            [12] 4542 	mov	r2,a
   1268 49            [12] 4543 	orl	a,r1
   1269 60 1C         [24] 4544 	jz	00127$
   126B 90 DF 3B      [24] 4545 	mov	dptr,#_MARCSTATE
   126E E0            [24] 4546 	movx	a,@dptr
   126F FA            [12] 4547 	mov	r2,a
   1270 BA 13 14      [24] 4548 	cjne	r2,#0x13,00127$
                           4549 ;	appFHSSNIC.c:942: sleepMillis(40); // delay to avoid race condition that will cause mis-read of rfTxTotalTXLen == 0
   1273 90 00 28      [24] 4550 	mov	dptr,#0x0028
   1276 C0 07         [24] 4551 	push	ar7
   1278 C0 06         [24] 4552 	push	ar6
   127A C0 05         [24] 4553 	push	ar5
   127C 12 2D D3      [24] 4554 	lcall	_sleepMillis
   127F D0 05         [24] 4555 	pop	ar5
   1281 D0 06         [24] 4556 	pop	ar6
   1283 D0 07         [24] 4557 	pop	ar7
   1285 80 D9         [24] 4558 	sjmp	00125$
   1287                    4559 00127$:
                           4560 ;	appFHSSNIC.c:944: if(rfTxTotalTXLen)
   1287 90 FE 44      [24] 4561 	mov	dptr,#_rfTxTotalTXLen
   128A E0            [24] 4562 	movx	a,@dptr
   128B F9            [12] 4563 	mov	r1,a
   128C A3            [24] 4564 	inc	dptr
   128D E0            [24] 4565 	movx	a,@dptr
   128E FA            [12] 4566 	mov	r2,a
   128F 49            [12] 4567 	orl	a,r1
   1290 60 6B         [24] 4568 	jz	00129$
                           4569 ;	appFHSSNIC.c:946: debug("dropout final wait!");
   1292 90 37 99      [24] 4570 	mov	dptr,#__str_10
   1295 C0 07         [24] 4571 	push	ar7
   1297 C0 06         [24] 4572 	push	ar6
   1299 C0 05         [24] 4573 	push	ar5
   129B 12 21 F8      [24] 4574 	lcall	_debug
                           4575 ;	appFHSSNIC.c:947: debughex16(rfTxTotalTXLen);
   129E 90 FE 44      [24] 4576 	mov	dptr,#_rfTxTotalTXLen
   12A1 E0            [24] 4577 	movx	a,@dptr
   12A2 F9            [12] 4578 	mov	r1,a
   12A3 A3            [24] 4579 	inc	dptr
   12A4 E0            [24] 4580 	movx	a,@dptr
   12A5 FA            [12] 4581 	mov	r2,a
   12A6 89 82         [24] 4582 	mov	dpl,r1
   12A8 8A 83         [24] 4583 	mov	dph,r2
   12AA 12 22 55      [24] 4584 	lcall	_debughex16
                           4585 ;	appFHSSNIC.c:948: debughex(g_txMsgQueue[0][0]);
   12AD 90 F3 72      [24] 4586 	mov	dptr,#_g_txMsgQueue
   12B0 E0            [24] 4587 	movx	a,@dptr
   12B1 F5 82         [12] 4588 	mov	dpl,a
   12B3 12 22 3A      [24] 4589 	lcall	_debughex
                           4590 ;	appFHSSNIC.c:949: debughex(g_txMsgQueue[1][0]);
   12B6 90 F4 63      [24] 4591 	mov	dptr,#(_g_txMsgQueue + 0x00f1)
   12B9 E0            [24] 4592 	movx	a,@dptr
   12BA F5 82         [12] 4593 	mov	dpl,a
   12BC 12 22 3A      [24] 4594 	lcall	_debughex
   12BF D0 05         [24] 4595 	pop	ar5
   12C1 D0 06         [24] 4596 	pop	ar6
   12C3 D0 07         [24] 4597 	pop	ar7
                           4598 ;	appFHSSNIC.c:950: lastCode[1] = LCE_DROPPED_PACKET;
   12C5 90 FE 02      [24] 4599 	mov	dptr,#(_lastCode + 0x0001)
   12C8 74 12         [12] 4600 	mov	a,#0x12
   12CA F0            [24] 4601 	movx	@dptr,a
                           4602 ;	appFHSSNIC.c:951: buf[0] = RC_TX_DROPPED_PACKET;
   12CB 8D 82         [24] 4603 	mov	dpl,r5
   12CD 8E 83         [24] 4604 	mov	dph,r6
   12CF 8F F0         [24] 4605 	mov	b,r7
   12D1 74 EC         [12] 4606 	mov	a,#0xEC
   12D3 12 34 5C      [24] 4607 	lcall	__gptrput
                           4608 ;	appFHSSNIC.c:952: LED = 0;
   12D6 C2 A4         [12] 4609 	clr	_P2_4
                           4610 ;	appFHSSNIC.c:953: resetRFSTATE();
   12D8 C0 07         [24] 4611 	push	ar7
   12DA C0 06         [24] 4612 	push	ar6
   12DC C0 05         [24] 4613 	push	ar5
   12DE 12 23 59      [24] 4614 	lcall	_resetRFSTATE
   12E1 D0 05         [24] 4615 	pop	ar5
   12E3 D0 06         [24] 4616 	pop	ar6
   12E5 D0 07         [24] 4617 	pop	ar7
                           4618 ;	appFHSSNIC.c:954: macdata.mac_state = MAC_STATE_NONHOPPING;
   12E7 90 FD DD      [24] 4619 	mov	dptr,#_macdata
   12EA E4            [12] 4620 	clr	a
   12EB F0            [24] 4621 	movx	@dptr,a
                           4622 ;	appFHSSNIC.c:955: appReturn( 1, buf);
   12EC 90 F9 A5      [24] 4623 	mov	dptr,#_appReturn_PARM_2
   12EF ED            [12] 4624 	mov	a,r5
   12F0 F0            [24] 4625 	movx	@dptr,a
   12F1 EE            [12] 4626 	mov	a,r6
   12F2 A3            [24] 4627 	inc	dptr
   12F3 F0            [24] 4628 	movx	@dptr,a
   12F4 75 82 01      [24] 4629 	mov	dpl,#0x01
   12F7 12 1C CF      [24] 4630 	lcall	_appReturn
                           4631 ;	appFHSSNIC.c:956: break;
   12FA 02 17 BF      [24] 4632 	ljmp	00172$
   12FD                    4633 00129$:
                           4634 ;	appFHSSNIC.c:958: LED = 0;
   12FD C2 A4         [12] 4635 	clr	_P2_4
                           4636 ;	appFHSSNIC.c:959: macdata.mac_state = MAC_STATE_NONHOPPING;
   12FF 90 FD DD      [24] 4637 	mov	dptr,#_macdata
   1302 E4            [12] 4638 	clr	a
   1303 F0            [24] 4639 	movx	@dptr,a
                           4640 ;	appFHSSNIC.c:960: buf[0] = LCE_NO_ERROR;
   1304 8D 82         [24] 4641 	mov	dpl,r5
   1306 8E 83         [24] 4642 	mov	dph,r6
   1308 8F F0         [24] 4643 	mov	b,r7
   130A E4            [12] 4644 	clr	a
   130B 12 34 5C      [24] 4645 	lcall	__gptrput
                           4646 ;	appFHSSNIC.c:961: debug("total bytes tx:");
   130E 90 37 AD      [24] 4647 	mov	dptr,#__str_11
   1311 C0 07         [24] 4648 	push	ar7
   1313 C0 06         [24] 4649 	push	ar6
   1315 C0 05         [24] 4650 	push	ar5
   1317 12 21 F8      [24] 4651 	lcall	_debug
                           4652 ;	appFHSSNIC.c:962: debughex16(txTotal);
   131A 90 FD D6      [24] 4653 	mov	dptr,#_txTotal
   131D E0            [24] 4654 	movx	a,@dptr
   131E F9            [12] 4655 	mov	r1,a
   131F A3            [24] 4656 	inc	dptr
   1320 E0            [24] 4657 	movx	a,@dptr
   1321 FA            [12] 4658 	mov	r2,a
   1322 89 82         [24] 4659 	mov	dpl,r1
   1324 8A 83         [24] 4660 	mov	dph,r2
   1326 12 22 55      [24] 4661 	lcall	_debughex16
   1329 D0 05         [24] 4662 	pop	ar5
   132B D0 06         [24] 4663 	pop	ar6
   132D D0 07         [24] 4664 	pop	ar7
                           4665 ;	appFHSSNIC.c:963: appReturn( 1, buf);
   132F 90 F9 A5      [24] 4666 	mov	dptr,#_appReturn_PARM_2
   1332 ED            [12] 4667 	mov	a,r5
   1333 F0            [24] 4668 	movx	@dptr,a
   1334 EE            [12] 4669 	mov	a,r6
   1335 A3            [24] 4670 	inc	dptr
   1336 F0            [24] 4671 	movx	@dptr,a
   1337 75 82 01      [24] 4672 	mov	dpl,#0x01
   133A 12 1C CF      [24] 4673 	lcall	_appReturn
                           4674 ;	appFHSSNIC.c:964: break;
   133D 02 17 BF      [24] 4675 	ljmp	00172$
   1340                    4676 00131$:
                           4677 ;	appFHSSNIC.c:967: if (macdata.mac_state != MAC_STATE_LONG_XMIT)
   1340 90 FD DD      [24] 4678 	mov	dptr,#_macdata
   1343 E0            [24] 4679 	movx	a,@dptr
   1344 FA            [12] 4680 	mov	r2,a
   1345 BA 06 02      [24] 4681 	cjne	r2,#0x06,00246$
   1348 80 61         [24] 4682 	sjmp	00136$
   134A                    4683 00246$:
                           4684 ;	appFHSSNIC.c:969: debug("underrun");
   134A 90 37 BD      [24] 4685 	mov	dptr,#__str_12
   134D C0 07         [24] 4686 	push	ar7
   134F C0 06         [24] 4687 	push	ar6
   1351 C0 05         [24] 4688 	push	ar5
   1353 12 21 F8      [24] 4689 	lcall	_debug
   1356 D0 05         [24] 4690 	pop	ar5
   1358 D0 06         [24] 4691 	pop	ar6
   135A D0 07         [24] 4692 	pop	ar7
                           4693 ;	appFHSSNIC.c:971: if(lastCode[1] == LCE_DROPPED_PACKET)
   135C 90 FE 02      [24] 4694 	mov	dptr,#(_lastCode + 0x0001)
   135F E0            [24] 4695 	movx	a,@dptr
   1360 FA            [12] 4696 	mov	r2,a
   1361 BA 12 1B      [24] 4697 	cjne	r2,#0x12,00133$
                           4698 ;	appFHSSNIC.c:973: buf[0] = RC_TX_DROPPED_PACKET;
   1364 8D 82         [24] 4699 	mov	dpl,r5
   1366 8E 83         [24] 4700 	mov	dph,r6
   1368 8F F0         [24] 4701 	mov	b,r7
   136A 74 EC         [12] 4702 	mov	a,#0xEC
   136C 12 34 5C      [24] 4703 	lcall	__gptrput
                           4704 ;	appFHSSNIC.c:974: appReturn( 1, buf);
   136F 90 F9 A5      [24] 4705 	mov	dptr,#_appReturn_PARM_2
   1372 ED            [12] 4706 	mov	a,r5
   1373 F0            [24] 4707 	movx	@dptr,a
   1374 EE            [12] 4708 	mov	a,r6
   1375 A3            [24] 4709 	inc	dptr
   1376 F0            [24] 4710 	movx	@dptr,a
   1377 75 82 01      [24] 4711 	mov	dpl,#0x01
   137A 12 1C CF      [24] 4712 	lcall	_appReturn
   137D 80 1F         [24] 4713 	sjmp	00134$
   137F                    4714 00133$:
                           4715 ;	appFHSSNIC.c:978: lastCode[1] = LCE_RF_MULTI_BUFFER_NOT_INIT;
   137F 90 FE 02      [24] 4716 	mov	dptr,#(_lastCode + 0x0001)
   1382 74 17         [12] 4717 	mov	a,#0x17
   1384 F0            [24] 4718 	movx	@dptr,a
                           4719 ;	appFHSSNIC.c:979: buf[0] = RC_RF_MODE_INCOMPAT;
   1385 8D 82         [24] 4720 	mov	dpl,r5
   1387 8E 83         [24] 4721 	mov	dph,r6
   1389 8F F0         [24] 4722 	mov	b,r7
   138B 74 EF         [12] 4723 	mov	a,#0xEF
   138D 12 34 5C      [24] 4724 	lcall	__gptrput
                           4725 ;	appFHSSNIC.c:980: appReturn( 1, buf);
   1390 90 F9 A5      [24] 4726 	mov	dptr,#_appReturn_PARM_2
   1393 ED            [12] 4727 	mov	a,r5
   1394 F0            [24] 4728 	movx	@dptr,a
   1395 EE            [12] 4729 	mov	a,r6
   1396 A3            [24] 4730 	inc	dptr
   1397 F0            [24] 4731 	movx	@dptr,a
   1398 75 82 01      [24] 4732 	mov	dpl,#0x01
   139B 12 1C CF      [24] 4733 	lcall	_appReturn
   139E                    4734 00134$:
                           4735 ;	appFHSSNIC.c:982: LED = 0;
   139E C2 A4         [12] 4736 	clr	_P2_4
                           4737 ;	appFHSSNIC.c:983: resetRFSTATE();
   13A0 12 23 59      [24] 4738 	lcall	_resetRFSTATE
                           4739 ;	appFHSSNIC.c:984: macdata.mac_state = MAC_STATE_NONHOPPING;
   13A3 90 FD DD      [24] 4740 	mov	dptr,#_macdata
   13A6 E4            [12] 4741 	clr	a
   13A7 F0            [24] 4742 	movx	@dptr,a
                           4743 ;	appFHSSNIC.c:985: break;
   13A8 02 17 BF      [24] 4744 	ljmp	00172$
   13AB                    4745 00136$:
                           4746 ;	appFHSSNIC.c:988: buf[0] = MAC_tx(&buf[1], (__xdata u8) len);
   13AB 74 01         [12] 4747 	mov	a,#0x01
   13AD 2D            [12] 4748 	add	a,r5
   13AE F9            [12] 4749 	mov	r1,a
   13AF E4            [12] 4750 	clr	a
   13B0 3E            [12] 4751 	addc	a,r6
   13B1 FA            [12] 4752 	mov	r2,a
   13B2 90 F5 5C      [24] 4753 	mov	dptr,#_MAC_tx_PARM_2
   13B5 EB            [12] 4754 	mov	a,r3
   13B6 F0            [24] 4755 	movx	@dptr,a
   13B7 89 82         [24] 4756 	mov	dpl,r1
   13B9 8A 83         [24] 4757 	mov	dph,r2
   13BB C0 07         [24] 4758 	push	ar7
   13BD C0 06         [24] 4759 	push	ar6
   13BF C0 05         [24] 4760 	push	ar5
   13C1 12 03 55      [24] 4761 	lcall	_MAC_tx
   13C4 AC 82         [24] 4762 	mov	r4,dpl
   13C6 D0 05         [24] 4763 	pop	ar5
   13C8 D0 06         [24] 4764 	pop	ar6
   13CA D0 07         [24] 4765 	pop	ar7
   13CC 8D 82         [24] 4766 	mov	dpl,r5
   13CE 8E 83         [24] 4767 	mov	dph,r6
   13D0 8F F0         [24] 4768 	mov	b,r7
   13D2 EC            [12] 4769 	mov	a,r4
   13D3 12 34 5C      [24] 4770 	lcall	__gptrput
                           4771 ;	appFHSSNIC.c:990: if(buf[0] && buf[0] != RC_ERR_BUFFER_NOT_AVAILABLE)
   13D6 8D 82         [24] 4772 	mov	dpl,r5
   13D8 8E 83         [24] 4773 	mov	dph,r6
   13DA 8F F0         [24] 4774 	mov	b,r7
   13DC 12 35 F3      [24] 4775 	lcall	__gptrget
   13DF FB            [12] 4776 	mov	r3,a
   13E0 EC            [12] 4777 	mov	a,r4
   13E1 60 3B         [24] 4778 	jz	00138$
   13E3 BB FE 02      [24] 4779 	cjne	r3,#0xFE,00250$
   13E6 80 36         [24] 4780 	sjmp	00138$
   13E8                    4781 00250$:
                           4782 ;	appFHSSNIC.c:992: debug("buffer error");
   13E8 90 37 C6      [24] 4783 	mov	dptr,#__str_13
   13EB C0 07         [24] 4784 	push	ar7
   13ED C0 06         [24] 4785 	push	ar6
   13EF C0 05         [24] 4786 	push	ar5
   13F1 12 21 F8      [24] 4787 	lcall	_debug
   13F4 D0 05         [24] 4788 	pop	ar5
   13F6 D0 06         [24] 4789 	pop	ar6
   13F8 D0 07         [24] 4790 	pop	ar7
                           4791 ;	appFHSSNIC.c:993: debughex(buf[0]);
   13FA 8D 82         [24] 4792 	mov	dpl,r5
   13FC 8E 83         [24] 4793 	mov	dph,r6
   13FE 8F F0         [24] 4794 	mov	b,r7
   1400 12 35 F3      [24] 4795 	lcall	__gptrget
   1403 F5 82         [12] 4796 	mov	dpl,a
   1405 C0 07         [24] 4797 	push	ar7
   1407 C0 06         [24] 4798 	push	ar6
   1409 C0 05         [24] 4799 	push	ar5
   140B 12 22 3A      [24] 4800 	lcall	_debughex
                           4801 ;	appFHSSNIC.c:994: LED = 0;
   140E C2 A4         [12] 4802 	clr	_P2_4
                           4803 ;	appFHSSNIC.c:995: resetRFSTATE();
   1410 12 23 59      [24] 4804 	lcall	_resetRFSTATE
   1413 D0 05         [24] 4805 	pop	ar5
   1415 D0 06         [24] 4806 	pop	ar6
   1417 D0 07         [24] 4807 	pop	ar7
                           4808 ;	appFHSSNIC.c:996: macdata.mac_state = MAC_STATE_NONHOPPING;
   1419 90 FD DD      [24] 4809 	mov	dptr,#_macdata
   141C E4            [12] 4810 	clr	a
   141D F0            [24] 4811 	movx	@dptr,a
   141E                    4812 00138$:
                           4813 ;	appFHSSNIC.c:998: appReturn( 1, buf);
   141E 90 F9 A5      [24] 4814 	mov	dptr,#_appReturn_PARM_2
   1421 ED            [12] 4815 	mov	a,r5
   1422 F0            [24] 4816 	movx	@dptr,a
   1423 EE            [12] 4817 	mov	a,r6
   1424 A3            [24] 4818 	inc	dptr
   1425 F0            [24] 4819 	movx	@dptr,a
   1426 75 82 01      [24] 4820 	mov	dpl,#0x01
   1429 12 1C CF      [24] 4821 	lcall	_appReturn
                           4822 ;	appFHSSNIC.c:999: break;
   142C 02 17 BF      [24] 4823 	ljmp	00172$
                           4824 ;	appFHSSNIC.c:1001: case FHSS_XMIT:
   142F                    4825 00140$:
                           4826 ;	appFHSSNIC.c:1002: len = buf[0];
   142F 8D 82         [24] 4827 	mov	dpl,r5
   1431 8E 83         [24] 4828 	mov	dph,r6
   1433 8F F0         [24] 4829 	mov	b,r7
   1435 12 35 F3      [24] 4830 	lcall	__gptrget
   1438 FB            [12] 4831 	mov	r3,a
   1439 7C 00         [12] 4832 	mov	r4,#0x00
   143B 90 F5 86      [24] 4833 	mov	dptr,#_appHandleEP5_len_1_181
   143E EB            [12] 4834 	mov	a,r3
   143F F0            [24] 4835 	movx	@dptr,a
   1440 EC            [12] 4836 	mov	a,r4
   1441 A3            [24] 4837 	inc	dptr
   1442 F0            [24] 4838 	movx	@dptr,a
                           4839 ;	appFHSSNIC.c:1011: if (len > MAX_TX_MSGLEN)
   1443 C3            [12] 4840 	clr	c
   1444 74 F0         [12] 4841 	mov	a,#0xF0
   1446 9B            [12] 4842 	subb	a,r3
   1447 E4            [12] 4843 	clr	a
   1448 9C            [12] 4844 	subb	a,r4
   1449 50 19         [24] 4845 	jnc	00142$
                           4846 ;	appFHSSNIC.c:1013: debug("FHSSxmit message too long");
   144B 90 36 D1      [24] 4847 	mov	dptr,#__str_3
   144E 12 21 F8      [24] 4848 	lcall	_debug
                           4849 ;	appFHSSNIC.c:1014: appReturn( 1, (__xdata u8*)&len);
   1451 90 F9 A5      [24] 4850 	mov	dptr,#_appReturn_PARM_2
   1454 74 86         [12] 4851 	mov	a,#_appHandleEP5_len_1_181
   1456 F0            [24] 4852 	movx	@dptr,a
   1457 74 F5         [12] 4853 	mov	a,#(_appHandleEP5_len_1_181 >> 8)
   1459 A3            [24] 4854 	inc	dptr
   145A F0            [24] 4855 	movx	@dptr,a
   145B 75 82 01      [24] 4856 	mov	dpl,#0x01
   145E 12 1C CF      [24] 4857 	lcall	_appReturn
                           4858 ;	appFHSSNIC.c:1015: break;
   1461 02 17 BF      [24] 4859 	ljmp	00172$
   1464                    4860 00142$:
                           4861 ;	appFHSSNIC.c:1018: if (g_txMsgQueue[macdata.txMsgIdx][0] != 0)
   1464 90 FD EE      [24] 4862 	mov	dptr,#(_macdata + 0x0011)
   1467 E0            [24] 4863 	movx	a,@dptr
   1468 75 F0 F1      [24] 4864 	mov	b,#0xF1
   146B A4            [48] 4865 	mul	ab
   146C 24 72         [12] 4866 	add	a,#_g_txMsgQueue
   146E F9            [12] 4867 	mov	r1,a
   146F 74 F3         [12] 4868 	mov	a,#(_g_txMsgQueue >> 8)
   1471 35 F0         [12] 4869 	addc	a,b
   1473 FA            [12] 4870 	mov	r2,a
   1474 89 82         [24] 4871 	mov	dpl,r1
   1476 8A 83         [24] 4872 	mov	dph,r2
   1478 E0            [24] 4873 	movx	a,@dptr
   1479 60 19         [24] 4874 	jz	00144$
                           4875 ;	appFHSSNIC.c:1020: debug("still waiting on the last packet");
   147B 90 37 D3      [24] 4876 	mov	dptr,#__str_14
   147E 12 21 F8      [24] 4877 	lcall	_debug
                           4878 ;	appFHSSNIC.c:1021: appReturn( 1, (__xdata u8*)&len);
   1481 90 F9 A5      [24] 4879 	mov	dptr,#_appReturn_PARM_2
   1484 74 86         [12] 4880 	mov	a,#_appHandleEP5_len_1_181
   1486 F0            [24] 4881 	movx	@dptr,a
   1487 74 F5         [12] 4882 	mov	a,#(_appHandleEP5_len_1_181 >> 8)
   1489 A3            [24] 4883 	inc	dptr
   148A F0            [24] 4884 	movx	@dptr,a
   148B 75 82 01      [24] 4885 	mov	dpl,#0x01
   148E 12 1C CF      [24] 4886 	lcall	_appReturn
                           4887 ;	appFHSSNIC.c:1022: break;
   1491 02 17 BF      [24] 4888 	ljmp	00172$
   1494                    4889 00144$:
                           4890 ;	appFHSSNIC.c:1025: g_txMsgQueue[macdata.txMsgIdx][0] = len;
   1494 8B 00         [24] 4891 	mov	ar0,r3
   1496 89 82         [24] 4892 	mov	dpl,r1
   1498 8A 83         [24] 4893 	mov	dph,r2
   149A E8            [12] 4894 	mov	a,r0
   149B F0            [24] 4895 	movx	@dptr,a
                           4896 ;	appFHSSNIC.c:1026: memcpy(&g_txMsgQueue[macdata.txMsgIdx][1], &buf[1], len);
   149C 90 FD EE      [24] 4897 	mov	dptr,#(_macdata + 0x0011)
   149F E0            [24] 4898 	movx	a,@dptr
   14A0 75 F0 F1      [24] 4899 	mov	b,#0xF1
   14A3 A4            [48] 4900 	mul	ab
   14A4 24 72         [12] 4901 	add	a,#_g_txMsgQueue
   14A6 F9            [12] 4902 	mov	r1,a
   14A7 74 F3         [12] 4903 	mov	a,#(_g_txMsgQueue >> 8)
   14A9 35 F0         [12] 4904 	addc	a,b
   14AB FA            [12] 4905 	mov	r2,a
   14AC 09            [12] 4906 	inc	r1
   14AD B9 00 01      [24] 4907 	cjne	r1,#0x00,00253$
   14B0 0A            [12] 4908 	inc	r2
   14B1                    4909 00253$:
   14B1 89 0A         [24] 4910 	mov	_appHandleEP5_sloc1_1_0,r1
   14B3 8A 0B         [24] 4911 	mov	(_appHandleEP5_sloc1_1_0 + 1),r2
   14B5 75 0C 00      [24] 4912 	mov	(_appHandleEP5_sloc1_1_0 + 2),#0x00
   14B8 74 01         [12] 4913 	mov	a,#0x01
   14BA 2D            [12] 4914 	add	a,r5
   14BB F9            [12] 4915 	mov	r1,a
   14BC E4            [12] 4916 	clr	a
   14BD 3E            [12] 4917 	addc	a,r6
   14BE FA            [12] 4918 	mov	r2,a
   14BF 89 14         [24] 4919 	mov	_memcpy_PARM_2,r1
   14C1 8A 15         [24] 4920 	mov	(_memcpy_PARM_2 + 1),r2
   14C3 75 16 00      [24] 4921 	mov	(_memcpy_PARM_2 + 2),#0x00
   14C6 8B 17         [24] 4922 	mov	_memcpy_PARM_3,r3
   14C8 8C 18         [24] 4923 	mov	(_memcpy_PARM_3 + 1),r4
   14CA 85 0A 82      [24] 4924 	mov	dpl,_appHandleEP5_sloc1_1_0
   14CD 85 0B 83      [24] 4925 	mov	dph,(_appHandleEP5_sloc1_1_0 + 1)
   14D0 85 0C F0      [24] 4926 	mov	b,(_appHandleEP5_sloc1_1_0 + 2)
   14D3 12 33 BB      [24] 4927 	lcall	_memcpy
                           4928 ;	appFHSSNIC.c:1028: if (++macdata.txMsgIdx >= MAX_TX_MSGS)
   14D6 90 FD EE      [24] 4929 	mov	dptr,#(_macdata + 0x0011)
   14D9 E0            [24] 4930 	movx	a,@dptr
   14DA FC            [12] 4931 	mov	r4,a
   14DB 0C            [12] 4932 	inc	r4
   14DC 90 FD EE      [24] 4933 	mov	dptr,#(_macdata + 0x0011)
   14DF EC            [12] 4934 	mov	a,r4
   14E0 F0            [24] 4935 	movx	@dptr,a
   14E1 BC 02 00      [24] 4936 	cjne	r4,#0x02,00254$
   14E4                    4937 00254$:
   14E4 40 05         [24] 4938 	jc	00146$
                           4939 ;	appFHSSNIC.c:1030: macdata.txMsgIdx = 0;
   14E6 90 FD EE      [24] 4940 	mov	dptr,#(_macdata + 0x0011)
   14E9 E4            [12] 4941 	clr	a
   14EA F0            [24] 4942 	movx	@dptr,a
   14EB                    4943 00146$:
                           4944 ;	appFHSSNIC.c:1033: appReturn( 1, (__xdata u8*)&len);
   14EB 90 F9 A5      [24] 4945 	mov	dptr,#_appReturn_PARM_2
   14EE 74 86         [12] 4946 	mov	a,#_appHandleEP5_len_1_181
   14F0 F0            [24] 4947 	movx	@dptr,a
   14F1 74 F5         [12] 4948 	mov	a,#(_appHandleEP5_len_1_181 >> 8)
   14F3 A3            [24] 4949 	inc	dptr
   14F4 F0            [24] 4950 	movx	@dptr,a
   14F5 75 82 01      [24] 4951 	mov	dpl,#0x01
   14F8 12 1C CF      [24] 4952 	lcall	_appReturn
                           4953 ;	appFHSSNIC.c:1034: break;
   14FB 02 17 BF      [24] 4954 	ljmp	00172$
                           4955 ;	appFHSSNIC.c:1036: case FHSS_SET_CHANNELS:
   14FE                    4956 00147$:
                           4957 ;	appFHSSNIC.c:1037: macdata.NumChannels = (__xdata u16)buf[0];
   14FE 8D 82         [24] 4958 	mov	dpl,r5
   1500 8E 83         [24] 4959 	mov	dph,r6
   1502 8F F0         [24] 4960 	mov	b,r7
   1504 12 35 F3      [24] 4961 	lcall	__gptrget
   1507 FC            [12] 4962 	mov	r4,a
   1508 7B 00         [12] 4963 	mov	r3,#0x00
   150A 90 FD E2      [24] 4964 	mov	dptr,#(_macdata + 0x0005)
   150D EC            [12] 4965 	mov	a,r4
   150E F0            [24] 4966 	movx	@dptr,a
   150F EB            [12] 4967 	mov	a,r3
   1510 A3            [24] 4968 	inc	dptr
   1511 F0            [24] 4969 	movx	@dptr,a
                           4970 ;	appFHSSNIC.c:1038: if (macdata.NumChannels <= MAX_CHANNELS)
   1512 90 FD E2      [24] 4971 	mov	dptr,#(_macdata + 0x0005)
   1515 E0            [24] 4972 	movx	a,@dptr
   1516 F9            [12] 4973 	mov	r1,a
   1517 A3            [24] 4974 	inc	dptr
   1518 E0            [24] 4975 	movx	a,@dptr
   1519 FA            [12] 4976 	mov	r2,a
   151A C3            [12] 4977 	clr	c
   151B 74 70         [12] 4978 	mov	a,#0x70
   151D 9C            [12] 4979 	subb	a,r4
   151E 74 03         [12] 4980 	mov	a,#0x03
   1520 9B            [12] 4981 	subb	a,r3
   1521 40 2E         [24] 4982 	jc	00149$
                           4983 ;	appFHSSNIC.c:1041: memcpy(&g_Channels[0], &buf[2], macdata.NumChannels);
   1523 74 02         [12] 4984 	mov	a,#0x02
   1525 2D            [12] 4985 	add	a,r5
   1526 FB            [12] 4986 	mov	r3,a
   1527 E4            [12] 4987 	clr	a
   1528 3E            [12] 4988 	addc	a,r6
   1529 FC            [12] 4989 	mov	r4,a
   152A 8B 14         [24] 4990 	mov	_memcpy_PARM_2,r3
   152C 8C 15         [24] 4991 	mov	(_memcpy_PARM_2 + 1),r4
   152E 75 16 00      [24] 4992 	mov	(_memcpy_PARM_2 + 2),#0x00
   1531 89 17         [24] 4993 	mov	_memcpy_PARM_3,r1
   1533 8A 18         [24] 4994 	mov	(_memcpy_PARM_3 + 1),r2
   1535 90 F0 00      [24] 4995 	mov	dptr,#_g_Channels
   1538 75 F0 00      [24] 4996 	mov	b,#0x00
   153B 12 33 BB      [24] 4997 	lcall	_memcpy
                           4998 ;	appFHSSNIC.c:1042: appReturn( 2, (u8*)&macdata.NumChannels);
   153E 90 F9 A5      [24] 4999 	mov	dptr,#_appReturn_PARM_2
   1541 74 E2         [12] 5000 	mov	a,#(_macdata + 0x0005)
   1543 F0            [24] 5001 	movx	@dptr,a
   1544 74 FD         [12] 5002 	mov	a,#((_macdata + 0x0005) >> 8)
   1546 A3            [24] 5003 	inc	dptr
   1547 F0            [24] 5004 	movx	@dptr,a
   1548 75 82 02      [24] 5005 	mov	dpl,#0x02
   154B 12 1C CF      [24] 5006 	lcall	_appReturn
   154E 02 17 BF      [24] 5007 	ljmp	00172$
   1551                    5008 00149$:
                           5009 ;	appFHSSNIC.c:1044: appReturn( 8, (__xdata u8*)"NO DEAL");
   1551 90 F9 A5      [24] 5010 	mov	dptr,#_appReturn_PARM_2
   1554 74 F4         [12] 5011 	mov	a,#__str_15
   1556 F0            [24] 5012 	movx	@dptr,a
   1557 74 37         [12] 5013 	mov	a,#(__str_15 >> 8)
   1559 A3            [24] 5014 	inc	dptr
   155A F0            [24] 5015 	movx	@dptr,a
   155B 75 82 08      [24] 5016 	mov	dpl,#0x08
   155E 12 1C CF      [24] 5017 	lcall	_appReturn
                           5018 ;	appFHSSNIC.c:1046: break;
   1561 02 17 BF      [24] 5019 	ljmp	00172$
                           5020 ;	appFHSSNIC.c:1048: case FHSS_GET_CHANNELS:
   1564                    5021 00151$:
                           5022 ;	appFHSSNIC.c:1049: appReturn( macdata.NumChannels, &g_Channels[0]);
   1564 90 FD E2      [24] 5023 	mov	dptr,#(_macdata + 0x0005)
   1567 E0            [24] 5024 	movx	a,@dptr
   1568 FB            [12] 5025 	mov	r3,a
   1569 A3            [24] 5026 	inc	dptr
   156A E0            [24] 5027 	movx	a,@dptr
   156B 90 F9 A5      [24] 5028 	mov	dptr,#_appReturn_PARM_2
   156E 74 00         [12] 5029 	mov	a,#_g_Channels
   1570 F0            [24] 5030 	movx	@dptr,a
   1571 74 F0         [12] 5031 	mov	a,#(_g_Channels >> 8)
   1573 A3            [24] 5032 	inc	dptr
   1574 F0            [24] 5033 	movx	@dptr,a
   1575 8B 82         [24] 5034 	mov	dpl,r3
   1577 12 1C CF      [24] 5035 	lcall	_appReturn
                           5036 ;	appFHSSNIC.c:1050: break;
   157A 02 17 BF      [24] 5037 	ljmp	00172$
                           5038 ;	appFHSSNIC.c:1052: case FHSS_NEXT_CHANNEL:
   157D                    5039 00152$:
                           5040 ;	appFHSSNIC.c:1053: MAC_set_chanidx(MAC_getNextChannel());
   157D 12 06 7E      [24] 5041 	lcall	_MAC_getNextChannel
   1580 7B 00         [12] 5042 	mov	r3,#0x00
   1582 8B 83         [24] 5043 	mov	dph,r3
   1584 12 06 39      [24] 5044 	lcall	_MAC_set_chanidx
                           5045 ;	appFHSSNIC.c:1054: appReturn( 1, &g_Channels[macdata.curChanIdx]);
   1587 90 FD E6      [24] 5046 	mov	dptr,#(_macdata + 0x0009)
   158A E0            [24] 5047 	movx	a,@dptr
   158B FB            [12] 5048 	mov	r3,a
   158C A3            [24] 5049 	inc	dptr
   158D E0            [24] 5050 	movx	a,@dptr
   158E FC            [12] 5051 	mov	r4,a
   158F 90 F9 A5      [24] 5052 	mov	dptr,#_appReturn_PARM_2
   1592 EB            [12] 5053 	mov	a,r3
   1593 24 00         [12] 5054 	add	a,#_g_Channels
   1595 F0            [24] 5055 	movx	@dptr,a
   1596 EC            [12] 5056 	mov	a,r4
   1597 34 F0         [12] 5057 	addc	a,#(_g_Channels >> 8)
   1599 A3            [24] 5058 	inc	dptr
   159A F0            [24] 5059 	movx	@dptr,a
   159B 75 82 01      [24] 5060 	mov	dpl,#0x01
   159E 12 1C CF      [24] 5061 	lcall	_appReturn
                           5062 ;	appFHSSNIC.c:1055: break;
   15A1 02 17 BF      [24] 5063 	ljmp	00172$
                           5064 ;	appFHSSNIC.c:1057: case FHSS_CHANGE_CHANNEL:
   15A4                    5065 00153$:
                           5066 ;	appFHSSNIC.c:1058: PHY_set_channel(buf[0]);
   15A4 8D 82         [24] 5067 	mov	dpl,r5
   15A6 8E 83         [24] 5068 	mov	dph,r6
   15A8 8F F0         [24] 5069 	mov	b,r7
   15AA 12 35 F3      [24] 5070 	lcall	__gptrget
   15AD FC            [12] 5071 	mov	r4,a
   15AE 7B 00         [12] 5072 	mov	r3,#0x00
   15B0 8C 82         [24] 5073 	mov	dpl,r4
   15B2 8B 83         [24] 5074 	mov	dph,r3
   15B4 C0 07         [24] 5075 	push	ar7
   15B6 C0 06         [24] 5076 	push	ar6
   15B8 C0 05         [24] 5077 	push	ar5
   15BA 12 01 14      [24] 5078 	lcall	_PHY_set_channel
   15BD D0 05         [24] 5079 	pop	ar5
   15BF D0 06         [24] 5080 	pop	ar6
   15C1 D0 07         [24] 5081 	pop	ar7
                           5082 ;	appFHSSNIC.c:1059: appReturn( 1, buf);
   15C3 90 F9 A5      [24] 5083 	mov	dptr,#_appReturn_PARM_2
   15C6 ED            [12] 5084 	mov	a,r5
   15C7 F0            [24] 5085 	movx	@dptr,a
   15C8 EE            [12] 5086 	mov	a,r6
   15C9 A3            [24] 5087 	inc	dptr
   15CA F0            [24] 5088 	movx	@dptr,a
   15CB 75 82 01      [24] 5089 	mov	dpl,#0x01
   15CE 12 1C CF      [24] 5090 	lcall	_appReturn
                           5091 ;	appFHSSNIC.c:1060: break;
   15D1 02 17 BF      [24] 5092 	ljmp	00172$
                           5093 ;	appFHSSNIC.c:1062: case FHSS_START_HOPPING:
   15D4                    5094 00154$:
                           5095 ;	appFHSSNIC.c:1063: begin_hopping(0);
   15D4 75 82 00      [24] 5096 	mov	dpl,#0x00
   15D7 C0 07         [24] 5097 	push	ar7
   15D9 C0 06         [24] 5098 	push	ar6
   15DB C0 05         [24] 5099 	push	ar5
   15DD 12 01 95      [24] 5100 	lcall	_begin_hopping
   15E0 D0 05         [24] 5101 	pop	ar5
   15E2 D0 06         [24] 5102 	pop	ar6
   15E4 D0 07         [24] 5103 	pop	ar7
                           5104 ;	appFHSSNIC.c:1064: appReturn( 1, buf);
   15E6 90 F9 A5      [24] 5105 	mov	dptr,#_appReturn_PARM_2
   15E9 ED            [12] 5106 	mov	a,r5
   15EA F0            [24] 5107 	movx	@dptr,a
   15EB EE            [12] 5108 	mov	a,r6
   15EC A3            [24] 5109 	inc	dptr
   15ED F0            [24] 5110 	movx	@dptr,a
   15EE 75 82 01      [24] 5111 	mov	dpl,#0x01
   15F1 12 1C CF      [24] 5112 	lcall	_appReturn
                           5113 ;	appFHSSNIC.c:1065: break;
   15F4 02 17 BF      [24] 5114 	ljmp	00172$
                           5115 ;	appFHSSNIC.c:1067: case FHSS_STOP_HOPPING:
   15F7                    5116 00155$:
                           5117 ;	appFHSSNIC.c:1068: stop_hopping();
   15F7 C0 07         [24] 5118 	push	ar7
   15F9 C0 06         [24] 5119 	push	ar6
   15FB C0 05         [24] 5120 	push	ar5
   15FD 12 01 AE      [24] 5121 	lcall	_stop_hopping
   1600 D0 05         [24] 5122 	pop	ar5
   1602 D0 06         [24] 5123 	pop	ar6
   1604 D0 07         [24] 5124 	pop	ar7
                           5125 ;	appFHSSNIC.c:1069: appReturn( 1, buf);
   1606 90 F9 A5      [24] 5126 	mov	dptr,#_appReturn_PARM_2
   1609 ED            [12] 5127 	mov	a,r5
   160A F0            [24] 5128 	movx	@dptr,a
   160B EE            [12] 5129 	mov	a,r6
   160C A3            [24] 5130 	inc	dptr
   160D F0            [24] 5131 	movx	@dptr,a
   160E 75 82 01      [24] 5132 	mov	dpl,#0x01
   1611 12 1C CF      [24] 5133 	lcall	_appReturn
                           5134 ;	appFHSSNIC.c:1070: break;
   1614 02 17 BF      [24] 5135 	ljmp	00172$
                           5136 ;	appFHSSNIC.c:1073: case FHSS_SET_MAC_THRESHOLD:
   1617                    5137 00156$:
                           5138 ;	appFHSSNIC.c:1074: macdata.MAC_threshold = buf[0];
   1617 8D 82         [24] 5139 	mov	dpl,r5
   1619 8E 83         [24] 5140 	mov	dph,r6
   161B 8F F0         [24] 5141 	mov	b,r7
   161D 12 35 F3      [24] 5142 	lcall	__gptrget
   1620 FC            [12] 5143 	mov	r4,a
   1621 7B 00         [12] 5144 	mov	r3,#0x00
   1623 90 FD DE      [24] 5145 	mov	dptr,#(_macdata + 0x0001)
   1626 EC            [12] 5146 	mov	a,r4
   1627 F0            [24] 5147 	movx	@dptr,a
   1628 EB            [12] 5148 	mov	a,r3
   1629 A3            [24] 5149 	inc	dptr
   162A F0            [24] 5150 	movx	@dptr,a
                           5151 ;	appFHSSNIC.c:1075: appReturn( 1, buf);
   162B 90 F9 A5      [24] 5152 	mov	dptr,#_appReturn_PARM_2
   162E ED            [12] 5153 	mov	a,r5
   162F F0            [24] 5154 	movx	@dptr,a
   1630 EE            [12] 5155 	mov	a,r6
   1631 A3            [24] 5156 	inc	dptr
   1632 F0            [24] 5157 	movx	@dptr,a
   1633 75 82 01      [24] 5158 	mov	dpl,#0x01
   1636 12 1C CF      [24] 5159 	lcall	_appReturn
                           5160 ;	appFHSSNIC.c:1076: break;
   1639 02 17 BF      [24] 5161 	ljmp	00172$
                           5162 ;	appFHSSNIC.c:1078: case FHSS_GET_MAC_THRESHOLD:
   163C                    5163 00157$:
                           5164 ;	appFHSSNIC.c:1079: appReturn( 4, (__xdata u8*)&macdata.MAC_threshold);
   163C 90 F9 A5      [24] 5165 	mov	dptr,#_appReturn_PARM_2
   163F 74 DE         [12] 5166 	mov	a,#(_macdata + 0x0001)
   1641 F0            [24] 5167 	movx	@dptr,a
   1642 74 FD         [12] 5168 	mov	a,#((_macdata + 0x0001) >> 8)
   1644 A3            [24] 5169 	inc	dptr
   1645 F0            [24] 5170 	movx	@dptr,a
   1646 75 82 04      [24] 5171 	mov	dpl,#0x04
   1649 12 1C CF      [24] 5172 	lcall	_appReturn
                           5173 ;	appFHSSNIC.c:1080: break;
   164C 02 17 BF      [24] 5174 	ljmp	00172$
                           5175 ;	appFHSSNIC.c:1082: case FHSS_SET_MAC_DATA:
   164F                    5176 00158$:
                           5177 ;	appFHSSNIC.c:1083: debugx(buf);
   164F 8D 82         [24] 5178 	mov	dpl,r5
   1651 8E 83         [24] 5179 	mov	dph,r6
   1653 8F F0         [24] 5180 	mov	b,r7
   1655 C0 07         [24] 5181 	push	ar7
   1657 C0 06         [24] 5182 	push	ar6
   1659 C0 05         [24] 5183 	push	ar5
   165B 12 21 B7      [24] 5184 	lcall	_debugx
   165E D0 05         [24] 5185 	pop	ar5
   1660 D0 06         [24] 5186 	pop	ar6
   1662 D0 07         [24] 5187 	pop	ar7
                           5188 ;	appFHSSNIC.c:1084: debughex(buf[0]);
   1664 8D 82         [24] 5189 	mov	dpl,r5
   1666 8E 83         [24] 5190 	mov	dph,r6
   1668 8F F0         [24] 5191 	mov	b,r7
   166A 12 35 F3      [24] 5192 	lcall	__gptrget
   166D F5 82         [12] 5193 	mov	dpl,a
   166F C0 07         [24] 5194 	push	ar7
   1671 C0 06         [24] 5195 	push	ar6
   1673 C0 05         [24] 5196 	push	ar5
   1675 12 22 3A      [24] 5197 	lcall	_debughex
   1678 D0 05         [24] 5198 	pop	ar5
   167A D0 06         [24] 5199 	pop	ar6
   167C D0 07         [24] 5200 	pop	ar7
                           5201 ;	appFHSSNIC.c:1085: memcpy((__xdata u8*)&macdata, (__xdata u8*)*buf, sizeof(macdata));
   167E 7B DD         [12] 5202 	mov	r3,#_macdata
   1680 7C FD         [12] 5203 	mov	r4,#(_macdata >> 8)
   1682 7A 00         [12] 5204 	mov	r2,#0x00
   1684 8D 82         [24] 5205 	mov	dpl,r5
   1686 8E 83         [24] 5206 	mov	dph,r6
   1688 8F F0         [24] 5207 	mov	b,r7
   168A 12 35 F3      [24] 5208 	lcall	__gptrget
   168D F8            [12] 5209 	mov	r0,a
   168E 79 00         [12] 5210 	mov	r1,#0x00
   1690 88 14         [24] 5211 	mov	_memcpy_PARM_2,r0
   1692 89 15         [24] 5212 	mov	(_memcpy_PARM_2 + 1),r1
   1694 75 16 00      [24] 5213 	mov	(_memcpy_PARM_2 + 2),#0x00
   1697 75 17 15      [24] 5214 	mov	_memcpy_PARM_3,#0x15
   169A 75 18 00      [24] 5215 	mov	(_memcpy_PARM_3 + 1),#0x00
   169D 8B 82         [24] 5216 	mov	dpl,r3
   169F 8C 83         [24] 5217 	mov	dph,r4
   16A1 8A F0         [24] 5218 	mov	b,r2
   16A3 C0 07         [24] 5219 	push	ar7
   16A5 C0 06         [24] 5220 	push	ar6
   16A7 C0 05         [24] 5221 	push	ar5
   16A9 12 33 BB      [24] 5222 	lcall	_memcpy
   16AC D0 05         [24] 5223 	pop	ar5
   16AE D0 06         [24] 5224 	pop	ar6
   16B0 D0 07         [24] 5225 	pop	ar7
                           5226 ;	appFHSSNIC.c:1086: appReturn( sizeof(macdata), buf);
   16B2 90 F9 A5      [24] 5227 	mov	dptr,#_appReturn_PARM_2
   16B5 ED            [12] 5228 	mov	a,r5
   16B6 F0            [24] 5229 	movx	@dptr,a
   16B7 EE            [12] 5230 	mov	a,r6
   16B8 A3            [24] 5231 	inc	dptr
   16B9 F0            [24] 5232 	movx	@dptr,a
   16BA 75 82 15      [24] 5233 	mov	dpl,#0x15
   16BD 12 1C CF      [24] 5234 	lcall	_appReturn
                           5235 ;	appFHSSNIC.c:1087: break;
   16C0 02 17 BF      [24] 5236 	ljmp	00172$
                           5237 ;	appFHSSNIC.c:1089: case FHSS_GET_MAC_DATA:
   16C3                    5238 00159$:
                           5239 ;	appFHSSNIC.c:1090: macdata.MAC_timer = rf_MAC_timer;
   16C3 90 FD D9      [24] 5240 	mov	dptr,#_rf_MAC_timer
   16C6 E0            [24] 5241 	movx	a,@dptr
   16C7 FB            [12] 5242 	mov	r3,a
   16C8 A3            [24] 5243 	inc	dptr
   16C9 E0            [24] 5244 	movx	a,@dptr
   16CA FC            [12] 5245 	mov	r4,a
   16CB 90 FD E0      [24] 5246 	mov	dptr,#(_macdata + 0x0003)
   16CE EB            [12] 5247 	mov	a,r3
   16CF F0            [24] 5248 	movx	@dptr,a
   16D0 EC            [12] 5249 	mov	a,r4
   16D1 A3            [24] 5250 	inc	dptr
   16D2 F0            [24] 5251 	movx	@dptr,a
                           5252 ;	appFHSSNIC.c:1091: appReturn( sizeof(macdata), (__xdata u8*)&macdata);
   16D3 90 F9 A5      [24] 5253 	mov	dptr,#_appReturn_PARM_2
   16D6 74 DD         [12] 5254 	mov	a,#_macdata
   16D8 F0            [24] 5255 	movx	@dptr,a
   16D9 74 FD         [12] 5256 	mov	a,#(_macdata >> 8)
   16DB A3            [24] 5257 	inc	dptr
   16DC F0            [24] 5258 	movx	@dptr,a
   16DD 75 82 15      [24] 5259 	mov	dpl,#0x15
   16E0 12 1C CF      [24] 5260 	lcall	_appReturn
                           5261 ;	appFHSSNIC.c:1092: break;
   16E3 02 17 BF      [24] 5262 	ljmp	00172$
                           5263 ;	appFHSSNIC.c:1094: case FHSS_START_SYNC:
   16E6                    5264 00160$:
                           5265 ;	appFHSSNIC.c:1095: MAC_sync(buf[0]);
   16E6 8D 82         [24] 5266 	mov	dpl,r5
   16E8 8E 83         [24] 5267 	mov	dph,r6
   16EA 8F F0         [24] 5268 	mov	b,r7
   16EC 12 35 F3      [24] 5269 	lcall	__gptrget
   16EF FC            [12] 5270 	mov	r4,a
   16F0 7B 00         [12] 5271 	mov	r3,#0x00
   16F2 8C 82         [24] 5272 	mov	dpl,r4
   16F4 8B 83         [24] 5273 	mov	dph,r3
   16F6 C0 07         [24] 5274 	push	ar7
   16F8 C0 06         [24] 5275 	push	ar6
   16FA C0 05         [24] 5276 	push	ar5
   16FC 12 05 35      [24] 5277 	lcall	_MAC_sync
   16FF D0 05         [24] 5278 	pop	ar5
   1701 D0 06         [24] 5279 	pop	ar6
   1703 D0 07         [24] 5280 	pop	ar7
                           5281 ;	appFHSSNIC.c:1096: appReturn( 1, buf);
   1705 90 F9 A5      [24] 5282 	mov	dptr,#_appReturn_PARM_2
   1708 ED            [12] 5283 	mov	a,r5
   1709 F0            [24] 5284 	movx	@dptr,a
   170A EE            [12] 5285 	mov	a,r6
   170B A3            [24] 5286 	inc	dptr
   170C F0            [24] 5287 	movx	@dptr,a
   170D 75 82 01      [24] 5288 	mov	dpl,#0x01
   1710 12 1C CF      [24] 5289 	lcall	_appReturn
                           5290 ;	appFHSSNIC.c:1097: break;
   1713 02 17 BF      [24] 5291 	ljmp	00172$
                           5292 ;	appFHSSNIC.c:1099: case FHSS_SET_STATE:
   1716                    5293 00161$:
                           5294 ;	appFHSSNIC.c:1101: macdata.tLastStateChange = clock;
   1716 90 FE 03      [24] 5295 	mov	dptr,#_clock
   1719 E0            [24] 5296 	movx	a,@dptr
   171A F9            [12] 5297 	mov	r1,a
   171B A3            [24] 5298 	inc	dptr
   171C E0            [24] 5299 	movx	a,@dptr
   171D FA            [12] 5300 	mov	r2,a
   171E A3            [24] 5301 	inc	dptr
   171F E0            [24] 5302 	movx	a,@dptr
   1720 A3            [24] 5303 	inc	dptr
   1721 E0            [24] 5304 	movx	a,@dptr
   1722 90 FD E8      [24] 5305 	mov	dptr,#(_macdata + 0x000b)
   1725 E9            [12] 5306 	mov	a,r1
   1726 F0            [24] 5307 	movx	@dptr,a
   1727 EA            [12] 5308 	mov	a,r2
   1728 A3            [24] 5309 	inc	dptr
   1729 F0            [24] 5310 	movx	@dptr,a
                           5311 ;	appFHSSNIC.c:1102: macdata.mac_state = (u8)buf[0];
   172A 8D 82         [24] 5312 	mov	dpl,r5
   172C 8E 83         [24] 5313 	mov	dph,r6
   172E 8F F0         [24] 5314 	mov	b,r7
   1730 12 35 F3      [24] 5315 	lcall	__gptrget
   1733 FC            [12] 5316 	mov	r4,a
   1734 90 FD DD      [24] 5317 	mov	dptr,#_macdata
   1737 F0            [24] 5318 	movx	@dptr,a
                           5319 ;	appFHSSNIC.c:1106: switch (macdata.mac_state)
   1738 90 FD DD      [24] 5320 	mov	dptr,#_macdata
   173B E0            [24] 5321 	movx	a,@dptr
   173C FB            [12] 5322 	mov	r3,a
   173D EC            [12] 5323 	mov	a,r4
   173E 24 FA         [12] 5324 	add	a,#0xff - 0x05
   1740 40 4D         [24] 5325 	jc	00168$
   1742 EB            [12] 5326 	mov	a,r3
   1743 2B            [12] 5327 	add	a,r3
   1744 2B            [12] 5328 	add	a,r3
   1745 90 17 49      [24] 5329 	mov	dptr,#00258$
   1748 73            [24] 5330 	jmp	@a+dptr
   1749                    5331 00258$:
   1749 02 17 5B      [24] 5332 	ljmp	00162$
   174C 02 17 5B      [24] 5333 	ljmp	00163$
   174F 02 17 5B      [24] 5334 	ljmp	00164$
   1752 02 17 7D      [24] 5335 	ljmp	00166$
   1755 02 17 7D      [24] 5336 	ljmp	00167$
   1758 02 17 6C      [24] 5337 	ljmp	00165$
                           5338 ;	appFHSSNIC.c:1108: case MAC_STATE_NONHOPPING:
   175B                    5339 00162$:
                           5340 ;	appFHSSNIC.c:1109: case MAC_STATE_DISCOVERY:
   175B                    5341 00163$:
                           5342 ;	appFHSSNIC.c:1110: case MAC_STATE_SYNCHING:
   175B                    5343 00164$:
                           5344 ;	appFHSSNIC.c:1112: stop_hopping();
   175B C0 07         [24] 5345 	push	ar7
   175D C0 06         [24] 5346 	push	ar6
   175F C0 05         [24] 5347 	push	ar5
   1761 12 01 AE      [24] 5348 	lcall	_stop_hopping
   1764 D0 05         [24] 5349 	pop	ar5
   1766 D0 06         [24] 5350 	pop	ar6
   1768 D0 07         [24] 5351 	pop	ar7
                           5352 ;	appFHSSNIC.c:1113: break;
                           5353 ;	appFHSSNIC.c:1115: case MAC_STATE_SYNCINGMASTER:
   176A 80 23         [24] 5354 	sjmp	00168$
   176C                    5355 00165$:
                           5356 ;	appFHSSNIC.c:1116: MAC_do_Master_scanny_thingy();
   176C C0 07         [24] 5357 	push	ar7
   176E C0 06         [24] 5358 	push	ar6
   1770 C0 05         [24] 5359 	push	ar5
   1772 12 06 11      [24] 5360 	lcall	_MAC_do_Master_scanny_thingy
   1775 D0 05         [24] 5361 	pop	ar5
   1777 D0 06         [24] 5362 	pop	ar6
   1779 D0 07         [24] 5363 	pop	ar7
                           5364 ;	appFHSSNIC.c:1117: break;
                           5365 ;	appFHSSNIC.c:1119: case MAC_STATE_SYNCHED:
   177B 80 12         [24] 5366 	sjmp	00168$
   177D                    5367 00166$:
                           5368 ;	appFHSSNIC.c:1120: case MAC_STATE_SYNC_MASTER:
   177D                    5369 00167$:
                           5370 ;	appFHSSNIC.c:1121: begin_hopping(0);
   177D 75 82 00      [24] 5371 	mov	dpl,#0x00
   1780 C0 07         [24] 5372 	push	ar7
   1782 C0 06         [24] 5373 	push	ar6
   1784 C0 05         [24] 5374 	push	ar5
   1786 12 01 95      [24] 5375 	lcall	_begin_hopping
   1789 D0 05         [24] 5376 	pop	ar5
   178B D0 06         [24] 5377 	pop	ar6
   178D D0 07         [24] 5378 	pop	ar7
                           5379 ;	appFHSSNIC.c:1123: }
   178F                    5380 00168$:
                           5381 ;	appFHSSNIC.c:1125: appReturn( 1, buf);
   178F 90 F9 A5      [24] 5382 	mov	dptr,#_appReturn_PARM_2
   1792 ED            [12] 5383 	mov	a,r5
   1793 F0            [24] 5384 	movx	@dptr,a
   1794 EE            [12] 5385 	mov	a,r6
   1795 A3            [24] 5386 	inc	dptr
   1796 F0            [24] 5387 	movx	@dptr,a
   1797 75 82 01      [24] 5388 	mov	dpl,#0x01
   179A 12 1C CF      [24] 5389 	lcall	_appReturn
                           5390 ;	appFHSSNIC.c:1126: break;
                           5391 ;	appFHSSNIC.c:1128: case FHSS_GET_STATE:
   179D 80 20         [24] 5392 	sjmp	00172$
   179F                    5393 00169$:
                           5394 ;	appFHSSNIC.c:1129: appReturn( 1, (__xdata u8*)&macdata.mac_state);
   179F 90 F9 A5      [24] 5395 	mov	dptr,#_appReturn_PARM_2
   17A2 74 DD         [12] 5396 	mov	a,#_macdata
   17A4 F0            [24] 5397 	movx	@dptr,a
   17A5 74 FD         [12] 5398 	mov	a,#(_macdata >> 8)
   17A7 A3            [24] 5399 	inc	dptr
   17A8 F0            [24] 5400 	movx	@dptr,a
   17A9 75 82 01      [24] 5401 	mov	dpl,#0x01
   17AC 12 1C CF      [24] 5402 	lcall	_appReturn
                           5403 ;	appFHSSNIC.c:1130: break;
                           5404 ;	appFHSSNIC.c:1132: default:
   17AF 80 0E         [24] 5405 	sjmp	00172$
   17B1                    5406 00170$:
                           5407 ;	appFHSSNIC.c:1133: appReturn( 1, buf);
   17B1 90 F9 A5      [24] 5408 	mov	dptr,#_appReturn_PARM_2
   17B4 ED            [12] 5409 	mov	a,r5
   17B5 F0            [24] 5410 	movx	@dptr,a
   17B6 EE            [12] 5411 	mov	a,r6
   17B7 A3            [24] 5412 	inc	dptr
   17B8 F0            [24] 5413 	movx	@dptr,a
   17B9 75 82 01      [24] 5414 	mov	dpl,#0x01
   17BC 12 1C CF      [24] 5415 	lcall	_appReturn
                           5416 ;	appFHSSNIC.c:1137: }
   17BF                    5417 00172$:
                           5418 ;	appFHSSNIC.c:1140: return 0;
   17BF 90 00 00      [24] 5419 	mov	dptr,#0x0000
   17C2 22            [24] 5420 	ret
                           5421 ;------------------------------------------------------------
                           5422 ;Allocation info for local variables in function 'appHandleEP0OUTdone'
                           5423 ;------------------------------------------------------------
                           5424 ;	appFHSSNIC.c:1144: void appHandleEP0OUTdone(void)
                           5425 ;	-----------------------------------------
                           5426 ;	 function appHandleEP0OUTdone
                           5427 ;	-----------------------------------------
   17C3                    5428 _appHandleEP0OUTdone:
                           5429 ;	appFHSSNIC.c:1146: }
   17C3 22            [24] 5430 	ret
                           5431 ;------------------------------------------------------------
                           5432 ;Allocation info for local variables in function 'appHandleEP0OUT'
                           5433 ;------------------------------------------------------------
                           5434 ;	appFHSSNIC.c:1149: void appHandleEP0OUT(void)
                           5435 ;	-----------------------------------------
                           5436 ;	 function appHandleEP0OUT
                           5437 ;	-----------------------------------------
   17C4                    5438 _appHandleEP0OUT:
                           5439 ;	appFHSSNIC.c:1179: }
   17C4 22            [24] 5440 	ret
                           5441 ;------------------------------------------------------------
                           5442 ;Allocation info for local variables in function 'appHandleEP0'
                           5443 ;------------------------------------------------------------
                           5444 ;pReq                      Allocated to registers 
                           5445 ;------------------------------------------------------------
                           5446 ;	appFHSSNIC.c:1186: int appHandleEP0(__xdata USB_Setup_Header* pReq)
                           5447 ;	-----------------------------------------
                           5448 ;	 function appHandleEP0
                           5449 ;	-----------------------------------------
   17C5                    5450 _appHandleEP0:
                           5451 ;	appFHSSNIC.c:1222: return 0;
   17C5 90 00 00      [24] 5452 	mov	dptr,#0x0000
   17C8 22            [24] 5453 	ret
                           5454 ;------------------------------------------------------------
                           5455 ;Allocation info for local variables in function 'appInitRf'
                           5456 ;------------------------------------------------------------
                           5457 ;	appFHSSNIC.c:1232: void appInitRf(void)
                           5458 ;	-----------------------------------------
                           5459 ;	 function appInitRf
                           5460 ;	-----------------------------------------
   17C9                    5461 _appInitRf:
                           5462 ;	appFHSSNIC.c:1238: IOCFG2      = 0x00;
   17C9 90 DF 2F      [24] 5463 	mov	dptr,#_IOCFG2
                           5464 ;	appFHSSNIC.c:1239: IOCFG1      = 0x00;
                           5465 ;	appFHSSNIC.c:1240: IOCFG0      = 0x00;
   17CC E4            [12] 5466 	clr	a
   17CD F0            [24] 5467 	movx	@dptr,a
   17CE 90 DF 30      [24] 5468 	mov	dptr,#_IOCFG1
   17D1 F0            [24] 5469 	movx	@dptr,a
   17D2 90 DF 31      [24] 5470 	mov	dptr,#_IOCFG0
   17D5 F0            [24] 5471 	movx	@dptr,a
                           5472 ;	appFHSSNIC.c:1241: SYNC1       = 0x0c;
   17D6 90 DF 00      [24] 5473 	mov	dptr,#_SYNC1
   17D9 74 0C         [12] 5474 	mov	a,#0x0C
   17DB F0            [24] 5475 	movx	@dptr,a
                           5476 ;	appFHSSNIC.c:1242: SYNC0       = 0x4e;
   17DC 90 DF 01      [24] 5477 	mov	dptr,#_SYNC0
   17DF 74 4E         [12] 5478 	mov	a,#0x4E
   17E1 F0            [24] 5479 	movx	@dptr,a
                           5480 ;	appFHSSNIC.c:1243: PKTLEN      = 0xff;
   17E2 90 DF 02      [24] 5481 	mov	dptr,#_PKTLEN
   17E5 74 FF         [12] 5482 	mov	a,#0xFF
   17E7 F0            [24] 5483 	movx	@dptr,a
                           5484 ;	appFHSSNIC.c:1244: PKTCTRL1    = 0x40; // PQT threshold  - was 0x00
   17E8 90 DF 03      [24] 5485 	mov	dptr,#_PKTCTRL1
   17EB 74 40         [12] 5486 	mov	a,#0x40
   17ED F0            [24] 5487 	movx	@dptr,a
                           5488 ;	appFHSSNIC.c:1245: PKTCTRL0    = 0x00; // FLEN.  for VLEN use |1 (ie.  FLEN=00, VLEN=01)
   17EE 90 DF 04      [24] 5489 	mov	dptr,#_PKTCTRL0
                           5490 ;	appFHSSNIC.c:1246: ADDR        = 0x00;
                           5491 ;	appFHSSNIC.c:1247: CHANNR      = 0x00;
   17F1 E4            [12] 5492 	clr	a
   17F2 F0            [24] 5493 	movx	@dptr,a
   17F3 90 DF 05      [24] 5494 	mov	dptr,#_ADDR
   17F6 F0            [24] 5495 	movx	@dptr,a
   17F7 90 DF 06      [24] 5496 	mov	dptr,#_CHANNR
   17FA F0            [24] 5497 	movx	@dptr,a
                           5498 ;	appFHSSNIC.c:1248: FSCTRL1     = 0x06;
   17FB 90 DF 07      [24] 5499 	mov	dptr,#_FSCTRL1
   17FE 74 06         [12] 5500 	mov	a,#0x06
   1800 F0            [24] 5501 	movx	@dptr,a
                           5502 ;	appFHSSNIC.c:1249: FSCTRL0     = 0x00;
   1801 90 DF 08      [24] 5503 	mov	dptr,#_FSCTRL0
   1804 E4            [12] 5504 	clr	a
   1805 F0            [24] 5505 	movx	@dptr,a
                           5506 ;	appFHSSNIC.c:1250: FREQ2       = 0x24;
   1806 90 DF 09      [24] 5507 	mov	dptr,#_FREQ2
   1809 74 24         [12] 5508 	mov	a,#0x24
   180B F0            [24] 5509 	movx	@dptr,a
                           5510 ;	appFHSSNIC.c:1251: FREQ1       = 0x3a;
   180C 90 DF 0A      [24] 5511 	mov	dptr,#_FREQ1
   180F 74 3A         [12] 5512 	mov	a,#0x3A
   1811 F0            [24] 5513 	movx	@dptr,a
                           5514 ;	appFHSSNIC.c:1252: FREQ0       = 0xf1;
   1812 90 DF 0B      [24] 5515 	mov	dptr,#_FREQ0
   1815 74 F1         [12] 5516 	mov	a,#0xF1
   1817 F0            [24] 5517 	movx	@dptr,a
                           5518 ;	appFHSSNIC.c:1253: MDMCFG4     = 0xca;
   1818 90 DF 0C      [24] 5519 	mov	dptr,#_MDMCFG4
   181B 74 CA         [12] 5520 	mov	a,#0xCA
   181D F0            [24] 5521 	movx	@dptr,a
                           5522 ;	appFHSSNIC.c:1254: MDMCFG3     = 0xa3;
   181E 90 DF 0D      [24] 5523 	mov	dptr,#_MDMCFG3
   1821 74 A3         [12] 5524 	mov	a,#0xA3
   1823 F0            [24] 5525 	movx	@dptr,a
                           5526 ;	appFHSSNIC.c:1255: MDMCFG2     = 0x01;
   1824 90 DF 0E      [24] 5527 	mov	dptr,#_MDMCFG2
   1827 74 01         [12] 5528 	mov	a,#0x01
   1829 F0            [24] 5529 	movx	@dptr,a
                           5530 ;	appFHSSNIC.c:1256: MDMCFG1     = 0x23;
   182A 90 DF 0F      [24] 5531 	mov	dptr,#_MDMCFG1
   182D 74 23         [12] 5532 	mov	a,#0x23
   182F F0            [24] 5533 	movx	@dptr,a
                           5534 ;	appFHSSNIC.c:1257: MDMCFG0     = 0x11;
   1830 90 DF 10      [24] 5535 	mov	dptr,#_MDMCFG0
   1833 74 11         [12] 5536 	mov	a,#0x11
   1835 F0            [24] 5537 	movx	@dptr,a
                           5538 ;	appFHSSNIC.c:1258: DEVIATN     = 0x36;
   1836 90 DF 11      [24] 5539 	mov	dptr,#_DEVIATN
   1839 74 36         [12] 5540 	mov	a,#0x36
   183B F0            [24] 5541 	movx	@dptr,a
                           5542 ;	appFHSSNIC.c:1259: MCSM2       = 0x07;             // RX_TIMEOUT
   183C 90 DF 12      [24] 5543 	mov	dptr,#_MCSM2
   183F 74 07         [12] 5544 	mov	a,#0x07
   1841 F0            [24] 5545 	movx	@dptr,a
                           5546 ;	appFHSSNIC.c:1260: MCSM1       = 0x0f;             // was 'CCA_MODE RSSI below threshold unless currently recvg pkt'-3, now 'Always'-0 - always end up in RX mode
   1842 90 DF 13      [24] 5547 	mov	dptr,#_MCSM1
   1845 74 0F         [12] 5548 	mov	a,#0x0F
   1847 F0            [24] 5549 	movx	@dptr,a
                           5550 ;	appFHSSNIC.c:1261: MCSM0       = 0x18;             // fsautosync when going from idle to rx/tx/fstxon
   1848 90 DF 14      [24] 5551 	mov	dptr,#_MCSM0
   184B 74 18         [12] 5552 	mov	a,#0x18
   184D F0            [24] 5553 	movx	@dptr,a
                           5554 ;	appFHSSNIC.c:1262: FOCCFG      = 0x17;
   184E 90 DF 15      [24] 5555 	mov	dptr,#_FOCCFG
   1851 74 17         [12] 5556 	mov	a,#0x17
   1853 F0            [24] 5557 	movx	@dptr,a
                           5558 ;	appFHSSNIC.c:1263: BSCFG       = 0x6c;
   1854 90 DF 16      [24] 5559 	mov	dptr,#_BSCFG
   1857 74 6C         [12] 5560 	mov	a,#0x6C
   1859 F0            [24] 5561 	movx	@dptr,a
                           5562 ;	appFHSSNIC.c:1264: AGCCTRL2    = 0x03;
   185A 90 DF 17      [24] 5563 	mov	dptr,#_AGCCTRL2
   185D 74 03         [12] 5564 	mov	a,#0x03
   185F F0            [24] 5565 	movx	@dptr,a
                           5566 ;	appFHSSNIC.c:1265: AGCCTRL1    = 0x40;
   1860 90 DF 18      [24] 5567 	mov	dptr,#_AGCCTRL1
   1863 74 40         [12] 5568 	mov	a,#0x40
   1865 F0            [24] 5569 	movx	@dptr,a
                           5570 ;	appFHSSNIC.c:1266: AGCCTRL0    = 0x91;
   1866 90 DF 19      [24] 5571 	mov	dptr,#_AGCCTRL0
   1869 74 91         [12] 5572 	mov	a,#0x91
   186B F0            [24] 5573 	movx	@dptr,a
                           5574 ;	appFHSSNIC.c:1267: FREND1      = 0x56;
   186C 90 DF 1A      [24] 5575 	mov	dptr,#_FREND1
   186F 74 56         [12] 5576 	mov	a,#0x56
   1871 F0            [24] 5577 	movx	@dptr,a
                           5578 ;	appFHSSNIC.c:1268: FREND0      = 0x10;
   1872 90 DF 1B      [24] 5579 	mov	dptr,#_FREND0
   1875 74 10         [12] 5580 	mov	a,#0x10
   1877 F0            [24] 5581 	movx	@dptr,a
                           5582 ;	appFHSSNIC.c:1269: FSCAL3      = 0xe9;
   1878 90 DF 1C      [24] 5583 	mov	dptr,#_FSCAL3
   187B 74 E9         [12] 5584 	mov	a,#0xE9
   187D F0            [24] 5585 	movx	@dptr,a
                           5586 ;	appFHSSNIC.c:1270: FSCAL2      = 0x2a;
   187E 90 DF 1D      [24] 5587 	mov	dptr,#_FSCAL2
   1881 74 2A         [12] 5588 	mov	a,#0x2A
   1883 F0            [24] 5589 	movx	@dptr,a
                           5590 ;	appFHSSNIC.c:1271: FSCAL1      = 0x00;
   1884 90 DF 1E      [24] 5591 	mov	dptr,#_FSCAL1
   1887 E4            [12] 5592 	clr	a
   1888 F0            [24] 5593 	movx	@dptr,a
                           5594 ;	appFHSSNIC.c:1272: FSCAL0      = 0x1f;
   1889 90 DF 1F      [24] 5595 	mov	dptr,#_FSCAL0
   188C 74 1F         [12] 5596 	mov	a,#0x1F
   188E F0            [24] 5597 	movx	@dptr,a
                           5598 ;	appFHSSNIC.c:1273: TEST2       = 0x88; // low data rates, increased sensitivity provided by 0x81- was 0x88
   188F 90 DF 23      [24] 5599 	mov	dptr,#_TEST2
   1892 74 88         [12] 5600 	mov	a,#0x88
   1894 F0            [24] 5601 	movx	@dptr,a
                           5602 ;	appFHSSNIC.c:1274: TEST1       = 0x31; // always 0x31 in tx-mode, for low data rates 0x35 provides increased sensitivity - was 0x31
   1895 90 DF 24      [24] 5603 	mov	dptr,#_TEST1
   1898 74 31         [12] 5604 	mov	a,#0x31
   189A F0            [24] 5605 	movx	@dptr,a
                           5606 ;	appFHSSNIC.c:1275: TEST0       = 0x09;
   189B 90 DF 25      [24] 5607 	mov	dptr,#_TEST0
   189E 74 09         [12] 5608 	mov	a,#0x09
   18A0 F0            [24] 5609 	movx	@dptr,a
                           5610 ;	appFHSSNIC.c:1276: PA_TABLE0   = 0xc0;
   18A1 90 DF 2E      [24] 5611 	mov	dptr,#_PA_TABLE0
   18A4 74 C0         [12] 5612 	mov	a,#0xC0
   18A6 F0            [24] 5613 	movx	@dptr,a
                           5614 ;	appFHSSNIC.c:1284: FSCTRL1     = 0x0c;             // Intermediate Frequency
   18A7 90 DF 07      [24] 5615 	mov	dptr,#_FSCTRL1
   18AA 74 0C         [12] 5616 	mov	a,#0x0C
   18AC F0            [24] 5617 	movx	@dptr,a
                           5618 ;	appFHSSNIC.c:1286: FREQ2       = 0x25;
   18AD 90 DF 09      [24] 5619 	mov	dptr,#_FREQ2
   18B0 74 25         [12] 5620 	mov	a,#0x25
   18B2 F0            [24] 5621 	movx	@dptr,a
                           5622 ;	appFHSSNIC.c:1287: FREQ1       = 0x95;
   18B3 90 DF 0A      [24] 5623 	mov	dptr,#_FREQ1
   18B6 74 95         [12] 5624 	mov	a,#0x95
   18B8 F0            [24] 5625 	movx	@dptr,a
                           5626 ;	appFHSSNIC.c:1288: FREQ0       = 0x55;
   18B9 90 DF 0B      [24] 5627 	mov	dptr,#_FREQ0
   18BC 74 55         [12] 5628 	mov	a,#0x55
   18BE F0            [24] 5629 	movx	@dptr,a
                           5630 ;	appFHSSNIC.c:1300: FREND1      = 0xb6;
   18BF 90 DF 1A      [24] 5631 	mov	dptr,#_FREND1
   18C2 74 B6         [12] 5632 	mov	a,#0xB6
   18C4 F0            [24] 5633 	movx	@dptr,a
                           5634 ;	appFHSSNIC.c:1301: FREND0      = 0x10;
   18C5 90 DF 1B      [24] 5635 	mov	dptr,#_FREND0
   18C8 74 10         [12] 5636 	mov	a,#0x10
   18CA F0            [24] 5637 	movx	@dptr,a
                           5638 ;	appFHSSNIC.c:1302: FSCAL3      = 0xea;
   18CB 90 DF 1C      [24] 5639 	mov	dptr,#_FSCAL3
   18CE 74 EA         [12] 5640 	mov	a,#0xEA
   18D0 F0            [24] 5641 	movx	@dptr,a
                           5642 ;	appFHSSNIC.c:1303: FSCAL2      = 0x2a;
   18D1 90 DF 1D      [24] 5643 	mov	dptr,#_FSCAL2
   18D4 74 2A         [12] 5644 	mov	a,#0x2A
   18D6 F0            [24] 5645 	movx	@dptr,a
                           5646 ;	appFHSSNIC.c:1304: FSCAL1      = 0x00;
   18D7 90 DF 1E      [24] 5647 	mov	dptr,#_FSCAL1
   18DA E4            [12] 5648 	clr	a
   18DB F0            [24] 5649 	movx	@dptr,a
                           5650 ;	appFHSSNIC.c:1305: FSCAL0      = 0x1f;
   18DC 90 DF 1F      [24] 5651 	mov	dptr,#_FSCAL0
   18DF 74 1F         [12] 5652 	mov	a,#0x1F
   18E1 F0            [24] 5653 	movx	@dptr,a
   18E2 22            [24] 5654 	ret
                           5655 ;------------------------------------------------------------
                           5656 ;Allocation info for local variables in function 'initBoard'
                           5657 ;------------------------------------------------------------
                           5658 ;	appFHSSNIC.c:1351: void initBoard(void)
                           5659 ;	-----------------------------------------
                           5660 ;	 function initBoard
                           5661 ;	-----------------------------------------
   18E3                    5662 _initBoard:
                           5663 ;	appFHSSNIC.c:1354: clock_init();
   18E3 12 2F 1D      [24] 5664 	lcall	_clock_init
                           5665 ;	appFHSSNIC.c:1355: io_init();
   18E6 02 2F 49      [24] 5666 	ljmp	_io_init
                           5667 ;------------------------------------------------------------
                           5668 ;Allocation info for local variables in function 'main'
                           5669 ;------------------------------------------------------------
                           5670 ;	appFHSSNIC.c:1359: void main (void)
                           5671 ;	-----------------------------------------
                           5672 ;	 function main
                           5673 ;	-----------------------------------------
   18E9                    5674 _main:
                           5675 ;	appFHSSNIC.c:1361: initBoard();
   18E9 12 18 E3      [24] 5676 	lcall	_initBoard
                           5677 ;	appFHSSNIC.c:1362: LED_GREEN = 1;
   18EC D2 A4         [12] 5678 	setb	_P2_4
                           5679 ;	appFHSSNIC.c:1363: LED_RED = 1;
   18EE D2 A3         [12] 5680 	setb	_P2_3
                           5681 ;	appFHSSNIC.c:1364: initDMA();  // do this early so peripherals that use DMA can allocate channels correctly
   18F0 12 22 9F      [24] 5682 	lcall	_initDMA
                           5683 ;	appFHSSNIC.c:1365: LED_RED = 0;
   18F3 C2 A3         [12] 5684 	clr	_P2_3
                           5685 ;	appFHSSNIC.c:1366: initAES();
   18F5 12 2F 86      [24] 5686 	lcall	_initAES
                           5687 ;	appFHSSNIC.c:1367: LED_GREEN = 0;
   18F8 C2 A4         [12] 5688 	clr	_P2_4
                           5689 ;	appFHSSNIC.c:1368: initUSB();
   18FA 12 1B 90      [24] 5690 	lcall	_initUSB
                           5691 ;	appFHSSNIC.c:1369: init_RF();
   18FD 12 23 F9      [24] 5692 	lcall	_init_RF
                           5693 ;	appFHSSNIC.c:1370: appMainInit();
   1900 12 0A 0E      [24] 5694 	lcall	_appMainInit
                           5695 ;	appFHSSNIC.c:1372: usb_up();
   1903 12 1C 6A      [24] 5696 	lcall	_usb_up
                           5697 ;	appFHSSNIC.c:1375: EA = 1;
   1906 D2 AF         [12] 5698 	setb	_EA
                           5699 ;	appFHSSNIC.c:1376: waitForUSBsetup();
   1908 12 1C C7      [24] 5700 	lcall	_waitForUSBsetup
                           5701 ;	appFHSSNIC.c:1378: REALLYFASTBLINK();
   190B D2 A4         [12] 5702 	setb	_P2_4
   190D 90 00 02      [24] 5703 	mov	dptr,#0x0002
   1910 12 2D D3      [24] 5704 	lcall	_sleepMillis
   1913 C2 A4         [12] 5705 	clr	_P2_4
   1915 90 00 0A      [24] 5706 	mov	dptr,#0x000A
   1918 12 2D D3      [24] 5707 	lcall	_sleepMillis
                           5708 ;	appFHSSNIC.c:1380: LED_GREEN = 1;
   191B D2 A4         [12] 5709 	setb	_P2_4
                           5710 ;	appFHSSNIC.c:1382: while (1)
   191D                    5711 00102$:
                           5712 ;	appFHSSNIC.c:1384: usbProcessEvents();
   191D 12 1B D8      [24] 5713 	lcall	_usbProcessEvents
                           5714 ;	appFHSSNIC.c:1385: appMainLoop();
   1920 12 0A 35      [24] 5715 	lcall	_appMainLoop
   1923 80 F8         [24] 5716 	sjmp	00102$
                           5717 	.area CSEG    (CODE)
                           5718 	.area CONST   (CODE)
   3656                    5719 __str_0:
   3656 43 61 6E 6E 6F 74  5720 	.ascii "Cannot call transmit_long while FHSS Hopping or already proc"
        20 63 61 6C 6C 20
        74 72 61 6E 73 6D
        69 74 5F 6C 6F 6E
        67 20 77 68 69 6C
        65 20 46 48 53 53
        20 48 6F 70 70 69
        6E 67 20 6F 72 20
        61 6C 72 65 61 64
        79 20 70 72 6F 63
   3692 65 73 73 69 6E 67  5721 	.ascii "essing transmit_long!"
        20 74 72 61 6E 73
        6D 69 74 5F 6C 6F
        6E 67 21
   36A7 00                 5722 	.db 0x00
   36A8                    5723 __str_1:
   36A8 4D 41 43 5F 74 78  5724 	.ascii "MAC_tx() returned error"
        28 29 20 72 65 74
        75 72 6E 65 64 20
        65 72 72 6F 72
   36BF 00                 5725 	.db 0x00
   36C0                    5726 __str_2:
   36C0 6E 65 76 65 72 20  5727 	.ascii "never entered TX"
        65 6E 74 65 72 65
        64 20 54 58
   36D0 00                 5728 	.db 0x00
   36D1                    5729 __str_3:
   36D1 46 48 53 53 78 6D  5730 	.ascii "FHSSxmit message too long"
        69 74 20 6D 65 73
        73 61 67 65 20 74
        6F 6F 20 6C 6F 6E
        67
   36EA 00                 5731 	.db 0x00
   36EB                    5732 __str_4:
   36EB 46 48 53 53 20 73  5733 	.ascii "FHSS state entering SYNCHING from wrong state"
        74 61 74 65 20 65
        6E 74 65 72 69 6E
        67 20 53 59 4E 43
        48 49 4E 47 20 66
        72 6F 6D 20 77 72
        6F 6E 67 20 73 74
        61 74 65
   3718 00                 5734 	.db 0x00
   3719                    5735 __str_5:
   3719 53 59 4E 43 48 5F  5736 	.ascii "SYNCH_MASTER -> SYNCINGMASTER"
        4D 41 53 54 45 52
        20 2D 3E 20 53 59
        4E 43 49 4E 47 4D
        41 53 54 45 52
   3736 00                 5737 	.db 0x00
   3737                    5738 __str_6:
   3737 46 48 53 53 78 6D  5739 	.ascii "FHSSxmit done"
        69 74 20 64 6F 6E
        65
   3744 00                 5740 	.db 0x00
   3745                    5741 __str_7:
   3745 6E 65 74 77 6F 72  5742 	.ascii "network packet(sync)"
        6B 20 70 61 63 6B
        65 74 28 73 79 6E
        63 29
   3759 00                 5743 	.db 0x00
   375A                    5744 __str_8:
   375A 6E 65 74 77 6F 72  5745 	.ascii "network packet(discovery)"
        6B 20 70 61 63 6B
        65 74 28 64 69 73
        63 6F 76 65 72 79
        29
   3773 00                 5746 	.db 0x00
   3774                    5747 __str_9:
   3774 63 72 61 70 2C 20  5748 	.ascii "crap, please use FHSSxmit() instead!"
        70 6C 65 61 73 65
        20 75 73 65 20 46
        48 53 53 78 6D 69
        74 28 29 20 69 6E
        73 74 65 61 64 21
   3798 00                 5749 	.db 0x00
   3799                    5750 __str_10:
   3799 64 72 6F 70 6F 75  5751 	.ascii "dropout final wait!"
        74 20 66 69 6E 61
        6C 20 77 61 69 74
        21
   37AC 00                 5752 	.db 0x00
   37AD                    5753 __str_11:
   37AD 74 6F 74 61 6C 20  5754 	.ascii "total bytes tx:"
        62 79 74 65 73 20
        74 78 3A
   37BC 00                 5755 	.db 0x00
   37BD                    5756 __str_12:
   37BD 75 6E 64 65 72 72  5757 	.ascii "underrun"
        75 6E
   37C5 00                 5758 	.db 0x00
   37C6                    5759 __str_13:
   37C6 62 75 66 66 65 72  5760 	.ascii "buffer error"
        20 65 72 72 6F 72
   37D2 00                 5761 	.db 0x00
   37D3                    5762 __str_14:
   37D3 73 74 69 6C 6C 20  5763 	.ascii "still waiting on the last packet"
        77 61 69 74 69 6E
        67 20 6F 6E 20 74
        68 65 20 6C 61 73
        74 20 70 61 63 6B
        65 74
   37F3 00                 5764 	.db 0x00
   37F4                    5765 __str_15:
   37F4 4E 4F 20 44 45 41  5766 	.ascii "NO DEAL"
        4C
   37FB 00                 5767 	.db 0x00
                           5768 	.area XINIT   (CODE)
                           5769 	.area CABS    (ABS,CODE)
