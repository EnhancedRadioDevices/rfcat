                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Fri Dec 16 14:41:37 2016
                              5 ;--------------------------------------------------------
                              6 	.module cc1110_spicom
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _buildname
                             13 	.globl _sdccver
                             14 	.globl _vcom_down
                             15 	.globl _vcom_readline
                             16 	.globl _vcom_pollchar
                             17 	.globl _tx1_isr
                             18 	.globl _rx1_isr
                             19 	.globl _IdleMode
                             20 	.globl _TxMode
                             21 	.globl _RxMode
                             22 	.globl _strncmp
                             23 	.globl _sleepMillis
                             24 	.globl _USBIF
                             25 	.globl _MODE
                             26 	.globl _RE
                             27 	.globl _SLAVE
                             28 	.globl _FE
                             29 	.globl _ERR
                             30 	.globl _RX_BYTE
                             31 	.globl _TX_BYTE
                             32 	.globl _ACTIVE
                             33 	.globl _B_7
                             34 	.globl _B_6
                             35 	.globl _B_5
                             36 	.globl _B_4
                             37 	.globl _B_3
                             38 	.globl _B_2
                             39 	.globl _B_1
                             40 	.globl _B_0
                             41 	.globl _WDTIF
                             42 	.globl _P1IF
                             43 	.globl _UTX1IF
                             44 	.globl _UTX0IF
                             45 	.globl _P2IF
                             46 	.globl _ACC_7
                             47 	.globl _ACC_6
                             48 	.globl _ACC_5
                             49 	.globl _ACC_4
                             50 	.globl _ACC_3
                             51 	.globl _ACC_2
                             52 	.globl _ACC_1
                             53 	.globl _ACC_0
                             54 	.globl _OVFIM
                             55 	.globl _T4CH1IF
                             56 	.globl _T4CH0IF
                             57 	.globl _T4OVFIF
                             58 	.globl _T3CH1IF
                             59 	.globl _T3CH0IF
                             60 	.globl _T3OVFIF
                             61 	.globl _CY
                             62 	.globl _AC
                             63 	.globl _F0
                             64 	.globl _RS1
                             65 	.globl _RS0
                             66 	.globl _OV
                             67 	.globl _F1
                             68 	.globl _P
                             69 	.globl _STIF
                             70 	.globl _P0IF
                             71 	.globl _T4IF
                             72 	.globl _T3IF
                             73 	.globl _T2IF
                             74 	.globl _T1IF
                             75 	.globl _DMAIF
                             76 	.globl _P0IE
                             77 	.globl _T4IE
                             78 	.globl _T3IE
                             79 	.globl _T2IE
                             80 	.globl _T1IE
                             81 	.globl _DMAIE
                             82 	.globl _EA
                             83 	.globl _STIE
                             84 	.globl _ENCIE
                             85 	.globl _URX1IE
                             86 	.globl _URX0IE
                             87 	.globl _ADCIE
                             88 	.globl _RFTXRXIE
                             89 	.globl _P2_7
                             90 	.globl _P2_6
                             91 	.globl _P2_5
                             92 	.globl _P2_4
                             93 	.globl _P2_3
                             94 	.globl _P2_2
                             95 	.globl _P2_1
                             96 	.globl _P2_0
                             97 	.globl _ENCIF_1
                             98 	.globl _ENCIF_0
                             99 	.globl _P1_7
                            100 	.globl _P1_6
                            101 	.globl _P1_5
                            102 	.globl _P1_4
                            103 	.globl _P1_3
                            104 	.globl _P1_2
                            105 	.globl _P1_1
                            106 	.globl _P1_0
                            107 	.globl _URX1IF
                            108 	.globl _ADCIF
                            109 	.globl _URX0IF
                            110 	.globl _IT1
                            111 	.globl _RFTXRXIF
                            112 	.globl _IT0
                            113 	.globl _P0_7
                            114 	.globl _P0_6
                            115 	.globl _P0_5
                            116 	.globl _P0_4
                            117 	.globl _P0_3
                            118 	.globl _P0_2
                            119 	.globl _P0_1
                            120 	.globl _P0_0
                            121 	.globl _P2DIR
                            122 	.globl _P1DIR
                            123 	.globl _P0DIR
                            124 	.globl _U1GCR
                            125 	.globl _U1UCR
                            126 	.globl _U1BAUD
                            127 	.globl _U1DBUF
                            128 	.globl _U1CSR
                            129 	.globl _P2INP
                            130 	.globl _P1INP
                            131 	.globl _P2SEL
                            132 	.globl _P1SEL
                            133 	.globl _P0SEL
                            134 	.globl _ADCCFG
                            135 	.globl _PERCFG
                            136 	.globl _B
                            137 	.globl _T4CC1
                            138 	.globl _T4CCTL1
                            139 	.globl _T4CC0
                            140 	.globl _T4CCTL0
                            141 	.globl _T4CTL
                            142 	.globl _T4CNT
                            143 	.globl _RFIF
                            144 	.globl _IRCON2
                            145 	.globl _T1CCTL2
                            146 	.globl _T1CCTL1
                            147 	.globl _T1CCTL0
                            148 	.globl _T1CTL
                            149 	.globl _T1CNTH
                            150 	.globl _T1CNTL
                            151 	.globl _RFST
                            152 	.globl _ACC
                            153 	.globl _T1CC2H
                            154 	.globl _T1CC2L
                            155 	.globl _T1CC1H
                            156 	.globl _T1CC1L
                            157 	.globl _T1CC0H
                            158 	.globl _T1CC0L
                            159 	.globl _RFD
                            160 	.globl _TIMIF
                            161 	.globl _DMAREQ
                            162 	.globl _DMAARM
                            163 	.globl _DMA0CFGH
                            164 	.globl _DMA0CFGL
                            165 	.globl _DMA1CFGH
                            166 	.globl _DMA1CFGL
                            167 	.globl _DMAIRQ
                            168 	.globl _PSW
                            169 	.globl _T3CC1
                            170 	.globl _T3CCTL1
                            171 	.globl _T3CC0
                            172 	.globl _T3CCTL0
                            173 	.globl _T3CTL
                            174 	.globl _T3CNT
                            175 	.globl _WDCTL
                            176 	.globl __SFRC8
                            177 	.globl _MEMCTR
                            178 	.globl _CLKCON
                            179 	.globl _U0GCR
                            180 	.globl _U0UCR
                            181 	.globl __SFRC3
                            182 	.globl _U0BAUD
                            183 	.globl _U0DBUF
                            184 	.globl _IRCON
                            185 	.globl __SFRBF
                            186 	.globl _SLEEP
                            187 	.globl _RNDH
                            188 	.globl _RNDL
                            189 	.globl _ADCH
                            190 	.globl _ADCL
                            191 	.globl _IP1
                            192 	.globl _IEN1
                            193 	.globl __SFRB7
                            194 	.globl _ADCCON3
                            195 	.globl _ADCCON2
                            196 	.globl _ADCCON1
                            197 	.globl _ENCCS
                            198 	.globl _ENCDO
                            199 	.globl _ENCDI
                            200 	.globl __SFRB0
                            201 	.globl _FWDATA
                            202 	.globl _FCTL
                            203 	.globl _FADDRH
                            204 	.globl _FADDRL
                            205 	.globl _FWT
                            206 	.globl __SFRAA
                            207 	.globl _IP0
                            208 	.globl _IEN0
                            209 	.globl __SFRA7
                            210 	.globl _WORTIME1
                            211 	.globl _WORTIME0
                            212 	.globl _WOREVT1
                            213 	.globl _WOREVT0
                            214 	.globl _WORCTRL
                            215 	.globl _WORIRQ
                            216 	.globl _P2
                            217 	.globl __SFR9F
                            218 	.globl _T2CTL
                            219 	.globl _T2PR
                            220 	.globl _T2CT
                            221 	.globl _S1CON
                            222 	.globl _IEN2
                            223 	.globl __SFR99
                            224 	.globl _S0CON
                            225 	.globl __SFR97
                            226 	.globl __SFR96
                            227 	.globl __SFR95
                            228 	.globl __SFR94
                            229 	.globl __XPAGE
                            230 	.globl _MPAGE
                            231 	.globl _DPS
                            232 	.globl _RFIM
                            233 	.globl _P1
                            234 	.globl _P0INP
                            235 	.globl __SFR8E
                            236 	.globl _P1IEN
                            237 	.globl _PICTL
                            238 	.globl _P2IFG
                            239 	.globl _P1IFG
                            240 	.globl _P0IFG
                            241 	.globl _TCON
                            242 	.globl _PCON
                            243 	.globl _U0CSR
                            244 	.globl _DPH1
                            245 	.globl _DPL1
                            246 	.globl _DPH0
                            247 	.globl _DPL0
                            248 	.globl _SP
                            249 	.globl _P0
                            250 	.globl _appReturn_PARM_2
                            251 	.globl _ep5
                            252 	.globl _usb_ep5_OUTbuf
                            253 	.globl _spi_output_buf
                            254 	.globl _USBF5
                            255 	.globl _USBF4
                            256 	.globl _USBF3
                            257 	.globl _USBF2
                            258 	.globl _USBF1
                            259 	.globl _USBF0
                            260 	.globl _USBCNTH
                            261 	.globl _USBCNTL
                            262 	.globl _USBCNT0
                            263 	.globl _USBCSOH
                            264 	.globl _USBCSOL
                            265 	.globl _USBMAXO
                            266 	.globl _USBCSIH
                            267 	.globl _USBCSIL
                            268 	.globl _USBCS0
                            269 	.globl _USBMAXI
                            270 	.globl _USBINDEX
                            271 	.globl _USBFRMH
                            272 	.globl _USBFRML
                            273 	.globl _USBCIE
                            274 	.globl _USBOIE
                            275 	.globl _USBIIE
                            276 	.globl _USBCIF
                            277 	.globl _USBOIF
                            278 	.globl _USBIIF
                            279 	.globl _USBPOW
                            280 	.globl _USBADDR
                            281 	.globl _X_P2DIR
                            282 	.globl _X_P1DIR
                            283 	.globl _X_P0DIR
                            284 	.globl _X_U1GCR
                            285 	.globl _X_U1UCR
                            286 	.globl _X_U1BAUD
                            287 	.globl _X_U1DBUF
                            288 	.globl _X_U1CSR
                            289 	.globl _X_P2INP
                            290 	.globl _X_P1INP
                            291 	.globl _X_P2SEL
                            292 	.globl _X_P1SEL
                            293 	.globl _X_P0SEL
                            294 	.globl _X_ADCCFG
                            295 	.globl _X_PERCFG
                            296 	.globl __NA_B
                            297 	.globl _X_T4CC1
                            298 	.globl _X_T4CCTL1
                            299 	.globl _X_T4CC0
                            300 	.globl _X_T4CCTL0
                            301 	.globl _X_T4CTL
                            302 	.globl _X_T4CNT
                            303 	.globl _X_RFIF
                            304 	.globl __NA_IRCON2
                            305 	.globl _X_T1CCTL2
                            306 	.globl _X_T1CCTL1
                            307 	.globl _X_T1CCTL0
                            308 	.globl _X_T1CTL
                            309 	.globl _X_T1CNTH
                            310 	.globl _X_T1CNTL
                            311 	.globl _X_RFST
                            312 	.globl __NA_ACC
                            313 	.globl _X_T1CC2H
                            314 	.globl _X_T1CC2L
                            315 	.globl _X_T1CC1H
                            316 	.globl _X_T1CC1L
                            317 	.globl _X_T1CC0H
                            318 	.globl _X_T1CC0L
                            319 	.globl _X_RFD
                            320 	.globl _X_TIMIF
                            321 	.globl _X_DMAREQ
                            322 	.globl _X_DMAARM
                            323 	.globl _X_DMA0CFGH
                            324 	.globl _X_DMA0CFGL
                            325 	.globl _X_DMA1CFGH
                            326 	.globl _X_DMA1CFGL
                            327 	.globl _X_DMAIRQ
                            328 	.globl __NA_PSW
                            329 	.globl _X_T3CC1
                            330 	.globl _X_T3CCTL1
                            331 	.globl _X_T3CC0
                            332 	.globl _X_T3CCTL0
                            333 	.globl _X_T3CTL
                            334 	.globl _X_T3CNT
                            335 	.globl _X_WDCTL
                            336 	.globl __X_SFRC8
                            337 	.globl _X_MEMCTR
                            338 	.globl _X_CLKCON
                            339 	.globl _X_U0GCR
                            340 	.globl _X_U0UCR
                            341 	.globl __X_SFRC3
                            342 	.globl _X_U0BAUD
                            343 	.globl _X_U0DBUF
                            344 	.globl __NA_IRCON
                            345 	.globl __X_SFRBF
                            346 	.globl _X_SLEEP
                            347 	.globl _X_RNDH
                            348 	.globl _X_RNDL
                            349 	.globl _X_ADCH
                            350 	.globl _X_ADCL
                            351 	.globl __NA_IP1
                            352 	.globl __NA_IEN1
                            353 	.globl __X_SFRB7
                            354 	.globl _X_ADCCON3
                            355 	.globl _X_ADCCON2
                            356 	.globl _X_ADCCON1
                            357 	.globl _X_ENCCS
                            358 	.globl _X_ENCDO
                            359 	.globl _X_ENCDI
                            360 	.globl __X_SFRB0
                            361 	.globl _X_FWDATA
                            362 	.globl _X_FCTL
                            363 	.globl _X_FADDRH
                            364 	.globl _X_FADDRL
                            365 	.globl _X_FWT
                            366 	.globl __X_SFRAA
                            367 	.globl __NA_IP0
                            368 	.globl __NA_IEN0
                            369 	.globl __X_SFRA7
                            370 	.globl _X_WORTIME1
                            371 	.globl _X_WORTIME0
                            372 	.globl _X_WOREVT1
                            373 	.globl _X_WOREVT0
                            374 	.globl _X_WORCTRL
                            375 	.globl _X_WORIRQ
                            376 	.globl __NA_P2
                            377 	.globl __X_SFR9F
                            378 	.globl _X_T2CTL
                            379 	.globl _X_T2PR
                            380 	.globl _X_T2CT
                            381 	.globl __NA_S1CON
                            382 	.globl __NA_IEN2
                            383 	.globl __X_SFR99
                            384 	.globl __NA_S0CON
                            385 	.globl __X_SFR97
                            386 	.globl __X_SFR96
                            387 	.globl __X_SFR95
                            388 	.globl __X_SFR94
                            389 	.globl _X_MPAGE
                            390 	.globl __NA_DPS
                            391 	.globl _X_RFIM
                            392 	.globl __NA_P1
                            393 	.globl _X_P0INP
                            394 	.globl __X_SFR8E
                            395 	.globl _X_P1IEN
                            396 	.globl _X_PICTL
                            397 	.globl _X_P2IFG
                            398 	.globl _X_P1IFG
                            399 	.globl _X_P0IFG
                            400 	.globl __NA_TCON
                            401 	.globl __NA_PCON
                            402 	.globl _X_U0CSR
                            403 	.globl __NA_DPH1
                            404 	.globl __NA_DPL1
                            405 	.globl __NA_DPH0
                            406 	.globl __NA_DPL0
                            407 	.globl __NA_SP
                            408 	.globl __NA_P0
                            409 	.globl _I2SCLKF2
                            410 	.globl _I2SCLKF1
                            411 	.globl _I2SCLKF0
                            412 	.globl _I2SSTAT
                            413 	.globl _I2SWCNT
                            414 	.globl _I2SDATH
                            415 	.globl _I2SDATL
                            416 	.globl _I2SCFG1
                            417 	.globl _I2SCFG0
                            418 	.globl _VCO_VC_DAC
                            419 	.globl _PKTSTATUS
                            420 	.globl _MARCSTATE
                            421 	.globl _RSSI
                            422 	.globl _LQI
                            423 	.globl _FREQEST
                            424 	.globl _VERSION
                            425 	.globl _PARTNUM
                            426 	.globl __XREGDF35
                            427 	.globl __XREGDF34
                            428 	.globl __XREGDF33
                            429 	.globl __XREGDF32
                            430 	.globl _IOCFG0
                            431 	.globl _IOCFG1
                            432 	.globl _IOCFG2
                            433 	.globl _PA_TABLE0
                            434 	.globl _PA_TABLE1
                            435 	.globl _PA_TABLE2
                            436 	.globl _PA_TABLE3
                            437 	.globl _PA_TABLE4
                            438 	.globl _PA_TABLE5
                            439 	.globl _PA_TABLE6
                            440 	.globl _PA_TABLE7
                            441 	.globl __XREGDF26
                            442 	.globl _TEST0
                            443 	.globl _TEST1
                            444 	.globl _TEST2
                            445 	.globl __XREGDF22
                            446 	.globl __XREGDF21
                            447 	.globl __XREGDF20
                            448 	.globl _FSCAL0
                            449 	.globl _FSCAL1
                            450 	.globl _FSCAL2
                            451 	.globl _FSCAL3
                            452 	.globl _FREND0
                            453 	.globl _FREND1
                            454 	.globl _AGCCTRL0
                            455 	.globl _AGCCTRL1
                            456 	.globl _AGCCTRL2
                            457 	.globl _BSCFG
                            458 	.globl _FOCCFG
                            459 	.globl _MCSM0
                            460 	.globl _MCSM1
                            461 	.globl _MCSM2
                            462 	.globl _DEVIATN
                            463 	.globl _MDMCFG0
                            464 	.globl _MDMCFG1
                            465 	.globl _MDMCFG2
                            466 	.globl _MDMCFG3
                            467 	.globl _MDMCFG4
                            468 	.globl _FREQ0
                            469 	.globl _FREQ1
                            470 	.globl _FREQ2
                            471 	.globl _FSCTRL0
                            472 	.globl _FSCTRL1
                            473 	.globl _CHANNR
                            474 	.globl _ADDR
                            475 	.globl _PKTCTRL0
                            476 	.globl _PKTCTRL1
                            477 	.globl _PKTLEN
                            478 	.globl _SYNC0
                            479 	.globl _SYNC1
                            480 	.globl _MDMCTRL0H
                            481 	.globl _txdata_PARM_4
                            482 	.globl _txdata_PARM_3
                            483 	.globl _txdata_PARM_2
                            484 	.globl _cb_ep5
                            485 	.globl _slave_send_size
                            486 	.globl _master_send_size
                            487 	.globl _spi_mode
                            488 	.globl _serial_data_available
                            489 	.globl _output_tail_idx
                            490 	.globl _output_head_idx
                            491 	.globl _output_size
                            492 	.globl _input_tail_idx
                            493 	.globl _input_head_idx
                            494 	.globl _input_size
                            495 	.globl _vcom_flush
                            496 	.globl _vcom_putchar
                            497 	.globl _vcom_getchar
                            498 	.globl _vcom_enable
                            499 	.globl _vcom_disable
                            500 	.globl _initUSB
                            501 	.globl _usbProcessEvents
                            502 	.globl _vcom_putstr
                            503 	.globl _usb_up
                            504 	.globl _txdata
                            505 	.globl _usbIntHandler
                            506 	.globl _p0IntHandler
                            507 	.globl _waitForUSBsetup
                            508 	.globl _registerCb_ep5
                            509 	.globl _appReturn
                            510 	.globl _processOUTEP5
                            511 ;--------------------------------------------------------
                            512 ; special function registers
                            513 ;--------------------------------------------------------
                            514 	.area RSEG    (ABS,DATA)
   0000                     515 	.org 0x0000
                     0080   516 _P0	=	0x0080
                     0081   517 _SP	=	0x0081
                     0082   518 _DPL0	=	0x0082
                     0083   519 _DPH0	=	0x0083
                     0084   520 _DPL1	=	0x0084
                     0085   521 _DPH1	=	0x0085
                     0086   522 _U0CSR	=	0x0086
                     0087   523 _PCON	=	0x0087
                     0088   524 _TCON	=	0x0088
                     0089   525 _P0IFG	=	0x0089
                     008A   526 _P1IFG	=	0x008a
                     008B   527 _P2IFG	=	0x008b
                     008C   528 _PICTL	=	0x008c
                     008D   529 _P1IEN	=	0x008d
                     008E   530 __SFR8E	=	0x008e
                     008F   531 _P0INP	=	0x008f
                     0090   532 _P1	=	0x0090
                     0091   533 _RFIM	=	0x0091
                     0092   534 _DPS	=	0x0092
                     0093   535 _MPAGE	=	0x0093
                     0093   536 __XPAGE	=	0x0093
                     0094   537 __SFR94	=	0x0094
                     0095   538 __SFR95	=	0x0095
                     0096   539 __SFR96	=	0x0096
                     0097   540 __SFR97	=	0x0097
                     0098   541 _S0CON	=	0x0098
                     0099   542 __SFR99	=	0x0099
                     009A   543 _IEN2	=	0x009a
                     009B   544 _S1CON	=	0x009b
                     009C   545 _T2CT	=	0x009c
                     009D   546 _T2PR	=	0x009d
                     009E   547 _T2CTL	=	0x009e
                     009F   548 __SFR9F	=	0x009f
                     00A0   549 _P2	=	0x00a0
                     00A1   550 _WORIRQ	=	0x00a1
                     00A2   551 _WORCTRL	=	0x00a2
                     00A3   552 _WOREVT0	=	0x00a3
                     00A4   553 _WOREVT1	=	0x00a4
                     00A5   554 _WORTIME0	=	0x00a5
                     00A6   555 _WORTIME1	=	0x00a6
                     00A7   556 __SFRA7	=	0x00a7
                     00A8   557 _IEN0	=	0x00a8
                     00A9   558 _IP0	=	0x00a9
                     00AA   559 __SFRAA	=	0x00aa
                     00AB   560 _FWT	=	0x00ab
                     00AC   561 _FADDRL	=	0x00ac
                     00AD   562 _FADDRH	=	0x00ad
                     00AE   563 _FCTL	=	0x00ae
                     00AF   564 _FWDATA	=	0x00af
                     00B0   565 __SFRB0	=	0x00b0
                     00B1   566 _ENCDI	=	0x00b1
                     00B2   567 _ENCDO	=	0x00b2
                     00B3   568 _ENCCS	=	0x00b3
                     00B4   569 _ADCCON1	=	0x00b4
                     00B5   570 _ADCCON2	=	0x00b5
                     00B6   571 _ADCCON3	=	0x00b6
                     00B7   572 __SFRB7	=	0x00b7
                     00B8   573 _IEN1	=	0x00b8
                     00B9   574 _IP1	=	0x00b9
                     00BA   575 _ADCL	=	0x00ba
                     00BB   576 _ADCH	=	0x00bb
                     00BC   577 _RNDL	=	0x00bc
                     00BD   578 _RNDH	=	0x00bd
                     00BE   579 _SLEEP	=	0x00be
                     00BF   580 __SFRBF	=	0x00bf
                     00C0   581 _IRCON	=	0x00c0
                     00C1   582 _U0DBUF	=	0x00c1
                     00C2   583 _U0BAUD	=	0x00c2
                     00C3   584 __SFRC3	=	0x00c3
                     00C4   585 _U0UCR	=	0x00c4
                     00C5   586 _U0GCR	=	0x00c5
                     00C6   587 _CLKCON	=	0x00c6
                     00C7   588 _MEMCTR	=	0x00c7
                     00C8   589 __SFRC8	=	0x00c8
                     00C9   590 _WDCTL	=	0x00c9
                     00CA   591 _T3CNT	=	0x00ca
                     00CB   592 _T3CTL	=	0x00cb
                     00CC   593 _T3CCTL0	=	0x00cc
                     00CD   594 _T3CC0	=	0x00cd
                     00CE   595 _T3CCTL1	=	0x00ce
                     00CF   596 _T3CC1	=	0x00cf
                     00D0   597 _PSW	=	0x00d0
                     00D1   598 _DMAIRQ	=	0x00d1
                     00D2   599 _DMA1CFGL	=	0x00d2
                     00D3   600 _DMA1CFGH	=	0x00d3
                     00D4   601 _DMA0CFGL	=	0x00d4
                     00D5   602 _DMA0CFGH	=	0x00d5
                     00D6   603 _DMAARM	=	0x00d6
                     00D7   604 _DMAREQ	=	0x00d7
                     00D8   605 _TIMIF	=	0x00d8
                     00D9   606 _RFD	=	0x00d9
                     00DA   607 _T1CC0L	=	0x00da
                     00DB   608 _T1CC0H	=	0x00db
                     00DC   609 _T1CC1L	=	0x00dc
                     00DD   610 _T1CC1H	=	0x00dd
                     00DE   611 _T1CC2L	=	0x00de
                     00DF   612 _T1CC2H	=	0x00df
                     00E0   613 _ACC	=	0x00e0
                     00E1   614 _RFST	=	0x00e1
                     00E2   615 _T1CNTL	=	0x00e2
                     00E3   616 _T1CNTH	=	0x00e3
                     00E4   617 _T1CTL	=	0x00e4
                     00E5   618 _T1CCTL0	=	0x00e5
                     00E6   619 _T1CCTL1	=	0x00e6
                     00E7   620 _T1CCTL2	=	0x00e7
                     00E8   621 _IRCON2	=	0x00e8
                     00E9   622 _RFIF	=	0x00e9
                     00EA   623 _T4CNT	=	0x00ea
                     00EB   624 _T4CTL	=	0x00eb
                     00EC   625 _T4CCTL0	=	0x00ec
                     00ED   626 _T4CC0	=	0x00ed
                     00EE   627 _T4CCTL1	=	0x00ee
                     00EF   628 _T4CC1	=	0x00ef
                     00F0   629 _B	=	0x00f0
                     00F1   630 _PERCFG	=	0x00f1
                     00F2   631 _ADCCFG	=	0x00f2
                     00F3   632 _P0SEL	=	0x00f3
                     00F4   633 _P1SEL	=	0x00f4
                     00F5   634 _P2SEL	=	0x00f5
                     00F6   635 _P1INP	=	0x00f6
                     00F7   636 _P2INP	=	0x00f7
                     00F8   637 _U1CSR	=	0x00f8
                     00F9   638 _U1DBUF	=	0x00f9
                     00FA   639 _U1BAUD	=	0x00fa
                     00FB   640 _U1UCR	=	0x00fb
                     00FC   641 _U1GCR	=	0x00fc
                     00FD   642 _P0DIR	=	0x00fd
                     00FE   643 _P1DIR	=	0x00fe
                     00FF   644 _P2DIR	=	0x00ff
                            645 ;--------------------------------------------------------
                            646 ; special function bits
                            647 ;--------------------------------------------------------
                            648 	.area RSEG    (ABS,DATA)
   0000                     649 	.org 0x0000
                     0080   650 _P0_0	=	0x0080
                     0081   651 _P0_1	=	0x0081
                     0082   652 _P0_2	=	0x0082
                     0083   653 _P0_3	=	0x0083
                     0084   654 _P0_4	=	0x0084
                     0085   655 _P0_5	=	0x0085
                     0086   656 _P0_6	=	0x0086
                     0087   657 _P0_7	=	0x0087
                     0088   658 _IT0	=	0x0088
                     0089   659 _RFTXRXIF	=	0x0089
                     008A   660 _IT1	=	0x008a
                     008B   661 _URX0IF	=	0x008b
                     008D   662 _ADCIF	=	0x008d
                     008F   663 _URX1IF	=	0x008f
                     0090   664 _P1_0	=	0x0090
                     0091   665 _P1_1	=	0x0091
                     0092   666 _P1_2	=	0x0092
                     0093   667 _P1_3	=	0x0093
                     0094   668 _P1_4	=	0x0094
                     0095   669 _P1_5	=	0x0095
                     0096   670 _P1_6	=	0x0096
                     0097   671 _P1_7	=	0x0097
                     0098   672 _ENCIF_0	=	0x0098
                     0099   673 _ENCIF_1	=	0x0099
                     00A0   674 _P2_0	=	0x00a0
                     00A1   675 _P2_1	=	0x00a1
                     00A2   676 _P2_2	=	0x00a2
                     00A3   677 _P2_3	=	0x00a3
                     00A4   678 _P2_4	=	0x00a4
                     00A5   679 _P2_5	=	0x00a5
                     00A6   680 _P2_6	=	0x00a6
                     00A7   681 _P2_7	=	0x00a7
                     00A8   682 _RFTXRXIE	=	0x00a8
                     00A9   683 _ADCIE	=	0x00a9
                     00AA   684 _URX0IE	=	0x00aa
                     00AB   685 _URX1IE	=	0x00ab
                     00AC   686 _ENCIE	=	0x00ac
                     00AD   687 _STIE	=	0x00ad
                     00AF   688 _EA	=	0x00af
                     00B8   689 _DMAIE	=	0x00b8
                     00B9   690 _T1IE	=	0x00b9
                     00BA   691 _T2IE	=	0x00ba
                     00BB   692 _T3IE	=	0x00bb
                     00BC   693 _T4IE	=	0x00bc
                     00BD   694 _P0IE	=	0x00bd
                     00C0   695 _DMAIF	=	0x00c0
                     00C1   696 _T1IF	=	0x00c1
                     00C2   697 _T2IF	=	0x00c2
                     00C3   698 _T3IF	=	0x00c3
                     00C4   699 _T4IF	=	0x00c4
                     00C5   700 _P0IF	=	0x00c5
                     00C7   701 _STIF	=	0x00c7
                     00D0   702 _P	=	0x00d0
                     00D1   703 _F1	=	0x00d1
                     00D2   704 _OV	=	0x00d2
                     00D3   705 _RS0	=	0x00d3
                     00D4   706 _RS1	=	0x00d4
                     00D5   707 _F0	=	0x00d5
                     00D6   708 _AC	=	0x00d6
                     00D7   709 _CY	=	0x00d7
                     00D8   710 _T3OVFIF	=	0x00d8
                     00D9   711 _T3CH0IF	=	0x00d9
                     00DA   712 _T3CH1IF	=	0x00da
                     00DB   713 _T4OVFIF	=	0x00db
                     00DC   714 _T4CH0IF	=	0x00dc
                     00DD   715 _T4CH1IF	=	0x00dd
                     00DE   716 _OVFIM	=	0x00de
                     00E0   717 _ACC_0	=	0x00e0
                     00E1   718 _ACC_1	=	0x00e1
                     00E2   719 _ACC_2	=	0x00e2
                     00E3   720 _ACC_3	=	0x00e3
                     00E4   721 _ACC_4	=	0x00e4
                     00E5   722 _ACC_5	=	0x00e5
                     00E6   723 _ACC_6	=	0x00e6
                     00E7   724 _ACC_7	=	0x00e7
                     00E8   725 _P2IF	=	0x00e8
                     00E9   726 _UTX0IF	=	0x00e9
                     00EA   727 _UTX1IF	=	0x00ea
                     00EB   728 _P1IF	=	0x00eb
                     00EC   729 _WDTIF	=	0x00ec
                     00F0   730 _B_0	=	0x00f0
                     00F1   731 _B_1	=	0x00f1
                     00F2   732 _B_2	=	0x00f2
                     00F3   733 _B_3	=	0x00f3
                     00F4   734 _B_4	=	0x00f4
                     00F5   735 _B_5	=	0x00f5
                     00F6   736 _B_6	=	0x00f6
                     00F7   737 _B_7	=	0x00f7
                     00F8   738 _ACTIVE	=	0x00f8
                     00F9   739 _TX_BYTE	=	0x00f9
                     00FA   740 _RX_BYTE	=	0x00fa
                     00FB   741 _ERR	=	0x00fb
                     00FC   742 _FE	=	0x00fc
                     00FD   743 _SLAVE	=	0x00fd
                     00FE   744 _RE	=	0x00fe
                     00FF   745 _MODE	=	0x00ff
                     00E8   746 _USBIF	=	0x00e8
                            747 ;--------------------------------------------------------
                            748 ; overlayable register banks
                            749 ;--------------------------------------------------------
                            750 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     751 	.ds 8
                            752 ;--------------------------------------------------------
                            753 ; overlayable bit register bank
                            754 ;--------------------------------------------------------
                            755 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     756 bits:
   0021                     757 	.ds 1
                     8000   758 	b0 = bits[0]
                     8100   759 	b1 = bits[1]
                     8200   760 	b2 = bits[2]
                     8300   761 	b3 = bits[3]
                     8400   762 	b4 = bits[4]
                     8500   763 	b5 = bits[5]
                     8600   764 	b6 = bits[6]
                     8700   765 	b7 = bits[7]
                            766 ;--------------------------------------------------------
                            767 ; internal ram data
                            768 ;--------------------------------------------------------
                            769 	.area DSEG    (DATA)
   0022                     770 _input_size::
   0022                     771 	.ds 2
   0024                     772 _input_head_idx::
   0024                     773 	.ds 2
   0026                     774 _input_tail_idx::
   0026                     775 	.ds 2
   0028                     776 _output_size::
   0028                     777 	.ds 2
   002A                     778 _output_head_idx::
   002A                     779 	.ds 2
   002C                     780 _output_tail_idx::
   002C                     781 	.ds 2
   002E                     782 _serial_data_available::
   002E                     783 	.ds 2
   0030                     784 _spi_mode::
   0030                     785 	.ds 1
   0031                     786 _master_send_size::
   0031                     787 	.ds 2
   0033                     788 _slave_send_size::
   0033                     789 	.ds 2
   0035                     790 _cb_ep5::
   0035                     791 	.ds 2
   0037                     792 _txdata_PARM_2:
   0037                     793 	.ds 1
   0038                     794 _txdata_PARM_3:
   0038                     795 	.ds 2
   003A                     796 _txdata_PARM_4:
   003A                     797 	.ds 2
   003C                     798 _processOUTEP5_loop_1_113:
   003C                     799 	.ds 2
   003E                     800 _processOUTEP5_sloc0_1_0:
   003E                     801 	.ds 2
   0040                     802 _processOUTEP5_sloc1_1_0:
   0040                     803 	.ds 2
   0042                     804 _processOUTEP5_sloc2_1_0:
   0042                     805 	.ds 2
                            806 ;--------------------------------------------------------
                            807 ; overlayable items in internal ram 
                            808 ;--------------------------------------------------------
                            809 	.area	OSEG    (OVR,DATA)
                            810 	.area	OSEG    (OVR,DATA)
                            811 ;--------------------------------------------------------
                            812 ; indirectly addressable internal ram data
                            813 ;--------------------------------------------------------
                            814 	.area ISEG    (DATA)
                            815 ;--------------------------------------------------------
                            816 ; absolute internal ram data
                            817 ;--------------------------------------------------------
                            818 	.area IABS    (ABS,DATA)
                            819 	.area IABS    (ABS,DATA)
                            820 ;--------------------------------------------------------
                            821 ; bit data
                            822 ;--------------------------------------------------------
                            823 	.area BSEG    (BIT)
                            824 ;--------------------------------------------------------
                            825 ; paged external ram data
                            826 ;--------------------------------------------------------
                            827 	.area PSEG    (PAG,XDATA)
                            828 ;--------------------------------------------------------
                            829 ; external ram data
                            830 ;--------------------------------------------------------
                            831 	.area XSEG    (XDATA)
                     DF02   832 _MDMCTRL0H	=	0xdf02
                     DF00   833 _SYNC1	=	0xdf00
                     DF01   834 _SYNC0	=	0xdf01
                     DF02   835 _PKTLEN	=	0xdf02
                     DF03   836 _PKTCTRL1	=	0xdf03
                     DF04   837 _PKTCTRL0	=	0xdf04
                     DF05   838 _ADDR	=	0xdf05
                     DF06   839 _CHANNR	=	0xdf06
                     DF07   840 _FSCTRL1	=	0xdf07
                     DF08   841 _FSCTRL0	=	0xdf08
                     DF09   842 _FREQ2	=	0xdf09
                     DF0A   843 _FREQ1	=	0xdf0a
                     DF0B   844 _FREQ0	=	0xdf0b
                     DF0C   845 _MDMCFG4	=	0xdf0c
                     DF0D   846 _MDMCFG3	=	0xdf0d
                     DF0E   847 _MDMCFG2	=	0xdf0e
                     DF0F   848 _MDMCFG1	=	0xdf0f
                     DF10   849 _MDMCFG0	=	0xdf10
                     DF11   850 _DEVIATN	=	0xdf11
                     DF12   851 _MCSM2	=	0xdf12
                     DF13   852 _MCSM1	=	0xdf13
                     DF14   853 _MCSM0	=	0xdf14
                     DF15   854 _FOCCFG	=	0xdf15
                     DF16   855 _BSCFG	=	0xdf16
                     DF17   856 _AGCCTRL2	=	0xdf17
                     DF18   857 _AGCCTRL1	=	0xdf18
                     DF19   858 _AGCCTRL0	=	0xdf19
                     DF1A   859 _FREND1	=	0xdf1a
                     DF1B   860 _FREND0	=	0xdf1b
                     DF1C   861 _FSCAL3	=	0xdf1c
                     DF1D   862 _FSCAL2	=	0xdf1d
                     DF1E   863 _FSCAL1	=	0xdf1e
                     DF1F   864 _FSCAL0	=	0xdf1f
                     DF20   865 __XREGDF20	=	0xdf20
                     DF21   866 __XREGDF21	=	0xdf21
                     DF22   867 __XREGDF22	=	0xdf22
                     DF23   868 _TEST2	=	0xdf23
                     DF24   869 _TEST1	=	0xdf24
                     DF25   870 _TEST0	=	0xdf25
                     DF26   871 __XREGDF26	=	0xdf26
                     DF27   872 _PA_TABLE7	=	0xdf27
                     DF28   873 _PA_TABLE6	=	0xdf28
                     DF29   874 _PA_TABLE5	=	0xdf29
                     DF2A   875 _PA_TABLE4	=	0xdf2a
                     DF2B   876 _PA_TABLE3	=	0xdf2b
                     DF2C   877 _PA_TABLE2	=	0xdf2c
                     DF2D   878 _PA_TABLE1	=	0xdf2d
                     DF2E   879 _PA_TABLE0	=	0xdf2e
                     DF2F   880 _IOCFG2	=	0xdf2f
                     DF30   881 _IOCFG1	=	0xdf30
                     DF31   882 _IOCFG0	=	0xdf31
                     DF32   883 __XREGDF32	=	0xdf32
                     DF33   884 __XREGDF33	=	0xdf33
                     DF34   885 __XREGDF34	=	0xdf34
                     DF35   886 __XREGDF35	=	0xdf35
                     DF36   887 _PARTNUM	=	0xdf36
                     DF37   888 _VERSION	=	0xdf37
                     DF38   889 _FREQEST	=	0xdf38
                     DF39   890 _LQI	=	0xdf39
                     DF3A   891 _RSSI	=	0xdf3a
                     DF3B   892 _MARCSTATE	=	0xdf3b
                     DF3C   893 _PKTSTATUS	=	0xdf3c
                     DF3D   894 _VCO_VC_DAC	=	0xdf3d
                     DF40   895 _I2SCFG0	=	0xdf40
                     DF41   896 _I2SCFG1	=	0xdf41
                     DF42   897 _I2SDATL	=	0xdf42
                     DF43   898 _I2SDATH	=	0xdf43
                     DF44   899 _I2SWCNT	=	0xdf44
                     DF45   900 _I2SSTAT	=	0xdf45
                     DF46   901 _I2SCLKF0	=	0xdf46
                     DF47   902 _I2SCLKF1	=	0xdf47
                     DF48   903 _I2SCLKF2	=	0xdf48
                     DF80   904 __NA_P0	=	0xdf80
                     DF81   905 __NA_SP	=	0xdf81
                     DF82   906 __NA_DPL0	=	0xdf82
                     DF83   907 __NA_DPH0	=	0xdf83
                     DF84   908 __NA_DPL1	=	0xdf84
                     DF85   909 __NA_DPH1	=	0xdf85
                     DF86   910 _X_U0CSR	=	0xdf86
                     DF87   911 __NA_PCON	=	0xdf87
                     DF88   912 __NA_TCON	=	0xdf88
                     DF89   913 _X_P0IFG	=	0xdf89
                     DF8A   914 _X_P1IFG	=	0xdf8a
                     DF8B   915 _X_P2IFG	=	0xdf8b
                     DF8C   916 _X_PICTL	=	0xdf8c
                     DF8D   917 _X_P1IEN	=	0xdf8d
                     DF8E   918 __X_SFR8E	=	0xdf8e
                     DF8F   919 _X_P0INP	=	0xdf8f
                     DF90   920 __NA_P1	=	0xdf90
                     DF91   921 _X_RFIM	=	0xdf91
                     DF92   922 __NA_DPS	=	0xdf92
                     DF93   923 _X_MPAGE	=	0xdf93
                     DF94   924 __X_SFR94	=	0xdf94
                     DF95   925 __X_SFR95	=	0xdf95
                     DF96   926 __X_SFR96	=	0xdf96
                     DF97   927 __X_SFR97	=	0xdf97
                     DF98   928 __NA_S0CON	=	0xdf98
                     DF99   929 __X_SFR99	=	0xdf99
                     DF9A   930 __NA_IEN2	=	0xdf9a
                     DF9B   931 __NA_S1CON	=	0xdf9b
                     DF9C   932 _X_T2CT	=	0xdf9c
                     DF9D   933 _X_T2PR	=	0xdf9d
                     DF9E   934 _X_T2CTL	=	0xdf9e
                     DF9F   935 __X_SFR9F	=	0xdf9f
                     DFA0   936 __NA_P2	=	0xdfa0
                     DFA1   937 _X_WORIRQ	=	0xdfa1
                     DFA2   938 _X_WORCTRL	=	0xdfa2
                     DFA3   939 _X_WOREVT0	=	0xdfa3
                     DFA4   940 _X_WOREVT1	=	0xdfa4
                     DFA5   941 _X_WORTIME0	=	0xdfa5
                     DFA6   942 _X_WORTIME1	=	0xdfa6
                     DFA7   943 __X_SFRA7	=	0xdfa7
                     DFA8   944 __NA_IEN0	=	0xdfa8
                     DFA9   945 __NA_IP0	=	0xdfa9
                     DFAA   946 __X_SFRAA	=	0xdfaa
                     DFAB   947 _X_FWT	=	0xdfab
                     DFAC   948 _X_FADDRL	=	0xdfac
                     DFAD   949 _X_FADDRH	=	0xdfad
                     DFAE   950 _X_FCTL	=	0xdfae
                     DFAF   951 _X_FWDATA	=	0xdfaf
                     DFB0   952 __X_SFRB0	=	0xdfb0
                     DFB1   953 _X_ENCDI	=	0xdfb1
                     DFB2   954 _X_ENCDO	=	0xdfb2
                     DFB3   955 _X_ENCCS	=	0xdfb3
                     DFB4   956 _X_ADCCON1	=	0xdfb4
                     DFB5   957 _X_ADCCON2	=	0xdfb5
                     DFB6   958 _X_ADCCON3	=	0xdfb6
                     DFB7   959 __X_SFRB7	=	0xdfb7
                     DFB8   960 __NA_IEN1	=	0xdfb8
                     DFB9   961 __NA_IP1	=	0xdfb9
                     DFBA   962 _X_ADCL	=	0xdfba
                     DFBB   963 _X_ADCH	=	0xdfbb
                     DFBC   964 _X_RNDL	=	0xdfbc
                     DFBD   965 _X_RNDH	=	0xdfbd
                     DFBE   966 _X_SLEEP	=	0xdfbe
                     DFBF   967 __X_SFRBF	=	0xdfbf
                     DFC0   968 __NA_IRCON	=	0xdfc0
                     DFC1   969 _X_U0DBUF	=	0xdfc1
                     DFC2   970 _X_U0BAUD	=	0xdfc2
                     DFC3   971 __X_SFRC3	=	0xdfc3
                     DFC4   972 _X_U0UCR	=	0xdfc4
                     DFC5   973 _X_U0GCR	=	0xdfc5
                     DFC6   974 _X_CLKCON	=	0xdfc6
                     DFC7   975 _X_MEMCTR	=	0xdfc7
                     DFC8   976 __X_SFRC8	=	0xdfc8
                     DFC9   977 _X_WDCTL	=	0xdfc9
                     DFCA   978 _X_T3CNT	=	0xdfca
                     DFCB   979 _X_T3CTL	=	0xdfcb
                     DFCC   980 _X_T3CCTL0	=	0xdfcc
                     DFCD   981 _X_T3CC0	=	0xdfcd
                     DFCE   982 _X_T3CCTL1	=	0xdfce
                     DFCF   983 _X_T3CC1	=	0xdfcf
                     DFD0   984 __NA_PSW	=	0xdfd0
                     DFD1   985 _X_DMAIRQ	=	0xdfd1
                     DFD2   986 _X_DMA1CFGL	=	0xdfd2
                     DFD3   987 _X_DMA1CFGH	=	0xdfd3
                     DFD4   988 _X_DMA0CFGL	=	0xdfd4
                     DFD5   989 _X_DMA0CFGH	=	0xdfd5
                     DFD6   990 _X_DMAARM	=	0xdfd6
                     DFD7   991 _X_DMAREQ	=	0xdfd7
                     DFD8   992 _X_TIMIF	=	0xdfd8
                     DFD9   993 _X_RFD	=	0xdfd9
                     DFDA   994 _X_T1CC0L	=	0xdfda
                     DFDB   995 _X_T1CC0H	=	0xdfdb
                     DFDC   996 _X_T1CC1L	=	0xdfdc
                     DFDD   997 _X_T1CC1H	=	0xdfdd
                     DFDE   998 _X_T1CC2L	=	0xdfde
                     DFDF   999 _X_T1CC2H	=	0xdfdf
                     DFE0  1000 __NA_ACC	=	0xdfe0
                     DFE1  1001 _X_RFST	=	0xdfe1
                     DFE2  1002 _X_T1CNTL	=	0xdfe2
                     DFE3  1003 _X_T1CNTH	=	0xdfe3
                     DFE4  1004 _X_T1CTL	=	0xdfe4
                     DFE5  1005 _X_T1CCTL0	=	0xdfe5
                     DFE6  1006 _X_T1CCTL1	=	0xdfe6
                     DFE7  1007 _X_T1CCTL2	=	0xdfe7
                     DFE8  1008 __NA_IRCON2	=	0xdfe8
                     DFE9  1009 _X_RFIF	=	0xdfe9
                     DFEA  1010 _X_T4CNT	=	0xdfea
                     DFEB  1011 _X_T4CTL	=	0xdfeb
                     DFEC  1012 _X_T4CCTL0	=	0xdfec
                     DFED  1013 _X_T4CC0	=	0xdfed
                     DFEE  1014 _X_T4CCTL1	=	0xdfee
                     DFEF  1015 _X_T4CC1	=	0xdfef
                     DFF0  1016 __NA_B	=	0xdff0
                     DFF1  1017 _X_PERCFG	=	0xdff1
                     DFF2  1018 _X_ADCCFG	=	0xdff2
                     DFF3  1019 _X_P0SEL	=	0xdff3
                     DFF4  1020 _X_P1SEL	=	0xdff4
                     DFF5  1021 _X_P2SEL	=	0xdff5
                     DFF6  1022 _X_P1INP	=	0xdff6
                     DFF7  1023 _X_P2INP	=	0xdff7
                     DFF8  1024 _X_U1CSR	=	0xdff8
                     DFF9  1025 _X_U1DBUF	=	0xdff9
                     DFFA  1026 _X_U1BAUD	=	0xdffa
                     DFFB  1027 _X_U1UCR	=	0xdffb
                     DFFC  1028 _X_U1GCR	=	0xdffc
                     DFFD  1029 _X_P0DIR	=	0xdffd
                     DFFE  1030 _X_P1DIR	=	0xdffe
                     DFFF  1031 _X_P2DIR	=	0xdfff
                     DE00  1032 _USBADDR	=	0xde00
                     DE01  1033 _USBPOW	=	0xde01
                     DE02  1034 _USBIIF	=	0xde02
                     DE04  1035 _USBOIF	=	0xde04
                     DE06  1036 _USBCIF	=	0xde06
                     DE07  1037 _USBIIE	=	0xde07
                     DE09  1038 _USBOIE	=	0xde09
                     DE0B  1039 _USBCIE	=	0xde0b
                     DE0C  1040 _USBFRML	=	0xde0c
                     DE0D  1041 _USBFRMH	=	0xde0d
                     DE0E  1042 _USBINDEX	=	0xde0e
                     DE10  1043 _USBMAXI	=	0xde10
                     DE11  1044 _USBCS0	=	0xde11
                     DE11  1045 _USBCSIL	=	0xde11
                     DE12  1046 _USBCSIH	=	0xde12
                     DE13  1047 _USBMAXO	=	0xde13
                     DE14  1048 _USBCSOL	=	0xde14
                     DE15  1049 _USBCSOH	=	0xde15
                     DE16  1050 _USBCNT0	=	0xde16
                     DE16  1051 _USBCNTL	=	0xde16
                     DE17  1052 _USBCNTH	=	0xde17
                     DE20  1053 _USBF0	=	0xde20
                     DE22  1054 _USBF1	=	0xde22
                     DE24  1055 _USBF2	=	0xde24
                     DE26  1056 _USBF3	=	0xde26
                     DE28  1057 _USBF4	=	0xde28
                     DE2A  1058 _USBF5	=	0xde2a
   F588                    1059 _spi_output_buf::
   F588                    1060 	.ds 516
   F78C                    1061 _usb_ep5_OUTbuf::
   F78C                    1062 	.ds 516
   F990                    1063 _ep5::
   F990                    1064 	.ds 18
   F9A2                    1065 _vcom_putstr_buff_1_94:
   F9A2                    1066 	.ds 3
   F9A5                    1067 _appReturn_PARM_2:
   F9A5                    1068 	.ds 2
   F9A7                    1069 _appReturn_len_1_110:
   F9A7                    1070 	.ds 1
   F9A8                    1071 _processOUTEP5_ptr_1_113:
   F9A8                    1072 	.ds 2
                           1073 ;--------------------------------------------------------
                           1074 ; absolute external ram data
                           1075 ;--------------------------------------------------------
                           1076 	.area XABS    (ABS,XDATA)
                           1077 ;--------------------------------------------------------
                           1078 ; external initialized ram data
                           1079 ;--------------------------------------------------------
                           1080 	.area XISEG   (XDATA)
                           1081 	.area HOME    (CODE)
                           1082 	.area GSINIT0 (CODE)
                           1083 	.area GSINIT1 (CODE)
                           1084 	.area GSINIT2 (CODE)
                           1085 	.area GSINIT3 (CODE)
                           1086 	.area GSINIT4 (CODE)
                           1087 	.area GSINIT5 (CODE)
                           1088 	.area GSINIT  (CODE)
                           1089 	.area GSFINAL (CODE)
                           1090 	.area CSEG    (CODE)
                           1091 ;--------------------------------------------------------
                           1092 ; global & static initialisations
                           1093 ;--------------------------------------------------------
                           1094 	.area HOME    (CODE)
                           1095 	.area GSINIT  (CODE)
                           1096 	.area GSFINAL (CODE)
                           1097 	.area GSINIT  (CODE)
                           1098 ;	cc1110_spicom.c:40: volatile uint16_t input_size = 0;
   00E4 E4            [12] 1099 	clr	a
   00E5 F5 22         [12] 1100 	mov	_input_size,a
   00E7 F5 23         [12] 1101 	mov	(_input_size + 1),a
                           1102 ;	cc1110_spicom.c:41: volatile uint16_t input_head_idx = 0;
   00E9 E4            [12] 1103 	clr	a
   00EA F5 24         [12] 1104 	mov	_input_head_idx,a
   00EC F5 25         [12] 1105 	mov	(_input_head_idx + 1),a
                           1106 ;	cc1110_spicom.c:42: volatile uint16_t input_tail_idx = 0;
   00EE E4            [12] 1107 	clr	a
   00EF F5 26         [12] 1108 	mov	_input_tail_idx,a
   00F1 F5 27         [12] 1109 	mov	(_input_tail_idx + 1),a
                           1110 ;	cc1110_spicom.c:45: volatile uint16_t output_size = 0;
   00F3 E4            [12] 1111 	clr	a
   00F4 F5 28         [12] 1112 	mov	_output_size,a
   00F6 F5 29         [12] 1113 	mov	(_output_size + 1),a
                           1114 ;	cc1110_spicom.c:46: volatile uint16_t output_head_idx = 0;
   00F8 E4            [12] 1115 	clr	a
   00F9 F5 2A         [12] 1116 	mov	_output_head_idx,a
   00FB F5 2B         [12] 1117 	mov	(_output_head_idx + 1),a
                           1118 ;	cc1110_spicom.c:47: volatile uint16_t output_tail_idx = 0;
   00FD E4            [12] 1119 	clr	a
   00FE F5 2C         [12] 1120 	mov	_output_tail_idx,a
   0100 F5 2D         [12] 1121 	mov	(_output_tail_idx + 1),a
                           1122 ;	cc1110_spicom.c:56: volatile uint16_t master_send_size = 0;
   0102 E4            [12] 1123 	clr	a
   0103 F5 31         [12] 1124 	mov	_master_send_size,a
   0105 F5 32         [12] 1125 	mov	(_master_send_size + 1),a
                           1126 ;	cc1110_spicom.c:57: volatile uint16_t slave_send_size = 0;
   0107 E4            [12] 1127 	clr	a
   0108 F5 33         [12] 1128 	mov	_slave_send_size,a
   010A F5 34         [12] 1129 	mov	(_slave_send_size + 1),a
                           1130 ;--------------------------------------------------------
                           1131 ; Home
                           1132 ;--------------------------------------------------------
                           1133 	.area HOME    (CODE)
                           1134 	.area HOME    (CODE)
                           1135 ;--------------------------------------------------------
                           1136 ; code
                           1137 ;--------------------------------------------------------
                           1138 	.area CSEG    (CODE)
                           1139 ;------------------------------------------------------------
                           1140 ;Allocation info for local variables in function 'rx1_isr'
                           1141 ;------------------------------------------------------------
                           1142 ;value                     Allocated to registers r7 
                           1143 ;------------------------------------------------------------
                           1144 ;	cc1110_spicom.c:89: void rx1_isr(void) __interrupt URX1_VECTOR {
                           1145 ;	-----------------------------------------
                           1146 ;	 function rx1_isr
                           1147 ;	-----------------------------------------
   1925                    1148 _rx1_isr:
                     0007  1149 	ar7 = 0x07
                     0006  1150 	ar6 = 0x06
                     0005  1151 	ar5 = 0x05
                     0004  1152 	ar4 = 0x04
                     0003  1153 	ar3 = 0x03
                     0002  1154 	ar2 = 0x02
                     0001  1155 	ar1 = 0x01
                     0000  1156 	ar0 = 0x00
   1925 C0 21         [24] 1157 	push	bits
   1927 C0 E0         [24] 1158 	push	acc
   1929 C0 F0         [24] 1159 	push	b
   192B C0 82         [24] 1160 	push	dpl
   192D C0 83         [24] 1161 	push	dph
   192F C0 07         [24] 1162 	push	(0+7)
   1931 C0 06         [24] 1163 	push	(0+6)
   1933 C0 05         [24] 1164 	push	(0+5)
   1935 C0 04         [24] 1165 	push	(0+4)
   1937 C0 03         [24] 1166 	push	(0+3)
   1939 C0 02         [24] 1167 	push	(0+2)
   193B C0 01         [24] 1168 	push	(0+1)
   193D C0 00         [24] 1169 	push	(0+0)
   193F C0 D0         [24] 1170 	push	psw
   1941 75 D0 00      [24] 1171 	mov	psw,#0x00
                           1172 ;	cc1110_spicom.c:91: value = U1DBUF;
   1944 AF F9         [24] 1173 	mov	r7,_U1DBUF
                           1174 ;	cc1110_spicom.c:93: if (spi_mode == SPI_MODE_WAIT && value == 0x99) {
   1946 E5 30         [12] 1175 	mov	a,_spi_mode
   1948 70 12         [24] 1176 	jnz	00102$
   194A BF 99 0F      [24] 1177 	cjne	r7,#0x99,00102$
                           1178 ;	cc1110_spicom.c:94: slave_send_size = output_size;
   194D 85 28 33      [24] 1179 	mov	_slave_send_size,_output_size
   1950 85 29 34      [24] 1180 	mov	(_slave_send_size + 1),(_output_size + 1)
                           1181 ;	cc1110_spicom.c:96: spi_mode = SPI_MODE_SIZE;
   1953 75 30 01      [24] 1182 	mov	_spi_mode,#0x01
                           1183 ;	cc1110_spicom.c:97: U1DBUF = slave_send_size;
   1956 85 33 F9      [24] 1184 	mov	_U1DBUF,_slave_send_size
                           1185 ;	cc1110_spicom.c:98: return;
   1959 02 1A 38      [24] 1186 	ljmp	00126$
   195C                    1187 00102$:
                           1188 ;	cc1110_spicom.c:101: if (spi_mode == SPI_MODE_SIZE) {
   195C 74 01         [12] 1189 	mov	a,#0x01
   195E B5 30 34      [24] 1190 	cjne	a,_spi_mode,00109$
                           1191 ;	cc1110_spicom.c:102: master_send_size = value;
   1961 8F 31         [24] 1192 	mov	_master_send_size,r7
                           1193 ;	cc1110_spicom.c:103: input_size = 0;
   1963 E4            [12] 1194 	clr	a
   1964 F5 32         [12] 1195 	mov	(_master_send_size + 1),a
   1966 F5 22         [12] 1196 	mov	_input_size,a
   1968 F5 23         [12] 1197 	mov	(_input_size + 1),a
                           1198 ;	cc1110_spicom.c:104: ep5.OUTlen = value - 2; // first two bytes are app and cmd
   196A 8F 05         [24] 1199 	mov	ar5,r7
   196C 7E 00         [12] 1200 	mov	r6,#0x00
   196E ED            [12] 1201 	mov	a,r5
   196F 24 FE         [12] 1202 	add	a,#0xFE
   1971 FD            [12] 1203 	mov	r5,a
   1972 EE            [12] 1204 	mov	a,r6
   1973 34 FF         [12] 1205 	addc	a,#0xFF
   1975 FE            [12] 1206 	mov	r6,a
   1976 90 F9 98      [24] 1207 	mov	dptr,#(_ep5 + 0x0008)
   1979 ED            [12] 1208 	mov	a,r5
   197A F0            [24] 1209 	movx	@dptr,a
   197B EE            [12] 1210 	mov	a,r6
   197C A3            [24] 1211 	inc	dptr
   197D F0            [24] 1212 	movx	@dptr,a
                           1213 ;	cc1110_spicom.c:105: if (master_send_size > 0 || slave_send_size > 0) {
   197E E5 31         [12] 1214 	mov	a,_master_send_size
   1980 45 32         [12] 1215 	orl	a,(_master_send_size + 1)
   1982 70 06         [24] 1216 	jnz	00104$
   1984 E5 33         [12] 1217 	mov	a,_slave_send_size
   1986 45 34         [12] 1218 	orl	a,(_slave_send_size + 1)
   1988 60 05         [24] 1219 	jz	00105$
   198A                    1220 00104$:
                           1221 ;	cc1110_spicom.c:106: spi_mode = SPI_MODE_XFER;
   198A 75 30 02      [24] 1222 	mov	_spi_mode,#0x02
   198D 80 03         [24] 1223 	sjmp	00106$
   198F                    1224 00105$:
                           1225 ;	cc1110_spicom.c:108: spi_mode = SPI_MODE_WAIT;
   198F 75 30 00      [24] 1226 	mov	_spi_mode,#0x00
   1992                    1227 00106$:
                           1228 ;	cc1110_spicom.c:110: return;
   1992 02 1A 38      [24] 1229 	ljmp	00126$
   1995                    1230 00109$:
                           1231 ;	cc1110_spicom.c:113: if (spi_mode == SPI_MODE_XFER && input_size < master_send_size) {
   1995 74 02         [12] 1232 	mov	a,#0x02
   1997 B5 30 02      [24] 1233 	cjne	a,_spi_mode,00171$
   199A 80 03         [24] 1234 	sjmp	00172$
   199C                    1235 00171$:
   199C 02 1A 38      [24] 1236 	ljmp	00126$
   199F                    1237 00172$:
   199F C3            [12] 1238 	clr	c
   19A0 E5 22         [12] 1239 	mov	a,_input_size
   19A2 95 31         [12] 1240 	subb	a,_master_send_size
   19A4 E5 23         [12] 1241 	mov	a,(_input_size + 1)
   19A6 95 32         [12] 1242 	subb	a,(_master_send_size + 1)
   19A8 40 03         [24] 1243 	jc	00173$
   19AA 02 1A 38      [24] 1244 	ljmp	00126$
   19AD                    1245 00173$:
                           1246 ;	cc1110_spicom.c:114: if (input_size == 0) {
   19AD E5 22         [12] 1247 	mov	a,_input_size
   19AF 45 23         [12] 1248 	orl	a,(_input_size + 1)
   19B1 70 07         [24] 1249 	jnz	00114$
                           1250 ;	cc1110_spicom.c:116: ep5.OUTapp = value;
   19B3 90 F9 9A      [24] 1251 	mov	dptr,#(_ep5 + 0x000a)
   19B6 EF            [12] 1252 	mov	a,r7
   19B7 F0            [24] 1253 	movx	@dptr,a
   19B8 80 39         [24] 1254 	sjmp	00115$
   19BA                    1255 00114$:
                           1256 ;	cc1110_spicom.c:118: } else if (input_size == 1) {
   19BA 74 01         [12] 1257 	mov	a,#0x01
   19BC B5 22 06      [24] 1258 	cjne	a,_input_size,00175$
   19BF E4            [12] 1259 	clr	a
   19C0 B5 23 02      [24] 1260 	cjne	a,(_input_size + 1),00175$
   19C3 80 02         [24] 1261 	sjmp	00176$
   19C5                    1262 00175$:
   19C5 80 07         [24] 1263 	sjmp	00111$
   19C7                    1264 00176$:
                           1265 ;	cc1110_spicom.c:120: ep5.OUTcmd = value;
   19C7 90 F9 9B      [24] 1266 	mov	dptr,#(_ep5 + 0x000b)
   19CA EF            [12] 1267 	mov	a,r7
   19CB F0            [24] 1268 	movx	@dptr,a
   19CC 80 25         [24] 1269 	sjmp	00115$
   19CE                    1270 00111$:
                           1271 ;	cc1110_spicom.c:124: ep5.OUTbuf[input_size - 2] = value;
   19CE 90 F9 95      [24] 1272 	mov	dptr,#(_ep5 + 0x0005)
   19D1 E0            [24] 1273 	movx	a,@dptr
   19D2 FC            [12] 1274 	mov	r4,a
   19D3 A3            [24] 1275 	inc	dptr
   19D4 E0            [24] 1276 	movx	a,@dptr
   19D5 FD            [12] 1277 	mov	r5,a
   19D6 A3            [24] 1278 	inc	dptr
   19D7 E0            [24] 1279 	movx	a,@dptr
   19D8 FE            [12] 1280 	mov	r6,a
   19D9 E5 22         [12] 1281 	mov	a,_input_size
   19DB 24 FE         [12] 1282 	add	a,#0xFE
   19DD FA            [12] 1283 	mov	r2,a
   19DE E5 23         [12] 1284 	mov	a,(_input_size + 1)
   19E0 34 FF         [12] 1285 	addc	a,#0xFF
   19E2 FB            [12] 1286 	mov	r3,a
   19E3 EA            [12] 1287 	mov	a,r2
   19E4 2C            [12] 1288 	add	a,r4
   19E5 FC            [12] 1289 	mov	r4,a
   19E6 EB            [12] 1290 	mov	a,r3
   19E7 3D            [12] 1291 	addc	a,r5
   19E8 FD            [12] 1292 	mov	r5,a
   19E9 8C 82         [24] 1293 	mov	dpl,r4
   19EB 8D 83         [24] 1294 	mov	dph,r5
   19ED 8E F0         [24] 1295 	mov	b,r6
   19EF EF            [12] 1296 	mov	a,r7
   19F0 12 34 5C      [24] 1297 	lcall	__gptrput
   19F3                    1298 00115$:
                           1299 ;	cc1110_spicom.c:126: input_size++;
   19F3 74 01         [12] 1300 	mov	a,#0x01
   19F5 25 22         [12] 1301 	add	a,_input_size
   19F7 F5 22         [12] 1302 	mov	_input_size,a
   19F9 E4            [12] 1303 	clr	a
   19FA 35 23         [12] 1304 	addc	a,(_input_size + 1)
   19FC F5 23         [12] 1305 	mov	(_input_size + 1),a
                           1306 ;	cc1110_spicom.c:127: if (input_size == master_send_size) {
   19FE E5 31         [12] 1307 	mov	a,_master_send_size
   1A00 B5 22 10      [24] 1308 	cjne	a,_input_size,00117$
   1A03 E5 32         [12] 1309 	mov	a,(_master_send_size + 1)
   1A05 B5 23 0B      [24] 1310 	cjne	a,(_input_size + 1),00117$
                           1311 ;	cc1110_spicom.c:128: master_send_size = 0;
   1A08 E4            [12] 1312 	clr	a
   1A09 F5 31         [12] 1313 	mov	_master_send_size,a
   1A0B F5 32         [12] 1314 	mov	(_master_send_size + 1),a
                           1315 ;	cc1110_spicom.c:129: serial_data_available = 1;
   1A0D 75 2E 01      [24] 1316 	mov	_serial_data_available,#0x01
   1A10 75 2F 00      [24] 1317 	mov	(_serial_data_available + 1),#0x00
   1A13                    1318 00117$:
                           1319 ;	cc1110_spicom.c:131: if (slave_send_size == 0 && master_send_size == 0) {
   1A13 E5 33         [12] 1320 	mov	a,_slave_send_size
   1A15 45 34         [12] 1321 	orl	a,(_slave_send_size + 1)
   1A17 70 08         [24] 1322 	jnz	00119$
   1A19 E5 31         [12] 1323 	mov	a,_master_send_size
   1A1B 45 32         [12] 1324 	orl	a,(_master_send_size + 1)
                           1325 ;	cc1110_spicom.c:132: spi_mode = SPI_MODE_WAIT;
   1A1D 70 02         [24] 1326 	jnz	00119$
   1A1F F5 30         [12] 1327 	mov	_spi_mode,a
   1A21                    1328 00119$:
                           1329 ;	cc1110_spicom.c:135: if (serial_data_available)
   1A21 E5 2E         [12] 1330 	mov	a,_serial_data_available
   1A23 45 2F         [12] 1331 	orl	a,(_serial_data_available + 1)
   1A25 60 11         [24] 1332 	jz	00126$
                           1333 ;	cc1110_spicom.c:137: ep5.flags |= EP_OUTBUF_WRITTEN;
   1A27 90 F9 9E      [24] 1334 	mov	dptr,#(_ep5 + 0x000e)
   1A2A E0            [24] 1335 	movx	a,@dptr
   1A2B 44 02         [12] 1336 	orl	a,#0x02
   1A2D F0            [24] 1337 	movx	@dptr,a
                           1338 ;	cc1110_spicom.c:138: LED_RED = 1;
   1A2E D2 A3         [12] 1339 	setb	_P2_3
                           1340 ;	cc1110_spicom.c:139: processOUTEP5();
   1A30 12 1D 00      [24] 1341 	lcall	_processOUTEP5
                           1342 ;	cc1110_spicom.c:141: serial_data_available = 0;
   1A33 E4            [12] 1343 	clr	a
   1A34 F5 2E         [12] 1344 	mov	_serial_data_available,a
   1A36 F5 2F         [12] 1345 	mov	(_serial_data_available + 1),a
   1A38                    1346 00126$:
   1A38 D0 D0         [24] 1347 	pop	psw
   1A3A D0 00         [24] 1348 	pop	(0+0)
   1A3C D0 01         [24] 1349 	pop	(0+1)
   1A3E D0 02         [24] 1350 	pop	(0+2)
   1A40 D0 03         [24] 1351 	pop	(0+3)
   1A42 D0 04         [24] 1352 	pop	(0+4)
   1A44 D0 05         [24] 1353 	pop	(0+5)
   1A46 D0 06         [24] 1354 	pop	(0+6)
   1A48 D0 07         [24] 1355 	pop	(0+7)
   1A4A D0 83         [24] 1356 	pop	dph
   1A4C D0 82         [24] 1357 	pop	dpl
   1A4E D0 F0         [24] 1358 	pop	b
   1A50 D0 E0         [24] 1359 	pop	acc
   1A52 D0 21         [24] 1360 	pop	bits
   1A54 32            [24] 1361 	reti
                           1362 ;------------------------------------------------------------
                           1363 ;Allocation info for local variables in function 'tx1_isr'
                           1364 ;------------------------------------------------------------
                           1365 ;	cc1110_spicom.c:146: void tx1_isr(void) __interrupt UTX1_VECTOR {
                           1366 ;	-----------------------------------------
                           1367 ;	 function tx1_isr
                           1368 ;	-----------------------------------------
   1A55                    1369 _tx1_isr:
   1A55 C0 E0         [24] 1370 	push	acc
   1A57 C0 82         [24] 1371 	push	dpl
   1A59 C0 83         [24] 1372 	push	dph
   1A5B C0 07         [24] 1373 	push	ar7
   1A5D C0 D0         [24] 1374 	push	psw
   1A5F 75 D0 00      [24] 1375 	mov	psw,#0x00
                           1376 ;	cc1110_spicom.c:147: IRCON2 &= ~BIT2; // Clear UTX1IF
   1A62 AF E8         [24] 1377 	mov	r7,_IRCON2
   1A64 74 FB         [12] 1378 	mov	a,#0xFB
   1A66 5F            [12] 1379 	anl	a,r7
   1A67 F5 E8         [12] 1380 	mov	_IRCON2,a
                           1381 ;	cc1110_spicom.c:148: if (spi_mode == SPI_MODE_SIZE || spi_mode == SPI_MODE_XFER) {
   1A69 74 01         [12] 1382 	mov	a,#0x01
   1A6B B5 30 02      [24] 1383 	cjne	a,_spi_mode,00139$
   1A6E 80 05         [24] 1384 	sjmp	00112$
   1A70                    1385 00139$:
   1A70 74 02         [12] 1386 	mov	a,#0x02
   1A72 B5 30 6B      [24] 1387 	cjne	a,_spi_mode,00113$
   1A75                    1388 00112$:
                           1389 ;	cc1110_spicom.c:149: if (slave_send_size > 0 && output_size > 0) {
   1A75 E5 33         [12] 1390 	mov	a,_slave_send_size
   1A77 45 34         [12] 1391 	orl	a,(_slave_send_size + 1)
   1A79 60 60         [24] 1392 	jz	00109$
   1A7B E5 28         [12] 1393 	mov	a,_output_size
   1A7D 45 29         [12] 1394 	orl	a,(_output_size + 1)
   1A7F 60 5A         [24] 1395 	jz	00109$
                           1396 ;	cc1110_spicom.c:150: slave_send_size--;
   1A81 15 33         [12] 1397 	dec	_slave_send_size
   1A83 74 FF         [12] 1398 	mov	a,#0xFF
   1A85 B5 33 02      [24] 1399 	cjne	a,_slave_send_size,00144$
   1A88 15 34         [12] 1400 	dec	(_slave_send_size + 1)
   1A8A                    1401 00144$:
                           1402 ;	cc1110_spicom.c:151: if (slave_send_size == 0 && master_send_size == 0) {
   1A8A E5 33         [12] 1403 	mov	a,_slave_send_size
   1A8C 45 34         [12] 1404 	orl	a,(_slave_send_size + 1)
   1A8E 70 08         [24] 1405 	jnz	00102$
   1A90 E5 31         [12] 1406 	mov	a,_master_send_size
   1A92 45 32         [12] 1407 	orl	a,(_master_send_size + 1)
                           1408 ;	cc1110_spicom.c:152: spi_mode = SPI_MODE_WAIT;
   1A94 70 02         [24] 1409 	jnz	00102$
   1A96 F5 30         [12] 1410 	mov	_spi_mode,a
   1A98                    1411 00102$:
                           1412 ;	cc1110_spicom.c:154: U1DBUF = spi_output_buf[output_tail_idx];
   1A98 E5 2C         [12] 1413 	mov	a,_output_tail_idx
   1A9A 24 88         [12] 1414 	add	a,#_spi_output_buf
   1A9C F5 82         [12] 1415 	mov	dpl,a
   1A9E E5 2D         [12] 1416 	mov	a,(_output_tail_idx + 1)
   1AA0 34 F5         [12] 1417 	addc	a,#(_spi_output_buf >> 8)
   1AA2 F5 83         [12] 1418 	mov	dph,a
   1AA4 E0            [24] 1419 	movx	a,@dptr
   1AA5 F5 F9         [12] 1420 	mov	_U1DBUF,a
                           1421 ;	cc1110_spicom.c:155: output_size--;
   1AA7 15 28         [12] 1422 	dec	_output_size
   1AA9 74 FF         [12] 1423 	mov	a,#0xFF
   1AAB B5 28 02      [24] 1424 	cjne	a,_output_size,00147$
   1AAE 15 29         [12] 1425 	dec	(_output_size + 1)
   1AB0                    1426 00147$:
                           1427 ;	cc1110_spicom.c:156: if (output_size == 0) {
   1AB0 E5 28         [12] 1428 	mov	a,_output_size
   1AB2 45 29         [12] 1429 	orl	a,(_output_size + 1)
   1AB4 70 08         [24] 1430 	jnz	00105$
                           1431 ;	cc1110_spicom.c:157: ep5.flags &= ~EP_INBUF_WRITTEN;
   1AB6 90 F9 9E      [24] 1432 	mov	dptr,#(_ep5 + 0x000e)
   1AB9 E0            [24] 1433 	movx	a,@dptr
   1ABA 54 FE         [12] 1434 	anl	a,#0xFE
   1ABC FF            [12] 1435 	mov	r7,a
   1ABD F0            [24] 1436 	movx	@dptr,a
   1ABE                    1437 00105$:
                           1438 ;	cc1110_spicom.c:159: output_tail_idx++;
   1ABE 74 01         [12] 1439 	mov	a,#0x01
   1AC0 25 2C         [12] 1440 	add	a,_output_tail_idx
   1AC2 F5 2C         [12] 1441 	mov	_output_tail_idx,a
   1AC4 E4            [12] 1442 	clr	a
   1AC5 35 2D         [12] 1443 	addc	a,(_output_tail_idx + 1)
   1AC7 F5 2D         [12] 1444 	mov	(_output_tail_idx + 1),a
                           1445 ;	cc1110_spicom.c:160: if (output_tail_idx >= SPI_BUF_LEN) {
   1AC9 C3            [12] 1446 	clr	c
   1ACA E5 2C         [12] 1447 	mov	a,_output_tail_idx
   1ACC 94 04         [12] 1448 	subb	a,#0x04
   1ACE E5 2D         [12] 1449 	mov	a,(_output_tail_idx + 1)
   1AD0 94 02         [12] 1450 	subb	a,#0x02
   1AD2 40 0F         [24] 1451 	jc	00116$
                           1452 ;	cc1110_spicom.c:161: output_tail_idx = 0;
   1AD4 E4            [12] 1453 	clr	a
   1AD5 F5 2C         [12] 1454 	mov	_output_tail_idx,a
   1AD7 F5 2D         [12] 1455 	mov	(_output_tail_idx + 1),a
   1AD9 80 08         [24] 1456 	sjmp	00116$
   1ADB                    1457 00109$:
                           1458 ;	cc1110_spicom.c:164: U1DBUF = 0x99;
   1ADB 75 F9 99      [24] 1459 	mov	_U1DBUF,#0x99
   1ADE 80 03         [24] 1460 	sjmp	00116$
   1AE0                    1461 00113$:
                           1462 ;	cc1110_spicom.c:167: U1DBUF = 0x99;
   1AE0 75 F9 99      [24] 1463 	mov	_U1DBUF,#0x99
   1AE3                    1464 00116$:
   1AE3 D0 D0         [24] 1465 	pop	psw
   1AE5 D0 07         [24] 1466 	pop	ar7
   1AE7 D0 83         [24] 1467 	pop	dph
   1AE9 D0 82         [24] 1468 	pop	dpl
   1AEB D0 E0         [24] 1469 	pop	acc
   1AED 32            [24] 1470 	reti
                           1471 ;	eliminated unneeded push/pop b
                           1472 ;------------------------------------------------------------
                           1473 ;Allocation info for local variables in function 'vcom_flush'
                           1474 ;------------------------------------------------------------
                           1475 ;	cc1110_spicom.c:171: void vcom_flush()
                           1476 ;	-----------------------------------------
                           1477 ;	 function vcom_flush
                           1478 ;	-----------------------------------------
   1AEE                    1479 _vcom_flush:
                           1480 ;	cc1110_spicom.c:174: return;
   1AEE 22            [24] 1481 	ret
                           1482 ;------------------------------------------------------------
                           1483 ;Allocation info for local variables in function 'vcom_putchar'
                           1484 ;------------------------------------------------------------
                           1485 ;c                         Allocated to registers r7 
                           1486 ;------------------------------------------------------------
                           1487 ;	cc1110_spicom.c:177: void vcom_putchar(char c)
                           1488 ;	-----------------------------------------
                           1489 ;	 function vcom_putchar
                           1490 ;	-----------------------------------------
   1AEF                    1491 _vcom_putchar:
   1AEF AF 82         [24] 1492 	mov	r7,dpl
                           1493 ;	cc1110_spicom.c:179: if (output_size >= SPI_BUF_LEN) {
   1AF1 C3            [12] 1494 	clr	c
   1AF2 E5 28         [12] 1495 	mov	a,_output_size
   1AF4 94 04         [12] 1496 	subb	a,#0x04
   1AF6 E5 29         [12] 1497 	mov	a,(_output_size + 1)
   1AF8 94 02         [12] 1498 	subb	a,#0x02
   1AFA 40 24         [24] 1499 	jc	00104$
                           1500 ;	cc1110_spicom.c:181: output_size--;
   1AFC 15 28         [12] 1501 	dec	_output_size
   1AFE 74 FF         [12] 1502 	mov	a,#0xFF
   1B00 B5 28 02      [24] 1503 	cjne	a,_output_size,00119$
   1B03 15 29         [12] 1504 	dec	(_output_size + 1)
   1B05                    1505 00119$:
                           1506 ;	cc1110_spicom.c:182: output_tail_idx++;
   1B05 74 01         [12] 1507 	mov	a,#0x01
   1B07 25 2C         [12] 1508 	add	a,_output_tail_idx
   1B09 F5 2C         [12] 1509 	mov	_output_tail_idx,a
   1B0B E4            [12] 1510 	clr	a
   1B0C 35 2D         [12] 1511 	addc	a,(_output_tail_idx + 1)
   1B0E F5 2D         [12] 1512 	mov	(_output_tail_idx + 1),a
                           1513 ;	cc1110_spicom.c:183: if (output_tail_idx >= SPI_BUF_LEN) {
   1B10 C3            [12] 1514 	clr	c
   1B11 E5 2C         [12] 1515 	mov	a,_output_tail_idx
   1B13 94 04         [12] 1516 	subb	a,#0x04
   1B15 E5 2D         [12] 1517 	mov	a,(_output_tail_idx + 1)
   1B17 94 02         [12] 1518 	subb	a,#0x02
   1B19 40 05         [24] 1519 	jc	00104$
                           1520 ;	cc1110_spicom.c:184: output_tail_idx = 0;
   1B1B E4            [12] 1521 	clr	a
   1B1C F5 2C         [12] 1522 	mov	_output_tail_idx,a
   1B1E F5 2D         [12] 1523 	mov	(_output_tail_idx + 1),a
   1B20                    1524 00104$:
                           1525 ;	cc1110_spicom.c:187: spi_output_buf[output_head_idx] = c;
   1B20 E5 2A         [12] 1526 	mov	a,_output_head_idx
   1B22 24 88         [12] 1527 	add	a,#_spi_output_buf
   1B24 F5 82         [12] 1528 	mov	dpl,a
   1B26 E5 2B         [12] 1529 	mov	a,(_output_head_idx + 1)
   1B28 34 F5         [12] 1530 	addc	a,#(_spi_output_buf >> 8)
   1B2A F5 83         [12] 1531 	mov	dph,a
   1B2C EF            [12] 1532 	mov	a,r7
   1B2D F0            [24] 1533 	movx	@dptr,a
                           1534 ;	cc1110_spicom.c:189: output_head_idx++;
   1B2E 74 01         [12] 1535 	mov	a,#0x01
   1B30 25 2A         [12] 1536 	add	a,_output_head_idx
   1B32 F5 2A         [12] 1537 	mov	_output_head_idx,a
   1B34 E4            [12] 1538 	clr	a
   1B35 35 2B         [12] 1539 	addc	a,(_output_head_idx + 1)
   1B37 F5 2B         [12] 1540 	mov	(_output_head_idx + 1),a
                           1541 ;	cc1110_spicom.c:190: if (output_head_idx >= SPI_BUF_LEN) {
   1B39 C3            [12] 1542 	clr	c
   1B3A E5 2A         [12] 1543 	mov	a,_output_head_idx
   1B3C 94 04         [12] 1544 	subb	a,#0x04
   1B3E E5 2B         [12] 1545 	mov	a,(_output_head_idx + 1)
   1B40 94 02         [12] 1546 	subb	a,#0x02
   1B42 40 05         [24] 1547 	jc	00106$
                           1548 ;	cc1110_spicom.c:191: output_head_idx = 0;
   1B44 E4            [12] 1549 	clr	a
   1B45 F5 2A         [12] 1550 	mov	_output_head_idx,a
   1B47 F5 2B         [12] 1551 	mov	(_output_head_idx + 1),a
   1B49                    1552 00106$:
                           1553 ;	cc1110_spicom.c:193: output_size++;
   1B49 74 01         [12] 1554 	mov	a,#0x01
   1B4B 25 28         [12] 1555 	add	a,_output_size
   1B4D F5 28         [12] 1556 	mov	_output_size,a
   1B4F E4            [12] 1557 	clr	a
   1B50 35 29         [12] 1558 	addc	a,(_output_size + 1)
   1B52 F5 29         [12] 1559 	mov	(_output_size + 1),a
                           1560 ;	cc1110_spicom.c:195: ep5.flags |= EP_INBUF_WRITTEN;
   1B54 90 F9 9E      [24] 1561 	mov	dptr,#(_ep5 + 0x000e)
   1B57 E0            [24] 1562 	movx	a,@dptr
   1B58 44 01         [12] 1563 	orl	a,#0x01
   1B5A F0            [24] 1564 	movx	@dptr,a
   1B5B 22            [24] 1565 	ret
                           1566 ;------------------------------------------------------------
                           1567 ;Allocation info for local variables in function 'vcom_pollchar'
                           1568 ;------------------------------------------------------------
                           1569 ;	cc1110_spicom.c:198: char vcom_pollchar()
                           1570 ;	-----------------------------------------
                           1571 ;	 function vcom_pollchar
                           1572 ;	-----------------------------------------
   1B5C                    1573 _vcom_pollchar:
                           1574 ;	cc1110_spicom.c:201: return USB_READ_AGAIN;
   1B5C 75 82 FF      [24] 1575 	mov	dpl,#0xFF
   1B5F 22            [24] 1576 	ret
                           1577 ;------------------------------------------------------------
                           1578 ;Allocation info for local variables in function 'vcom_getchar'
                           1579 ;------------------------------------------------------------
                           1580 ;	cc1110_spicom.c:206: char vcom_getchar()
                           1581 ;	-----------------------------------------
                           1582 ;	 function vcom_getchar
                           1583 ;	-----------------------------------------
   1B60                    1584 _vcom_getchar:
                           1585 ;	cc1110_spicom.c:211: return USB_READ_AGAIN;
   1B60 75 82 FF      [24] 1586 	mov	dpl,#0xFF
   1B63 22            [24] 1587 	ret
                           1588 ;------------------------------------------------------------
                           1589 ;Allocation info for local variables in function 'vcom_enable'
                           1590 ;------------------------------------------------------------
                           1591 ;	cc1110_spicom.c:226: void vcom_enable()
                           1592 ;	-----------------------------------------
                           1593 ;	 function vcom_enable
                           1594 ;	-----------------------------------------
   1B64                    1595 _vcom_enable:
                           1596 ;	cc1110_spicom.c:228: TCON &= ~BIT3; // Clear URX1IF
   1B64 AF 88         [24] 1597 	mov	r7,_TCON
   1B66 74 F7         [12] 1598 	mov	a,#0xF7
   1B68 5F            [12] 1599 	anl	a,r7
   1B69 F5 88         [12] 1600 	mov	_TCON,a
                           1601 ;	cc1110_spicom.c:229: URX1IE = 1;    // Enable URX1IE interrupt
   1B6B D2 AB         [12] 1602 	setb	_URX1IE
                           1603 ;	cc1110_spicom.c:231: IRCON2 &= ~BIT2; // Clear UTX1IF
   1B6D AF E8         [24] 1604 	mov	r7,_IRCON2
   1B6F 74 FB         [12] 1605 	mov	a,#0xFB
   1B71 5F            [12] 1606 	anl	a,r7
   1B72 F5 E8         [12] 1607 	mov	_IRCON2,a
                           1608 ;	cc1110_spicom.c:232: IEN2 |= BIT3;    // Enable UTX1IE interrupt
   1B74 43 9A 08      [24] 1609 	orl	_IEN2,#0x08
   1B77 22            [24] 1610 	ret
                           1611 ;------------------------------------------------------------
                           1612 ;Allocation info for local variables in function 'vcom_disable'
                           1613 ;------------------------------------------------------------
                           1614 ;	cc1110_spicom.c:235: void vcom_disable()
                           1615 ;	-----------------------------------------
                           1616 ;	 function vcom_disable
                           1617 ;	-----------------------------------------
   1B78                    1618 _vcom_disable:
                           1619 ;	cc1110_spicom.c:237: TCON &= ~BIT3; // Clear URX1IF
   1B78 AF 88         [24] 1620 	mov	r7,_TCON
   1B7A 74 F7         [12] 1621 	mov	a,#0xF7
   1B7C 5F            [12] 1622 	anl	a,r7
   1B7D F5 88         [12] 1623 	mov	_TCON,a
                           1624 ;	cc1110_spicom.c:238: URX1IE = 0;    // Disable URX1IE interrupt
   1B7F C2 AB         [12] 1625 	clr	_URX1IE
                           1626 ;	cc1110_spicom.c:240: IRCON2 &= ~BIT2; // Clear UTX1IF
   1B81 AF E8         [24] 1627 	mov	r7,_IRCON2
   1B83 74 FB         [12] 1628 	mov	a,#0xFB
   1B85 5F            [12] 1629 	anl	a,r7
   1B86 F5 E8         [12] 1630 	mov	_IRCON2,a
                           1631 ;	cc1110_spicom.c:241: IEN2 &= ~BIT3;    // Disable UTX1IE interrupt
   1B88 AF 9A         [24] 1632 	mov	r7,_IEN2
   1B8A 74 F7         [12] 1633 	mov	a,#0xF7
   1B8C 5F            [12] 1634 	anl	a,r7
   1B8D F5 9A         [12] 1635 	mov	_IEN2,a
   1B8F 22            [24] 1636 	ret
                           1637 ;------------------------------------------------------------
                           1638 ;Allocation info for local variables in function 'initUSB'
                           1639 ;------------------------------------------------------------
                           1640 ;	cc1110_spicom.c:244: void initUSB()
                           1641 ;	-----------------------------------------
                           1642 ;	 function initUSB
                           1643 ;	-----------------------------------------
   1B90                    1644 _initUSB:
                           1645 ;	cc1110_spicom.c:258: PERCFG = (PERCFG & ~PERCFG_U0CFG) | PERCFG_U1CFG;
   1B90 AF F1         [24] 1646 	mov	r7,_PERCFG
   1B92 74 FE         [12] 1647 	mov	a,#0xFE
   1B94 5F            [12] 1648 	anl	a,r7
   1B95 44 02         [12] 1649 	orl	a,#0x02
   1B97 F5 F1         [12] 1650 	mov	_PERCFG,a
                           1651 ;	cc1110_spicom.c:261: P1SEL = P1SEL | BIT4 | BIT5 | BIT6 | BIT7;
   1B99 43 F4 F0      [24] 1652 	orl	_P1SEL,#0xF0
                           1653 ;	cc1110_spicom.c:262: P1DIR = P1DIR & ~(BIT4 | BIT5 | BIT6 | BIT7);
   1B9C AF FE         [24] 1654 	mov	r7,_P1DIR
   1B9E 74 0F         [12] 1655 	mov	a,#0x0F
   1BA0 5F            [12] 1656 	anl	a,r7
   1BA1 F5 FE         [12] 1657 	mov	_P1DIR,a
                           1658 ;	cc1110_spicom.c:269: U1CSR = (U1CSR & ~U1CSR_MODE) | U1CSR_SLAVE;
   1BA3 AF F8         [24] 1659 	mov	r7,_U1CSR
   1BA5 74 7F         [12] 1660 	mov	a,#0x7F
   1BA7 5F            [12] 1661 	anl	a,r7
   1BA8 44 20         [12] 1662 	orl	a,#0x20
   1BAA F5 F8         [12] 1663 	mov	_U1CSR,a
                           1664 ;	cc1110_spicom.c:282: U1BAUD = SPI_BAUD_M;
   1BAC 75 FA 3B      [24] 1665 	mov	_U1BAUD,#0x3B
                           1666 ;	cc1110_spicom.c:283: U1GCR = (U1GCR & ~(U1GCR_BAUD_E | U1GCR_CPOL | U1GCR_CPHA | U1GCR_ORDER))
   1BAF E5 FC         [12] 1667 	mov	a,_U1GCR
   1BB1 75 FC 0B      [24] 1668 	mov	_U1GCR,#0x0B
                           1669 ;	cc1110_spicom.c:286: TCON &= ~BIT3; // Clear URX1IF
   1BB4 AF 88         [24] 1670 	mov	r7,_TCON
   1BB6 74 F7         [12] 1671 	mov	a,#0xF7
   1BB8 5F            [12] 1672 	anl	a,r7
   1BB9 F5 88         [12] 1673 	mov	_TCON,a
                           1674 ;	cc1110_spicom.c:287: URX1IE = 1;    // Enable URX1IE interrupt
   1BBB D2 AB         [12] 1675 	setb	_URX1IE
                           1676 ;	cc1110_spicom.c:289: IRCON2 &= ~BIT2; // Clear UTX1IF
   1BBD AF E8         [24] 1677 	mov	r7,_IRCON2
   1BBF 74 FB         [12] 1678 	mov	a,#0xFB
   1BC1 5F            [12] 1679 	anl	a,r7
   1BC2 F5 E8         [12] 1680 	mov	_IRCON2,a
                           1681 ;	cc1110_spicom.c:290: IEN2 |= BIT3;    // Enable UTX1IE interrupt
   1BC4 43 9A 08      [24] 1682 	orl	_IEN2,#0x08
                           1683 ;	cc1110_spicom.c:292: ep5.OUTbuf = usb_ep5_OUTbuf;
   1BC7 90 F9 95      [24] 1684 	mov	dptr,#(_ep5 + 0x0005)
   1BCA 74 8C         [12] 1685 	mov	a,#_usb_ep5_OUTbuf
   1BCC F0            [24] 1686 	movx	@dptr,a
   1BCD 74 F7         [12] 1687 	mov	a,#(_usb_ep5_OUTbuf >> 8)
   1BCF A3            [24] 1688 	inc	dptr
   1BD0 F0            [24] 1689 	movx	@dptr,a
   1BD1 E4            [12] 1690 	clr	a
   1BD2 A3            [24] 1691 	inc	dptr
   1BD3 F0            [24] 1692 	movx	@dptr,a
                           1693 ;	cc1110_spicom.c:294: spi_mode = SPI_MODE_WAIT;
   1BD4 75 30 00      [24] 1694 	mov	_spi_mode,#0x00
   1BD7 22            [24] 1695 	ret
                           1696 ;------------------------------------------------------------
                           1697 ;Allocation info for local variables in function 'usbProcessEvents'
                           1698 ;------------------------------------------------------------
                           1699 ;	cc1110_spicom.c:300: void usbProcessEvents()
                           1700 ;	-----------------------------------------
                           1701 ;	 function usbProcessEvents
                           1702 ;	-----------------------------------------
   1BD8                    1703 _usbProcessEvents:
                           1704 ;	cc1110_spicom.c:302: return; /* dummy function */
   1BD8 22            [24] 1705 	ret
                           1706 ;------------------------------------------------------------
                           1707 ;Allocation info for local variables in function 'vcom_readline'
                           1708 ;------------------------------------------------------------
                           1709 ;buff                      Allocated to registers 
                           1710 ;c                         Allocated to registers r3 
                           1711 ;------------------------------------------------------------
                           1712 ;	cc1110_spicom.c:305: void vcom_readline(char* buff) {
                           1713 ;	-----------------------------------------
                           1714 ;	 function vcom_readline
                           1715 ;	-----------------------------------------
   1BD9                    1716 _vcom_readline:
   1BD9 AD 82         [24] 1717 	mov	r5,dpl
   1BDB AE 83         [24] 1718 	mov	r6,dph
   1BDD AF F0         [24] 1719 	mov	r7,b
                           1720 ;	cc1110_spicom.c:307: while ((c = vcom_getchar()) != '\n') {
   1BDF                    1721 00101$:
   1BDF C0 07         [24] 1722 	push	ar7
   1BE1 C0 06         [24] 1723 	push	ar6
   1BE3 C0 05         [24] 1724 	push	ar5
   1BE5 12 1B 60      [24] 1725 	lcall	_vcom_getchar
   1BE8 AC 82         [24] 1726 	mov	r4,dpl
   1BEA D0 05         [24] 1727 	pop	ar5
   1BEC D0 06         [24] 1728 	pop	ar6
   1BEE D0 07         [24] 1729 	pop	ar7
   1BF0 8C 03         [24] 1730 	mov	ar3,r4
   1BF2 BC 0A 02      [24] 1731 	cjne	r4,#0x0A,00113$
   1BF5 80 11         [24] 1732 	sjmp	00103$
   1BF7                    1733 00113$:
                           1734 ;	cc1110_spicom.c:308: *buff++ = c;
   1BF7 8D 82         [24] 1735 	mov	dpl,r5
   1BF9 8E 83         [24] 1736 	mov	dph,r6
   1BFB 8F F0         [24] 1737 	mov	b,r7
   1BFD EB            [12] 1738 	mov	a,r3
   1BFE 12 34 5C      [24] 1739 	lcall	__gptrput
   1C01 A3            [24] 1740 	inc	dptr
   1C02 AD 82         [24] 1741 	mov	r5,dpl
   1C04 AE 83         [24] 1742 	mov	r6,dph
   1C06 80 D7         [24] 1743 	sjmp	00101$
   1C08                    1744 00103$:
                           1745 ;	cc1110_spicom.c:310: *buff = 0;
   1C08 8D 82         [24] 1746 	mov	dpl,r5
   1C0A 8E 83         [24] 1747 	mov	dph,r6
   1C0C 8F F0         [24] 1748 	mov	b,r7
   1C0E E4            [12] 1749 	clr	a
   1C0F 02 34 5C      [24] 1750 	ljmp	__gptrput
                           1751 ;------------------------------------------------------------
                           1752 ;Allocation info for local variables in function 'vcom_putstr'
                           1753 ;------------------------------------------------------------
                           1754 ;buff                      Allocated with name '_vcom_putstr_buff_1_94'
                           1755 ;------------------------------------------------------------
                           1756 ;	cc1110_spicom.c:313: void vcom_putstr(char* __xdata buff) {
                           1757 ;	-----------------------------------------
                           1758 ;	 function vcom_putstr
                           1759 ;	-----------------------------------------
   1C12                    1760 _vcom_putstr:
   1C12 AF F0         [24] 1761 	mov	r7,b
   1C14 AE 83         [24] 1762 	mov	r6,dph
   1C16 E5 82         [12] 1763 	mov	a,dpl
   1C18 90 F9 A2      [24] 1764 	mov	dptr,#_vcom_putstr_buff_1_94
   1C1B F0            [24] 1765 	movx	@dptr,a
   1C1C EE            [12] 1766 	mov	a,r6
   1C1D A3            [24] 1767 	inc	dptr
   1C1E F0            [24] 1768 	movx	@dptr,a
   1C1F EF            [12] 1769 	mov	a,r7
   1C20 A3            [24] 1770 	inc	dptr
   1C21 F0            [24] 1771 	movx	@dptr,a
                           1772 ;	cc1110_spicom.c:314: while (*buff) {
   1C22 90 F9 A2      [24] 1773 	mov	dptr,#_vcom_putstr_buff_1_94
   1C25 E0            [24] 1774 	movx	a,@dptr
   1C26 FD            [12] 1775 	mov	r5,a
   1C27 A3            [24] 1776 	inc	dptr
   1C28 E0            [24] 1777 	movx	a,@dptr
   1C29 FE            [12] 1778 	mov	r6,a
   1C2A A3            [24] 1779 	inc	dptr
   1C2B E0            [24] 1780 	movx	a,@dptr
   1C2C FF            [12] 1781 	mov	r7,a
   1C2D                    1782 00101$:
   1C2D 8D 82         [24] 1783 	mov	dpl,r5
   1C2F 8E 83         [24] 1784 	mov	dph,r6
   1C31 8F F0         [24] 1785 	mov	b,r7
   1C33 12 35 F3      [24] 1786 	lcall	__gptrget
   1C36 FC            [12] 1787 	mov	r4,a
   1C37 60 23         [24] 1788 	jz	00108$
                           1789 ;	cc1110_spicom.c:315: vcom_putchar(*buff++);
   1C39 0D            [12] 1790 	inc	r5
   1C3A BD 00 01      [24] 1791 	cjne	r5,#0x00,00114$
   1C3D 0E            [12] 1792 	inc	r6
   1C3E                    1793 00114$:
   1C3E 90 F9 A2      [24] 1794 	mov	dptr,#_vcom_putstr_buff_1_94
   1C41 ED            [12] 1795 	mov	a,r5
   1C42 F0            [24] 1796 	movx	@dptr,a
   1C43 EE            [12] 1797 	mov	a,r6
   1C44 A3            [24] 1798 	inc	dptr
   1C45 F0            [24] 1799 	movx	@dptr,a
   1C46 EF            [12] 1800 	mov	a,r7
   1C47 A3            [24] 1801 	inc	dptr
   1C48 F0            [24] 1802 	movx	@dptr,a
   1C49 8C 82         [24] 1803 	mov	dpl,r4
   1C4B C0 07         [24] 1804 	push	ar7
   1C4D C0 06         [24] 1805 	push	ar6
   1C4F C0 05         [24] 1806 	push	ar5
   1C51 12 1A EF      [24] 1807 	lcall	_vcom_putchar
   1C54 D0 05         [24] 1808 	pop	ar5
   1C56 D0 06         [24] 1809 	pop	ar6
   1C58 D0 07         [24] 1810 	pop	ar7
   1C5A 80 D1         [24] 1811 	sjmp	00101$
   1C5C                    1812 00108$:
   1C5C 90 F9 A2      [24] 1813 	mov	dptr,#_vcom_putstr_buff_1_94
   1C5F ED            [12] 1814 	mov	a,r5
   1C60 F0            [24] 1815 	movx	@dptr,a
   1C61 EE            [12] 1816 	mov	a,r6
   1C62 A3            [24] 1817 	inc	dptr
   1C63 F0            [24] 1818 	movx	@dptr,a
   1C64 EF            [12] 1819 	mov	a,r7
   1C65 A3            [24] 1820 	inc	dptr
   1C66 F0            [24] 1821 	movx	@dptr,a
                           1822 ;	cc1110_spicom.c:317: vcom_flush();
   1C67 02 1A EE      [24] 1823 	ljmp	_vcom_flush
                           1824 ;------------------------------------------------------------
                           1825 ;Allocation info for local variables in function 'usb_up'
                           1826 ;------------------------------------------------------------
                           1827 ;	cc1110_spicom.c:320: void usb_up() {
                           1828 ;	-----------------------------------------
                           1829 ;	 function usb_up
                           1830 ;	-----------------------------------------
   1C6A                    1831 _usb_up:
                           1832 ;	cc1110_spicom.c:322: vcom_enable();
   1C6A 02 1B 64      [24] 1833 	ljmp	_vcom_enable
                           1834 ;------------------------------------------------------------
                           1835 ;Allocation info for local variables in function 'vcom_down'
                           1836 ;------------------------------------------------------------
                           1837 ;	cc1110_spicom.c:325: void vcom_down() {
                           1838 ;	-----------------------------------------
                           1839 ;	 function vcom_down
                           1840 ;	-----------------------------------------
   1C6D                    1841 _vcom_down:
                           1842 ;	cc1110_spicom.c:327: vcom_disable();
   1C6D 02 1B 78      [24] 1843 	ljmp	_vcom_disable
                           1844 ;------------------------------------------------------------
                           1845 ;Allocation info for local variables in function 'txdata'
                           1846 ;------------------------------------------------------------
                           1847 ;cmd                       Allocated with name '_txdata_PARM_2'
                           1848 ;len                       Allocated with name '_txdata_PARM_3'
                           1849 ;dataptr                   Allocated with name '_txdata_PARM_4'
                           1850 ;app                       Allocated to registers 
                           1851 ;test                      Allocated to registers 
                           1852 ;------------------------------------------------------------
                           1853 ;	cc1110_spicom.c:330: int txdata(u8 app, u8 cmd, u16 len, __xdata u8* dataptr)
                           1854 ;	-----------------------------------------
                           1855 ;	 function txdata
                           1856 ;	-----------------------------------------
   1C70                    1857 _txdata:
                           1858 ;	cc1110_spicom.c:336: vcom_putchar(app);
   1C70 12 1A EF      [24] 1859 	lcall	_vcom_putchar
                           1860 ;	cc1110_spicom.c:337: vcom_putchar(cmd);
   1C73 85 37 82      [24] 1861 	mov	dpl,_txdata_PARM_2
   1C76 12 1A EF      [24] 1862 	lcall	_vcom_putchar
                           1863 ;	cc1110_spicom.c:338: vcom_putchar((u8)len);
   1C79 85 38 82      [24] 1864 	mov	dpl,_txdata_PARM_3
   1C7C 12 1A EF      [24] 1865 	lcall	_vcom_putchar
                           1866 ;	cc1110_spicom.c:339: vcom_putchar((u8)len >> 8);
   1C7F 75 82 00      [24] 1867 	mov	dpl,#0x00
   1C82 12 1A EF      [24] 1868 	lcall	_vcom_putchar
                           1869 ;	cc1110_spicom.c:342: while (len > 0) //*dataptr) 
   1C85 AE 3A         [24] 1870 	mov	r6,_txdata_PARM_4
   1C87 AF 3B         [24] 1871 	mov	r7,(_txdata_PARM_4 + 1)
   1C89 AC 38         [24] 1872 	mov	r4,_txdata_PARM_3
   1C8B AD 39         [24] 1873 	mov	r5,(_txdata_PARM_3 + 1)
   1C8D                    1874 00101$:
   1C8D EC            [12] 1875 	mov	a,r4
   1C8E 4D            [12] 1876 	orl	a,r5
   1C8F 60 27         [24] 1877 	jz	00103$
                           1878 ;	cc1110_spicom.c:344: vcom_putchar(*dataptr++);
   1C91 8E 82         [24] 1879 	mov	dpl,r6
   1C93 8F 83         [24] 1880 	mov	dph,r7
   1C95 E0            [24] 1881 	movx	a,@dptr
   1C96 FB            [12] 1882 	mov	r3,a
   1C97 A3            [24] 1883 	inc	dptr
   1C98 AE 82         [24] 1884 	mov	r6,dpl
   1C9A AF 83         [24] 1885 	mov	r7,dph
   1C9C 8B 82         [24] 1886 	mov	dpl,r3
   1C9E C0 07         [24] 1887 	push	ar7
   1CA0 C0 06         [24] 1888 	push	ar6
   1CA2 C0 05         [24] 1889 	push	ar5
   1CA4 C0 04         [24] 1890 	push	ar4
   1CA6 12 1A EF      [24] 1891 	lcall	_vcom_putchar
   1CA9 D0 04         [24] 1892 	pop	ar4
   1CAB D0 05         [24] 1893 	pop	ar5
   1CAD D0 06         [24] 1894 	pop	ar6
   1CAF D0 07         [24] 1895 	pop	ar7
                           1896 ;	cc1110_spicom.c:345: len--;
   1CB1 1C            [12] 1897 	dec	r4
   1CB2 BC FF 01      [24] 1898 	cjne	r4,#0xFF,00114$
   1CB5 1D            [12] 1899 	dec	r5
   1CB6                    1900 00114$:
   1CB6 80 D5         [24] 1901 	sjmp	00101$
   1CB8                    1902 00103$:
                           1903 ;	cc1110_spicom.c:347: vcom_putchar(0);
   1CB8 75 82 00      [24] 1904 	mov	dpl,#0x00
   1CBB 12 1A EF      [24] 1905 	lcall	_vcom_putchar
                           1906 ;	cc1110_spicom.c:348: vcom_flush();
   1CBE 12 1A EE      [24] 1907 	lcall	_vcom_flush
                           1908 ;	cc1110_spicom.c:352: return 0;
   1CC1 90 00 00      [24] 1909 	mov	dptr,#0x0000
   1CC4 22            [24] 1910 	ret
                           1911 ;------------------------------------------------------------
                           1912 ;Allocation info for local variables in function 'usbIntHandler'
                           1913 ;------------------------------------------------------------
                           1914 ;	cc1110_spicom.c:357: void usbIntHandler(void) __interrupt P2INT_VECTOR
                           1915 ;	-----------------------------------------
                           1916 ;	 function usbIntHandler
                           1917 ;	-----------------------------------------
   1CC5                    1918 _usbIntHandler:
                           1919 ;	cc1110_spicom.c:359: return;
   1CC5 32            [24] 1920 	reti
                           1921 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1922 ;	eliminated unneeded push/pop psw
                           1923 ;	eliminated unneeded push/pop dpl
                           1924 ;	eliminated unneeded push/pop dph
                           1925 ;	eliminated unneeded push/pop b
                           1926 ;	eliminated unneeded push/pop acc
                           1927 ;------------------------------------------------------------
                           1928 ;Allocation info for local variables in function 'p0IntHandler'
                           1929 ;------------------------------------------------------------
                           1930 ;	cc1110_spicom.c:362: void p0IntHandler(void) __interrupt P0INT_VECTOR
                           1931 ;	-----------------------------------------
                           1932 ;	 function p0IntHandler
                           1933 ;	-----------------------------------------
   1CC6                    1934 _p0IntHandler:
                           1935 ;	cc1110_spicom.c:364: return;
   1CC6 32            [24] 1936 	reti
                           1937 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1938 ;	eliminated unneeded push/pop psw
                           1939 ;	eliminated unneeded push/pop dpl
                           1940 ;	eliminated unneeded push/pop dph
                           1941 ;	eliminated unneeded push/pop b
                           1942 ;	eliminated unneeded push/pop acc
                           1943 ;------------------------------------------------------------
                           1944 ;Allocation info for local variables in function 'waitForUSBsetup'
                           1945 ;------------------------------------------------------------
                           1946 ;	cc1110_spicom.c:367: void waitForUSBsetup()
                           1947 ;	-----------------------------------------
                           1948 ;	 function waitForUSBsetup
                           1949 ;	-----------------------------------------
   1CC7                    1950 _waitForUSBsetup:
                           1951 ;	cc1110_spicom.c:369: return;
   1CC7 22            [24] 1952 	ret
                           1953 ;------------------------------------------------------------
                           1954 ;Allocation info for local variables in function 'registerCb_ep5'
                           1955 ;------------------------------------------------------------
                           1956 ;callback                  Allocated to registers 
                           1957 ;------------------------------------------------------------
                           1958 ;	cc1110_spicom.c:372: void registerCb_ep5(int (*callback)(void))
                           1959 ;	-----------------------------------------
                           1960 ;	 function registerCb_ep5
                           1961 ;	-----------------------------------------
   1CC8                    1962 _registerCb_ep5:
   1CC8 85 82 35      [24] 1963 	mov	_cb_ep5,dpl
   1CCB 85 83 36      [24] 1964 	mov	(_cb_ep5 + 1),dph
                           1965 ;	cc1110_spicom.c:374: cb_ep5 = callback;
   1CCE 22            [24] 1966 	ret
                           1967 ;------------------------------------------------------------
                           1968 ;Allocation info for local variables in function 'appReturn'
                           1969 ;------------------------------------------------------------
                           1970 ;response                  Allocated with name '_appReturn_PARM_2'
                           1971 ;len                       Allocated with name '_appReturn_len_1_110'
                           1972 ;------------------------------------------------------------
                           1973 ;	cc1110_spicom.c:377: void appReturn(__xdata u8 len, __xdata u8* __xdata  response)
                           1974 ;	-----------------------------------------
                           1975 ;	 function appReturn
                           1976 ;	-----------------------------------------
   1CCF                    1977 _appReturn:
   1CCF E5 82         [12] 1978 	mov	a,dpl
   1CD1 90 F9 A7      [24] 1979 	mov	dptr,#_appReturn_len_1_110
   1CD4 F0            [24] 1980 	movx	@dptr,a
                           1981 ;	cc1110_spicom.c:379: ep5.flags &= ~EP_OUTBUF_WRITTEN;                       // this should be superfluous... but could be causing problems?
   1CD5 90 F9 9E      [24] 1982 	mov	dptr,#(_ep5 + 0x000e)
   1CD8 E0            [24] 1983 	movx	a,@dptr
   1CD9 54 FD         [12] 1984 	anl	a,#0xFD
   1CDB F0            [24] 1985 	movx	@dptr,a
                           1986 ;	cc1110_spicom.c:380: txdata(ep5.OUTapp,ep5.OUTcmd, len, response);
   1CDC 90 F9 9A      [24] 1987 	mov	dptr,#(_ep5 + 0x000a)
   1CDF E0            [24] 1988 	movx	a,@dptr
   1CE0 FF            [12] 1989 	mov	r7,a
   1CE1 90 F9 9B      [24] 1990 	mov	dptr,#(_ep5 + 0x000b)
   1CE4 E0            [24] 1991 	movx	a,@dptr
   1CE5 F5 37         [12] 1992 	mov	_txdata_PARM_2,a
   1CE7 90 F9 A7      [24] 1993 	mov	dptr,#_appReturn_len_1_110
   1CEA E0            [24] 1994 	movx	a,@dptr
   1CEB FE            [12] 1995 	mov	r6,a
   1CEC 8E 38         [24] 1996 	mov	_txdata_PARM_3,r6
   1CEE 75 39 00      [24] 1997 	mov	(_txdata_PARM_3 + 1),#0x00
   1CF1 90 F9 A5      [24] 1998 	mov	dptr,#_appReturn_PARM_2
   1CF4 E0            [24] 1999 	movx	a,@dptr
   1CF5 F5 3A         [12] 2000 	mov	_txdata_PARM_4,a
   1CF7 A3            [24] 2001 	inc	dptr
   1CF8 E0            [24] 2002 	movx	a,@dptr
   1CF9 F5 3B         [12] 2003 	mov	(_txdata_PARM_4 + 1),a
   1CFB 8F 82         [24] 2004 	mov	dpl,r7
   1CFD 02 1C 70      [24] 2005 	ljmp	_txdata
                           2006 ;------------------------------------------------------------
                           2007 ;Allocation info for local variables in function 'processOUTEP5'
                           2008 ;------------------------------------------------------------
                           2009 ;loop                      Allocated with name '_processOUTEP5_loop_1_113'
                           2010 ;sloc0                     Allocated with name '_processOUTEP5_sloc0_1_0'
                           2011 ;sloc1                     Allocated with name '_processOUTEP5_sloc1_1_0'
                           2012 ;sloc2                     Allocated with name '_processOUTEP5_sloc2_1_0'
                           2013 ;ptr                       Allocated with name '_processOUTEP5_ptr_1_113'
                           2014 ;------------------------------------------------------------
                           2015 ;	cc1110_spicom.c:383: void processOUTEP5(void)
                           2016 ;	-----------------------------------------
                           2017 ;	 function processOUTEP5
                           2018 ;	-----------------------------------------
   1D00                    2019 _processOUTEP5:
                           2020 ;	cc1110_spicom.c:389: if ((ep5.flags & EP_OUTBUF_WRITTEN) == 0)
   1D00 90 F9 9E      [24] 2021 	mov	dptr,#(_ep5 + 0x000e)
   1D03 E0            [24] 2022 	movx	a,@dptr
   1D04 FF            [12] 2023 	mov	r7,a
   1D05 20 E1 01      [24] 2024 	jb	acc.1,00102$
                           2025 ;	cc1110_spicom.c:390: return;
   1D08 22            [24] 2026 	ret
   1D09                    2027 00102$:
                           2028 ;	cc1110_spicom.c:392: ptr = &ep5.OUTbuf[2]; // skip first two bytes (they're superfluous)
   1D09 90 F9 95      [24] 2029 	mov	dptr,#(_ep5 + 0x0005)
   1D0C E0            [24] 2030 	movx	a,@dptr
   1D0D FD            [12] 2031 	mov	r5,a
   1D0E A3            [24] 2032 	inc	dptr
   1D0F E0            [24] 2033 	movx	a,@dptr
   1D10 FE            [12] 2034 	mov	r6,a
   1D11 A3            [24] 2035 	inc	dptr
   1D12 E0            [24] 2036 	movx	a,@dptr
   1D13 FF            [12] 2037 	mov	r7,a
   1D14 74 02         [12] 2038 	mov	a,#0x02
   1D16 2D            [12] 2039 	add	a,r5
   1D17 FD            [12] 2040 	mov	r5,a
   1D18 E4            [12] 2041 	clr	a
   1D19 3E            [12] 2042 	addc	a,r6
   1D1A FE            [12] 2043 	mov	r6,a
   1D1B 90 F9 A8      [24] 2044 	mov	dptr,#_processOUTEP5_ptr_1_113
   1D1E ED            [12] 2045 	mov	a,r5
   1D1F F0            [24] 2046 	movx	@dptr,a
   1D20 EE            [12] 2047 	mov	a,r6
   1D21 A3            [24] 2048 	inc	dptr
   1D22 F0            [24] 2049 	movx	@dptr,a
                           2050 ;	cc1110_spicom.c:393: ep5.OUTlen -= 2;
   1D23 90 F9 98      [24] 2051 	mov	dptr,#(_ep5 + 0x0008)
   1D26 E0            [24] 2052 	movx	a,@dptr
   1D27 FB            [12] 2053 	mov	r3,a
   1D28 A3            [24] 2054 	inc	dptr
   1D29 E0            [24] 2055 	movx	a,@dptr
   1D2A FC            [12] 2056 	mov	r4,a
   1D2B EB            [12] 2057 	mov	a,r3
   1D2C 24 FE         [12] 2058 	add	a,#0xFE
   1D2E FB            [12] 2059 	mov	r3,a
   1D2F EC            [12] 2060 	mov	a,r4
   1D30 34 FF         [12] 2061 	addc	a,#0xFF
   1D32 FC            [12] 2062 	mov	r4,a
   1D33 90 F9 98      [24] 2063 	mov	dptr,#(_ep5 + 0x0008)
   1D36 EB            [12] 2064 	mov	a,r3
   1D37 F0            [24] 2065 	movx	@dptr,a
   1D38 EC            [12] 2066 	mov	a,r4
   1D39 A3            [24] 2067 	inc	dptr
   1D3A F0            [24] 2068 	movx	@dptr,a
                           2069 ;	cc1110_spicom.c:395: if (ep5.OUTapp == 0xff)                                        
   1D3B 90 F9 9A      [24] 2070 	mov	dptr,#(_ep5 + 0x000a)
   1D3E E0            [24] 2071 	movx	a,@dptr
   1D3F F5 42         [12] 2072 	mov	_processOUTEP5_sloc2_1_0,a
   1D41 74 FF         [12] 2073 	mov	a,#0xFF
   1D43 B5 42 02      [24] 2074 	cjne	a,_processOUTEP5_sloc2_1_0,00200$
   1D46 80 03         [24] 2075 	sjmp	00201$
   1D48                    2076 00200$:
   1D48 02 21 8F      [24] 2077 	ljmp	00135$
   1D4B                    2078 00201$:
                           2079 ;	cc1110_spicom.c:398: switch (ep5.OUTcmd)
   1D4B 90 F9 9B      [24] 2080 	mov	dptr,#(_ep5 + 0x000b)
   1D4E E0            [24] 2081 	movx	a,@dptr
   1D4F FB            [12] 2082 	mov	r3,a
   1D50 BB 80 00      [24] 2083 	cjne	r3,#0x80,00202$
   1D53                    2084 00202$:
   1D53 50 03         [24] 2085 	jnc	00203$
   1D55 02 21 71      [24] 2086 	ljmp	00127$
   1D58                    2087 00203$:
   1D58 EB            [12] 2088 	mov	a,r3
   1D59 24 6F         [12] 2089 	add	a,#0xff - 0x90
   1D5B 50 03         [24] 2090 	jnc	00204$
   1D5D 02 21 71      [24] 2091 	ljmp	00127$
   1D60                    2092 00204$:
   1D60 EB            [12] 2093 	mov	a,r3
   1D61 24 80         [12] 2094 	add	a,#0x80
   1D63 FA            [12] 2095 	mov	r2,a
   1D64 24 0A         [12] 2096 	add	a,#(00205$-3-.)
   1D66 83            [24] 2097 	movc	a,@a+pc
   1D67 F5 82         [12] 2098 	mov	dpl,a
   1D69 EA            [12] 2099 	mov	a,r2
   1D6A 24 15         [12] 2100 	add	a,#(00206$-3-.)
   1D6C 83            [24] 2101 	movc	a,@a+pc
   1D6D F5 83         [12] 2102 	mov	dph,a
   1D6F E4            [12] 2103 	clr	a
   1D70 73            [24] 2104 	jmp	@a+dptr
   1D71                    2105 00205$:
   1D71 93                 2106 	.db	00103$
   1D72 26                 2107 	.db	00104$
   1D73 BC                 2108 	.db	00112$
   1D74 F9                 2109 	.db	00113$
   1D75 D9                 2110 	.db	00106$
   1D76 10                 2111 	.db	00114$
   1D77 31                 2112 	.db	00115$
   1D78 71                 2113 	.db	00127$
   1D79 5F                 2114 	.db	00117$
   1D7A 48                 2115 	.db	00116$
   1D7B 71                 2116 	.db	00127$
   1D7C 71                 2117 	.db	00127$
   1D7D 71                 2118 	.db	00127$
   1D7E 71                 2119 	.db	00127$
   1D7F C7                 2120 	.db	00122$
   1D80 FB                 2121 	.db	00123$
   1D81 58                 2122 	.db	00126$
   1D82                    2123 00206$:
   1D82 1D                 2124 	.db	00103$>>8
   1D83 1E                 2125 	.db	00104$>>8
   1D84 1F                 2126 	.db	00112$>>8
   1D85 1F                 2127 	.db	00113$>>8
   1D86 1E                 2128 	.db	00106$>>8
   1D87 20                 2129 	.db	00114$>>8
   1D88 20                 2130 	.db	00115$>>8
   1D89 21                 2131 	.db	00127$>>8
   1D8A 20                 2132 	.db	00117$>>8
   1D8B 20                 2133 	.db	00116$>>8
   1D8C 21                 2134 	.db	00127$>>8
   1D8D 21                 2135 	.db	00127$>>8
   1D8E 21                 2136 	.db	00127$>>8
   1D8F 21                 2137 	.db	00127$>>8
   1D90 20                 2138 	.db	00122$>>8
   1D91 20                 2139 	.db	00123$>>8
   1D92 21                 2140 	.db	00126$>>8
                           2141 ;	cc1110_spicom.c:400: case CMD_PEEK:
   1D93                    2142 00103$:
                           2143 ;	cc1110_spicom.c:401: ep5.OUTbytesleft =  *ptr++;
   1D93 8D 82         [24] 2144 	mov	dpl,r5
   1D95 8E 83         [24] 2145 	mov	dph,r6
   1D97 8F F0         [24] 2146 	mov	b,r7
   1D99 12 35 F3      [24] 2147 	lcall	__gptrget
   1D9C FA            [12] 2148 	mov	r2,a
   1D9D 74 01         [12] 2149 	mov	a,#0x01
   1D9F 2D            [12] 2150 	add	a,r5
   1DA0 F5 3E         [12] 2151 	mov	_processOUTEP5_sloc0_1_0,a
   1DA2 E4            [12] 2152 	clr	a
   1DA3 3E            [12] 2153 	addc	a,r6
   1DA4 F5 3F         [12] 2154 	mov	(_processOUTEP5_sloc0_1_0 + 1),a
   1DA6 8A 40         [24] 2155 	mov	_processOUTEP5_sloc1_1_0,r2
   1DA8 75 41 00      [24] 2156 	mov	(_processOUTEP5_sloc1_1_0 + 1),#0x00
   1DAB 90 F9 9C      [24] 2157 	mov	dptr,#(_ep5 + 0x000c)
   1DAE E5 40         [12] 2158 	mov	a,_processOUTEP5_sloc1_1_0
   1DB0 F0            [24] 2159 	movx	@dptr,a
   1DB1 E5 41         [12] 2160 	mov	a,(_processOUTEP5_sloc1_1_0 + 1)
   1DB3 A3            [24] 2161 	inc	dptr
   1DB4 F0            [24] 2162 	movx	@dptr,a
                           2163 ;	cc1110_spicom.c:402: ep5.OUTbytesleft += (u16)*ptr++ << 8;
   1DB5 85 3E 82      [24] 2164 	mov	dpl,_processOUTEP5_sloc0_1_0
   1DB8 85 3F 83      [24] 2165 	mov	dph,(_processOUTEP5_sloc0_1_0 + 1)
   1DBB E0            [24] 2166 	movx	a,@dptr
   1DBC F5 3E         [12] 2167 	mov	_processOUTEP5_sloc0_1_0,a
   1DBE 74 02         [12] 2168 	mov	a,#0x02
   1DC0 2D            [12] 2169 	add	a,r5
   1DC1 F5 42         [12] 2170 	mov	_processOUTEP5_sloc2_1_0,a
   1DC3 E4            [12] 2171 	clr	a
   1DC4 3E            [12] 2172 	addc	a,r6
   1DC5 F5 43         [12] 2173 	mov	(_processOUTEP5_sloc2_1_0 + 1),a
   1DC7 A9 3E         [24] 2174 	mov	r1,_processOUTEP5_sloc0_1_0
   1DC9 89 02         [24] 2175 	mov	ar2,r1
   1DCB E4            [12] 2176 	clr	a
   1DCC 25 40         [12] 2177 	add	a,_processOUTEP5_sloc1_1_0
   1DCE F5 40         [12] 2178 	mov	_processOUTEP5_sloc1_1_0,a
   1DD0 EA            [12] 2179 	mov	a,r2
   1DD1 35 41         [12] 2180 	addc	a,(_processOUTEP5_sloc1_1_0 + 1)
   1DD3 F5 41         [12] 2181 	mov	(_processOUTEP5_sloc1_1_0 + 1),a
   1DD5 90 F9 9C      [24] 2182 	mov	dptr,#(_ep5 + 0x000c)
   1DD8 E5 40         [12] 2183 	mov	a,_processOUTEP5_sloc1_1_0
   1DDA F0            [24] 2184 	movx	@dptr,a
   1DDB E5 41         [12] 2185 	mov	a,(_processOUTEP5_sloc1_1_0 + 1)
   1DDD A3            [24] 2186 	inc	dptr
   1DDE F0            [24] 2187 	movx	@dptr,a
                           2188 ;	cc1110_spicom.c:404: loop =  (u16)*ptr++;
   1DDF 85 42 82      [24] 2189 	mov	dpl,_processOUTEP5_sloc2_1_0
   1DE2 85 43 83      [24] 2190 	mov	dph,(_processOUTEP5_sloc2_1_0 + 1)
   1DE5 E0            [24] 2191 	movx	a,@dptr
   1DE6 F8            [12] 2192 	mov	r0,a
   1DE7 8D 82         [24] 2193 	mov	dpl,r5
   1DE9 8E 83         [24] 2194 	mov	dph,r6
   1DEB A3            [24] 2195 	inc	dptr
   1DEC A3            [24] 2196 	inc	dptr
   1DED A3            [24] 2197 	inc	dptr
   1DEE 88 3C         [24] 2198 	mov	_processOUTEP5_loop_1_113,r0
   1DF0 75 3D 00      [24] 2199 	mov	(_processOUTEP5_loop_1_113 + 1),#0x00
                           2200 ;	cc1110_spicom.c:405: loop += (u16)*ptr++ << 8;
   1DF3 E0            [24] 2201 	movx	a,@dptr
   1DF4 FA            [12] 2202 	mov	r2,a
   1DF5 E4            [12] 2203 	clr	a
   1DF6 25 3C         [12] 2204 	add	a,_processOUTEP5_loop_1_113
   1DF8 F5 3C         [12] 2205 	mov	_processOUTEP5_loop_1_113,a
   1DFA EA            [12] 2206 	mov	a,r2
   1DFB 35 3D         [12] 2207 	addc	a,(_processOUTEP5_loop_1_113 + 1)
   1DFD F5 3D         [12] 2208 	mov	(_processOUTEP5_loop_1_113 + 1),a
                           2209 ;	cc1110_spicom.c:406: ptr = (__xdata u8*) loop;
   1DFF 85 3C 3A      [24] 2210 	mov	_txdata_PARM_4,_processOUTEP5_loop_1_113
   1E02 85 3D 3B      [24] 2211 	mov	(_txdata_PARM_4 + 1),(_processOUTEP5_loop_1_113 + 1)
                           2212 ;	cc1110_spicom.c:408: txdata(ep5.OUTapp, ep5.OUTcmd, ep5.OUTbytesleft, ptr);
   1E05 90 F9 9A      [24] 2213 	mov	dptr,#(_ep5 + 0x000a)
   1E08 E0            [24] 2214 	movx	a,@dptr
   1E09 FA            [12] 2215 	mov	r2,a
   1E0A 90 F9 9B      [24] 2216 	mov	dptr,#(_ep5 + 0x000b)
   1E0D E0            [24] 2217 	movx	a,@dptr
   1E0E F5 37         [12] 2218 	mov	_txdata_PARM_2,a
   1E10 85 40 38      [24] 2219 	mov	_txdata_PARM_3,_processOUTEP5_sloc1_1_0
   1E13 85 41 39      [24] 2220 	mov	(_txdata_PARM_3 + 1),(_processOUTEP5_sloc1_1_0 + 1)
   1E16 8A 82         [24] 2221 	mov	dpl,r2
   1E18 12 1C 70      [24] 2222 	lcall	_txdata
                           2223 ;	cc1110_spicom.c:409: ep5.OUTbytesleft = 0;
   1E1B 90 F9 9C      [24] 2224 	mov	dptr,#(_ep5 + 0x000c)
   1E1E E4            [12] 2225 	clr	a
   1E1F F0            [24] 2226 	movx	@dptr,a
   1E20 E4            [12] 2227 	clr	a
   1E21 A3            [24] 2228 	inc	dptr
   1E22 F0            [24] 2229 	movx	@dptr,a
                           2230 ;	cc1110_spicom.c:410: break;
   1E23 02 21 87      [24] 2231 	ljmp	00128$
                           2232 ;	cc1110_spicom.c:412: case CMD_POKE:
   1E26                    2233 00104$:
                           2234 ;	cc1110_spicom.c:413: loop =  *ptr++;
   1E26 8D 82         [24] 2235 	mov	dpl,r5
   1E28 8E 83         [24] 2236 	mov	dph,r6
   1E2A 8F F0         [24] 2237 	mov	b,r7
   1E2C 12 35 F3      [24] 2238 	lcall	__gptrget
   1E2F FA            [12] 2239 	mov	r2,a
   1E30 8D 82         [24] 2240 	mov	dpl,r5
   1E32 8E 83         [24] 2241 	mov	dph,r6
   1E34 A3            [24] 2242 	inc	dptr
   1E35 8A 3C         [24] 2243 	mov	_processOUTEP5_loop_1_113,r2
   1E37 75 3D 00      [24] 2244 	mov	(_processOUTEP5_loop_1_113 + 1),#0x00
                           2245 ;	cc1110_spicom.c:414: loop += *ptr++ << 8;
   1E3A E0            [24] 2246 	movx	a,@dptr
   1E3B FA            [12] 2247 	mov	r2,a
   1E3C 74 02         [12] 2248 	mov	a,#0x02
   1E3E 2D            [12] 2249 	add	a,r5
   1E3F F5 42         [12] 2250 	mov	_processOUTEP5_sloc2_1_0,a
   1E41 E4            [12] 2251 	clr	a
   1E42 3E            [12] 2252 	addc	a,r6
   1E43 F5 43         [12] 2253 	mov	(_processOUTEP5_sloc2_1_0 + 1),a
   1E45 8A 01         [24] 2254 	mov	ar1,r2
   1E47 89 02         [24] 2255 	mov	ar2,r1
   1E49 E4            [12] 2256 	clr	a
   1E4A 25 3C         [12] 2257 	add	a,_processOUTEP5_loop_1_113
   1E4C F5 3C         [12] 2258 	mov	_processOUTEP5_loop_1_113,a
   1E4E EA            [12] 2259 	mov	a,r2
   1E4F 35 3D         [12] 2260 	addc	a,(_processOUTEP5_loop_1_113 + 1)
   1E51 F5 3D         [12] 2261 	mov	(_processOUTEP5_loop_1_113 + 1),a
                           2262 ;	cc1110_spicom.c:415: ep5.dptr = (__xdata u8*) loop;
   1E53 A8 3C         [24] 2263 	mov	r0,_processOUTEP5_loop_1_113
   1E55 AA 3D         [24] 2264 	mov	r2,(_processOUTEP5_loop_1_113 + 1)
   1E57 90 F9 A0      [24] 2265 	mov	dptr,#(_ep5 + 0x0010)
   1E5A E8            [12] 2266 	mov	a,r0
   1E5B F0            [24] 2267 	movx	@dptr,a
   1E5C EA            [12] 2268 	mov	a,r2
   1E5D A3            [24] 2269 	inc	dptr
   1E5E F0            [24] 2270 	movx	@dptr,a
                           2271 ;	cc1110_spicom.c:417: loop = ep5.OUTlen - 2;
   1E5F 90 F9 98      [24] 2272 	mov	dptr,#(_ep5 + 0x0008)
   1E62 E0            [24] 2273 	movx	a,@dptr
   1E63 F9            [12] 2274 	mov	r1,a
   1E64 A3            [24] 2275 	inc	dptr
   1E65 E0            [24] 2276 	movx	a,@dptr
   1E66 FA            [12] 2277 	mov	r2,a
   1E67 E9            [12] 2278 	mov	a,r1
   1E68 24 FE         [12] 2279 	add	a,#0xFE
   1E6A F5 3C         [12] 2280 	mov	_processOUTEP5_loop_1_113,a
   1E6C EA            [12] 2281 	mov	a,r2
   1E6D 34 FF         [12] 2282 	addc	a,#0xFF
   1E6F F5 3D         [12] 2283 	mov	(_processOUTEP5_loop_1_113 + 1),a
   1E71 85 3C 40      [24] 2284 	mov	_processOUTEP5_sloc1_1_0,_processOUTEP5_loop_1_113
   1E74 85 3D 41      [24] 2285 	mov	(_processOUTEP5_sloc1_1_0 + 1),(_processOUTEP5_loop_1_113 + 1)
   1E77                    2286 00138$:
                           2287 ;	cc1110_spicom.c:419: for (;loop>0;loop--)
   1E77 E5 40         [12] 2288 	mov	a,_processOUTEP5_sloc1_1_0
   1E79 45 41         [12] 2289 	orl	a,(_processOUTEP5_sloc1_1_0 + 1)
   1E7B 60 3D         [24] 2290 	jz	00105$
                           2291 ;	cc1110_spicom.c:421: *ep5.dptr++ = *ptr++;
   1E7D 90 F9 A0      [24] 2292 	mov	dptr,#(_ep5 + 0x0010)
   1E80 E0            [24] 2293 	movx	a,@dptr
   1E81 F5 3E         [12] 2294 	mov	_processOUTEP5_sloc0_1_0,a
   1E83 A3            [24] 2295 	inc	dptr
   1E84 E0            [24] 2296 	movx	a,@dptr
   1E85 F5 3F         [12] 2297 	mov	(_processOUTEP5_sloc0_1_0 + 1),a
   1E87 74 01         [12] 2298 	mov	a,#0x01
   1E89 25 3E         [12] 2299 	add	a,_processOUTEP5_sloc0_1_0
   1E8B F9            [12] 2300 	mov	r1,a
   1E8C E4            [12] 2301 	clr	a
   1E8D 35 3F         [12] 2302 	addc	a,(_processOUTEP5_sloc0_1_0 + 1)
   1E8F FA            [12] 2303 	mov	r2,a
   1E90 90 F9 A0      [24] 2304 	mov	dptr,#(_ep5 + 0x0010)
   1E93 E9            [12] 2305 	mov	a,r1
   1E94 F0            [24] 2306 	movx	@dptr,a
   1E95 EA            [12] 2307 	mov	a,r2
   1E96 A3            [24] 2308 	inc	dptr
   1E97 F0            [24] 2309 	movx	@dptr,a
   1E98 85 42 82      [24] 2310 	mov	dpl,_processOUTEP5_sloc2_1_0
   1E9B 85 43 83      [24] 2311 	mov	dph,(_processOUTEP5_sloc2_1_0 + 1)
   1E9E E0            [24] 2312 	movx	a,@dptr
   1E9F FA            [12] 2313 	mov	r2,a
   1EA0 A3            [24] 2314 	inc	dptr
   1EA1 85 82 42      [24] 2315 	mov	_processOUTEP5_sloc2_1_0,dpl
   1EA4 85 83 43      [24] 2316 	mov	(_processOUTEP5_sloc2_1_0 + 1),dph
   1EA7 85 3E 82      [24] 2317 	mov	dpl,_processOUTEP5_sloc0_1_0
   1EAA 85 3F 83      [24] 2318 	mov	dph,(_processOUTEP5_sloc0_1_0 + 1)
   1EAD EA            [12] 2319 	mov	a,r2
   1EAE F0            [24] 2320 	movx	@dptr,a
                           2321 ;	cc1110_spicom.c:419: for (;loop>0;loop--)
   1EAF 15 40         [12] 2322 	dec	_processOUTEP5_sloc1_1_0
   1EB1 74 FF         [12] 2323 	mov	a,#0xFF
   1EB3 B5 40 02      [24] 2324 	cjne	a,_processOUTEP5_sloc1_1_0,00208$
   1EB6 15 41         [12] 2325 	dec	(_processOUTEP5_sloc1_1_0 + 1)
   1EB8                    2326 00208$:
   1EB8 80 BD         [24] 2327 	sjmp	00138$
   1EBA                    2328 00105$:
                           2329 ;	cc1110_spicom.c:425: txdata(ep5.OUTapp, ep5.OUTcmd, 2, (__xdata u8*)&(ep5.OUTbytesleft));
   1EBA 90 F9 9A      [24] 2330 	mov	dptr,#(_ep5 + 0x000a)
   1EBD E0            [24] 2331 	movx	a,@dptr
   1EBE FA            [12] 2332 	mov	r2,a
   1EBF 90 F9 9B      [24] 2333 	mov	dptr,#(_ep5 + 0x000b)
   1EC2 E0            [24] 2334 	movx	a,@dptr
   1EC3 F5 37         [12] 2335 	mov	_txdata_PARM_2,a
   1EC5 75 3A 9C      [24] 2336 	mov	_txdata_PARM_4,#(_ep5 + 0x000c)
   1EC8 75 3B F9      [24] 2337 	mov	(_txdata_PARM_4 + 1),#((_ep5 + 0x000c) >> 8)
   1ECB 75 38 02      [24] 2338 	mov	_txdata_PARM_3,#0x02
   1ECE 75 39 00      [24] 2339 	mov	(_txdata_PARM_3 + 1),#0x00
   1ED1 8A 82         [24] 2340 	mov	dpl,r2
   1ED3 12 1C 70      [24] 2341 	lcall	_txdata
                           2342 ;	cc1110_spicom.c:426: break;
   1ED6 02 21 87      [24] 2343 	ljmp	00128$
                           2344 ;	cc1110_spicom.c:428: case CMD_POKE_REG:
   1ED9                    2345 00106$:
                           2346 ;	cc1110_spicom.c:429: if (!(ep5.flags & EP_OUTBUF_CONTINUED))
   1ED9 90 F9 9E      [24] 2347 	mov	dptr,#(_ep5 + 0x000e)
   1EDC E0            [24] 2348 	movx	a,@dptr
   1EDD FA            [12] 2349 	mov	r2,a
   1EDE 20 E2 3C      [24] 2350 	jb	acc.2,00108$
                           2351 ;	cc1110_spicom.c:431: loop =  *ptr++;
   1EE1 8D 82         [24] 2352 	mov	dpl,r5
   1EE3 8E 83         [24] 2353 	mov	dph,r6
   1EE5 8F F0         [24] 2354 	mov	b,r7
   1EE7 12 35 F3      [24] 2355 	lcall	__gptrget
   1EEA FA            [12] 2356 	mov	r2,a
   1EEB 8D 82         [24] 2357 	mov	dpl,r5
   1EED 8E 83         [24] 2358 	mov	dph,r6
   1EEF A3            [24] 2359 	inc	dptr
   1EF0 8A 3C         [24] 2360 	mov	_processOUTEP5_loop_1_113,r2
   1EF2 75 3D 00      [24] 2361 	mov	(_processOUTEP5_loop_1_113 + 1),#0x00
                           2362 ;	cc1110_spicom.c:432: loop += *ptr++ << 8;
   1EF5 E0            [24] 2363 	movx	a,@dptr
   1EF6 FA            [12] 2364 	mov	r2,a
   1EF7 90 F9 A8      [24] 2365 	mov	dptr,#_processOUTEP5_ptr_1_113
   1EFA 74 02         [12] 2366 	mov	a,#0x02
   1EFC 2D            [12] 2367 	add	a,r5
   1EFD F0            [24] 2368 	movx	@dptr,a
   1EFE E4            [12] 2369 	clr	a
   1EFF 3E            [12] 2370 	addc	a,r6
   1F00 A3            [24] 2371 	inc	dptr
   1F01 F0            [24] 2372 	movx	@dptr,a
   1F02 8A 01         [24] 2373 	mov	ar1,r2
   1F04 89 02         [24] 2374 	mov	ar2,r1
   1F06 E4            [12] 2375 	clr	a
   1F07 F9            [12] 2376 	mov	r1,a
   1F08 25 3C         [12] 2377 	add	a,_processOUTEP5_loop_1_113
   1F0A F5 3C         [12] 2378 	mov	_processOUTEP5_loop_1_113,a
   1F0C EA            [12] 2379 	mov	a,r2
   1F0D 35 3D         [12] 2380 	addc	a,(_processOUTEP5_loop_1_113 + 1)
   1F0F F5 3D         [12] 2381 	mov	(_processOUTEP5_loop_1_113 + 1),a
                           2382 ;	cc1110_spicom.c:433: ep5.dptr = (__xdata u8*) loop;
   1F11 A8 3C         [24] 2383 	mov	r0,_processOUTEP5_loop_1_113
   1F13 AA 3D         [24] 2384 	mov	r2,(_processOUTEP5_loop_1_113 + 1)
   1F15 90 F9 A0      [24] 2385 	mov	dptr,#(_ep5 + 0x0010)
   1F18 E8            [12] 2386 	mov	a,r0
   1F19 F0            [24] 2387 	movx	@dptr,a
   1F1A EA            [12] 2388 	mov	a,r2
   1F1B A3            [24] 2389 	inc	dptr
   1F1C F0            [24] 2390 	movx	@dptr,a
   1F1D                    2391 00108$:
                           2392 ;	cc1110_spicom.c:437: loop = ep5.OUTbytesleft;
   1F1D 90 F9 9C      [24] 2393 	mov	dptr,#(_ep5 + 0x000c)
   1F20 E0            [24] 2394 	movx	a,@dptr
   1F21 F9            [12] 2395 	mov	r1,a
   1F22 A3            [24] 2396 	inc	dptr
   1F23 E0            [24] 2397 	movx	a,@dptr
   1F24 FA            [12] 2398 	mov	r2,a
   1F25 89 3C         [24] 2399 	mov	_processOUTEP5_loop_1_113,r1
   1F27 8A 3D         [24] 2400 	mov	(_processOUTEP5_loop_1_113 + 1),r2
                           2401 ;	cc1110_spicom.c:438: if (loop > EP5OUT_MAX_PACKET_SIZE)
   1F29 C3            [12] 2402 	clr	c
   1F2A 74 40         [12] 2403 	mov	a,#0x40
   1F2C 95 3C         [12] 2404 	subb	a,_processOUTEP5_loop_1_113
   1F2E E4            [12] 2405 	clr	a
   1F2F 95 3D         [12] 2406 	subb	a,(_processOUTEP5_loop_1_113 + 1)
   1F31 50 06         [24] 2407 	jnc	00110$
                           2408 ;	cc1110_spicom.c:440: loop = EP5OUT_MAX_PACKET_SIZE;
   1F33 75 3C 40      [24] 2409 	mov	_processOUTEP5_loop_1_113,#0x40
   1F36 75 3D 00      [24] 2410 	mov	(_processOUTEP5_loop_1_113 + 1),#0x00
   1F39                    2411 00110$:
                           2412 ;	cc1110_spicom.c:443: ep5.OUTbytesleft -= loop;
   1F39 E9            [12] 2413 	mov	a,r1
   1F3A C3            [12] 2414 	clr	c
   1F3B 95 3C         [12] 2415 	subb	a,_processOUTEP5_loop_1_113
   1F3D F9            [12] 2416 	mov	r1,a
   1F3E EA            [12] 2417 	mov	a,r2
   1F3F 95 3D         [12] 2418 	subb	a,(_processOUTEP5_loop_1_113 + 1)
   1F41 FA            [12] 2419 	mov	r2,a
   1F42 90 F9 9C      [24] 2420 	mov	dptr,#(_ep5 + 0x000c)
   1F45 E9            [12] 2421 	mov	a,r1
   1F46 F0            [24] 2422 	movx	@dptr,a
   1F47 EA            [12] 2423 	mov	a,r2
   1F48 A3            [24] 2424 	inc	dptr
   1F49 F0            [24] 2425 	movx	@dptr,a
   1F4A 90 F9 A8      [24] 2426 	mov	dptr,#_processOUTEP5_ptr_1_113
   1F4D E0            [24] 2427 	movx	a,@dptr
   1F4E F5 40         [12] 2428 	mov	_processOUTEP5_sloc1_1_0,a
   1F50 A3            [24] 2429 	inc	dptr
   1F51 E0            [24] 2430 	movx	a,@dptr
   1F52 F5 41         [12] 2431 	mov	(_processOUTEP5_sloc1_1_0 + 1),a
   1F54 85 3C 42      [24] 2432 	mov	_processOUTEP5_sloc2_1_0,_processOUTEP5_loop_1_113
   1F57 85 3D 43      [24] 2433 	mov	(_processOUTEP5_sloc2_1_0 + 1),(_processOUTEP5_loop_1_113 + 1)
   1F5A                    2434 00141$:
                           2435 ;	cc1110_spicom.c:446: for (;loop>0;loop--)
   1F5A E5 42         [12] 2436 	mov	a,_processOUTEP5_sloc2_1_0
   1F5C 45 43         [12] 2437 	orl	a,(_processOUTEP5_sloc2_1_0 + 1)
   1F5E 60 3D         [24] 2438 	jz	00111$
                           2439 ;	cc1110_spicom.c:448: *ep5.dptr++ = *ptr++;
   1F60 90 F9 A0      [24] 2440 	mov	dptr,#(_ep5 + 0x0010)
   1F63 E0            [24] 2441 	movx	a,@dptr
   1F64 F5 3E         [12] 2442 	mov	_processOUTEP5_sloc0_1_0,a
   1F66 A3            [24] 2443 	inc	dptr
   1F67 E0            [24] 2444 	movx	a,@dptr
   1F68 F5 3F         [12] 2445 	mov	(_processOUTEP5_sloc0_1_0 + 1),a
   1F6A 74 01         [12] 2446 	mov	a,#0x01
   1F6C 25 3E         [12] 2447 	add	a,_processOUTEP5_sloc0_1_0
   1F6E F9            [12] 2448 	mov	r1,a
   1F6F E4            [12] 2449 	clr	a
   1F70 35 3F         [12] 2450 	addc	a,(_processOUTEP5_sloc0_1_0 + 1)
   1F72 FA            [12] 2451 	mov	r2,a
   1F73 90 F9 A0      [24] 2452 	mov	dptr,#(_ep5 + 0x0010)
   1F76 E9            [12] 2453 	mov	a,r1
   1F77 F0            [24] 2454 	movx	@dptr,a
   1F78 EA            [12] 2455 	mov	a,r2
   1F79 A3            [24] 2456 	inc	dptr
   1F7A F0            [24] 2457 	movx	@dptr,a
   1F7B 85 40 82      [24] 2458 	mov	dpl,_processOUTEP5_sloc1_1_0
   1F7E 85 41 83      [24] 2459 	mov	dph,(_processOUTEP5_sloc1_1_0 + 1)
   1F81 E0            [24] 2460 	movx	a,@dptr
   1F82 FA            [12] 2461 	mov	r2,a
   1F83 A3            [24] 2462 	inc	dptr
   1F84 85 82 40      [24] 2463 	mov	_processOUTEP5_sloc1_1_0,dpl
   1F87 85 83 41      [24] 2464 	mov	(_processOUTEP5_sloc1_1_0 + 1),dph
   1F8A 85 3E 82      [24] 2465 	mov	dpl,_processOUTEP5_sloc0_1_0
   1F8D 85 3F 83      [24] 2466 	mov	dph,(_processOUTEP5_sloc0_1_0 + 1)
   1F90 EA            [12] 2467 	mov	a,r2
   1F91 F0            [24] 2468 	movx	@dptr,a
                           2469 ;	cc1110_spicom.c:446: for (;loop>0;loop--)
   1F92 15 42         [12] 2470 	dec	_processOUTEP5_sloc2_1_0
   1F94 74 FF         [12] 2471 	mov	a,#0xFF
   1F96 B5 42 02      [24] 2472 	cjne	a,_processOUTEP5_sloc2_1_0,00212$
   1F99 15 43         [12] 2473 	dec	(_processOUTEP5_sloc2_1_0 + 1)
   1F9B                    2474 00212$:
   1F9B 80 BD         [24] 2475 	sjmp	00141$
   1F9D                    2476 00111$:
                           2477 ;	cc1110_spicom.c:451: txdata(ep5.OUTapp, ep5.OUTcmd, 2, (__xdata u8*)&(ep5.OUTbytesleft));
   1F9D 90 F9 9A      [24] 2478 	mov	dptr,#(_ep5 + 0x000a)
   1FA0 E0            [24] 2479 	movx	a,@dptr
   1FA1 FA            [12] 2480 	mov	r2,a
   1FA2 90 F9 9B      [24] 2481 	mov	dptr,#(_ep5 + 0x000b)
   1FA5 E0            [24] 2482 	movx	a,@dptr
   1FA6 F5 37         [12] 2483 	mov	_txdata_PARM_2,a
   1FA8 75 3A 9C      [24] 2484 	mov	_txdata_PARM_4,#(_ep5 + 0x000c)
   1FAB 75 3B F9      [24] 2485 	mov	(_txdata_PARM_4 + 1),#((_ep5 + 0x000c) >> 8)
   1FAE 75 38 02      [24] 2486 	mov	_txdata_PARM_3,#0x02
   1FB1 75 39 00      [24] 2487 	mov	(_txdata_PARM_3 + 1),#0x00
   1FB4 8A 82         [24] 2488 	mov	dpl,r2
   1FB6 12 1C 70      [24] 2489 	lcall	_txdata
                           2490 ;	cc1110_spicom.c:453: break;
   1FB9 02 21 87      [24] 2491 	ljmp	00128$
                           2492 ;	cc1110_spicom.c:454: case CMD_PING:
   1FBC                    2493 00112$:
                           2494 ;	cc1110_spicom.c:455: blink(2,2);
   1FBC D2 A4         [12] 2495 	setb	_P2_4
   1FBE 90 00 02      [24] 2496 	mov	dptr,#0x0002
   1FC1 C0 07         [24] 2497 	push	ar7
   1FC3 C0 06         [24] 2498 	push	ar6
   1FC5 C0 05         [24] 2499 	push	ar5
   1FC7 12 2D D3      [24] 2500 	lcall	_sleepMillis
   1FCA C2 A4         [12] 2501 	clr	_P2_4
   1FCC 90 00 02      [24] 2502 	mov	dptr,#0x0002
   1FCF 12 2D D3      [24] 2503 	lcall	_sleepMillis
   1FD2 D0 05         [24] 2504 	pop	ar5
   1FD4 D0 06         [24] 2505 	pop	ar6
   1FD6 D0 07         [24] 2506 	pop	ar7
                           2507 ;	cc1110_spicom.c:456: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   1FD8 90 F9 9A      [24] 2508 	mov	dptr,#(_ep5 + 0x000a)
   1FDB E0            [24] 2509 	movx	a,@dptr
   1FDC FA            [12] 2510 	mov	r2,a
   1FDD 90 F9 9B      [24] 2511 	mov	dptr,#(_ep5 + 0x000b)
   1FE0 E0            [24] 2512 	movx	a,@dptr
   1FE1 F5 37         [12] 2513 	mov	_txdata_PARM_2,a
   1FE3 90 F9 98      [24] 2514 	mov	dptr,#(_ep5 + 0x0008)
   1FE6 E0            [24] 2515 	movx	a,@dptr
   1FE7 F5 38         [12] 2516 	mov	_txdata_PARM_3,a
   1FE9 A3            [24] 2517 	inc	dptr
   1FEA E0            [24] 2518 	movx	a,@dptr
   1FEB F5 39         [12] 2519 	mov	(_txdata_PARM_3 + 1),a
   1FED 8D 3A         [24] 2520 	mov	_txdata_PARM_4,r5
   1FEF 8E 3B         [24] 2521 	mov	(_txdata_PARM_4 + 1),r6
   1FF1 8A 82         [24] 2522 	mov	dpl,r2
   1FF3 12 1C 70      [24] 2523 	lcall	_txdata
                           2524 ;	cc1110_spicom.c:457: break;
   1FF6 02 21 87      [24] 2525 	ljmp	00128$
                           2526 ;	cc1110_spicom.c:459: case CMD_STATUS:
   1FF9                    2527 00113$:
                           2528 ;	cc1110_spicom.c:460: txdata(ep5.OUTapp, ep5.OUTcmd, 13, (__xdata u8*)"UNIMPLEMENTED");
   1FF9 75 3A 14      [24] 2529 	mov	_txdata_PARM_4,#__str_0
   1FFC 75 3B 38      [24] 2530 	mov	(_txdata_PARM_4 + 1),#(__str_0 >> 8)
   1FFF 8B 37         [24] 2531 	mov	_txdata_PARM_2,r3
   2001 75 38 0D      [24] 2532 	mov	_txdata_PARM_3,#0x0D
   2004 75 39 00      [24] 2533 	mov	(_txdata_PARM_3 + 1),#0x00
   2007 85 42 82      [24] 2534 	mov	dpl,_processOUTEP5_sloc2_1_0
   200A 12 1C 70      [24] 2535 	lcall	_txdata
                           2536 ;	cc1110_spicom.c:462: break;
   200D 02 21 87      [24] 2537 	ljmp	00128$
                           2538 ;	cc1110_spicom.c:464: case CMD_GET_CLOCK:
   2010                    2539 00114$:
                           2540 ;	cc1110_spicom.c:465: txdata(ep5.OUTapp, ep5.OUTcmd, 4, (__xdata u8*)clock);
   2010 90 FE 03      [24] 2541 	mov	dptr,#_clock
   2013 E0            [24] 2542 	movx	a,@dptr
   2014 F8            [12] 2543 	mov	r0,a
   2015 A3            [24] 2544 	inc	dptr
   2016 E0            [24] 2545 	movx	a,@dptr
   2017 F9            [12] 2546 	mov	r1,a
   2018 A3            [24] 2547 	inc	dptr
   2019 E0            [24] 2548 	movx	a,@dptr
   201A A3            [24] 2549 	inc	dptr
   201B E0            [24] 2550 	movx	a,@dptr
   201C 88 3A         [24] 2551 	mov	_txdata_PARM_4,r0
   201E 89 3B         [24] 2552 	mov	(_txdata_PARM_4 + 1),r1
   2020 8B 37         [24] 2553 	mov	_txdata_PARM_2,r3
   2022 75 38 04      [24] 2554 	mov	_txdata_PARM_3,#0x04
   2025 75 39 00      [24] 2555 	mov	(_txdata_PARM_3 + 1),#0x00
   2028 85 42 82      [24] 2556 	mov	dpl,_processOUTEP5_sloc2_1_0
   202B 12 1C 70      [24] 2557 	lcall	_txdata
                           2558 ;	cc1110_spicom.c:466: break;
   202E 02 21 87      [24] 2559 	ljmp	00128$
                           2560 ;	cc1110_spicom.c:468: case CMD_BUILDTYPE:
   2031                    2561 00115$:
                           2562 ;	cc1110_spicom.c:469: txdata(ep5.OUTapp, ep5.OUTcmd, sizeof(buildname), (__xdata u8*)&buildname[0]);
   2031 75 3A 05      [24] 2563 	mov	_txdata_PARM_4,#_buildname
   2034 75 3B 38      [24] 2564 	mov	(_txdata_PARM_4 + 1),#(_buildname >> 8)
   2037 8B 37         [24] 2565 	mov	_txdata_PARM_2,r3
   2039 75 38 0F      [24] 2566 	mov	_txdata_PARM_3,#0x0F
   203C 75 39 00      [24] 2567 	mov	(_txdata_PARM_3 + 1),#0x00
   203F 85 42 82      [24] 2568 	mov	dpl,_processOUTEP5_sloc2_1_0
   2042 12 1C 70      [24] 2569 	lcall	_txdata
                           2570 ;	cc1110_spicom.c:470: break;
   2045 02 21 87      [24] 2571 	ljmp	00128$
                           2572 ;	cc1110_spicom.c:472: case CMD_COMPILER:
   2048                    2573 00116$:
                           2574 ;	cc1110_spicom.c:473: txdata(ep5.OUTapp, ep5.OUTcmd, sizeof(sdccver), (__xdata u8*)&sdccver[0]);
   2048 75 3A FC      [24] 2575 	mov	_txdata_PARM_4,#_sdccver
   204B 75 3B 37      [24] 2576 	mov	(_txdata_PARM_4 + 1),#(_sdccver >> 8)
   204E 8B 37         [24] 2577 	mov	_txdata_PARM_2,r3
   2050 75 38 09      [24] 2578 	mov	_txdata_PARM_3,#0x09
   2053 75 39 00      [24] 2579 	mov	(_txdata_PARM_3 + 1),#0x00
   2056 85 42 82      [24] 2580 	mov	dpl,_processOUTEP5_sloc2_1_0
   2059 12 1C 70      [24] 2581 	lcall	_txdata
                           2582 ;	cc1110_spicom.c:474: break;
   205C 02 21 87      [24] 2583 	ljmp	00128$
                           2584 ;	cc1110_spicom.c:476: case CMD_RFMODE:
   205F                    2585 00117$:
                           2586 ;	cc1110_spicom.c:477: switch (*ptr++)
   205F 8D 82         [24] 2587 	mov	dpl,r5
   2061 8E 83         [24] 2588 	mov	dph,r6
   2063 8F F0         [24] 2589 	mov	b,r7
   2065 12 35 F3      [24] 2590 	lcall	__gptrget
   2068 FC            [12] 2591 	mov	r4,a
   2069 74 01         [12] 2592 	mov	a,#0x01
   206B 2D            [12] 2593 	add	a,r5
   206C F9            [12] 2594 	mov	r1,a
   206D E4            [12] 2595 	clr	a
   206E 3E            [12] 2596 	addc	a,r6
   206F FA            [12] 2597 	mov	r2,a
   2070 BC 02 02      [24] 2598 	cjne	r4,#0x02,00213$
   2073 80 0A         [24] 2599 	sjmp	00118$
   2075                    2600 00213$:
   2075 BC 03 02      [24] 2601 	cjne	r4,#0x03,00214$
   2078 80 21         [24] 2602 	sjmp	00120$
   207A                    2603 00214$:
                           2604 ;	cc1110_spicom.c:479: case RFST_SRX:
   207A BC 04 29      [24] 2605 	cjne	r4,#0x04,00121$
   207D 80 0D         [24] 2606 	sjmp	00119$
   207F                    2607 00118$:
                           2608 ;	cc1110_spicom.c:480: RxMode();
   207F C0 02         [24] 2609 	push	ar2
   2081 C0 01         [24] 2610 	push	ar1
   2083 12 23 7E      [24] 2611 	lcall	_RxMode
   2086 D0 01         [24] 2612 	pop	ar1
   2088 D0 02         [24] 2613 	pop	ar2
                           2614 ;	cc1110_spicom.c:481: break;
                           2615 ;	cc1110_spicom.c:482: case RFST_SIDLE:
   208A 80 1A         [24] 2616 	sjmp	00121$
   208C                    2617 00119$:
                           2618 ;	cc1110_spicom.c:483: LED = 0;
   208C C2 A4         [12] 2619 	clr	_P2_4
                           2620 ;	cc1110_spicom.c:484: IdleMode();
   208E C0 02         [24] 2621 	push	ar2
   2090 C0 01         [24] 2622 	push	ar1
   2092 12 23 C2      [24] 2623 	lcall	_IdleMode
   2095 D0 01         [24] 2624 	pop	ar1
   2097 D0 02         [24] 2625 	pop	ar2
                           2626 ;	cc1110_spicom.c:485: break;
                           2627 ;	cc1110_spicom.c:486: case RFST_STX:
   2099 80 0B         [24] 2628 	sjmp	00121$
   209B                    2629 00120$:
                           2630 ;	cc1110_spicom.c:487: TxMode();
   209B C0 02         [24] 2631 	push	ar2
   209D C0 01         [24] 2632 	push	ar1
   209F 12 23 9B      [24] 2633 	lcall	_TxMode
   20A2 D0 01         [24] 2634 	pop	ar1
   20A4 D0 02         [24] 2635 	pop	ar2
                           2636 ;	cc1110_spicom.c:489: }
   20A6                    2637 00121$:
                           2638 ;	cc1110_spicom.c:491: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   20A6 90 F9 9A      [24] 2639 	mov	dptr,#(_ep5 + 0x000a)
   20A9 E0            [24] 2640 	movx	a,@dptr
   20AA FC            [12] 2641 	mov	r4,a
   20AB 90 F9 9B      [24] 2642 	mov	dptr,#(_ep5 + 0x000b)
   20AE E0            [24] 2643 	movx	a,@dptr
   20AF F5 37         [12] 2644 	mov	_txdata_PARM_2,a
   20B1 90 F9 98      [24] 2645 	mov	dptr,#(_ep5 + 0x0008)
   20B4 E0            [24] 2646 	movx	a,@dptr
   20B5 F5 38         [12] 2647 	mov	_txdata_PARM_3,a
   20B7 A3            [24] 2648 	inc	dptr
   20B8 E0            [24] 2649 	movx	a,@dptr
   20B9 F5 39         [12] 2650 	mov	(_txdata_PARM_3 + 1),a
   20BB 89 3A         [24] 2651 	mov	_txdata_PARM_4,r1
   20BD 8A 3B         [24] 2652 	mov	(_txdata_PARM_4 + 1),r2
   20BF 8C 82         [24] 2653 	mov	dpl,r4
   20C1 12 1C 70      [24] 2654 	lcall	_txdata
                           2655 ;	cc1110_spicom.c:492: break;
   20C4 02 21 87      [24] 2656 	ljmp	00128$
                           2657 ;	cc1110_spicom.c:494: case CMD_PARTNUM:
   20C7                    2658 00122$:
                           2659 ;	cc1110_spicom.c:495: ep5.OUTbytesleft = 1;
   20C7 90 F9 9C      [24] 2660 	mov	dptr,#(_ep5 + 0x000c)
   20CA 74 01         [12] 2661 	mov	a,#0x01
   20CC F0            [24] 2662 	movx	@dptr,a
   20CD E4            [12] 2663 	clr	a
   20CE A3            [24] 2664 	inc	dptr
   20CF F0            [24] 2665 	movx	@dptr,a
                           2666 ;	cc1110_spicom.c:497: ptr = (__xdata u8*) &PARTNUM;
   20D0 75 3A 36      [24] 2667 	mov	_txdata_PARM_4,#_PARTNUM
   20D3 75 3B DF      [24] 2668 	mov	(_txdata_PARM_4 + 1),#(_PARTNUM >> 8)
                           2669 ;	cc1110_spicom.c:499: txdata(ep5.OUTapp, ep5.OUTcmd, ep5.OUTbytesleft, ptr);
   20D6 90 F9 9A      [24] 2670 	mov	dptr,#(_ep5 + 0x000a)
   20D9 E0            [24] 2671 	movx	a,@dptr
   20DA FC            [12] 2672 	mov	r4,a
   20DB 90 F9 9B      [24] 2673 	mov	dptr,#(_ep5 + 0x000b)
   20DE E0            [24] 2674 	movx	a,@dptr
   20DF F5 37         [12] 2675 	mov	_txdata_PARM_2,a
   20E1 90 F9 9C      [24] 2676 	mov	dptr,#(_ep5 + 0x000c)
   20E4 E0            [24] 2677 	movx	a,@dptr
   20E5 F5 38         [12] 2678 	mov	_txdata_PARM_3,a
   20E7 A3            [24] 2679 	inc	dptr
   20E8 E0            [24] 2680 	movx	a,@dptr
   20E9 F5 39         [12] 2681 	mov	(_txdata_PARM_3 + 1),a
   20EB 8C 82         [24] 2682 	mov	dpl,r4
   20ED 12 1C 70      [24] 2683 	lcall	_txdata
                           2684 ;	cc1110_spicom.c:500: ep5.OUTbytesleft = 0;
   20F0 90 F9 9C      [24] 2685 	mov	dptr,#(_ep5 + 0x000c)
   20F3 E4            [12] 2686 	clr	a
   20F4 F0            [24] 2687 	movx	@dptr,a
   20F5 E4            [12] 2688 	clr	a
   20F6 A3            [24] 2689 	inc	dptr
   20F7 F0            [24] 2690 	movx	@dptr,a
                           2691 ;	cc1110_spicom.c:501: break;
   20F8 02 21 87      [24] 2692 	ljmp	00128$
                           2693 ;	cc1110_spicom.c:503: case CMD_RESET:
   20FB                    2694 00123$:
                           2695 ;	cc1110_spicom.c:504: if (strncmp(ptr, "RESET_NOW", 9))
   20FB 8D 02         [24] 2696 	mov	ar2,r5
   20FD 8E 04         [24] 2697 	mov	ar4,r6
   20FF 8C 01         [24] 2698 	mov	ar1,r4
   2101 7C 00         [12] 2699 	mov	r4,#0x00
   2103 90 FE 07      [24] 2700 	mov	dptr,#_strncmp_PARM_2
   2106 74 22         [12] 2701 	mov	a,#__str_1
   2108 F0            [24] 2702 	movx	@dptr,a
   2109 74 38         [12] 2703 	mov	a,#(__str_1 >> 8)
   210B A3            [24] 2704 	inc	dptr
   210C F0            [24] 2705 	movx	@dptr,a
   210D 74 80         [12] 2706 	mov	a,#0x80
   210F A3            [24] 2707 	inc	dptr
   2110 F0            [24] 2708 	movx	@dptr,a
   2111 75 14 09      [24] 2709 	mov	_strncmp_PARM_3,#0x09
   2114 75 15 00      [24] 2710 	mov	(_strncmp_PARM_3 + 1),#0x00
   2117 8A 82         [24] 2711 	mov	dpl,r2
   2119 89 83         [24] 2712 	mov	dph,r1
   211B 8C F0         [24] 2713 	mov	b,r4
   211D C0 07         [24] 2714 	push	ar7
   211F C0 06         [24] 2715 	push	ar6
   2121 C0 05         [24] 2716 	push	ar5
   2123 12 2E 9A      [24] 2717 	lcall	_strncmp
   2126 E5 82         [12] 2718 	mov	a,dpl
   2128 85 83 F0      [24] 2719 	mov	b,dph
   212B D0 05         [24] 2720 	pop	ar5
   212D D0 06         [24] 2721 	pop	ar6
   212F D0 07         [24] 2722 	pop	ar7
   2131 45 F0         [12] 2723 	orl	a,b
   2133 70 52         [24] 2724 	jnz	00128$
                           2725 ;	cc1110_spicom.c:508: WDCTL = 0x80;   // Watchdog ENABLE, Watchdog mode, 1s until reset
   2135 75 C9 80      [24] 2726 	mov	_WDCTL,#0x80
                           2727 ;	cc1110_spicom.c:510: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   2138 90 F9 9A      [24] 2728 	mov	dptr,#(_ep5 + 0x000a)
   213B E0            [24] 2729 	movx	a,@dptr
   213C FC            [12] 2730 	mov	r4,a
   213D 90 F9 9B      [24] 2731 	mov	dptr,#(_ep5 + 0x000b)
   2140 E0            [24] 2732 	movx	a,@dptr
   2141 F5 37         [12] 2733 	mov	_txdata_PARM_2,a
   2143 90 F9 98      [24] 2734 	mov	dptr,#(_ep5 + 0x0008)
   2146 E0            [24] 2735 	movx	a,@dptr
   2147 F5 38         [12] 2736 	mov	_txdata_PARM_3,a
   2149 A3            [24] 2737 	inc	dptr
   214A E0            [24] 2738 	movx	a,@dptr
   214B F5 39         [12] 2739 	mov	(_txdata_PARM_3 + 1),a
   214D 8D 3A         [24] 2740 	mov	_txdata_PARM_4,r5
   214F 8E 3B         [24] 2741 	mov	(_txdata_PARM_4 + 1),r6
   2151 8C 82         [24] 2742 	mov	dpl,r4
   2153 12 1C 70      [24] 2743 	lcall	_txdata
                           2744 ;	cc1110_spicom.c:511: break;
                           2745 ;	cc1110_spicom.c:513: case CMD_CLEAR_CODES:
   2156 80 2F         [24] 2746 	sjmp	00128$
   2158                    2747 00126$:
                           2748 ;	cc1110_spicom.c:514: lastCode[0] = 0;
   2158 90 FE 01      [24] 2749 	mov	dptr,#_lastCode
                           2750 ;	cc1110_spicom.c:515: lastCode[1] = 0;
   215B E4            [12] 2751 	clr	a
   215C F0            [24] 2752 	movx	@dptr,a
   215D 90 FE 02      [24] 2753 	mov	dptr,#(_lastCode + 0x0001)
   2160 F0            [24] 2754 	movx	@dptr,a
                           2755 ;	cc1110_spicom.c:517: appReturn(2, ptr);
   2161 90 F9 A5      [24] 2756 	mov	dptr,#_appReturn_PARM_2
   2164 ED            [12] 2757 	mov	a,r5
   2165 F0            [24] 2758 	movx	@dptr,a
   2166 EE            [12] 2759 	mov	a,r6
   2167 A3            [24] 2760 	inc	dptr
   2168 F0            [24] 2761 	movx	@dptr,a
   2169 75 82 02      [24] 2762 	mov	dpl,#0x02
   216C 12 1C CF      [24] 2763 	lcall	_appReturn
                           2764 ;	cc1110_spicom.c:518: break;
                           2765 ;	cc1110_spicom.c:520: default:
   216F 80 16         [24] 2766 	sjmp	00128$
   2171                    2767 00127$:
                           2768 ;	cc1110_spicom.c:521: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   2171 90 F9 98      [24] 2769 	mov	dptr,#(_ep5 + 0x0008)
   2174 E0            [24] 2770 	movx	a,@dptr
   2175 F5 38         [12] 2771 	mov	_txdata_PARM_3,a
   2177 A3            [24] 2772 	inc	dptr
   2178 E0            [24] 2773 	movx	a,@dptr
   2179 F5 39         [12] 2774 	mov	(_txdata_PARM_3 + 1),a
   217B 8B 37         [24] 2775 	mov	_txdata_PARM_2,r3
   217D 8D 3A         [24] 2776 	mov	_txdata_PARM_4,r5
   217F 8E 3B         [24] 2777 	mov	(_txdata_PARM_4 + 1),r6
   2181 85 42 82      [24] 2778 	mov	dpl,_processOUTEP5_sloc2_1_0
   2184 12 1C 70      [24] 2779 	lcall	_txdata
                           2780 ;	cc1110_spicom.c:522: }
   2187                    2781 00128$:
                           2782 ;	cc1110_spicom.c:524: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   2187 90 F9 9E      [24] 2783 	mov	dptr,#(_ep5 + 0x000e)
   218A E0            [24] 2784 	movx	a,@dptr
   218B 54 FD         [12] 2785 	anl	a,#0xFD
   218D F0            [24] 2786 	movx	@dptr,a
   218E 22            [24] 2787 	ret
   218F                    2788 00135$:
                           2789 ;	cc1110_spicom.c:528: if (cb_ep5)
   218F E5 35         [12] 2790 	mov	a,_cb_ep5
   2191 45 36         [12] 2791 	orl	a,(_cb_ep5 + 1)
   2193 60 19         [24] 2792 	jz	00132$
                           2793 ;	cc1110_spicom.c:530: if (! cb_ep5())
   2195 85 35 82      [24] 2794 	mov	dpl,_cb_ep5
   2198 85 36 83      [24] 2795 	mov	dph,(_cb_ep5 + 1)
   219B 12 00 89      [24] 2796 	lcall	__sdcc_call_dptr
   219E AE 82         [24] 2797 	mov	r6,dpl
   21A0 AF 83         [24] 2798 	mov	r7,dph
   21A2 EE            [12] 2799 	mov	a,r6
   21A3 4F            [12] 2800 	orl	a,r7
   21A4 70 10         [24] 2801 	jnz	00143$
                           2802 ;	cc1110_spicom.c:534: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   21A6 90 F9 9E      [24] 2803 	mov	dptr,#(_ep5 + 0x000e)
   21A9 E0            [24] 2804 	movx	a,@dptr
   21AA 54 FD         [12] 2805 	anl	a,#0xFD
   21AC F0            [24] 2806 	movx	@dptr,a
   21AD 22            [24] 2807 	ret
   21AE                    2808 00132$:
                           2809 ;	cc1110_spicom.c:539: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   21AE 90 F9 9E      [24] 2810 	mov	dptr,#(_ep5 + 0x000e)
   21B1 E0            [24] 2811 	movx	a,@dptr
   21B2 54 FD         [12] 2812 	anl	a,#0xFD
   21B4 FF            [12] 2813 	mov	r7,a
   21B5 F0            [24] 2814 	movx	@dptr,a
   21B6                    2815 00143$:
   21B6 22            [24] 2816 	ret
                           2817 	.area CSEG    (CODE)
                           2818 	.area CONST   (CODE)
   37FC                    2819 _sdccver:
   37FC 53 44 43 43 76 33  2820 	.ascii "SDCCv330"
        33 30
   3804 00                 2821 	.db 0x00
   3805                    2822 _buildname:
   3805 45                 2823 	.db #0x45	; 69	'E'
   3806 58                 2824 	.db #0x58	; 88	'X'
   3807 50                 2825 	.db #0x50	; 80	'P'
   3808 4C                 2826 	.db #0x4C	; 76	'L'
   3809 4F                 2827 	.db #0x4F	; 79	'O'
   380A 52                 2828 	.db #0x52	; 82	'R'
   380B 45                 2829 	.db #0x45	; 69	'E'
   380C 52                 2830 	.db #0x52	; 82	'R'
   380D 20                 2831 	.db #0x20	; 32
   380E 72                 2832 	.db #0x72	; 114	'r'
   380F 35                 2833 	.db #0x35	; 53	'5'
   3810 35                 2834 	.db #0x35	; 53	'5'
   3811 33                 2835 	.db #0x33	; 51	'3'
   3812 35                 2836 	.db #0x35	; 53	'5'
   3813 00                 2837 	.db #0x00	; 0
   3814                    2838 __str_0:
   3814 55 4E 49 4D 50 4C  2839 	.ascii "UNIMPLEMENTED"
        45 4D 45 4E 54 45
        44
   3821 00                 2840 	.db 0x00
   3822                    2841 __str_1:
   3822 52 45 53 45 54 5F  2842 	.ascii "RESET_NOW"
        4E 4F 57
   382B 00                 2843 	.db 0x00
                           2844 	.area XINIT   (CODE)
                           2845 	.area CABS    (ABS,CODE)
