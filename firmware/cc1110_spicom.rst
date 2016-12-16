                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Wed Dec 14 17:38:39 2016
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
                            254 	.globl _spi_input_buf
                            255 	.globl _USBF5
                            256 	.globl _USBF4
                            257 	.globl _USBF3
                            258 	.globl _USBF2
                            259 	.globl _USBF1
                            260 	.globl _USBF0
                            261 	.globl _USBCNTH
                            262 	.globl _USBCNTL
                            263 	.globl _USBCNT0
                            264 	.globl _USBCSOH
                            265 	.globl _USBCSOL
                            266 	.globl _USBMAXO
                            267 	.globl _USBCSIH
                            268 	.globl _USBCSIL
                            269 	.globl _USBCS0
                            270 	.globl _USBMAXI
                            271 	.globl _USBINDEX
                            272 	.globl _USBFRMH
                            273 	.globl _USBFRML
                            274 	.globl _USBCIE
                            275 	.globl _USBOIE
                            276 	.globl _USBIIE
                            277 	.globl _USBCIF
                            278 	.globl _USBOIF
                            279 	.globl _USBIIF
                            280 	.globl _USBPOW
                            281 	.globl _USBADDR
                            282 	.globl _X_P2DIR
                            283 	.globl _X_P1DIR
                            284 	.globl _X_P0DIR
                            285 	.globl _X_U1GCR
                            286 	.globl _X_U1UCR
                            287 	.globl _X_U1BAUD
                            288 	.globl _X_U1DBUF
                            289 	.globl _X_U1CSR
                            290 	.globl _X_P2INP
                            291 	.globl _X_P1INP
                            292 	.globl _X_P2SEL
                            293 	.globl _X_P1SEL
                            294 	.globl _X_P0SEL
                            295 	.globl _X_ADCCFG
                            296 	.globl _X_PERCFG
                            297 	.globl __NA_B
                            298 	.globl _X_T4CC1
                            299 	.globl _X_T4CCTL1
                            300 	.globl _X_T4CC0
                            301 	.globl _X_T4CCTL0
                            302 	.globl _X_T4CTL
                            303 	.globl _X_T4CNT
                            304 	.globl _X_RFIF
                            305 	.globl __NA_IRCON2
                            306 	.globl _X_T1CCTL2
                            307 	.globl _X_T1CCTL1
                            308 	.globl _X_T1CCTL0
                            309 	.globl _X_T1CTL
                            310 	.globl _X_T1CNTH
                            311 	.globl _X_T1CNTL
                            312 	.globl _X_RFST
                            313 	.globl __NA_ACC
                            314 	.globl _X_T1CC2H
                            315 	.globl _X_T1CC2L
                            316 	.globl _X_T1CC1H
                            317 	.globl _X_T1CC1L
                            318 	.globl _X_T1CC0H
                            319 	.globl _X_T1CC0L
                            320 	.globl _X_RFD
                            321 	.globl _X_TIMIF
                            322 	.globl _X_DMAREQ
                            323 	.globl _X_DMAARM
                            324 	.globl _X_DMA0CFGH
                            325 	.globl _X_DMA0CFGL
                            326 	.globl _X_DMA1CFGH
                            327 	.globl _X_DMA1CFGL
                            328 	.globl _X_DMAIRQ
                            329 	.globl __NA_PSW
                            330 	.globl _X_T3CC1
                            331 	.globl _X_T3CCTL1
                            332 	.globl _X_T3CC0
                            333 	.globl _X_T3CCTL0
                            334 	.globl _X_T3CTL
                            335 	.globl _X_T3CNT
                            336 	.globl _X_WDCTL
                            337 	.globl __X_SFRC8
                            338 	.globl _X_MEMCTR
                            339 	.globl _X_CLKCON
                            340 	.globl _X_U0GCR
                            341 	.globl _X_U0UCR
                            342 	.globl __X_SFRC3
                            343 	.globl _X_U0BAUD
                            344 	.globl _X_U0DBUF
                            345 	.globl __NA_IRCON
                            346 	.globl __X_SFRBF
                            347 	.globl _X_SLEEP
                            348 	.globl _X_RNDH
                            349 	.globl _X_RNDL
                            350 	.globl _X_ADCH
                            351 	.globl _X_ADCL
                            352 	.globl __NA_IP1
                            353 	.globl __NA_IEN1
                            354 	.globl __X_SFRB7
                            355 	.globl _X_ADCCON3
                            356 	.globl _X_ADCCON2
                            357 	.globl _X_ADCCON1
                            358 	.globl _X_ENCCS
                            359 	.globl _X_ENCDO
                            360 	.globl _X_ENCDI
                            361 	.globl __X_SFRB0
                            362 	.globl _X_FWDATA
                            363 	.globl _X_FCTL
                            364 	.globl _X_FADDRH
                            365 	.globl _X_FADDRL
                            366 	.globl _X_FWT
                            367 	.globl __X_SFRAA
                            368 	.globl __NA_IP0
                            369 	.globl __NA_IEN0
                            370 	.globl __X_SFRA7
                            371 	.globl _X_WORTIME1
                            372 	.globl _X_WORTIME0
                            373 	.globl _X_WOREVT1
                            374 	.globl _X_WOREVT0
                            375 	.globl _X_WORCTRL
                            376 	.globl _X_WORIRQ
                            377 	.globl __NA_P2
                            378 	.globl __X_SFR9F
                            379 	.globl _X_T2CTL
                            380 	.globl _X_T2PR
                            381 	.globl _X_T2CT
                            382 	.globl __NA_S1CON
                            383 	.globl __NA_IEN2
                            384 	.globl __X_SFR99
                            385 	.globl __NA_S0CON
                            386 	.globl __X_SFR97
                            387 	.globl __X_SFR96
                            388 	.globl __X_SFR95
                            389 	.globl __X_SFR94
                            390 	.globl _X_MPAGE
                            391 	.globl __NA_DPS
                            392 	.globl _X_RFIM
                            393 	.globl __NA_P1
                            394 	.globl _X_P0INP
                            395 	.globl __X_SFR8E
                            396 	.globl _X_P1IEN
                            397 	.globl _X_PICTL
                            398 	.globl _X_P2IFG
                            399 	.globl _X_P1IFG
                            400 	.globl _X_P0IFG
                            401 	.globl __NA_TCON
                            402 	.globl __NA_PCON
                            403 	.globl _X_U0CSR
                            404 	.globl __NA_DPH1
                            405 	.globl __NA_DPL1
                            406 	.globl __NA_DPH0
                            407 	.globl __NA_DPL0
                            408 	.globl __NA_SP
                            409 	.globl __NA_P0
                            410 	.globl _I2SCLKF2
                            411 	.globl _I2SCLKF1
                            412 	.globl _I2SCLKF0
                            413 	.globl _I2SSTAT
                            414 	.globl _I2SWCNT
                            415 	.globl _I2SDATH
                            416 	.globl _I2SDATL
                            417 	.globl _I2SCFG1
                            418 	.globl _I2SCFG0
                            419 	.globl _VCO_VC_DAC
                            420 	.globl _PKTSTATUS
                            421 	.globl _MARCSTATE
                            422 	.globl _RSSI
                            423 	.globl _LQI
                            424 	.globl _FREQEST
                            425 	.globl _VERSION
                            426 	.globl _PARTNUM
                            427 	.globl __XREGDF35
                            428 	.globl __XREGDF34
                            429 	.globl __XREGDF33
                            430 	.globl __XREGDF32
                            431 	.globl _IOCFG0
                            432 	.globl _IOCFG1
                            433 	.globl _IOCFG2
                            434 	.globl _PA_TABLE0
                            435 	.globl _PA_TABLE1
                            436 	.globl _PA_TABLE2
                            437 	.globl _PA_TABLE3
                            438 	.globl _PA_TABLE4
                            439 	.globl _PA_TABLE5
                            440 	.globl _PA_TABLE6
                            441 	.globl _PA_TABLE7
                            442 	.globl __XREGDF26
                            443 	.globl _TEST0
                            444 	.globl _TEST1
                            445 	.globl _TEST2
                            446 	.globl __XREGDF22
                            447 	.globl __XREGDF21
                            448 	.globl __XREGDF20
                            449 	.globl _FSCAL0
                            450 	.globl _FSCAL1
                            451 	.globl _FSCAL2
                            452 	.globl _FSCAL3
                            453 	.globl _FREND0
                            454 	.globl _FREND1
                            455 	.globl _AGCCTRL0
                            456 	.globl _AGCCTRL1
                            457 	.globl _AGCCTRL2
                            458 	.globl _BSCFG
                            459 	.globl _FOCCFG
                            460 	.globl _MCSM0
                            461 	.globl _MCSM1
                            462 	.globl _MCSM2
                            463 	.globl _DEVIATN
                            464 	.globl _MDMCFG0
                            465 	.globl _MDMCFG1
                            466 	.globl _MDMCFG2
                            467 	.globl _MDMCFG3
                            468 	.globl _MDMCFG4
                            469 	.globl _FREQ0
                            470 	.globl _FREQ1
                            471 	.globl _FREQ2
                            472 	.globl _FSCTRL0
                            473 	.globl _FSCTRL1
                            474 	.globl _CHANNR
                            475 	.globl _ADDR
                            476 	.globl _PKTCTRL0
                            477 	.globl _PKTCTRL1
                            478 	.globl _PKTLEN
                            479 	.globl _SYNC0
                            480 	.globl _SYNC1
                            481 	.globl _MDMCTRL0H
                            482 	.globl _txdata_PARM_4
                            483 	.globl _txdata_PARM_3
                            484 	.globl _txdata_PARM_2
                            485 	.globl _cb_ep5
                            486 	.globl _slave_send_size
                            487 	.globl _master_send_size
                            488 	.globl _spi_mode
                            489 	.globl _serial_data_available
                            490 	.globl _output_tail_idx
                            491 	.globl _output_head_idx
                            492 	.globl _output_size
                            493 	.globl _input_tail_idx
                            494 	.globl _input_head_idx
                            495 	.globl _input_size
                            496 	.globl _vcom_flush
                            497 	.globl _vcom_putchar
                            498 	.globl _vcom_getchar
                            499 	.globl _vcom_enable
                            500 	.globl _vcom_disable
                            501 	.globl _initUSB
                            502 	.globl _usbProcessEvents
                            503 	.globl _vcom_putstr
                            504 	.globl _usb_up
                            505 	.globl _txdata
                            506 	.globl _usbIntHandler
                            507 	.globl _p0IntHandler
                            508 	.globl _waitForUSBsetup
                            509 	.globl _registerCb_ep5
                            510 	.globl _appReturn
                            511 	.globl _processOUTEP5
                            512 ;--------------------------------------------------------
                            513 ; special function registers
                            514 ;--------------------------------------------------------
                            515 	.area RSEG    (ABS,DATA)
   0000                     516 	.org 0x0000
                     0080   517 _P0	=	0x0080
                     0081   518 _SP	=	0x0081
                     0082   519 _DPL0	=	0x0082
                     0083   520 _DPH0	=	0x0083
                     0084   521 _DPL1	=	0x0084
                     0085   522 _DPH1	=	0x0085
                     0086   523 _U0CSR	=	0x0086
                     0087   524 _PCON	=	0x0087
                     0088   525 _TCON	=	0x0088
                     0089   526 _P0IFG	=	0x0089
                     008A   527 _P1IFG	=	0x008a
                     008B   528 _P2IFG	=	0x008b
                     008C   529 _PICTL	=	0x008c
                     008D   530 _P1IEN	=	0x008d
                     008E   531 __SFR8E	=	0x008e
                     008F   532 _P0INP	=	0x008f
                     0090   533 _P1	=	0x0090
                     0091   534 _RFIM	=	0x0091
                     0092   535 _DPS	=	0x0092
                     0093   536 _MPAGE	=	0x0093
                     0093   537 __XPAGE	=	0x0093
                     0094   538 __SFR94	=	0x0094
                     0095   539 __SFR95	=	0x0095
                     0096   540 __SFR96	=	0x0096
                     0097   541 __SFR97	=	0x0097
                     0098   542 _S0CON	=	0x0098
                     0099   543 __SFR99	=	0x0099
                     009A   544 _IEN2	=	0x009a
                     009B   545 _S1CON	=	0x009b
                     009C   546 _T2CT	=	0x009c
                     009D   547 _T2PR	=	0x009d
                     009E   548 _T2CTL	=	0x009e
                     009F   549 __SFR9F	=	0x009f
                     00A0   550 _P2	=	0x00a0
                     00A1   551 _WORIRQ	=	0x00a1
                     00A2   552 _WORCTRL	=	0x00a2
                     00A3   553 _WOREVT0	=	0x00a3
                     00A4   554 _WOREVT1	=	0x00a4
                     00A5   555 _WORTIME0	=	0x00a5
                     00A6   556 _WORTIME1	=	0x00a6
                     00A7   557 __SFRA7	=	0x00a7
                     00A8   558 _IEN0	=	0x00a8
                     00A9   559 _IP0	=	0x00a9
                     00AA   560 __SFRAA	=	0x00aa
                     00AB   561 _FWT	=	0x00ab
                     00AC   562 _FADDRL	=	0x00ac
                     00AD   563 _FADDRH	=	0x00ad
                     00AE   564 _FCTL	=	0x00ae
                     00AF   565 _FWDATA	=	0x00af
                     00B0   566 __SFRB0	=	0x00b0
                     00B1   567 _ENCDI	=	0x00b1
                     00B2   568 _ENCDO	=	0x00b2
                     00B3   569 _ENCCS	=	0x00b3
                     00B4   570 _ADCCON1	=	0x00b4
                     00B5   571 _ADCCON2	=	0x00b5
                     00B6   572 _ADCCON3	=	0x00b6
                     00B7   573 __SFRB7	=	0x00b7
                     00B8   574 _IEN1	=	0x00b8
                     00B9   575 _IP1	=	0x00b9
                     00BA   576 _ADCL	=	0x00ba
                     00BB   577 _ADCH	=	0x00bb
                     00BC   578 _RNDL	=	0x00bc
                     00BD   579 _RNDH	=	0x00bd
                     00BE   580 _SLEEP	=	0x00be
                     00BF   581 __SFRBF	=	0x00bf
                     00C0   582 _IRCON	=	0x00c0
                     00C1   583 _U0DBUF	=	0x00c1
                     00C2   584 _U0BAUD	=	0x00c2
                     00C3   585 __SFRC3	=	0x00c3
                     00C4   586 _U0UCR	=	0x00c4
                     00C5   587 _U0GCR	=	0x00c5
                     00C6   588 _CLKCON	=	0x00c6
                     00C7   589 _MEMCTR	=	0x00c7
                     00C8   590 __SFRC8	=	0x00c8
                     00C9   591 _WDCTL	=	0x00c9
                     00CA   592 _T3CNT	=	0x00ca
                     00CB   593 _T3CTL	=	0x00cb
                     00CC   594 _T3CCTL0	=	0x00cc
                     00CD   595 _T3CC0	=	0x00cd
                     00CE   596 _T3CCTL1	=	0x00ce
                     00CF   597 _T3CC1	=	0x00cf
                     00D0   598 _PSW	=	0x00d0
                     00D1   599 _DMAIRQ	=	0x00d1
                     00D2   600 _DMA1CFGL	=	0x00d2
                     00D3   601 _DMA1CFGH	=	0x00d3
                     00D4   602 _DMA0CFGL	=	0x00d4
                     00D5   603 _DMA0CFGH	=	0x00d5
                     00D6   604 _DMAARM	=	0x00d6
                     00D7   605 _DMAREQ	=	0x00d7
                     00D8   606 _TIMIF	=	0x00d8
                     00D9   607 _RFD	=	0x00d9
                     00DA   608 _T1CC0L	=	0x00da
                     00DB   609 _T1CC0H	=	0x00db
                     00DC   610 _T1CC1L	=	0x00dc
                     00DD   611 _T1CC1H	=	0x00dd
                     00DE   612 _T1CC2L	=	0x00de
                     00DF   613 _T1CC2H	=	0x00df
                     00E0   614 _ACC	=	0x00e0
                     00E1   615 _RFST	=	0x00e1
                     00E2   616 _T1CNTL	=	0x00e2
                     00E3   617 _T1CNTH	=	0x00e3
                     00E4   618 _T1CTL	=	0x00e4
                     00E5   619 _T1CCTL0	=	0x00e5
                     00E6   620 _T1CCTL1	=	0x00e6
                     00E7   621 _T1CCTL2	=	0x00e7
                     00E8   622 _IRCON2	=	0x00e8
                     00E9   623 _RFIF	=	0x00e9
                     00EA   624 _T4CNT	=	0x00ea
                     00EB   625 _T4CTL	=	0x00eb
                     00EC   626 _T4CCTL0	=	0x00ec
                     00ED   627 _T4CC0	=	0x00ed
                     00EE   628 _T4CCTL1	=	0x00ee
                     00EF   629 _T4CC1	=	0x00ef
                     00F0   630 _B	=	0x00f0
                     00F1   631 _PERCFG	=	0x00f1
                     00F2   632 _ADCCFG	=	0x00f2
                     00F3   633 _P0SEL	=	0x00f3
                     00F4   634 _P1SEL	=	0x00f4
                     00F5   635 _P2SEL	=	0x00f5
                     00F6   636 _P1INP	=	0x00f6
                     00F7   637 _P2INP	=	0x00f7
                     00F8   638 _U1CSR	=	0x00f8
                     00F9   639 _U1DBUF	=	0x00f9
                     00FA   640 _U1BAUD	=	0x00fa
                     00FB   641 _U1UCR	=	0x00fb
                     00FC   642 _U1GCR	=	0x00fc
                     00FD   643 _P0DIR	=	0x00fd
                     00FE   644 _P1DIR	=	0x00fe
                     00FF   645 _P2DIR	=	0x00ff
                            646 ;--------------------------------------------------------
                            647 ; special function bits
                            648 ;--------------------------------------------------------
                            649 	.area RSEG    (ABS,DATA)
   0000                     650 	.org 0x0000
                     0080   651 _P0_0	=	0x0080
                     0081   652 _P0_1	=	0x0081
                     0082   653 _P0_2	=	0x0082
                     0083   654 _P0_3	=	0x0083
                     0084   655 _P0_4	=	0x0084
                     0085   656 _P0_5	=	0x0085
                     0086   657 _P0_6	=	0x0086
                     0087   658 _P0_7	=	0x0087
                     0088   659 _IT0	=	0x0088
                     0089   660 _RFTXRXIF	=	0x0089
                     008A   661 _IT1	=	0x008a
                     008B   662 _URX0IF	=	0x008b
                     008D   663 _ADCIF	=	0x008d
                     008F   664 _URX1IF	=	0x008f
                     0090   665 _P1_0	=	0x0090
                     0091   666 _P1_1	=	0x0091
                     0092   667 _P1_2	=	0x0092
                     0093   668 _P1_3	=	0x0093
                     0094   669 _P1_4	=	0x0094
                     0095   670 _P1_5	=	0x0095
                     0096   671 _P1_6	=	0x0096
                     0097   672 _P1_7	=	0x0097
                     0098   673 _ENCIF_0	=	0x0098
                     0099   674 _ENCIF_1	=	0x0099
                     00A0   675 _P2_0	=	0x00a0
                     00A1   676 _P2_1	=	0x00a1
                     00A2   677 _P2_2	=	0x00a2
                     00A3   678 _P2_3	=	0x00a3
                     00A4   679 _P2_4	=	0x00a4
                     00A5   680 _P2_5	=	0x00a5
                     00A6   681 _P2_6	=	0x00a6
                     00A7   682 _P2_7	=	0x00a7
                     00A8   683 _RFTXRXIE	=	0x00a8
                     00A9   684 _ADCIE	=	0x00a9
                     00AA   685 _URX0IE	=	0x00aa
                     00AB   686 _URX1IE	=	0x00ab
                     00AC   687 _ENCIE	=	0x00ac
                     00AD   688 _STIE	=	0x00ad
                     00AF   689 _EA	=	0x00af
                     00B8   690 _DMAIE	=	0x00b8
                     00B9   691 _T1IE	=	0x00b9
                     00BA   692 _T2IE	=	0x00ba
                     00BB   693 _T3IE	=	0x00bb
                     00BC   694 _T4IE	=	0x00bc
                     00BD   695 _P0IE	=	0x00bd
                     00C0   696 _DMAIF	=	0x00c0
                     00C1   697 _T1IF	=	0x00c1
                     00C2   698 _T2IF	=	0x00c2
                     00C3   699 _T3IF	=	0x00c3
                     00C4   700 _T4IF	=	0x00c4
                     00C5   701 _P0IF	=	0x00c5
                     00C7   702 _STIF	=	0x00c7
                     00D0   703 _P	=	0x00d0
                     00D1   704 _F1	=	0x00d1
                     00D2   705 _OV	=	0x00d2
                     00D3   706 _RS0	=	0x00d3
                     00D4   707 _RS1	=	0x00d4
                     00D5   708 _F0	=	0x00d5
                     00D6   709 _AC	=	0x00d6
                     00D7   710 _CY	=	0x00d7
                     00D8   711 _T3OVFIF	=	0x00d8
                     00D9   712 _T3CH0IF	=	0x00d9
                     00DA   713 _T3CH1IF	=	0x00da
                     00DB   714 _T4OVFIF	=	0x00db
                     00DC   715 _T4CH0IF	=	0x00dc
                     00DD   716 _T4CH1IF	=	0x00dd
                     00DE   717 _OVFIM	=	0x00de
                     00E0   718 _ACC_0	=	0x00e0
                     00E1   719 _ACC_1	=	0x00e1
                     00E2   720 _ACC_2	=	0x00e2
                     00E3   721 _ACC_3	=	0x00e3
                     00E4   722 _ACC_4	=	0x00e4
                     00E5   723 _ACC_5	=	0x00e5
                     00E6   724 _ACC_6	=	0x00e6
                     00E7   725 _ACC_7	=	0x00e7
                     00E8   726 _P2IF	=	0x00e8
                     00E9   727 _UTX0IF	=	0x00e9
                     00EA   728 _UTX1IF	=	0x00ea
                     00EB   729 _P1IF	=	0x00eb
                     00EC   730 _WDTIF	=	0x00ec
                     00F0   731 _B_0	=	0x00f0
                     00F1   732 _B_1	=	0x00f1
                     00F2   733 _B_2	=	0x00f2
                     00F3   734 _B_3	=	0x00f3
                     00F4   735 _B_4	=	0x00f4
                     00F5   736 _B_5	=	0x00f5
                     00F6   737 _B_6	=	0x00f6
                     00F7   738 _B_7	=	0x00f7
                     00F8   739 _ACTIVE	=	0x00f8
                     00F9   740 _TX_BYTE	=	0x00f9
                     00FA   741 _RX_BYTE	=	0x00fa
                     00FB   742 _ERR	=	0x00fb
                     00FC   743 _FE	=	0x00fc
                     00FD   744 _SLAVE	=	0x00fd
                     00FE   745 _RE	=	0x00fe
                     00FF   746 _MODE	=	0x00ff
                     00E8   747 _USBIF	=	0x00e8
                            748 ;--------------------------------------------------------
                            749 ; overlayable register banks
                            750 ;--------------------------------------------------------
                            751 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     752 	.ds 8
                            753 ;--------------------------------------------------------
                            754 ; overlayable bit register bank
                            755 ;--------------------------------------------------------
                            756 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     757 bits:
   0021                     758 	.ds 1
                     8000   759 	b0 = bits[0]
                     8100   760 	b1 = bits[1]
                     8200   761 	b2 = bits[2]
                     8300   762 	b3 = bits[3]
                     8400   763 	b4 = bits[4]
                     8500   764 	b5 = bits[5]
                     8600   765 	b6 = bits[6]
                     8700   766 	b7 = bits[7]
                            767 ;--------------------------------------------------------
                            768 ; internal ram data
                            769 ;--------------------------------------------------------
                            770 	.area DSEG    (DATA)
   0022                     771 _input_size::
   0022                     772 	.ds 1
   0023                     773 _input_head_idx::
   0023                     774 	.ds 1
   0024                     775 _input_tail_idx::
   0024                     776 	.ds 1
   0025                     777 _output_size::
   0025                     778 	.ds 1
   0026                     779 _output_head_idx::
   0026                     780 	.ds 1
   0027                     781 _output_tail_idx::
   0027                     782 	.ds 1
   0028                     783 _serial_data_available::
   0028                     784 	.ds 1
   0029                     785 _spi_mode::
   0029                     786 	.ds 1
   002A                     787 _master_send_size::
   002A                     788 	.ds 1
   002B                     789 _slave_send_size::
   002B                     790 	.ds 1
   002C                     791 _cb_ep5::
   002C                     792 	.ds 2
   002E                     793 _txdata_PARM_2:
   002E                     794 	.ds 1
   002F                     795 _txdata_PARM_3:
   002F                     796 	.ds 2
   0031                     797 _txdata_PARM_4:
   0031                     798 	.ds 2
   0033                     799 _processOUTEP5_loop_1_117:
   0033                     800 	.ds 2
   0035                     801 _processOUTEP5_sloc0_1_0:
   0035                     802 	.ds 1
   0036                     803 _processOUTEP5_sloc1_1_0:
   0036                     804 	.ds 2
   0038                     805 _processOUTEP5_sloc2_1_0:
   0038                     806 	.ds 2
   003A                     807 _processOUTEP5_sloc3_1_0:
   003A                     808 	.ds 2
                            809 ;--------------------------------------------------------
                            810 ; overlayable items in internal ram 
                            811 ;--------------------------------------------------------
                            812 	.area	OSEG    (OVR,DATA)
                            813 	.area	OSEG    (OVR,DATA)
                            814 	.area	OSEG    (OVR,DATA)
                            815 ;--------------------------------------------------------
                            816 ; indirectly addressable internal ram data
                            817 ;--------------------------------------------------------
                            818 	.area ISEG    (DATA)
                            819 ;--------------------------------------------------------
                            820 ; absolute internal ram data
                            821 ;--------------------------------------------------------
                            822 	.area IABS    (ABS,DATA)
                            823 	.area IABS    (ABS,DATA)
                            824 ;--------------------------------------------------------
                            825 ; bit data
                            826 ;--------------------------------------------------------
                            827 	.area BSEG    (BIT)
                            828 ;--------------------------------------------------------
                            829 ; paged external ram data
                            830 ;--------------------------------------------------------
                            831 	.area PSEG    (PAG,XDATA)
                            832 ;--------------------------------------------------------
                            833 ; external ram data
                            834 ;--------------------------------------------------------
                            835 	.area XSEG    (XDATA)
                     DF02   836 _MDMCTRL0H	=	0xdf02
                     DF00   837 _SYNC1	=	0xdf00
                     DF01   838 _SYNC0	=	0xdf01
                     DF02   839 _PKTLEN	=	0xdf02
                     DF03   840 _PKTCTRL1	=	0xdf03
                     DF04   841 _PKTCTRL0	=	0xdf04
                     DF05   842 _ADDR	=	0xdf05
                     DF06   843 _CHANNR	=	0xdf06
                     DF07   844 _FSCTRL1	=	0xdf07
                     DF08   845 _FSCTRL0	=	0xdf08
                     DF09   846 _FREQ2	=	0xdf09
                     DF0A   847 _FREQ1	=	0xdf0a
                     DF0B   848 _FREQ0	=	0xdf0b
                     DF0C   849 _MDMCFG4	=	0xdf0c
                     DF0D   850 _MDMCFG3	=	0xdf0d
                     DF0E   851 _MDMCFG2	=	0xdf0e
                     DF0F   852 _MDMCFG1	=	0xdf0f
                     DF10   853 _MDMCFG0	=	0xdf10
                     DF11   854 _DEVIATN	=	0xdf11
                     DF12   855 _MCSM2	=	0xdf12
                     DF13   856 _MCSM1	=	0xdf13
                     DF14   857 _MCSM0	=	0xdf14
                     DF15   858 _FOCCFG	=	0xdf15
                     DF16   859 _BSCFG	=	0xdf16
                     DF17   860 _AGCCTRL2	=	0xdf17
                     DF18   861 _AGCCTRL1	=	0xdf18
                     DF19   862 _AGCCTRL0	=	0xdf19
                     DF1A   863 _FREND1	=	0xdf1a
                     DF1B   864 _FREND0	=	0xdf1b
                     DF1C   865 _FSCAL3	=	0xdf1c
                     DF1D   866 _FSCAL2	=	0xdf1d
                     DF1E   867 _FSCAL1	=	0xdf1e
                     DF1F   868 _FSCAL0	=	0xdf1f
                     DF20   869 __XREGDF20	=	0xdf20
                     DF21   870 __XREGDF21	=	0xdf21
                     DF22   871 __XREGDF22	=	0xdf22
                     DF23   872 _TEST2	=	0xdf23
                     DF24   873 _TEST1	=	0xdf24
                     DF25   874 _TEST0	=	0xdf25
                     DF26   875 __XREGDF26	=	0xdf26
                     DF27   876 _PA_TABLE7	=	0xdf27
                     DF28   877 _PA_TABLE6	=	0xdf28
                     DF29   878 _PA_TABLE5	=	0xdf29
                     DF2A   879 _PA_TABLE4	=	0xdf2a
                     DF2B   880 _PA_TABLE3	=	0xdf2b
                     DF2C   881 _PA_TABLE2	=	0xdf2c
                     DF2D   882 _PA_TABLE1	=	0xdf2d
                     DF2E   883 _PA_TABLE0	=	0xdf2e
                     DF2F   884 _IOCFG2	=	0xdf2f
                     DF30   885 _IOCFG1	=	0xdf30
                     DF31   886 _IOCFG0	=	0xdf31
                     DF32   887 __XREGDF32	=	0xdf32
                     DF33   888 __XREGDF33	=	0xdf33
                     DF34   889 __XREGDF34	=	0xdf34
                     DF35   890 __XREGDF35	=	0xdf35
                     DF36   891 _PARTNUM	=	0xdf36
                     DF37   892 _VERSION	=	0xdf37
                     DF38   893 _FREQEST	=	0xdf38
                     DF39   894 _LQI	=	0xdf39
                     DF3A   895 _RSSI	=	0xdf3a
                     DF3B   896 _MARCSTATE	=	0xdf3b
                     DF3C   897 _PKTSTATUS	=	0xdf3c
                     DF3D   898 _VCO_VC_DAC	=	0xdf3d
                     DF40   899 _I2SCFG0	=	0xdf40
                     DF41   900 _I2SCFG1	=	0xdf41
                     DF42   901 _I2SDATL	=	0xdf42
                     DF43   902 _I2SDATH	=	0xdf43
                     DF44   903 _I2SWCNT	=	0xdf44
                     DF45   904 _I2SSTAT	=	0xdf45
                     DF46   905 _I2SCLKF0	=	0xdf46
                     DF47   906 _I2SCLKF1	=	0xdf47
                     DF48   907 _I2SCLKF2	=	0xdf48
                     DF80   908 __NA_P0	=	0xdf80
                     DF81   909 __NA_SP	=	0xdf81
                     DF82   910 __NA_DPL0	=	0xdf82
                     DF83   911 __NA_DPH0	=	0xdf83
                     DF84   912 __NA_DPL1	=	0xdf84
                     DF85   913 __NA_DPH1	=	0xdf85
                     DF86   914 _X_U0CSR	=	0xdf86
                     DF87   915 __NA_PCON	=	0xdf87
                     DF88   916 __NA_TCON	=	0xdf88
                     DF89   917 _X_P0IFG	=	0xdf89
                     DF8A   918 _X_P1IFG	=	0xdf8a
                     DF8B   919 _X_P2IFG	=	0xdf8b
                     DF8C   920 _X_PICTL	=	0xdf8c
                     DF8D   921 _X_P1IEN	=	0xdf8d
                     DF8E   922 __X_SFR8E	=	0xdf8e
                     DF8F   923 _X_P0INP	=	0xdf8f
                     DF90   924 __NA_P1	=	0xdf90
                     DF91   925 _X_RFIM	=	0xdf91
                     DF92   926 __NA_DPS	=	0xdf92
                     DF93   927 _X_MPAGE	=	0xdf93
                     DF94   928 __X_SFR94	=	0xdf94
                     DF95   929 __X_SFR95	=	0xdf95
                     DF96   930 __X_SFR96	=	0xdf96
                     DF97   931 __X_SFR97	=	0xdf97
                     DF98   932 __NA_S0CON	=	0xdf98
                     DF99   933 __X_SFR99	=	0xdf99
                     DF9A   934 __NA_IEN2	=	0xdf9a
                     DF9B   935 __NA_S1CON	=	0xdf9b
                     DF9C   936 _X_T2CT	=	0xdf9c
                     DF9D   937 _X_T2PR	=	0xdf9d
                     DF9E   938 _X_T2CTL	=	0xdf9e
                     DF9F   939 __X_SFR9F	=	0xdf9f
                     DFA0   940 __NA_P2	=	0xdfa0
                     DFA1   941 _X_WORIRQ	=	0xdfa1
                     DFA2   942 _X_WORCTRL	=	0xdfa2
                     DFA3   943 _X_WOREVT0	=	0xdfa3
                     DFA4   944 _X_WOREVT1	=	0xdfa4
                     DFA5   945 _X_WORTIME0	=	0xdfa5
                     DFA6   946 _X_WORTIME1	=	0xdfa6
                     DFA7   947 __X_SFRA7	=	0xdfa7
                     DFA8   948 __NA_IEN0	=	0xdfa8
                     DFA9   949 __NA_IP0	=	0xdfa9
                     DFAA   950 __X_SFRAA	=	0xdfaa
                     DFAB   951 _X_FWT	=	0xdfab
                     DFAC   952 _X_FADDRL	=	0xdfac
                     DFAD   953 _X_FADDRH	=	0xdfad
                     DFAE   954 _X_FCTL	=	0xdfae
                     DFAF   955 _X_FWDATA	=	0xdfaf
                     DFB0   956 __X_SFRB0	=	0xdfb0
                     DFB1   957 _X_ENCDI	=	0xdfb1
                     DFB2   958 _X_ENCDO	=	0xdfb2
                     DFB3   959 _X_ENCCS	=	0xdfb3
                     DFB4   960 _X_ADCCON1	=	0xdfb4
                     DFB5   961 _X_ADCCON2	=	0xdfb5
                     DFB6   962 _X_ADCCON3	=	0xdfb6
                     DFB7   963 __X_SFRB7	=	0xdfb7
                     DFB8   964 __NA_IEN1	=	0xdfb8
                     DFB9   965 __NA_IP1	=	0xdfb9
                     DFBA   966 _X_ADCL	=	0xdfba
                     DFBB   967 _X_ADCH	=	0xdfbb
                     DFBC   968 _X_RNDL	=	0xdfbc
                     DFBD   969 _X_RNDH	=	0xdfbd
                     DFBE   970 _X_SLEEP	=	0xdfbe
                     DFBF   971 __X_SFRBF	=	0xdfbf
                     DFC0   972 __NA_IRCON	=	0xdfc0
                     DFC1   973 _X_U0DBUF	=	0xdfc1
                     DFC2   974 _X_U0BAUD	=	0xdfc2
                     DFC3   975 __X_SFRC3	=	0xdfc3
                     DFC4   976 _X_U0UCR	=	0xdfc4
                     DFC5   977 _X_U0GCR	=	0xdfc5
                     DFC6   978 _X_CLKCON	=	0xdfc6
                     DFC7   979 _X_MEMCTR	=	0xdfc7
                     DFC8   980 __X_SFRC8	=	0xdfc8
                     DFC9   981 _X_WDCTL	=	0xdfc9
                     DFCA   982 _X_T3CNT	=	0xdfca
                     DFCB   983 _X_T3CTL	=	0xdfcb
                     DFCC   984 _X_T3CCTL0	=	0xdfcc
                     DFCD   985 _X_T3CC0	=	0xdfcd
                     DFCE   986 _X_T3CCTL1	=	0xdfce
                     DFCF   987 _X_T3CC1	=	0xdfcf
                     DFD0   988 __NA_PSW	=	0xdfd0
                     DFD1   989 _X_DMAIRQ	=	0xdfd1
                     DFD2   990 _X_DMA1CFGL	=	0xdfd2
                     DFD3   991 _X_DMA1CFGH	=	0xdfd3
                     DFD4   992 _X_DMA0CFGL	=	0xdfd4
                     DFD5   993 _X_DMA0CFGH	=	0xdfd5
                     DFD6   994 _X_DMAARM	=	0xdfd6
                     DFD7   995 _X_DMAREQ	=	0xdfd7
                     DFD8   996 _X_TIMIF	=	0xdfd8
                     DFD9   997 _X_RFD	=	0xdfd9
                     DFDA   998 _X_T1CC0L	=	0xdfda
                     DFDB   999 _X_T1CC0H	=	0xdfdb
                     DFDC  1000 _X_T1CC1L	=	0xdfdc
                     DFDD  1001 _X_T1CC1H	=	0xdfdd
                     DFDE  1002 _X_T1CC2L	=	0xdfde
                     DFDF  1003 _X_T1CC2H	=	0xdfdf
                     DFE0  1004 __NA_ACC	=	0xdfe0
                     DFE1  1005 _X_RFST	=	0xdfe1
                     DFE2  1006 _X_T1CNTL	=	0xdfe2
                     DFE3  1007 _X_T1CNTH	=	0xdfe3
                     DFE4  1008 _X_T1CTL	=	0xdfe4
                     DFE5  1009 _X_T1CCTL0	=	0xdfe5
                     DFE6  1010 _X_T1CCTL1	=	0xdfe6
                     DFE7  1011 _X_T1CCTL2	=	0xdfe7
                     DFE8  1012 __NA_IRCON2	=	0xdfe8
                     DFE9  1013 _X_RFIF	=	0xdfe9
                     DFEA  1014 _X_T4CNT	=	0xdfea
                     DFEB  1015 _X_T4CTL	=	0xdfeb
                     DFEC  1016 _X_T4CCTL0	=	0xdfec
                     DFED  1017 _X_T4CC0	=	0xdfed
                     DFEE  1018 _X_T4CCTL1	=	0xdfee
                     DFEF  1019 _X_T4CC1	=	0xdfef
                     DFF0  1020 __NA_B	=	0xdff0
                     DFF1  1021 _X_PERCFG	=	0xdff1
                     DFF2  1022 _X_ADCCFG	=	0xdff2
                     DFF3  1023 _X_P0SEL	=	0xdff3
                     DFF4  1024 _X_P1SEL	=	0xdff4
                     DFF5  1025 _X_P2SEL	=	0xdff5
                     DFF6  1026 _X_P1INP	=	0xdff6
                     DFF7  1027 _X_P2INP	=	0xdff7
                     DFF8  1028 _X_U1CSR	=	0xdff8
                     DFF9  1029 _X_U1DBUF	=	0xdff9
                     DFFA  1030 _X_U1BAUD	=	0xdffa
                     DFFB  1031 _X_U1UCR	=	0xdffb
                     DFFC  1032 _X_U1GCR	=	0xdffc
                     DFFD  1033 _X_P0DIR	=	0xdffd
                     DFFE  1034 _X_P1DIR	=	0xdffe
                     DFFF  1035 _X_P2DIR	=	0xdfff
                     DE00  1036 _USBADDR	=	0xde00
                     DE01  1037 _USBPOW	=	0xde01
                     DE02  1038 _USBIIF	=	0xde02
                     DE04  1039 _USBOIF	=	0xde04
                     DE06  1040 _USBCIF	=	0xde06
                     DE07  1041 _USBIIE	=	0xde07
                     DE09  1042 _USBOIE	=	0xde09
                     DE0B  1043 _USBCIE	=	0xde0b
                     DE0C  1044 _USBFRML	=	0xde0c
                     DE0D  1045 _USBFRMH	=	0xde0d
                     DE0E  1046 _USBINDEX	=	0xde0e
                     DE10  1047 _USBMAXI	=	0xde10
                     DE11  1048 _USBCS0	=	0xde11
                     DE11  1049 _USBCSIL	=	0xde11
                     DE12  1050 _USBCSIH	=	0xde12
                     DE13  1051 _USBMAXO	=	0xde13
                     DE14  1052 _USBCSOL	=	0xde14
                     DE15  1053 _USBCSOH	=	0xde15
                     DE16  1054 _USBCNT0	=	0xde16
                     DE16  1055 _USBCNTL	=	0xde16
                     DE17  1056 _USBCNTH	=	0xde17
                     DE20  1057 _USBF0	=	0xde20
                     DE22  1058 _USBF1	=	0xde22
                     DE24  1059 _USBF2	=	0xde24
                     DE26  1060 _USBF3	=	0xde26
                     DE28  1061 _USBF4	=	0xde28
                     DE2A  1062 _USBF5	=	0xde2a
   F588                    1063 _spi_input_buf::
   F588                    1064 	.ds 220
   F664                    1065 _spi_output_buf::
   F664                    1066 	.ds 220
   F740                    1067 _usb_ep5_OUTbuf::
   F740                    1068 	.ds 516
   F944                    1069 _ep5::
   F944                    1070 	.ds 18
   F956                    1071 _vcom_putstr_buff_1_98:
   F956                    1072 	.ds 3
   F959                    1073 _appReturn_PARM_2:
   F959                    1074 	.ds 2
   F95B                    1075 _appReturn_len_1_114:
   F95B                    1076 	.ds 1
   F95C                    1077 _processOUTEP5_ptr_1_117:
   F95C                    1078 	.ds 2
                           1079 ;--------------------------------------------------------
                           1080 ; absolute external ram data
                           1081 ;--------------------------------------------------------
                           1082 	.area XABS    (ABS,XDATA)
                           1083 ;--------------------------------------------------------
                           1084 ; external initialized ram data
                           1085 ;--------------------------------------------------------
                           1086 	.area XISEG   (XDATA)
                           1087 	.area HOME    (CODE)
                           1088 	.area GSINIT0 (CODE)
                           1089 	.area GSINIT1 (CODE)
                           1090 	.area GSINIT2 (CODE)
                           1091 	.area GSINIT3 (CODE)
                           1092 	.area GSINIT4 (CODE)
                           1093 	.area GSINIT5 (CODE)
                           1094 	.area GSINIT  (CODE)
                           1095 	.area GSFINAL (CODE)
                           1096 	.area CSEG    (CODE)
                           1097 ;--------------------------------------------------------
                           1098 ; global & static initialisations
                           1099 ;--------------------------------------------------------
                           1100 	.area HOME    (CODE)
                           1101 	.area GSINIT  (CODE)
                           1102 	.area GSFINAL (CODE)
                           1103 	.area GSINIT  (CODE)
                           1104 ;	cc1110_spicom.c:40: volatile uint8_t input_size = 0;
   00E4 75 22 00      [24] 1105 	mov	_input_size,#0x00
                           1106 ;	cc1110_spicom.c:41: volatile uint8_t input_head_idx = 0;
   00E7 75 23 00      [24] 1107 	mov	_input_head_idx,#0x00
                           1108 ;	cc1110_spicom.c:42: volatile uint8_t input_tail_idx = 0;
   00EA 75 24 00      [24] 1109 	mov	_input_tail_idx,#0x00
                           1110 ;	cc1110_spicom.c:45: volatile uint8_t output_size = 0;
   00ED 75 25 00      [24] 1111 	mov	_output_size,#0x00
                           1112 ;	cc1110_spicom.c:46: volatile uint8_t output_head_idx = 0;
   00F0 75 26 00      [24] 1113 	mov	_output_head_idx,#0x00
                           1114 ;	cc1110_spicom.c:47: volatile uint8_t output_tail_idx = 0;
   00F3 75 27 00      [24] 1115 	mov	_output_tail_idx,#0x00
                           1116 ;	cc1110_spicom.c:56: volatile uint8_t master_send_size = 0;
   00F6 75 2A 00      [24] 1117 	mov	_master_send_size,#0x00
                           1118 ;	cc1110_spicom.c:57: volatile uint8_t slave_send_size = 0;
   00F9 75 2B 00      [24] 1119 	mov	_slave_send_size,#0x00
                           1120 ;--------------------------------------------------------
                           1121 ; Home
                           1122 ;--------------------------------------------------------
                           1123 	.area HOME    (CODE)
                           1124 	.area HOME    (CODE)
                           1125 ;--------------------------------------------------------
                           1126 ; code
                           1127 ;--------------------------------------------------------
                           1128 	.area CSEG    (CODE)
                           1129 ;------------------------------------------------------------
                           1130 ;Allocation info for local variables in function 'rx1_isr'
                           1131 ;------------------------------------------------------------
                           1132 ;value                     Allocated to registers r7 
                           1133 ;------------------------------------------------------------
                           1134 ;	cc1110_spicom.c:89: void rx1_isr(void) __interrupt URX1_VECTOR {
                           1135 ;	-----------------------------------------
                           1136 ;	 function rx1_isr
                           1137 ;	-----------------------------------------
   190B                    1138 _rx1_isr:
                     0007  1139 	ar7 = 0x07
                     0006  1140 	ar6 = 0x06
                     0005  1141 	ar5 = 0x05
                     0004  1142 	ar4 = 0x04
                     0003  1143 	ar3 = 0x03
                     0002  1144 	ar2 = 0x02
                     0001  1145 	ar1 = 0x01
                     0000  1146 	ar0 = 0x00
   190B C0 21         [24] 1147 	push	bits
   190D C0 E0         [24] 1148 	push	acc
   190F C0 F0         [24] 1149 	push	b
   1911 C0 82         [24] 1150 	push	dpl
   1913 C0 83         [24] 1151 	push	dph
   1915 C0 07         [24] 1152 	push	(0+7)
   1917 C0 06         [24] 1153 	push	(0+6)
   1919 C0 05         [24] 1154 	push	(0+5)
   191B C0 04         [24] 1155 	push	(0+4)
   191D C0 03         [24] 1156 	push	(0+3)
   191F C0 02         [24] 1157 	push	(0+2)
   1921 C0 01         [24] 1158 	push	(0+1)
   1923 C0 00         [24] 1159 	push	(0+0)
   1925 C0 D0         [24] 1160 	push	psw
   1927 75 D0 00      [24] 1161 	mov	psw,#0x00
                           1162 ;	cc1110_spicom.c:91: value = U1DBUF;
   192A AF F9         [24] 1163 	mov	r7,_U1DBUF
                           1164 ;	cc1110_spicom.c:93: if (spi_mode == SPI_MODE_WAIT && value == 0x99) {
   192C E5 29         [12] 1165 	mov	a,_spi_mode
   192E 70 0F         [24] 1166 	jnz	00102$
   1930 BF 99 0C      [24] 1167 	cjne	r7,#0x99,00102$
                           1168 ;	cc1110_spicom.c:94: slave_send_size = output_size;
   1933 85 25 2B      [24] 1169 	mov	_slave_send_size,_output_size
                           1170 ;	cc1110_spicom.c:96: spi_mode = SPI_MODE_SIZE;
   1936 75 29 01      [24] 1171 	mov	_spi_mode,#0x01
                           1172 ;	cc1110_spicom.c:97: U1DBUF = slave_send_size;
   1939 85 2B F9      [24] 1173 	mov	_U1DBUF,_slave_send_size
                           1174 ;	cc1110_spicom.c:98: return;
   193C 02 1A 05      [24] 1175 	ljmp	00126$
   193F                    1176 00102$:
                           1177 ;	cc1110_spicom.c:101: if (spi_mode == SPI_MODE_SIZE) {
   193F 74 01         [12] 1178 	mov	a,#0x01
   1941 B5 29 21      [24] 1179 	cjne	a,_spi_mode,00109$
                           1180 ;	cc1110_spicom.c:102: master_send_size = value;
   1944 8F 2A         [24] 1181 	mov	_master_send_size,r7
                           1182 ;	cc1110_spicom.c:103: ep5.OUTlen = value;
   1946 8F 05         [24] 1183 	mov	ar5,r7
   1948 7E 00         [12] 1184 	mov	r6,#0x00
   194A 90 F9 4C      [24] 1185 	mov	dptr,#(_ep5 + 0x0008)
   194D ED            [12] 1186 	mov	a,r5
   194E F0            [24] 1187 	movx	@dptr,a
   194F EE            [12] 1188 	mov	a,r6
   1950 A3            [24] 1189 	inc	dptr
   1951 F0            [24] 1190 	movx	@dptr,a
                           1191 ;	cc1110_spicom.c:104: if (master_send_size > 0 || slave_send_size > 0) {
   1952 E5 2A         [12] 1192 	mov	a,_master_send_size
   1954 70 04         [24] 1193 	jnz	00104$
   1956 E5 2B         [12] 1194 	mov	a,_slave_send_size
   1958 60 05         [24] 1195 	jz	00105$
   195A                    1196 00104$:
                           1197 ;	cc1110_spicom.c:105: spi_mode = SPI_MODE_XFER;
   195A 75 29 02      [24] 1198 	mov	_spi_mode,#0x02
   195D 80 03         [24] 1199 	sjmp	00106$
   195F                    1200 00105$:
                           1201 ;	cc1110_spicom.c:107: spi_mode = SPI_MODE_WAIT;
   195F 75 29 00      [24] 1202 	mov	_spi_mode,#0x00
   1962                    1203 00106$:
                           1204 ;	cc1110_spicom.c:109: return;
   1962 02 1A 05      [24] 1205 	ljmp	00126$
   1965                    1206 00109$:
                           1207 ;	cc1110_spicom.c:112: if (spi_mode == SPI_MODE_XFER && input_size < master_send_size) {
   1965 74 02         [12] 1208 	mov	a,#0x02
   1967 B5 29 02      [24] 1209 	cjne	a,_spi_mode,00171$
   196A 80 03         [24] 1210 	sjmp	00172$
   196C                    1211 00171$:
   196C 02 1A 05      [24] 1212 	ljmp	00126$
   196F                    1213 00172$:
   196F C3            [12] 1214 	clr	c
   1970 E5 22         [12] 1215 	mov	a,_input_size
   1972 95 2A         [12] 1216 	subb	a,_master_send_size
   1974 40 03         [24] 1217 	jc	00173$
   1976 02 1A 05      [24] 1218 	ljmp	00126$
   1979                    1219 00173$:
                           1220 ;	cc1110_spicom.c:113: if (input_size == 0) {
   1979 E5 22         [12] 1221 	mov	a,_input_size
   197B 70 1D         [24] 1222 	jnz	00114$
                           1223 ;	cc1110_spicom.c:115: ep5.OUTapp = value;
   197D 90 F9 4E      [24] 1224 	mov	dptr,#(_ep5 + 0x000a)
   1980 EF            [12] 1225 	mov	a,r7
   1981 F0            [24] 1226 	movx	@dptr,a
                           1227 ;	cc1110_spicom.c:116: ep5.OUTbuf[0] = 0x40; // backwards compatibility
   1982 90 F9 49      [24] 1228 	mov	dptr,#(_ep5 + 0x0005)
   1985 E0            [24] 1229 	movx	a,@dptr
   1986 FC            [12] 1230 	mov	r4,a
   1987 A3            [24] 1231 	inc	dptr
   1988 E0            [24] 1232 	movx	a,@dptr
   1989 FD            [12] 1233 	mov	r5,a
   198A A3            [24] 1234 	inc	dptr
   198B E0            [24] 1235 	movx	a,@dptr
   198C FE            [12] 1236 	mov	r6,a
   198D 8C 82         [24] 1237 	mov	dpl,r4
   198F 8D 83         [24] 1238 	mov	dph,r5
   1991 8E F0         [24] 1239 	mov	b,r6
   1993 74 40         [12] 1240 	mov	a,#0x40
   1995 12 33 D4      [24] 1241 	lcall	__gptrput
   1998 80 43         [24] 1242 	sjmp	00115$
   199A                    1243 00114$:
                           1244 ;	cc1110_spicom.c:117: } else if (input_size == 1) {
   199A 74 01         [12] 1245 	mov	a,#0x01
   199C B5 22 22      [24] 1246 	cjne	a,_input_size,00111$
                           1247 ;	cc1110_spicom.c:119: ep5.OUTcmd = value;
   199F 90 F9 4F      [24] 1248 	mov	dptr,#(_ep5 + 0x000b)
   19A2 EF            [12] 1249 	mov	a,r7
   19A3 F0            [24] 1250 	movx	@dptr,a
                           1251 ;	cc1110_spicom.c:120: ep5.OUTbuf[1] = 0xe0; // backwards compatibility
   19A4 90 F9 49      [24] 1252 	mov	dptr,#(_ep5 + 0x0005)
   19A7 E0            [24] 1253 	movx	a,@dptr
   19A8 FC            [12] 1254 	mov	r4,a
   19A9 A3            [24] 1255 	inc	dptr
   19AA E0            [24] 1256 	movx	a,@dptr
   19AB FD            [12] 1257 	mov	r5,a
   19AC A3            [24] 1258 	inc	dptr
   19AD E0            [24] 1259 	movx	a,@dptr
   19AE FE            [12] 1260 	mov	r6,a
   19AF 0C            [12] 1261 	inc	r4
   19B0 BC 00 01      [24] 1262 	cjne	r4,#0x00,00177$
   19B3 0D            [12] 1263 	inc	r5
   19B4                    1264 00177$:
   19B4 8C 82         [24] 1265 	mov	dpl,r4
   19B6 8D 83         [24] 1266 	mov	dph,r5
   19B8 8E F0         [24] 1267 	mov	b,r6
   19BA 74 E0         [12] 1268 	mov	a,#0xE0
   19BC 12 33 D4      [24] 1269 	lcall	__gptrput
   19BF 80 1C         [24] 1270 	sjmp	00115$
   19C1                    1271 00111$:
                           1272 ;	cc1110_spicom.c:123: ep5.OUTbuf[input_size] = value;
   19C1 90 F9 49      [24] 1273 	mov	dptr,#(_ep5 + 0x0005)
   19C4 E0            [24] 1274 	movx	a,@dptr
   19C5 FC            [12] 1275 	mov	r4,a
   19C6 A3            [24] 1276 	inc	dptr
   19C7 E0            [24] 1277 	movx	a,@dptr
   19C8 FD            [12] 1278 	mov	r5,a
   19C9 A3            [24] 1279 	inc	dptr
   19CA E0            [24] 1280 	movx	a,@dptr
   19CB FE            [12] 1281 	mov	r6,a
   19CC E5 22         [12] 1282 	mov	a,_input_size
   19CE 2C            [12] 1283 	add	a,r4
   19CF FC            [12] 1284 	mov	r4,a
   19D0 E4            [12] 1285 	clr	a
   19D1 3D            [12] 1286 	addc	a,r5
   19D2 FD            [12] 1287 	mov	r5,a
   19D3 8C 82         [24] 1288 	mov	dpl,r4
   19D5 8D 83         [24] 1289 	mov	dph,r5
   19D7 8E F0         [24] 1290 	mov	b,r6
   19D9 EF            [12] 1291 	mov	a,r7
   19DA 12 33 D4      [24] 1292 	lcall	__gptrput
   19DD                    1293 00115$:
                           1294 ;	cc1110_spicom.c:125: input_size++;
   19DD 05 22         [12] 1295 	inc	_input_size
                           1296 ;	cc1110_spicom.c:126: if (input_size == master_send_size) {
   19DF E5 2A         [12] 1297 	mov	a,_master_send_size
   19E1 B5 22 06      [24] 1298 	cjne	a,_input_size,00117$
                           1299 ;	cc1110_spicom.c:127: master_send_size = 0;
   19E4 75 2A 00      [24] 1300 	mov	_master_send_size,#0x00
                           1301 ;	cc1110_spicom.c:128: serial_data_available = 1;
   19E7 75 28 01      [24] 1302 	mov	_serial_data_available,#0x01
   19EA                    1303 00117$:
                           1304 ;	cc1110_spicom.c:130: if (slave_send_size == 0 && master_send_size == 0) {
   19EA E5 2B         [12] 1305 	mov	a,_slave_send_size
   19EC 70 06         [24] 1306 	jnz	00119$
   19EE E5 2A         [12] 1307 	mov	a,_master_send_size
                           1308 ;	cc1110_spicom.c:131: spi_mode = SPI_MODE_WAIT;
   19F0 70 02         [24] 1309 	jnz	00119$
   19F2 F5 29         [12] 1310 	mov	_spi_mode,a
   19F4                    1311 00119$:
                           1312 ;	cc1110_spicom.c:134: if (serial_data_available)
   19F4 E5 28         [12] 1313 	mov	a,_serial_data_available
   19F6 60 0D         [24] 1314 	jz	00126$
                           1315 ;	cc1110_spicom.c:136: ep5.flags |= EP_OUTBUF_WRITTEN;
   19F8 90 F9 52      [24] 1316 	mov	dptr,#(_ep5 + 0x000e)
   19FB E0            [24] 1317 	movx	a,@dptr
   19FC 44 02         [12] 1318 	orl	a,#0x02
   19FE F0            [24] 1319 	movx	@dptr,a
                           1320 ;	cc1110_spicom.c:137: processOUTEP5();
   19FF 12 1C 8F      [24] 1321 	lcall	_processOUTEP5
                           1322 ;	cc1110_spicom.c:139: serial_data_available = 0;
   1A02 75 28 00      [24] 1323 	mov	_serial_data_available,#0x00
   1A05                    1324 00126$:
   1A05 D0 D0         [24] 1325 	pop	psw
   1A07 D0 00         [24] 1326 	pop	(0+0)
   1A09 D0 01         [24] 1327 	pop	(0+1)
   1A0B D0 02         [24] 1328 	pop	(0+2)
   1A0D D0 03         [24] 1329 	pop	(0+3)
   1A0F D0 04         [24] 1330 	pop	(0+4)
   1A11 D0 05         [24] 1331 	pop	(0+5)
   1A13 D0 06         [24] 1332 	pop	(0+6)
   1A15 D0 07         [24] 1333 	pop	(0+7)
   1A17 D0 83         [24] 1334 	pop	dph
   1A19 D0 82         [24] 1335 	pop	dpl
   1A1B D0 F0         [24] 1336 	pop	b
   1A1D D0 E0         [24] 1337 	pop	acc
   1A1F D0 21         [24] 1338 	pop	bits
   1A21 32            [24] 1339 	reti
                           1340 ;------------------------------------------------------------
                           1341 ;Allocation info for local variables in function 'tx1_isr'
                           1342 ;------------------------------------------------------------
                           1343 ;	cc1110_spicom.c:144: void tx1_isr(void) __interrupt UTX1_VECTOR {
                           1344 ;	-----------------------------------------
                           1345 ;	 function tx1_isr
                           1346 ;	-----------------------------------------
   1A22                    1347 _tx1_isr:
   1A22 C0 E0         [24] 1348 	push	acc
   1A24 C0 82         [24] 1349 	push	dpl
   1A26 C0 83         [24] 1350 	push	dph
   1A28 C0 07         [24] 1351 	push	ar7
   1A2A C0 D0         [24] 1352 	push	psw
   1A2C 75 D0 00      [24] 1353 	mov	psw,#0x00
                           1354 ;	cc1110_spicom.c:145: IRCON2 &= ~BIT2; // Clear UTX1IF
   1A2F AF E8         [24] 1355 	mov	r7,_IRCON2
   1A31 74 FB         [12] 1356 	mov	a,#0xFB
   1A33 5F            [12] 1357 	anl	a,r7
   1A34 F5 E8         [12] 1358 	mov	_IRCON2,a
                           1359 ;	cc1110_spicom.c:146: if (spi_mode == SPI_MODE_SIZE || spi_mode == SPI_MODE_XFER) {
   1A36 74 01         [12] 1360 	mov	a,#0x01
   1A38 B5 29 02      [24] 1361 	cjne	a,_spi_mode,00139$
   1A3B 80 05         [24] 1362 	sjmp	00112$
   1A3D                    1363 00139$:
   1A3D 74 02         [12] 1364 	mov	a,#0x02
   1A3F B5 29 42      [24] 1365 	cjne	a,_spi_mode,00113$
   1A42                    1366 00112$:
                           1367 ;	cc1110_spicom.c:147: if (slave_send_size > 0 && output_size > 0) {
   1A42 E5 2B         [12] 1368 	mov	a,_slave_send_size
   1A44 60 39         [24] 1369 	jz	00109$
   1A46 E5 25         [12] 1370 	mov	a,_output_size
   1A48 60 35         [24] 1371 	jz	00109$
                           1372 ;	cc1110_spicom.c:148: slave_send_size--;
   1A4A 15 2B         [12] 1373 	dec	_slave_send_size
                           1374 ;	cc1110_spicom.c:149: if (slave_send_size == 0 && master_send_size == 0) {
   1A4C E5 2B         [12] 1375 	mov	a,_slave_send_size
   1A4E 70 06         [24] 1376 	jnz	00102$
   1A50 E5 2A         [12] 1377 	mov	a,_master_send_size
                           1378 ;	cc1110_spicom.c:150: spi_mode = SPI_MODE_WAIT;
   1A52 70 02         [24] 1379 	jnz	00102$
   1A54 F5 29         [12] 1380 	mov	_spi_mode,a
   1A56                    1381 00102$:
                           1382 ;	cc1110_spicom.c:152: U1DBUF = spi_output_buf[output_tail_idx];
   1A56 E5 27         [12] 1383 	mov	a,_output_tail_idx
   1A58 24 64         [12] 1384 	add	a,#_spi_output_buf
   1A5A F5 82         [12] 1385 	mov	dpl,a
   1A5C E4            [12] 1386 	clr	a
   1A5D 34 F6         [12] 1387 	addc	a,#(_spi_output_buf >> 8)
   1A5F F5 83         [12] 1388 	mov	dph,a
   1A61 E0            [24] 1389 	movx	a,@dptr
   1A62 F5 F9         [12] 1390 	mov	_U1DBUF,a
                           1391 ;	cc1110_spicom.c:153: output_size--;
   1A64 15 25         [12] 1392 	dec	_output_size
                           1393 ;	cc1110_spicom.c:154: if (output_size == 0) {
   1A66 E5 25         [12] 1394 	mov	a,_output_size
   1A68 70 08         [24] 1395 	jnz	00105$
                           1396 ;	cc1110_spicom.c:155: ep5.flags &= ~EP_INBUF_WRITTEN;
   1A6A 90 F9 52      [24] 1397 	mov	dptr,#(_ep5 + 0x000e)
   1A6D E0            [24] 1398 	movx	a,@dptr
   1A6E 54 FE         [12] 1399 	anl	a,#0xFE
   1A70 FF            [12] 1400 	mov	r7,a
   1A71 F0            [24] 1401 	movx	@dptr,a
   1A72                    1402 00105$:
                           1403 ;	cc1110_spicom.c:157: output_tail_idx++;
   1A72 05 27         [12] 1404 	inc	_output_tail_idx
                           1405 ;	cc1110_spicom.c:158: if (output_tail_idx >= SPI_BUF_LEN) {
   1A74 74 24         [12] 1406 	mov	a,#0x100 - 0xDC
   1A76 25 27         [12] 1407 	add	a,_output_tail_idx
   1A78 50 0D         [24] 1408 	jnc	00116$
                           1409 ;	cc1110_spicom.c:159: output_tail_idx = 0;
   1A7A 75 27 00      [24] 1410 	mov	_output_tail_idx,#0x00
   1A7D 80 08         [24] 1411 	sjmp	00116$
   1A7F                    1412 00109$:
                           1413 ;	cc1110_spicom.c:162: U1DBUF = 0x99;
   1A7F 75 F9 99      [24] 1414 	mov	_U1DBUF,#0x99
   1A82 80 03         [24] 1415 	sjmp	00116$
   1A84                    1416 00113$:
                           1417 ;	cc1110_spicom.c:165: U1DBUF = 0x99;
   1A84 75 F9 99      [24] 1418 	mov	_U1DBUF,#0x99
   1A87                    1419 00116$:
   1A87 D0 D0         [24] 1420 	pop	psw
   1A89 D0 07         [24] 1421 	pop	ar7
   1A8B D0 83         [24] 1422 	pop	dph
   1A8D D0 82         [24] 1423 	pop	dpl
   1A8F D0 E0         [24] 1424 	pop	acc
   1A91 32            [24] 1425 	reti
                           1426 ;	eliminated unneeded push/pop b
                           1427 ;------------------------------------------------------------
                           1428 ;Allocation info for local variables in function 'vcom_flush'
                           1429 ;------------------------------------------------------------
                           1430 ;	cc1110_spicom.c:169: void vcom_flush()
                           1431 ;	-----------------------------------------
                           1432 ;	 function vcom_flush
                           1433 ;	-----------------------------------------
   1A92                    1434 _vcom_flush:
                           1435 ;	cc1110_spicom.c:172: return;
   1A92 22            [24] 1436 	ret
                           1437 ;------------------------------------------------------------
                           1438 ;Allocation info for local variables in function 'vcom_putchar'
                           1439 ;------------------------------------------------------------
                           1440 ;c                         Allocated to registers r7 
                           1441 ;------------------------------------------------------------
                           1442 ;	cc1110_spicom.c:175: void vcom_putchar(char c)
                           1443 ;	-----------------------------------------
                           1444 ;	 function vcom_putchar
                           1445 ;	-----------------------------------------
   1A93                    1446 _vcom_putchar:
   1A93 AF 82         [24] 1447 	mov	r7,dpl
                           1448 ;	cc1110_spicom.c:177: if (output_size >= SPI_BUF_LEN) {
   1A95 74 24         [12] 1449 	mov	a,#0x100 - 0xDC
   1A97 25 25         [12] 1450 	add	a,_output_size
   1A99 50 0D         [24] 1451 	jnc	00104$
                           1452 ;	cc1110_spicom.c:179: output_size--;
   1A9B 15 25         [12] 1453 	dec	_output_size
                           1454 ;	cc1110_spicom.c:180: output_tail_idx++;
   1A9D 05 27         [12] 1455 	inc	_output_tail_idx
                           1456 ;	cc1110_spicom.c:181: if (output_tail_idx >= SPI_BUF_LEN) {
   1A9F 74 24         [12] 1457 	mov	a,#0x100 - 0xDC
   1AA1 25 27         [12] 1458 	add	a,_output_tail_idx
   1AA3 50 03         [24] 1459 	jnc	00104$
                           1460 ;	cc1110_spicom.c:182: output_tail_idx = 0;
   1AA5 75 27 00      [24] 1461 	mov	_output_tail_idx,#0x00
   1AA8                    1462 00104$:
                           1463 ;	cc1110_spicom.c:185: spi_output_buf[output_head_idx] = c;
   1AA8 E5 26         [12] 1464 	mov	a,_output_head_idx
   1AAA 24 64         [12] 1465 	add	a,#_spi_output_buf
   1AAC F5 82         [12] 1466 	mov	dpl,a
   1AAE E4            [12] 1467 	clr	a
   1AAF 34 F6         [12] 1468 	addc	a,#(_spi_output_buf >> 8)
   1AB1 F5 83         [12] 1469 	mov	dph,a
   1AB3 EF            [12] 1470 	mov	a,r7
   1AB4 F0            [24] 1471 	movx	@dptr,a
                           1472 ;	cc1110_spicom.c:187: output_head_idx++;
   1AB5 05 26         [12] 1473 	inc	_output_head_idx
                           1474 ;	cc1110_spicom.c:188: if (output_head_idx >= SPI_BUF_LEN) {
   1AB7 74 24         [12] 1475 	mov	a,#0x100 - 0xDC
   1AB9 25 26         [12] 1476 	add	a,_output_head_idx
   1ABB 50 03         [24] 1477 	jnc	00106$
                           1478 ;	cc1110_spicom.c:189: output_head_idx = 0;
   1ABD 75 26 00      [24] 1479 	mov	_output_head_idx,#0x00
   1AC0                    1480 00106$:
                           1481 ;	cc1110_spicom.c:191: output_size++;
   1AC0 05 25         [12] 1482 	inc	_output_size
                           1483 ;	cc1110_spicom.c:193: ep5.flags |= EP_INBUF_WRITTEN;
   1AC2 90 F9 52      [24] 1484 	mov	dptr,#(_ep5 + 0x000e)
   1AC5 E0            [24] 1485 	movx	a,@dptr
   1AC6 44 01         [12] 1486 	orl	a,#0x01
   1AC8 F0            [24] 1487 	movx	@dptr,a
   1AC9 22            [24] 1488 	ret
                           1489 ;------------------------------------------------------------
                           1490 ;Allocation info for local variables in function 'vcom_pollchar'
                           1491 ;------------------------------------------------------------
                           1492 ;	cc1110_spicom.c:196: char vcom_pollchar()
                           1493 ;	-----------------------------------------
                           1494 ;	 function vcom_pollchar
                           1495 ;	-----------------------------------------
   1ACA                    1496 _vcom_pollchar:
                           1497 ;	cc1110_spicom.c:198: if (serial_data_available == 0) {
   1ACA E5 28         [12] 1498 	mov	a,_serial_data_available
   1ACC 70 04         [24] 1499 	jnz	00102$
                           1500 ;	cc1110_spicom.c:199: return USB_READ_AGAIN;
   1ACE 75 82 FF      [24] 1501 	mov	dpl,#0xFF
   1AD1 22            [24] 1502 	ret
   1AD2                    1503 00102$:
                           1504 ;	cc1110_spicom.c:201: return spi_input_buf[input_tail_idx];
   1AD2 E5 24         [12] 1505 	mov	a,_input_tail_idx
   1AD4 24 88         [12] 1506 	add	a,#_spi_input_buf
   1AD6 F5 82         [12] 1507 	mov	dpl,a
   1AD8 E4            [12] 1508 	clr	a
   1AD9 34 F5         [12] 1509 	addc	a,#(_spi_input_buf >> 8)
   1ADB F5 83         [12] 1510 	mov	dph,a
   1ADD E0            [24] 1511 	movx	a,@dptr
   1ADE F5 82         [12] 1512 	mov	dpl,a
   1AE0 22            [24] 1513 	ret
                           1514 ;------------------------------------------------------------
                           1515 ;Allocation info for local variables in function 'vcom_getchar'
                           1516 ;------------------------------------------------------------
                           1517 ;s_data                    Allocated to registers r7 
                           1518 ;------------------------------------------------------------
                           1519 ;	cc1110_spicom.c:204: char vcom_getchar()
                           1520 ;	-----------------------------------------
                           1521 ;	 function vcom_getchar
                           1522 ;	-----------------------------------------
   1AE1                    1523 _vcom_getchar:
                           1524 ;	cc1110_spicom.c:208: if (serial_data_available == 0) {
   1AE1 E5 28         [12] 1525 	mov	a,_serial_data_available
   1AE3 70 04         [24] 1526 	jnz	00102$
                           1527 ;	cc1110_spicom.c:209: return USB_READ_AGAIN;
   1AE5 75 82 FF      [24] 1528 	mov	dpl,#0xFF
   1AE8 22            [24] 1529 	ret
   1AE9                    1530 00102$:
                           1531 ;	cc1110_spicom.c:212: s_data = spi_input_buf[input_tail_idx];
   1AE9 E5 24         [12] 1532 	mov	a,_input_tail_idx
   1AEB 24 88         [12] 1533 	add	a,#_spi_input_buf
   1AED F5 82         [12] 1534 	mov	dpl,a
   1AEF E4            [12] 1535 	clr	a
   1AF0 34 F5         [12] 1536 	addc	a,#(_spi_input_buf >> 8)
   1AF2 F5 83         [12] 1537 	mov	dph,a
   1AF4 E0            [24] 1538 	movx	a,@dptr
   1AF5 FF            [12] 1539 	mov	r7,a
                           1540 ;	cc1110_spicom.c:213: input_tail_idx++;
   1AF6 05 24         [12] 1541 	inc	_input_tail_idx
                           1542 ;	cc1110_spicom.c:214: if (input_tail_idx >= SPI_BUF_LEN) {
   1AF8 74 24         [12] 1543 	mov	a,#0x100 - 0xDC
   1AFA 25 24         [12] 1544 	add	a,_input_tail_idx
   1AFC 50 03         [24] 1545 	jnc	00104$
                           1546 ;	cc1110_spicom.c:215: input_tail_idx = 0;
   1AFE 75 24 00      [24] 1547 	mov	_input_tail_idx,#0x00
   1B01                    1548 00104$:
                           1549 ;	cc1110_spicom.c:217: input_size--;
   1B01 15 22         [12] 1550 	dec	_input_size
                           1551 ;	cc1110_spicom.c:218: if (input_size == 0) {
   1B03 E5 22         [12] 1552 	mov	a,_input_size
                           1553 ;	cc1110_spicom.c:219: serial_data_available = 0;
   1B05 70 02         [24] 1554 	jnz	00106$
   1B07 F5 28         [12] 1555 	mov	_serial_data_available,a
   1B09                    1556 00106$:
                           1557 ;	cc1110_spicom.c:221: return s_data;
   1B09 8F 82         [24] 1558 	mov	dpl,r7
   1B0B 22            [24] 1559 	ret
                           1560 ;------------------------------------------------------------
                           1561 ;Allocation info for local variables in function 'vcom_enable'
                           1562 ;------------------------------------------------------------
                           1563 ;	cc1110_spicom.c:224: void vcom_enable()
                           1564 ;	-----------------------------------------
                           1565 ;	 function vcom_enable
                           1566 ;	-----------------------------------------
   1B0C                    1567 _vcom_enable:
                           1568 ;	cc1110_spicom.c:226: TCON &= ~BIT3; // Clear URX1IF
   1B0C AF 88         [24] 1569 	mov	r7,_TCON
   1B0E 74 F7         [12] 1570 	mov	a,#0xF7
   1B10 5F            [12] 1571 	anl	a,r7
   1B11 F5 88         [12] 1572 	mov	_TCON,a
                           1573 ;	cc1110_spicom.c:227: URX1IE = 1;    // Enable URX1IE interrupt
   1B13 D2 AB         [12] 1574 	setb	_URX1IE
                           1575 ;	cc1110_spicom.c:229: IRCON2 &= ~BIT2; // Clear UTX1IF
   1B15 AF E8         [24] 1576 	mov	r7,_IRCON2
   1B17 74 FB         [12] 1577 	mov	a,#0xFB
   1B19 5F            [12] 1578 	anl	a,r7
   1B1A F5 E8         [12] 1579 	mov	_IRCON2,a
                           1580 ;	cc1110_spicom.c:230: IEN2 |= BIT3;    // Enable UTX1IE interrupt
   1B1C 43 9A 08      [24] 1581 	orl	_IEN2,#0x08
   1B1F 22            [24] 1582 	ret
                           1583 ;------------------------------------------------------------
                           1584 ;Allocation info for local variables in function 'vcom_disable'
                           1585 ;------------------------------------------------------------
                           1586 ;	cc1110_spicom.c:233: void vcom_disable()
                           1587 ;	-----------------------------------------
                           1588 ;	 function vcom_disable
                           1589 ;	-----------------------------------------
   1B20                    1590 _vcom_disable:
                           1591 ;	cc1110_spicom.c:235: TCON &= ~BIT3; // Clear URX1IF
   1B20 AF 88         [24] 1592 	mov	r7,_TCON
   1B22 74 F7         [12] 1593 	mov	a,#0xF7
   1B24 5F            [12] 1594 	anl	a,r7
   1B25 F5 88         [12] 1595 	mov	_TCON,a
                           1596 ;	cc1110_spicom.c:236: URX1IE = 0;    // Disable URX1IE interrupt
   1B27 C2 AB         [12] 1597 	clr	_URX1IE
                           1598 ;	cc1110_spicom.c:238: IRCON2 &= ~BIT2; // Clear UTX1IF
   1B29 AF E8         [24] 1599 	mov	r7,_IRCON2
   1B2B 74 FB         [12] 1600 	mov	a,#0xFB
   1B2D 5F            [12] 1601 	anl	a,r7
   1B2E F5 E8         [12] 1602 	mov	_IRCON2,a
                           1603 ;	cc1110_spicom.c:239: IEN2 &= ~BIT3;    // Disable UTX1IE interrupt
   1B30 AF 9A         [24] 1604 	mov	r7,_IEN2
   1B32 74 F7         [12] 1605 	mov	a,#0xF7
   1B34 5F            [12] 1606 	anl	a,r7
   1B35 F5 9A         [12] 1607 	mov	_IEN2,a
   1B37 22            [24] 1608 	ret
                           1609 ;------------------------------------------------------------
                           1610 ;Allocation info for local variables in function 'initUSB'
                           1611 ;------------------------------------------------------------
                           1612 ;	cc1110_spicom.c:242: void initUSB()
                           1613 ;	-----------------------------------------
                           1614 ;	 function initUSB
                           1615 ;	-----------------------------------------
   1B38                    1616 _initUSB:
                           1617 ;	cc1110_spicom.c:256: PERCFG = (PERCFG & ~PERCFG_U0CFG) | PERCFG_U1CFG;
   1B38 AF F1         [24] 1618 	mov	r7,_PERCFG
   1B3A 74 FE         [12] 1619 	mov	a,#0xFE
   1B3C 5F            [12] 1620 	anl	a,r7
   1B3D 44 02         [12] 1621 	orl	a,#0x02
   1B3F F5 F1         [12] 1622 	mov	_PERCFG,a
                           1623 ;	cc1110_spicom.c:259: P1SEL = P1SEL | BIT4 | BIT5 | BIT6 | BIT7;
   1B41 43 F4 F0      [24] 1624 	orl	_P1SEL,#0xF0
                           1625 ;	cc1110_spicom.c:260: P1DIR = P1DIR & ~(BIT4 | BIT5 | BIT6 | BIT7);
   1B44 AF FE         [24] 1626 	mov	r7,_P1DIR
   1B46 74 0F         [12] 1627 	mov	a,#0x0F
   1B48 5F            [12] 1628 	anl	a,r7
   1B49 F5 FE         [12] 1629 	mov	_P1DIR,a
                           1630 ;	cc1110_spicom.c:267: U1CSR = (U1CSR & ~U1CSR_MODE) | U1CSR_SLAVE;
   1B4B AF F8         [24] 1631 	mov	r7,_U1CSR
   1B4D 74 7F         [12] 1632 	mov	a,#0x7F
   1B4F 5F            [12] 1633 	anl	a,r7
   1B50 44 20         [12] 1634 	orl	a,#0x20
   1B52 F5 F8         [12] 1635 	mov	_U1CSR,a
                           1636 ;	cc1110_spicom.c:280: U1BAUD = SPI_BAUD_M;
   1B54 75 FA 3B      [24] 1637 	mov	_U1BAUD,#0x3B
                           1638 ;	cc1110_spicom.c:281: U1GCR = (U1GCR & ~(U1GCR_BAUD_E | U1GCR_CPOL | U1GCR_CPHA | U1GCR_ORDER))
   1B57 E5 FC         [12] 1639 	mov	a,_U1GCR
   1B59 75 FC 0B      [24] 1640 	mov	_U1GCR,#0x0B
                           1641 ;	cc1110_spicom.c:284: TCON &= ~BIT3; // Clear URX1IF
   1B5C AF 88         [24] 1642 	mov	r7,_TCON
   1B5E 74 F7         [12] 1643 	mov	a,#0xF7
   1B60 5F            [12] 1644 	anl	a,r7
   1B61 F5 88         [12] 1645 	mov	_TCON,a
                           1646 ;	cc1110_spicom.c:285: URX1IE = 1;    // Enable URX1IE interrupt
   1B63 D2 AB         [12] 1647 	setb	_URX1IE
                           1648 ;	cc1110_spicom.c:287: IRCON2 &= ~BIT2; // Clear UTX1IF
   1B65 AF E8         [24] 1649 	mov	r7,_IRCON2
   1B67 74 FB         [12] 1650 	mov	a,#0xFB
   1B69 5F            [12] 1651 	anl	a,r7
   1B6A F5 E8         [12] 1652 	mov	_IRCON2,a
                           1653 ;	cc1110_spicom.c:288: IEN2 |= BIT3;    // Enable UTX1IE interrupt
   1B6C 43 9A 08      [24] 1654 	orl	_IEN2,#0x08
                           1655 ;	cc1110_spicom.c:290: spi_mode = SPI_MODE_WAIT;
   1B6F 75 29 00      [24] 1656 	mov	_spi_mode,#0x00
   1B72 22            [24] 1657 	ret
                           1658 ;------------------------------------------------------------
                           1659 ;Allocation info for local variables in function 'usbProcessEvents'
                           1660 ;------------------------------------------------------------
                           1661 ;	cc1110_spicom.c:294: void usbProcessEvents()
                           1662 ;	-----------------------------------------
                           1663 ;	 function usbProcessEvents
                           1664 ;	-----------------------------------------
   1B73                    1665 _usbProcessEvents:
                           1666 ;	cc1110_spicom.c:296: return; /* dummy function */
   1B73 22            [24] 1667 	ret
                           1668 ;------------------------------------------------------------
                           1669 ;Allocation info for local variables in function 'vcom_readline'
                           1670 ;------------------------------------------------------------
                           1671 ;buff                      Allocated to registers 
                           1672 ;c                         Allocated to registers r3 
                           1673 ;------------------------------------------------------------
                           1674 ;	cc1110_spicom.c:299: void vcom_readline(char* buff) {
                           1675 ;	-----------------------------------------
                           1676 ;	 function vcom_readline
                           1677 ;	-----------------------------------------
   1B74                    1678 _vcom_readline:
   1B74 AD 82         [24] 1679 	mov	r5,dpl
   1B76 AE 83         [24] 1680 	mov	r6,dph
   1B78 AF F0         [24] 1681 	mov	r7,b
                           1682 ;	cc1110_spicom.c:301: while ((c = vcom_getchar()) != '\n') {
   1B7A                    1683 00101$:
   1B7A C0 07         [24] 1684 	push	ar7
   1B7C C0 06         [24] 1685 	push	ar6
   1B7E C0 05         [24] 1686 	push	ar5
   1B80 12 1A E1      [24] 1687 	lcall	_vcom_getchar
   1B83 AC 82         [24] 1688 	mov	r4,dpl
   1B85 D0 05         [24] 1689 	pop	ar5
   1B87 D0 06         [24] 1690 	pop	ar6
   1B89 D0 07         [24] 1691 	pop	ar7
   1B8B 8C 03         [24] 1692 	mov	ar3,r4
   1B8D BC 0A 02      [24] 1693 	cjne	r4,#0x0A,00113$
   1B90 80 11         [24] 1694 	sjmp	00103$
   1B92                    1695 00113$:
                           1696 ;	cc1110_spicom.c:302: *buff++ = c;
   1B92 8D 82         [24] 1697 	mov	dpl,r5
   1B94 8E 83         [24] 1698 	mov	dph,r6
   1B96 8F F0         [24] 1699 	mov	b,r7
   1B98 EB            [12] 1700 	mov	a,r3
   1B99 12 33 D4      [24] 1701 	lcall	__gptrput
   1B9C A3            [24] 1702 	inc	dptr
   1B9D AD 82         [24] 1703 	mov	r5,dpl
   1B9F AE 83         [24] 1704 	mov	r6,dph
   1BA1 80 D7         [24] 1705 	sjmp	00101$
   1BA3                    1706 00103$:
                           1707 ;	cc1110_spicom.c:304: *buff = 0;
   1BA3 8D 82         [24] 1708 	mov	dpl,r5
   1BA5 8E 83         [24] 1709 	mov	dph,r6
   1BA7 8F F0         [24] 1710 	mov	b,r7
   1BA9 E4            [12] 1711 	clr	a
   1BAA 02 33 D4      [24] 1712 	ljmp	__gptrput
                           1713 ;------------------------------------------------------------
                           1714 ;Allocation info for local variables in function 'vcom_putstr'
                           1715 ;------------------------------------------------------------
                           1716 ;buff                      Allocated with name '_vcom_putstr_buff_1_98'
                           1717 ;------------------------------------------------------------
                           1718 ;	cc1110_spicom.c:307: void vcom_putstr(char* __xdata buff) {
                           1719 ;	-----------------------------------------
                           1720 ;	 function vcom_putstr
                           1721 ;	-----------------------------------------
   1BAD                    1722 _vcom_putstr:
   1BAD AF F0         [24] 1723 	mov	r7,b
   1BAF AE 83         [24] 1724 	mov	r6,dph
   1BB1 E5 82         [12] 1725 	mov	a,dpl
   1BB3 90 F9 56      [24] 1726 	mov	dptr,#_vcom_putstr_buff_1_98
   1BB6 F0            [24] 1727 	movx	@dptr,a
   1BB7 EE            [12] 1728 	mov	a,r6
   1BB8 A3            [24] 1729 	inc	dptr
   1BB9 F0            [24] 1730 	movx	@dptr,a
   1BBA EF            [12] 1731 	mov	a,r7
   1BBB A3            [24] 1732 	inc	dptr
   1BBC F0            [24] 1733 	movx	@dptr,a
                           1734 ;	cc1110_spicom.c:308: while (*buff) {
   1BBD 90 F9 56      [24] 1735 	mov	dptr,#_vcom_putstr_buff_1_98
   1BC0 E0            [24] 1736 	movx	a,@dptr
   1BC1 FD            [12] 1737 	mov	r5,a
   1BC2 A3            [24] 1738 	inc	dptr
   1BC3 E0            [24] 1739 	movx	a,@dptr
   1BC4 FE            [12] 1740 	mov	r6,a
   1BC5 A3            [24] 1741 	inc	dptr
   1BC6 E0            [24] 1742 	movx	a,@dptr
   1BC7 FF            [12] 1743 	mov	r7,a
   1BC8                    1744 00101$:
   1BC8 8D 82         [24] 1745 	mov	dpl,r5
   1BCA 8E 83         [24] 1746 	mov	dph,r6
   1BCC 8F F0         [24] 1747 	mov	b,r7
   1BCE 12 35 6B      [24] 1748 	lcall	__gptrget
   1BD1 FC            [12] 1749 	mov	r4,a
   1BD2 60 23         [24] 1750 	jz	00108$
                           1751 ;	cc1110_spicom.c:309: vcom_putchar(*buff++);
   1BD4 0D            [12] 1752 	inc	r5
   1BD5 BD 00 01      [24] 1753 	cjne	r5,#0x00,00114$
   1BD8 0E            [12] 1754 	inc	r6
   1BD9                    1755 00114$:
   1BD9 90 F9 56      [24] 1756 	mov	dptr,#_vcom_putstr_buff_1_98
   1BDC ED            [12] 1757 	mov	a,r5
   1BDD F0            [24] 1758 	movx	@dptr,a
   1BDE EE            [12] 1759 	mov	a,r6
   1BDF A3            [24] 1760 	inc	dptr
   1BE0 F0            [24] 1761 	movx	@dptr,a
   1BE1 EF            [12] 1762 	mov	a,r7
   1BE2 A3            [24] 1763 	inc	dptr
   1BE3 F0            [24] 1764 	movx	@dptr,a
   1BE4 8C 82         [24] 1765 	mov	dpl,r4
   1BE6 C0 07         [24] 1766 	push	ar7
   1BE8 C0 06         [24] 1767 	push	ar6
   1BEA C0 05         [24] 1768 	push	ar5
   1BEC 12 1A 93      [24] 1769 	lcall	_vcom_putchar
   1BEF D0 05         [24] 1770 	pop	ar5
   1BF1 D0 06         [24] 1771 	pop	ar6
   1BF3 D0 07         [24] 1772 	pop	ar7
   1BF5 80 D1         [24] 1773 	sjmp	00101$
   1BF7                    1774 00108$:
   1BF7 90 F9 56      [24] 1775 	mov	dptr,#_vcom_putstr_buff_1_98
   1BFA ED            [12] 1776 	mov	a,r5
   1BFB F0            [24] 1777 	movx	@dptr,a
   1BFC EE            [12] 1778 	mov	a,r6
   1BFD A3            [24] 1779 	inc	dptr
   1BFE F0            [24] 1780 	movx	@dptr,a
   1BFF EF            [12] 1781 	mov	a,r7
   1C00 A3            [24] 1782 	inc	dptr
   1C01 F0            [24] 1783 	movx	@dptr,a
                           1784 ;	cc1110_spicom.c:311: vcom_flush();
   1C02 02 1A 92      [24] 1785 	ljmp	_vcom_flush
                           1786 ;------------------------------------------------------------
                           1787 ;Allocation info for local variables in function 'usb_up'
                           1788 ;------------------------------------------------------------
                           1789 ;	cc1110_spicom.c:314: void usb_up() {
                           1790 ;	-----------------------------------------
                           1791 ;	 function usb_up
                           1792 ;	-----------------------------------------
   1C05                    1793 _usb_up:
                           1794 ;	cc1110_spicom.c:316: vcom_enable();
   1C05 02 1B 0C      [24] 1795 	ljmp	_vcom_enable
                           1796 ;------------------------------------------------------------
                           1797 ;Allocation info for local variables in function 'vcom_down'
                           1798 ;------------------------------------------------------------
                           1799 ;	cc1110_spicom.c:319: void vcom_down() {
                           1800 ;	-----------------------------------------
                           1801 ;	 function vcom_down
                           1802 ;	-----------------------------------------
   1C08                    1803 _vcom_down:
                           1804 ;	cc1110_spicom.c:321: vcom_disable();
   1C08 02 1B 20      [24] 1805 	ljmp	_vcom_disable
                           1806 ;------------------------------------------------------------
                           1807 ;Allocation info for local variables in function 'txdata'
                           1808 ;------------------------------------------------------------
                           1809 ;cmd                       Allocated with name '_txdata_PARM_2'
                           1810 ;len                       Allocated with name '_txdata_PARM_3'
                           1811 ;dataptr                   Allocated with name '_txdata_PARM_4'
                           1812 ;app                       Allocated to registers 
                           1813 ;test                      Allocated to registers 
                           1814 ;------------------------------------------------------------
                           1815 ;	cc1110_spicom.c:324: int txdata(u8 app, u8 cmd, u16 len, __xdata u8* dataptr)
                           1816 ;	-----------------------------------------
                           1817 ;	 function txdata
                           1818 ;	-----------------------------------------
   1C0B                    1819 _txdata:
                           1820 ;	cc1110_spicom.c:330: vcom_putchar(app);
   1C0B 12 1A 93      [24] 1821 	lcall	_vcom_putchar
                           1822 ;	cc1110_spicom.c:331: vcom_putchar(cmd);
   1C0E 85 2E 82      [24] 1823 	mov	dpl,_txdata_PARM_2
   1C11 12 1A 93      [24] 1824 	lcall	_vcom_putchar
                           1825 ;	cc1110_spicom.c:334: while (len > 0) //*dataptr) 
   1C14 AE 31         [24] 1826 	mov	r6,_txdata_PARM_4
   1C16 AF 32         [24] 1827 	mov	r7,(_txdata_PARM_4 + 1)
   1C18 AC 2F         [24] 1828 	mov	r4,_txdata_PARM_3
   1C1A AD 30         [24] 1829 	mov	r5,(_txdata_PARM_3 + 1)
   1C1C                    1830 00101$:
   1C1C EC            [12] 1831 	mov	a,r4
   1C1D 4D            [12] 1832 	orl	a,r5
   1C1E 60 27         [24] 1833 	jz	00103$
                           1834 ;	cc1110_spicom.c:336: vcom_putchar(*dataptr++);
   1C20 8E 82         [24] 1835 	mov	dpl,r6
   1C22 8F 83         [24] 1836 	mov	dph,r7
   1C24 E0            [24] 1837 	movx	a,@dptr
   1C25 FB            [12] 1838 	mov	r3,a
   1C26 A3            [24] 1839 	inc	dptr
   1C27 AE 82         [24] 1840 	mov	r6,dpl
   1C29 AF 83         [24] 1841 	mov	r7,dph
   1C2B 8B 82         [24] 1842 	mov	dpl,r3
   1C2D C0 07         [24] 1843 	push	ar7
   1C2F C0 06         [24] 1844 	push	ar6
   1C31 C0 05         [24] 1845 	push	ar5
   1C33 C0 04         [24] 1846 	push	ar4
   1C35 12 1A 93      [24] 1847 	lcall	_vcom_putchar
   1C38 D0 04         [24] 1848 	pop	ar4
   1C3A D0 05         [24] 1849 	pop	ar5
   1C3C D0 06         [24] 1850 	pop	ar6
   1C3E D0 07         [24] 1851 	pop	ar7
                           1852 ;	cc1110_spicom.c:337: len--;
   1C40 1C            [12] 1853 	dec	r4
   1C41 BC FF 01      [24] 1854 	cjne	r4,#0xFF,00114$
   1C44 1D            [12] 1855 	dec	r5
   1C45                    1856 00114$:
   1C45 80 D5         [24] 1857 	sjmp	00101$
   1C47                    1858 00103$:
                           1859 ;	cc1110_spicom.c:339: vcom_putchar(0);
   1C47 75 82 00      [24] 1860 	mov	dpl,#0x00
   1C4A 12 1A 93      [24] 1861 	lcall	_vcom_putchar
                           1862 ;	cc1110_spicom.c:340: vcom_flush();
   1C4D 12 1A 92      [24] 1863 	lcall	_vcom_flush
                           1864 ;	cc1110_spicom.c:344: return 0;
   1C50 90 00 00      [24] 1865 	mov	dptr,#0x0000
   1C53 22            [24] 1866 	ret
                           1867 ;------------------------------------------------------------
                           1868 ;Allocation info for local variables in function 'usbIntHandler'
                           1869 ;------------------------------------------------------------
                           1870 ;	cc1110_spicom.c:349: void usbIntHandler(void) __interrupt P2INT_VECTOR
                           1871 ;	-----------------------------------------
                           1872 ;	 function usbIntHandler
                           1873 ;	-----------------------------------------
   1C54                    1874 _usbIntHandler:
                           1875 ;	cc1110_spicom.c:351: return;
   1C54 32            [24] 1876 	reti
                           1877 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1878 ;	eliminated unneeded push/pop psw
                           1879 ;	eliminated unneeded push/pop dpl
                           1880 ;	eliminated unneeded push/pop dph
                           1881 ;	eliminated unneeded push/pop b
                           1882 ;	eliminated unneeded push/pop acc
                           1883 ;------------------------------------------------------------
                           1884 ;Allocation info for local variables in function 'p0IntHandler'
                           1885 ;------------------------------------------------------------
                           1886 ;	cc1110_spicom.c:354: void p0IntHandler(void) __interrupt P0INT_VECTOR
                           1887 ;	-----------------------------------------
                           1888 ;	 function p0IntHandler
                           1889 ;	-----------------------------------------
   1C55                    1890 _p0IntHandler:
                           1891 ;	cc1110_spicom.c:356: return;
   1C55 32            [24] 1892 	reti
                           1893 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1894 ;	eliminated unneeded push/pop psw
                           1895 ;	eliminated unneeded push/pop dpl
                           1896 ;	eliminated unneeded push/pop dph
                           1897 ;	eliminated unneeded push/pop b
                           1898 ;	eliminated unneeded push/pop acc
                           1899 ;------------------------------------------------------------
                           1900 ;Allocation info for local variables in function 'waitForUSBsetup'
                           1901 ;------------------------------------------------------------
                           1902 ;	cc1110_spicom.c:359: void waitForUSBsetup()
                           1903 ;	-----------------------------------------
                           1904 ;	 function waitForUSBsetup
                           1905 ;	-----------------------------------------
   1C56                    1906 _waitForUSBsetup:
                           1907 ;	cc1110_spicom.c:361: return;
   1C56 22            [24] 1908 	ret
                           1909 ;------------------------------------------------------------
                           1910 ;Allocation info for local variables in function 'registerCb_ep5'
                           1911 ;------------------------------------------------------------
                           1912 ;callback                  Allocated to registers 
                           1913 ;------------------------------------------------------------
                           1914 ;	cc1110_spicom.c:364: void registerCb_ep5(int (*callback)(void))
                           1915 ;	-----------------------------------------
                           1916 ;	 function registerCb_ep5
                           1917 ;	-----------------------------------------
   1C57                    1918 _registerCb_ep5:
   1C57 85 82 2C      [24] 1919 	mov	_cb_ep5,dpl
   1C5A 85 83 2D      [24] 1920 	mov	(_cb_ep5 + 1),dph
                           1921 ;	cc1110_spicom.c:366: cb_ep5 = callback;
   1C5D 22            [24] 1922 	ret
                           1923 ;------------------------------------------------------------
                           1924 ;Allocation info for local variables in function 'appReturn'
                           1925 ;------------------------------------------------------------
                           1926 ;response                  Allocated with name '_appReturn_PARM_2'
                           1927 ;len                       Allocated with name '_appReturn_len_1_114'
                           1928 ;------------------------------------------------------------
                           1929 ;	cc1110_spicom.c:369: void appReturn(__xdata u8 len, __xdata u8* __xdata  response)
                           1930 ;	-----------------------------------------
                           1931 ;	 function appReturn
                           1932 ;	-----------------------------------------
   1C5E                    1933 _appReturn:
   1C5E E5 82         [12] 1934 	mov	a,dpl
   1C60 90 F9 5B      [24] 1935 	mov	dptr,#_appReturn_len_1_114
   1C63 F0            [24] 1936 	movx	@dptr,a
                           1937 ;	cc1110_spicom.c:371: ep5.flags &= ~EP_OUTBUF_WRITTEN;                       // this should be superfluous... but could be causing problems?
   1C64 90 F9 52      [24] 1938 	mov	dptr,#(_ep5 + 0x000e)
   1C67 E0            [24] 1939 	movx	a,@dptr
   1C68 54 FD         [12] 1940 	anl	a,#0xFD
   1C6A F0            [24] 1941 	movx	@dptr,a
                           1942 ;	cc1110_spicom.c:372: txdata(ep5.OUTapp,ep5.OUTcmd, len, response);
   1C6B 90 F9 4E      [24] 1943 	mov	dptr,#(_ep5 + 0x000a)
   1C6E E0            [24] 1944 	movx	a,@dptr
   1C6F FF            [12] 1945 	mov	r7,a
   1C70 90 F9 4F      [24] 1946 	mov	dptr,#(_ep5 + 0x000b)
   1C73 E0            [24] 1947 	movx	a,@dptr
   1C74 F5 2E         [12] 1948 	mov	_txdata_PARM_2,a
   1C76 90 F9 5B      [24] 1949 	mov	dptr,#_appReturn_len_1_114
   1C79 E0            [24] 1950 	movx	a,@dptr
   1C7A FE            [12] 1951 	mov	r6,a
   1C7B 8E 2F         [24] 1952 	mov	_txdata_PARM_3,r6
   1C7D 75 30 00      [24] 1953 	mov	(_txdata_PARM_3 + 1),#0x00
   1C80 90 F9 59      [24] 1954 	mov	dptr,#_appReturn_PARM_2
   1C83 E0            [24] 1955 	movx	a,@dptr
   1C84 F5 31         [12] 1956 	mov	_txdata_PARM_4,a
   1C86 A3            [24] 1957 	inc	dptr
   1C87 E0            [24] 1958 	movx	a,@dptr
   1C88 F5 32         [12] 1959 	mov	(_txdata_PARM_4 + 1),a
   1C8A 8F 82         [24] 1960 	mov	dpl,r7
   1C8C 02 1C 0B      [24] 1961 	ljmp	_txdata
                           1962 ;------------------------------------------------------------
                           1963 ;Allocation info for local variables in function 'processOUTEP5'
                           1964 ;------------------------------------------------------------
                           1965 ;loop                      Allocated with name '_processOUTEP5_loop_1_117'
                           1966 ;sloc0                     Allocated with name '_processOUTEP5_sloc0_1_0'
                           1967 ;sloc1                     Allocated with name '_processOUTEP5_sloc1_1_0'
                           1968 ;sloc2                     Allocated with name '_processOUTEP5_sloc2_1_0'
                           1969 ;sloc3                     Allocated with name '_processOUTEP5_sloc3_1_0'
                           1970 ;ptr                       Allocated with name '_processOUTEP5_ptr_1_117'
                           1971 ;------------------------------------------------------------
                           1972 ;	cc1110_spicom.c:375: void processOUTEP5(void)
                           1973 ;	-----------------------------------------
                           1974 ;	 function processOUTEP5
                           1975 ;	-----------------------------------------
   1C8F                    1976 _processOUTEP5:
                           1977 ;	cc1110_spicom.c:381: if ((ep5.flags & EP_OUTBUF_WRITTEN) == 0)
   1C8F 90 F9 52      [24] 1978 	mov	dptr,#(_ep5 + 0x000e)
   1C92 E0            [24] 1979 	movx	a,@dptr
   1C93 FF            [12] 1980 	mov	r7,a
   1C94 20 E1 01      [24] 1981 	jb	acc.1,00102$
                           1982 ;	cc1110_spicom.c:382: return;
   1C97 22            [24] 1983 	ret
   1C98                    1984 00102$:
                           1985 ;	cc1110_spicom.c:384: ptr = &ep5.OUTbuf[0];
   1C98 90 F9 49      [24] 1986 	mov	dptr,#(_ep5 + 0x0005)
   1C9B E0            [24] 1987 	movx	a,@dptr
   1C9C FC            [12] 1988 	mov	r4,a
   1C9D A3            [24] 1989 	inc	dptr
   1C9E E0            [24] 1990 	movx	a,@dptr
   1C9F FD            [12] 1991 	mov	r5,a
   1CA0 A3            [24] 1992 	inc	dptr
   1CA1 E0            [24] 1993 	movx	a,@dptr
   1CA2 FE            [12] 1994 	mov	r6,a
   1CA3 90 F9 5C      [24] 1995 	mov	dptr,#_processOUTEP5_ptr_1_117
   1CA6 EC            [12] 1996 	mov	a,r4
   1CA7 F0            [24] 1997 	movx	@dptr,a
   1CA8 ED            [12] 1998 	mov	a,r5
   1CA9 A3            [24] 1999 	inc	dptr
   1CAA F0            [24] 2000 	movx	@dptr,a
                           2001 ;	cc1110_spicom.c:386: if (ep5.OUTapp == 0xff)                                        
   1CAB 90 F9 4E      [24] 2002 	mov	dptr,#(_ep5 + 0x000a)
   1CAE E0            [24] 2003 	movx	a,@dptr
   1CAF F5 3A         [12] 2004 	mov	_processOUTEP5_sloc3_1_0,a
   1CB1 74 FF         [12] 2005 	mov	a,#0xFF
   1CB3 B5 3A 02      [24] 2006 	cjne	a,_processOUTEP5_sloc3_1_0,00200$
   1CB6 80 03         [24] 2007 	sjmp	00201$
   1CB8                    2008 00200$:
   1CB8 02 21 07      [24] 2009 	ljmp	00135$
   1CBB                    2010 00201$:
                           2011 ;	cc1110_spicom.c:389: switch (ep5.OUTcmd)
   1CBB 90 F9 4F      [24] 2012 	mov	dptr,#(_ep5 + 0x000b)
   1CBE E0            [24] 2013 	movx	a,@dptr
   1CBF F5 38         [12] 2014 	mov	_processOUTEP5_sloc2_1_0,a
   1CC1 C3            [12] 2015 	clr	c
   1CC2 94 80         [12] 2016 	subb	a,#0x80
   1CC4 50 03         [24] 2017 	jnc	00202$
   1CC6 02 20 E8      [24] 2018 	ljmp	00127$
   1CC9                    2019 00202$:
   1CC9 E5 38         [12] 2020 	mov	a,_processOUTEP5_sloc2_1_0
   1CCB 24 6F         [12] 2021 	add	a,#0xff - 0x90
   1CCD 50 03         [24] 2022 	jnc	00203$
   1CCF 02 20 E8      [24] 2023 	ljmp	00127$
   1CD2                    2024 00203$:
   1CD2 E5 38         [12] 2025 	mov	a,_processOUTEP5_sloc2_1_0
   1CD4 24 80         [12] 2026 	add	a,#0x80
   1CD6 F9            [12] 2027 	mov	r1,a
   1CD7 24 0A         [12] 2028 	add	a,#(00204$-3-.)
   1CD9 83            [24] 2029 	movc	a,@a+pc
   1CDA F5 82         [12] 2030 	mov	dpl,a
   1CDC E9            [12] 2031 	mov	a,r1
   1CDD 24 15         [12] 2032 	add	a,#(00205$-3-.)
   1CDF 83            [24] 2033 	movc	a,@a+pc
   1CE0 F5 83         [12] 2034 	mov	dph,a
   1CE2 E4            [12] 2035 	clr	a
   1CE3 73            [24] 2036 	jmp	@a+dptr
   1CE4                    2037 00204$:
   1CE4 06                 2038 	.db	00103$
   1CE5 9E                 2039 	.db	00104$
   1CE6 2F                 2040 	.db	00112$
   1CE7 6C                 2041 	.db	00113$
   1CE8 51                 2042 	.db	00106$
   1CE9 84                 2043 	.db	00114$
   1CEA A6                 2044 	.db	00115$
   1CEB E8                 2045 	.db	00127$
   1CEC D6                 2046 	.db	00117$
   1CED BE                 2047 	.db	00116$
   1CEE E8                 2048 	.db	00127$
   1CEF E8                 2049 	.db	00127$
   1CF0 E8                 2050 	.db	00127$
   1CF1 E8                 2051 	.db	00127$
   1CF2 3E                 2052 	.db	00122$
   1CF3 72                 2053 	.db	00123$
   1CF4 CF                 2054 	.db	00126$
   1CF5                    2055 00205$:
   1CF5 1D                 2056 	.db	00103$>>8
   1CF6 1D                 2057 	.db	00104$>>8
   1CF7 1F                 2058 	.db	00112$>>8
   1CF8 1F                 2059 	.db	00113$>>8
   1CF9 1E                 2060 	.db	00106$>>8
   1CFA 1F                 2061 	.db	00114$>>8
   1CFB 1F                 2062 	.db	00115$>>8
   1CFC 20                 2063 	.db	00127$>>8
   1CFD 1F                 2064 	.db	00117$>>8
   1CFE 1F                 2065 	.db	00116$>>8
   1CFF 20                 2066 	.db	00127$>>8
   1D00 20                 2067 	.db	00127$>>8
   1D01 20                 2068 	.db	00127$>>8
   1D02 20                 2069 	.db	00127$>>8
   1D03 20                 2070 	.db	00122$>>8
   1D04 20                 2071 	.db	00123$>>8
   1D05 20                 2072 	.db	00126$>>8
                           2073 ;	cc1110_spicom.c:391: case CMD_PEEK:
   1D06                    2074 00103$:
                           2075 ;	cc1110_spicom.c:392: ep5.OUTbytesleft =  *ptr++;
   1D06 8C 82         [24] 2076 	mov	dpl,r4
   1D08 8D 83         [24] 2077 	mov	dph,r5
   1D0A 8E F0         [24] 2078 	mov	b,r6
   1D0C 12 35 6B      [24] 2079 	lcall	__gptrget
   1D0F F5 35         [12] 2080 	mov	_processOUTEP5_sloc0_1_0,a
   1D11 74 01         [12] 2081 	mov	a,#0x01
   1D13 2C            [12] 2082 	add	a,r4
   1D14 F5 36         [12] 2083 	mov	_processOUTEP5_sloc1_1_0,a
   1D16 E4            [12] 2084 	clr	a
   1D17 3D            [12] 2085 	addc	a,r5
   1D18 F5 37         [12] 2086 	mov	(_processOUTEP5_sloc1_1_0 + 1),a
   1D1A 85 35 38      [24] 2087 	mov	_processOUTEP5_sloc2_1_0,_processOUTEP5_sloc0_1_0
   1D1D 75 39 00      [24] 2088 	mov	(_processOUTEP5_sloc2_1_0 + 1),#0x00
   1D20 90 F9 50      [24] 2089 	mov	dptr,#(_ep5 + 0x000c)
   1D23 E5 38         [12] 2090 	mov	a,_processOUTEP5_sloc2_1_0
   1D25 F0            [24] 2091 	movx	@dptr,a
   1D26 E5 39         [12] 2092 	mov	a,(_processOUTEP5_sloc2_1_0 + 1)
   1D28 A3            [24] 2093 	inc	dptr
   1D29 F0            [24] 2094 	movx	@dptr,a
                           2095 ;	cc1110_spicom.c:393: ep5.OUTbytesleft += *ptr++ << 8;
   1D2A 85 36 82      [24] 2096 	mov	dpl,_processOUTEP5_sloc1_1_0
   1D2D 85 37 83      [24] 2097 	mov	dph,(_processOUTEP5_sloc1_1_0 + 1)
   1D30 E0            [24] 2098 	movx	a,@dptr
   1D31 F5 35         [12] 2099 	mov	_processOUTEP5_sloc0_1_0,a
   1D33 74 01         [12] 2100 	mov	a,#0x01
   1D35 25 36         [12] 2101 	add	a,_processOUTEP5_sloc1_1_0
   1D37 F5 3A         [12] 2102 	mov	_processOUTEP5_sloc3_1_0,a
   1D39 E4            [12] 2103 	clr	a
   1D3A 35 37         [12] 2104 	addc	a,(_processOUTEP5_sloc1_1_0 + 1)
   1D3C F5 3B         [12] 2105 	mov	(_processOUTEP5_sloc3_1_0 + 1),a
   1D3E A8 35         [24] 2106 	mov	r0,_processOUTEP5_sloc0_1_0
   1D40 88 01         [24] 2107 	mov	ar1,r0
   1D42 E4            [12] 2108 	clr	a
   1D43 25 38         [12] 2109 	add	a,_processOUTEP5_sloc2_1_0
   1D45 F5 38         [12] 2110 	mov	_processOUTEP5_sloc2_1_0,a
   1D47 E9            [12] 2111 	mov	a,r1
   1D48 35 39         [12] 2112 	addc	a,(_processOUTEP5_sloc2_1_0 + 1)
   1D4A F5 39         [12] 2113 	mov	(_processOUTEP5_sloc2_1_0 + 1),a
   1D4C 90 F9 50      [24] 2114 	mov	dptr,#(_ep5 + 0x000c)
   1D4F E5 38         [12] 2115 	mov	a,_processOUTEP5_sloc2_1_0
   1D51 F0            [24] 2116 	movx	@dptr,a
   1D52 E5 39         [12] 2117 	mov	a,(_processOUTEP5_sloc2_1_0 + 1)
   1D54 A3            [24] 2118 	inc	dptr
   1D55 F0            [24] 2119 	movx	@dptr,a
                           2120 ;	cc1110_spicom.c:395: loop =  (u16)*ptr++;
   1D56 85 3A 82      [24] 2121 	mov	dpl,_processOUTEP5_sloc3_1_0
   1D59 85 3B 83      [24] 2122 	mov	dph,(_processOUTEP5_sloc3_1_0 + 1)
   1D5C E0            [24] 2123 	movx	a,@dptr
   1D5D F9            [12] 2124 	mov	r1,a
   1D5E 85 36 82      [24] 2125 	mov	dpl,_processOUTEP5_sloc1_1_0
   1D61 85 37 83      [24] 2126 	mov	dph,(_processOUTEP5_sloc1_1_0 + 1)
   1D64 A3            [24] 2127 	inc	dptr
   1D65 A3            [24] 2128 	inc	dptr
   1D66 89 33         [24] 2129 	mov	_processOUTEP5_loop_1_117,r1
   1D68 75 34 00      [24] 2130 	mov	(_processOUTEP5_loop_1_117 + 1),#0x00
                           2131 ;	cc1110_spicom.c:396: loop += (u16)*ptr++ << 8;
   1D6B E0            [24] 2132 	movx	a,@dptr
   1D6C F9            [12] 2133 	mov	r1,a
   1D6D E4            [12] 2134 	clr	a
   1D6E 25 33         [12] 2135 	add	a,_processOUTEP5_loop_1_117
   1D70 F5 33         [12] 2136 	mov	_processOUTEP5_loop_1_117,a
   1D72 E9            [12] 2137 	mov	a,r1
   1D73 35 34         [12] 2138 	addc	a,(_processOUTEP5_loop_1_117 + 1)
   1D75 F5 34         [12] 2139 	mov	(_processOUTEP5_loop_1_117 + 1),a
                           2140 ;	cc1110_spicom.c:397: ptr = (__xdata u8*) loop;
   1D77 85 33 31      [24] 2141 	mov	_txdata_PARM_4,_processOUTEP5_loop_1_117
   1D7A 85 34 32      [24] 2142 	mov	(_txdata_PARM_4 + 1),(_processOUTEP5_loop_1_117 + 1)
                           2143 ;	cc1110_spicom.c:399: txdata(ep5.OUTapp, ep5.OUTcmd, ep5.OUTbytesleft, ptr);
   1D7D 90 F9 4E      [24] 2144 	mov	dptr,#(_ep5 + 0x000a)
   1D80 E0            [24] 2145 	movx	a,@dptr
   1D81 F9            [12] 2146 	mov	r1,a
   1D82 90 F9 4F      [24] 2147 	mov	dptr,#(_ep5 + 0x000b)
   1D85 E0            [24] 2148 	movx	a,@dptr
   1D86 F5 2E         [12] 2149 	mov	_txdata_PARM_2,a
   1D88 85 38 2F      [24] 2150 	mov	_txdata_PARM_3,_processOUTEP5_sloc2_1_0
   1D8B 85 39 30      [24] 2151 	mov	(_txdata_PARM_3 + 1),(_processOUTEP5_sloc2_1_0 + 1)
   1D8E 89 82         [24] 2152 	mov	dpl,r1
   1D90 12 1C 0B      [24] 2153 	lcall	_txdata
                           2154 ;	cc1110_spicom.c:400: ep5.OUTbytesleft = 0;
   1D93 90 F9 50      [24] 2155 	mov	dptr,#(_ep5 + 0x000c)
   1D96 E4            [12] 2156 	clr	a
   1D97 F0            [24] 2157 	movx	@dptr,a
   1D98 E4            [12] 2158 	clr	a
   1D99 A3            [24] 2159 	inc	dptr
   1D9A F0            [24] 2160 	movx	@dptr,a
                           2161 ;	cc1110_spicom.c:401: break;
   1D9B 02 20 FF      [24] 2162 	ljmp	00128$
                           2163 ;	cc1110_spicom.c:403: case CMD_POKE:
   1D9E                    2164 00104$:
                           2165 ;	cc1110_spicom.c:404: loop =  *ptr++;
   1D9E 8C 82         [24] 2166 	mov	dpl,r4
   1DA0 8D 83         [24] 2167 	mov	dph,r5
   1DA2 8E F0         [24] 2168 	mov	b,r6
   1DA4 12 35 6B      [24] 2169 	lcall	__gptrget
   1DA7 F9            [12] 2170 	mov	r1,a
   1DA8 8C 82         [24] 2171 	mov	dpl,r4
   1DAA 8D 83         [24] 2172 	mov	dph,r5
   1DAC A3            [24] 2173 	inc	dptr
   1DAD 89 33         [24] 2174 	mov	_processOUTEP5_loop_1_117,r1
   1DAF 75 34 00      [24] 2175 	mov	(_processOUTEP5_loop_1_117 + 1),#0x00
                           2176 ;	cc1110_spicom.c:405: loop += *ptr++ << 8;
   1DB2 E0            [24] 2177 	movx	a,@dptr
   1DB3 F9            [12] 2178 	mov	r1,a
   1DB4 74 02         [12] 2179 	mov	a,#0x02
   1DB6 2C            [12] 2180 	add	a,r4
   1DB7 F5 3A         [12] 2181 	mov	_processOUTEP5_sloc3_1_0,a
   1DB9 E4            [12] 2182 	clr	a
   1DBA 3D            [12] 2183 	addc	a,r5
   1DBB F5 3B         [12] 2184 	mov	(_processOUTEP5_sloc3_1_0 + 1),a
   1DBD 89 00         [24] 2185 	mov	ar0,r1
   1DBF 88 01         [24] 2186 	mov	ar1,r0
   1DC1 E4            [12] 2187 	clr	a
   1DC2 25 33         [12] 2188 	add	a,_processOUTEP5_loop_1_117
   1DC4 F5 33         [12] 2189 	mov	_processOUTEP5_loop_1_117,a
   1DC6 E9            [12] 2190 	mov	a,r1
   1DC7 35 34         [12] 2191 	addc	a,(_processOUTEP5_loop_1_117 + 1)
   1DC9 F5 34         [12] 2192 	mov	(_processOUTEP5_loop_1_117 + 1),a
                           2193 ;	cc1110_spicom.c:406: ep5.dptr = (__xdata u8*) loop;
   1DCB A8 33         [24] 2194 	mov	r0,_processOUTEP5_loop_1_117
   1DCD A9 34         [24] 2195 	mov	r1,(_processOUTEP5_loop_1_117 + 1)
   1DCF 90 F9 54      [24] 2196 	mov	dptr,#(_ep5 + 0x0010)
   1DD2 E8            [12] 2197 	mov	a,r0
   1DD3 F0            [24] 2198 	movx	@dptr,a
   1DD4 E9            [12] 2199 	mov	a,r1
   1DD5 A3            [24] 2200 	inc	dptr
   1DD6 F0            [24] 2201 	movx	@dptr,a
                           2202 ;	cc1110_spicom.c:408: loop = ep5.OUTlen - 2;
   1DD7 90 F9 4C      [24] 2203 	mov	dptr,#(_ep5 + 0x0008)
   1DDA E0            [24] 2204 	movx	a,@dptr
   1DDB F8            [12] 2205 	mov	r0,a
   1DDC A3            [24] 2206 	inc	dptr
   1DDD E0            [24] 2207 	movx	a,@dptr
   1DDE F9            [12] 2208 	mov	r1,a
   1DDF E8            [12] 2209 	mov	a,r0
   1DE0 24 FE         [12] 2210 	add	a,#0xFE
   1DE2 F5 33         [12] 2211 	mov	_processOUTEP5_loop_1_117,a
   1DE4 E9            [12] 2212 	mov	a,r1
   1DE5 34 FF         [12] 2213 	addc	a,#0xFF
   1DE7 F5 34         [12] 2214 	mov	(_processOUTEP5_loop_1_117 + 1),a
   1DE9 85 33 38      [24] 2215 	mov	_processOUTEP5_sloc2_1_0,_processOUTEP5_loop_1_117
   1DEC 85 34 39      [24] 2216 	mov	(_processOUTEP5_sloc2_1_0 + 1),(_processOUTEP5_loop_1_117 + 1)
   1DEF                    2217 00138$:
                           2218 ;	cc1110_spicom.c:410: for (;loop>0;loop--)
   1DEF E5 38         [12] 2219 	mov	a,_processOUTEP5_sloc2_1_0
   1DF1 45 39         [12] 2220 	orl	a,(_processOUTEP5_sloc2_1_0 + 1)
   1DF3 60 3D         [24] 2221 	jz	00105$
                           2222 ;	cc1110_spicom.c:412: *ep5.dptr++ = *ptr++;
   1DF5 90 F9 54      [24] 2223 	mov	dptr,#(_ep5 + 0x0010)
   1DF8 E0            [24] 2224 	movx	a,@dptr
   1DF9 F5 36         [12] 2225 	mov	_processOUTEP5_sloc1_1_0,a
   1DFB A3            [24] 2226 	inc	dptr
   1DFC E0            [24] 2227 	movx	a,@dptr
   1DFD F5 37         [12] 2228 	mov	(_processOUTEP5_sloc1_1_0 + 1),a
   1DFF 74 01         [12] 2229 	mov	a,#0x01
   1E01 25 36         [12] 2230 	add	a,_processOUTEP5_sloc1_1_0
   1E03 F8            [12] 2231 	mov	r0,a
   1E04 E4            [12] 2232 	clr	a
   1E05 35 37         [12] 2233 	addc	a,(_processOUTEP5_sloc1_1_0 + 1)
   1E07 F9            [12] 2234 	mov	r1,a
   1E08 90 F9 54      [24] 2235 	mov	dptr,#(_ep5 + 0x0010)
   1E0B E8            [12] 2236 	mov	a,r0
   1E0C F0            [24] 2237 	movx	@dptr,a
   1E0D E9            [12] 2238 	mov	a,r1
   1E0E A3            [24] 2239 	inc	dptr
   1E0F F0            [24] 2240 	movx	@dptr,a
   1E10 85 3A 82      [24] 2241 	mov	dpl,_processOUTEP5_sloc3_1_0
   1E13 85 3B 83      [24] 2242 	mov	dph,(_processOUTEP5_sloc3_1_0 + 1)
   1E16 E0            [24] 2243 	movx	a,@dptr
   1E17 F9            [12] 2244 	mov	r1,a
   1E18 A3            [24] 2245 	inc	dptr
   1E19 85 82 3A      [24] 2246 	mov	_processOUTEP5_sloc3_1_0,dpl
   1E1C 85 83 3B      [24] 2247 	mov	(_processOUTEP5_sloc3_1_0 + 1),dph
   1E1F 85 36 82      [24] 2248 	mov	dpl,_processOUTEP5_sloc1_1_0
   1E22 85 37 83      [24] 2249 	mov	dph,(_processOUTEP5_sloc1_1_0 + 1)
   1E25 E9            [12] 2250 	mov	a,r1
   1E26 F0            [24] 2251 	movx	@dptr,a
                           2252 ;	cc1110_spicom.c:410: for (;loop>0;loop--)
   1E27 15 38         [12] 2253 	dec	_processOUTEP5_sloc2_1_0
   1E29 74 FF         [12] 2254 	mov	a,#0xFF
   1E2B B5 38 02      [24] 2255 	cjne	a,_processOUTEP5_sloc2_1_0,00207$
   1E2E 15 39         [12] 2256 	dec	(_processOUTEP5_sloc2_1_0 + 1)
   1E30                    2257 00207$:
   1E30 80 BD         [24] 2258 	sjmp	00138$
   1E32                    2259 00105$:
                           2260 ;	cc1110_spicom.c:416: txdata(ep5.OUTapp, ep5.OUTcmd, 2, (__xdata u8*)&(ep5.OUTbytesleft));
   1E32 90 F9 4E      [24] 2261 	mov	dptr,#(_ep5 + 0x000a)
   1E35 E0            [24] 2262 	movx	a,@dptr
   1E36 F9            [12] 2263 	mov	r1,a
   1E37 90 F9 4F      [24] 2264 	mov	dptr,#(_ep5 + 0x000b)
   1E3A E0            [24] 2265 	movx	a,@dptr
   1E3B F5 2E         [12] 2266 	mov	_txdata_PARM_2,a
   1E3D 75 31 50      [24] 2267 	mov	_txdata_PARM_4,#(_ep5 + 0x000c)
   1E40 75 32 F9      [24] 2268 	mov	(_txdata_PARM_4 + 1),#((_ep5 + 0x000c) >> 8)
   1E43 75 2F 02      [24] 2269 	mov	_txdata_PARM_3,#0x02
   1E46 75 30 00      [24] 2270 	mov	(_txdata_PARM_3 + 1),#0x00
   1E49 89 82         [24] 2271 	mov	dpl,r1
   1E4B 12 1C 0B      [24] 2272 	lcall	_txdata
                           2273 ;	cc1110_spicom.c:417: break;
   1E4E 02 20 FF      [24] 2274 	ljmp	00128$
                           2275 ;	cc1110_spicom.c:419: case CMD_POKE_REG:
   1E51                    2276 00106$:
                           2277 ;	cc1110_spicom.c:420: if (!(ep5.flags & EP_OUTBUF_CONTINUED))
   1E51 EF            [12] 2278 	mov	a,r7
   1E52 20 E2 3B      [24] 2279 	jb	acc.2,00108$
                           2280 ;	cc1110_spicom.c:422: loop =  *ptr++;
   1E55 8C 82         [24] 2281 	mov	dpl,r4
   1E57 8D 83         [24] 2282 	mov	dph,r5
   1E59 8E F0         [24] 2283 	mov	b,r6
   1E5B 12 35 6B      [24] 2284 	lcall	__gptrget
   1E5E F9            [12] 2285 	mov	r1,a
   1E5F 8C 82         [24] 2286 	mov	dpl,r4
   1E61 8D 83         [24] 2287 	mov	dph,r5
   1E63 A3            [24] 2288 	inc	dptr
   1E64 89 33         [24] 2289 	mov	_processOUTEP5_loop_1_117,r1
   1E66 75 34 00      [24] 2290 	mov	(_processOUTEP5_loop_1_117 + 1),#0x00
                           2291 ;	cc1110_spicom.c:423: loop += *ptr++ << 8;
   1E69 E0            [24] 2292 	movx	a,@dptr
   1E6A F9            [12] 2293 	mov	r1,a
   1E6B 90 F9 5C      [24] 2294 	mov	dptr,#_processOUTEP5_ptr_1_117
   1E6E 74 02         [12] 2295 	mov	a,#0x02
   1E70 2C            [12] 2296 	add	a,r4
   1E71 F0            [24] 2297 	movx	@dptr,a
   1E72 E4            [12] 2298 	clr	a
   1E73 3D            [12] 2299 	addc	a,r5
   1E74 A3            [24] 2300 	inc	dptr
   1E75 F0            [24] 2301 	movx	@dptr,a
   1E76 89 00         [24] 2302 	mov	ar0,r1
   1E78 88 01         [24] 2303 	mov	ar1,r0
   1E7A E4            [12] 2304 	clr	a
   1E7B 25 33         [12] 2305 	add	a,_processOUTEP5_loop_1_117
   1E7D F5 33         [12] 2306 	mov	_processOUTEP5_loop_1_117,a
   1E7F E9            [12] 2307 	mov	a,r1
   1E80 35 34         [12] 2308 	addc	a,(_processOUTEP5_loop_1_117 + 1)
   1E82 F5 34         [12] 2309 	mov	(_processOUTEP5_loop_1_117 + 1),a
                           2310 ;	cc1110_spicom.c:424: ep5.dptr = (__xdata u8*) loop;
   1E84 A8 33         [24] 2311 	mov	r0,_processOUTEP5_loop_1_117
   1E86 A9 34         [24] 2312 	mov	r1,(_processOUTEP5_loop_1_117 + 1)
   1E88 90 F9 54      [24] 2313 	mov	dptr,#(_ep5 + 0x0010)
   1E8B E8            [12] 2314 	mov	a,r0
   1E8C F0            [24] 2315 	movx	@dptr,a
   1E8D E9            [12] 2316 	mov	a,r1
   1E8E A3            [24] 2317 	inc	dptr
   1E8F F0            [24] 2318 	movx	@dptr,a
   1E90                    2319 00108$:
                           2320 ;	cc1110_spicom.c:428: loop = ep5.OUTbytesleft;
   1E90 90 F9 50      [24] 2321 	mov	dptr,#(_ep5 + 0x000c)
   1E93 E0            [24] 2322 	movx	a,@dptr
   1E94 F8            [12] 2323 	mov	r0,a
   1E95 A3            [24] 2324 	inc	dptr
   1E96 E0            [24] 2325 	movx	a,@dptr
   1E97 F9            [12] 2326 	mov	r1,a
   1E98 88 33         [24] 2327 	mov	_processOUTEP5_loop_1_117,r0
   1E9A 89 34         [24] 2328 	mov	(_processOUTEP5_loop_1_117 + 1),r1
                           2329 ;	cc1110_spicom.c:429: if (loop > EP5OUT_MAX_PACKET_SIZE)
   1E9C C3            [12] 2330 	clr	c
   1E9D 74 40         [12] 2331 	mov	a,#0x40
   1E9F 95 33         [12] 2332 	subb	a,_processOUTEP5_loop_1_117
   1EA1 E4            [12] 2333 	clr	a
   1EA2 95 34         [12] 2334 	subb	a,(_processOUTEP5_loop_1_117 + 1)
   1EA4 50 06         [24] 2335 	jnc	00110$
                           2336 ;	cc1110_spicom.c:431: loop = EP5OUT_MAX_PACKET_SIZE;
   1EA6 75 33 40      [24] 2337 	mov	_processOUTEP5_loop_1_117,#0x40
   1EA9 75 34 00      [24] 2338 	mov	(_processOUTEP5_loop_1_117 + 1),#0x00
   1EAC                    2339 00110$:
                           2340 ;	cc1110_spicom.c:434: ep5.OUTbytesleft -= loop;
   1EAC E8            [12] 2341 	mov	a,r0
   1EAD C3            [12] 2342 	clr	c
   1EAE 95 33         [12] 2343 	subb	a,_processOUTEP5_loop_1_117
   1EB0 F8            [12] 2344 	mov	r0,a
   1EB1 E9            [12] 2345 	mov	a,r1
   1EB2 95 34         [12] 2346 	subb	a,(_processOUTEP5_loop_1_117 + 1)
   1EB4 F9            [12] 2347 	mov	r1,a
   1EB5 90 F9 50      [24] 2348 	mov	dptr,#(_ep5 + 0x000c)
   1EB8 E8            [12] 2349 	mov	a,r0
   1EB9 F0            [24] 2350 	movx	@dptr,a
   1EBA E9            [12] 2351 	mov	a,r1
   1EBB A3            [24] 2352 	inc	dptr
   1EBC F0            [24] 2353 	movx	@dptr,a
   1EBD 90 F9 5C      [24] 2354 	mov	dptr,#_processOUTEP5_ptr_1_117
   1EC0 E0            [24] 2355 	movx	a,@dptr
   1EC1 F5 38         [12] 2356 	mov	_processOUTEP5_sloc2_1_0,a
   1EC3 A3            [24] 2357 	inc	dptr
   1EC4 E0            [24] 2358 	movx	a,@dptr
   1EC5 F5 39         [12] 2359 	mov	(_processOUTEP5_sloc2_1_0 + 1),a
   1EC7 85 33 3A      [24] 2360 	mov	_processOUTEP5_sloc3_1_0,_processOUTEP5_loop_1_117
   1ECA 85 34 3B      [24] 2361 	mov	(_processOUTEP5_sloc3_1_0 + 1),(_processOUTEP5_loop_1_117 + 1)
   1ECD                    2362 00141$:
                           2363 ;	cc1110_spicom.c:437: for (;loop>0;loop--)
   1ECD E5 3A         [12] 2364 	mov	a,_processOUTEP5_sloc3_1_0
   1ECF 45 3B         [12] 2365 	orl	a,(_processOUTEP5_sloc3_1_0 + 1)
   1ED1 60 3D         [24] 2366 	jz	00111$
                           2367 ;	cc1110_spicom.c:439: *ep5.dptr++ = *ptr++;
   1ED3 90 F9 54      [24] 2368 	mov	dptr,#(_ep5 + 0x0010)
   1ED6 E0            [24] 2369 	movx	a,@dptr
   1ED7 F5 36         [12] 2370 	mov	_processOUTEP5_sloc1_1_0,a
   1ED9 A3            [24] 2371 	inc	dptr
   1EDA E0            [24] 2372 	movx	a,@dptr
   1EDB F5 37         [12] 2373 	mov	(_processOUTEP5_sloc1_1_0 + 1),a
   1EDD 74 01         [12] 2374 	mov	a,#0x01
   1EDF 25 36         [12] 2375 	add	a,_processOUTEP5_sloc1_1_0
   1EE1 F8            [12] 2376 	mov	r0,a
   1EE2 E4            [12] 2377 	clr	a
   1EE3 35 37         [12] 2378 	addc	a,(_processOUTEP5_sloc1_1_0 + 1)
   1EE5 F9            [12] 2379 	mov	r1,a
   1EE6 90 F9 54      [24] 2380 	mov	dptr,#(_ep5 + 0x0010)
   1EE9 E8            [12] 2381 	mov	a,r0
   1EEA F0            [24] 2382 	movx	@dptr,a
   1EEB E9            [12] 2383 	mov	a,r1
   1EEC A3            [24] 2384 	inc	dptr
   1EED F0            [24] 2385 	movx	@dptr,a
   1EEE 85 38 82      [24] 2386 	mov	dpl,_processOUTEP5_sloc2_1_0
   1EF1 85 39 83      [24] 2387 	mov	dph,(_processOUTEP5_sloc2_1_0 + 1)
   1EF4 E0            [24] 2388 	movx	a,@dptr
   1EF5 F9            [12] 2389 	mov	r1,a
   1EF6 A3            [24] 2390 	inc	dptr
   1EF7 85 82 38      [24] 2391 	mov	_processOUTEP5_sloc2_1_0,dpl
   1EFA 85 83 39      [24] 2392 	mov	(_processOUTEP5_sloc2_1_0 + 1),dph
   1EFD 85 36 82      [24] 2393 	mov	dpl,_processOUTEP5_sloc1_1_0
   1F00 85 37 83      [24] 2394 	mov	dph,(_processOUTEP5_sloc1_1_0 + 1)
   1F03 E9            [12] 2395 	mov	a,r1
   1F04 F0            [24] 2396 	movx	@dptr,a
                           2397 ;	cc1110_spicom.c:437: for (;loop>0;loop--)
   1F05 15 3A         [12] 2398 	dec	_processOUTEP5_sloc3_1_0
   1F07 74 FF         [12] 2399 	mov	a,#0xFF
   1F09 B5 3A 02      [24] 2400 	cjne	a,_processOUTEP5_sloc3_1_0,00211$
   1F0C 15 3B         [12] 2401 	dec	(_processOUTEP5_sloc3_1_0 + 1)
   1F0E                    2402 00211$:
   1F0E 80 BD         [24] 2403 	sjmp	00141$
   1F10                    2404 00111$:
                           2405 ;	cc1110_spicom.c:442: txdata(ep5.OUTapp, ep5.OUTcmd, 2, (__xdata u8*)&(ep5.OUTbytesleft));
   1F10 90 F9 4E      [24] 2406 	mov	dptr,#(_ep5 + 0x000a)
   1F13 E0            [24] 2407 	movx	a,@dptr
   1F14 F9            [12] 2408 	mov	r1,a
   1F15 90 F9 4F      [24] 2409 	mov	dptr,#(_ep5 + 0x000b)
   1F18 E0            [24] 2410 	movx	a,@dptr
   1F19 F5 2E         [12] 2411 	mov	_txdata_PARM_2,a
   1F1B 75 31 50      [24] 2412 	mov	_txdata_PARM_4,#(_ep5 + 0x000c)
   1F1E 75 32 F9      [24] 2413 	mov	(_txdata_PARM_4 + 1),#((_ep5 + 0x000c) >> 8)
   1F21 75 2F 02      [24] 2414 	mov	_txdata_PARM_3,#0x02
   1F24 75 30 00      [24] 2415 	mov	(_txdata_PARM_3 + 1),#0x00
   1F27 89 82         [24] 2416 	mov	dpl,r1
   1F29 12 1C 0B      [24] 2417 	lcall	_txdata
                           2418 ;	cc1110_spicom.c:444: break;
   1F2C 02 20 FF      [24] 2419 	ljmp	00128$
                           2420 ;	cc1110_spicom.c:445: case CMD_PING:
   1F2F                    2421 00112$:
                           2422 ;	cc1110_spicom.c:446: blink(2,2);
   1F2F D2 A4         [12] 2423 	setb	_P2_4
   1F31 90 00 02      [24] 2424 	mov	dptr,#0x0002
   1F34 C0 06         [24] 2425 	push	ar6
   1F36 C0 05         [24] 2426 	push	ar5
   1F38 C0 04         [24] 2427 	push	ar4
   1F3A 12 2D 4B      [24] 2428 	lcall	_sleepMillis
   1F3D C2 A4         [12] 2429 	clr	_P2_4
   1F3F 90 00 02      [24] 2430 	mov	dptr,#0x0002
   1F42 12 2D 4B      [24] 2431 	lcall	_sleepMillis
   1F45 D0 04         [24] 2432 	pop	ar4
   1F47 D0 05         [24] 2433 	pop	ar5
   1F49 D0 06         [24] 2434 	pop	ar6
                           2435 ;	cc1110_spicom.c:447: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   1F4B 90 F9 4E      [24] 2436 	mov	dptr,#(_ep5 + 0x000a)
   1F4E E0            [24] 2437 	movx	a,@dptr
   1F4F F9            [12] 2438 	mov	r1,a
   1F50 90 F9 4F      [24] 2439 	mov	dptr,#(_ep5 + 0x000b)
   1F53 E0            [24] 2440 	movx	a,@dptr
   1F54 F5 2E         [12] 2441 	mov	_txdata_PARM_2,a
   1F56 90 F9 4C      [24] 2442 	mov	dptr,#(_ep5 + 0x0008)
   1F59 E0            [24] 2443 	movx	a,@dptr
   1F5A F5 2F         [12] 2444 	mov	_txdata_PARM_3,a
   1F5C A3            [24] 2445 	inc	dptr
   1F5D E0            [24] 2446 	movx	a,@dptr
   1F5E F5 30         [12] 2447 	mov	(_txdata_PARM_3 + 1),a
   1F60 8C 31         [24] 2448 	mov	_txdata_PARM_4,r4
   1F62 8D 32         [24] 2449 	mov	(_txdata_PARM_4 + 1),r5
   1F64 89 82         [24] 2450 	mov	dpl,r1
   1F66 12 1C 0B      [24] 2451 	lcall	_txdata
                           2452 ;	cc1110_spicom.c:448: break;
   1F69 02 20 FF      [24] 2453 	ljmp	00128$
                           2454 ;	cc1110_spicom.c:450: case CMD_STATUS:
   1F6C                    2455 00113$:
                           2456 ;	cc1110_spicom.c:451: txdata(ep5.OUTapp, ep5.OUTcmd, 13, (__xdata u8*)"UNIMPLEMENTED");
   1F6C 75 31 8C      [24] 2457 	mov	_txdata_PARM_4,#__str_0
   1F6F 75 32 37      [24] 2458 	mov	(_txdata_PARM_4 + 1),#(__str_0 >> 8)
   1F72 85 38 2E      [24] 2459 	mov	_txdata_PARM_2,_processOUTEP5_sloc2_1_0
   1F75 75 2F 0D      [24] 2460 	mov	_txdata_PARM_3,#0x0D
   1F78 75 30 00      [24] 2461 	mov	(_txdata_PARM_3 + 1),#0x00
   1F7B 85 3A 82      [24] 2462 	mov	dpl,_processOUTEP5_sloc3_1_0
   1F7E 12 1C 0B      [24] 2463 	lcall	_txdata
                           2464 ;	cc1110_spicom.c:453: break;
   1F81 02 20 FF      [24] 2465 	ljmp	00128$
                           2466 ;	cc1110_spicom.c:455: case CMD_GET_CLOCK:
   1F84                    2467 00114$:
                           2468 ;	cc1110_spicom.c:456: txdata(ep5.OUTapp, ep5.OUTcmd, 4, (__xdata u8*)clock);
   1F84 90 FD B7      [24] 2469 	mov	dptr,#_clock
   1F87 E0            [24] 2470 	movx	a,@dptr
   1F88 F8            [12] 2471 	mov	r0,a
   1F89 A3            [24] 2472 	inc	dptr
   1F8A E0            [24] 2473 	movx	a,@dptr
   1F8B F9            [12] 2474 	mov	r1,a
   1F8C A3            [24] 2475 	inc	dptr
   1F8D E0            [24] 2476 	movx	a,@dptr
   1F8E A3            [24] 2477 	inc	dptr
   1F8F E0            [24] 2478 	movx	a,@dptr
   1F90 88 31         [24] 2479 	mov	_txdata_PARM_4,r0
   1F92 89 32         [24] 2480 	mov	(_txdata_PARM_4 + 1),r1
   1F94 85 38 2E      [24] 2481 	mov	_txdata_PARM_2,_processOUTEP5_sloc2_1_0
   1F97 75 2F 04      [24] 2482 	mov	_txdata_PARM_3,#0x04
   1F9A 75 30 00      [24] 2483 	mov	(_txdata_PARM_3 + 1),#0x00
   1F9D 85 3A 82      [24] 2484 	mov	dpl,_processOUTEP5_sloc3_1_0
   1FA0 12 1C 0B      [24] 2485 	lcall	_txdata
                           2486 ;	cc1110_spicom.c:457: break;
   1FA3 02 20 FF      [24] 2487 	ljmp	00128$
                           2488 ;	cc1110_spicom.c:459: case CMD_BUILDTYPE:
   1FA6                    2489 00115$:
                           2490 ;	cc1110_spicom.c:460: txdata(ep5.OUTapp, ep5.OUTcmd, sizeof(buildname), (__xdata u8*)&buildname[0]);
   1FA6 75 31 7D      [24] 2491 	mov	_txdata_PARM_4,#_buildname
   1FA9 75 32 37      [24] 2492 	mov	(_txdata_PARM_4 + 1),#(_buildname >> 8)
   1FAC 85 38 2E      [24] 2493 	mov	_txdata_PARM_2,_processOUTEP5_sloc2_1_0
   1FAF 75 2F 0F      [24] 2494 	mov	_txdata_PARM_3,#0x0F
   1FB2 75 30 00      [24] 2495 	mov	(_txdata_PARM_3 + 1),#0x00
   1FB5 85 3A 82      [24] 2496 	mov	dpl,_processOUTEP5_sloc3_1_0
   1FB8 12 1C 0B      [24] 2497 	lcall	_txdata
                           2498 ;	cc1110_spicom.c:461: break;
   1FBB 02 20 FF      [24] 2499 	ljmp	00128$
                           2500 ;	cc1110_spicom.c:463: case CMD_COMPILER:
   1FBE                    2501 00116$:
                           2502 ;	cc1110_spicom.c:464: txdata(ep5.OUTapp, ep5.OUTcmd, sizeof(sdccver), (__xdata u8*)&sdccver[0]);
   1FBE 75 31 74      [24] 2503 	mov	_txdata_PARM_4,#_sdccver
   1FC1 75 32 37      [24] 2504 	mov	(_txdata_PARM_4 + 1),#(_sdccver >> 8)
   1FC4 85 38 2E      [24] 2505 	mov	_txdata_PARM_2,_processOUTEP5_sloc2_1_0
   1FC7 75 2F 09      [24] 2506 	mov	_txdata_PARM_3,#0x09
   1FCA 75 30 00      [24] 2507 	mov	(_txdata_PARM_3 + 1),#0x00
   1FCD 85 3A 82      [24] 2508 	mov	dpl,_processOUTEP5_sloc3_1_0
   1FD0 12 1C 0B      [24] 2509 	lcall	_txdata
                           2510 ;	cc1110_spicom.c:465: break;
   1FD3 02 20 FF      [24] 2511 	ljmp	00128$
                           2512 ;	cc1110_spicom.c:467: case CMD_RFMODE:
   1FD6                    2513 00117$:
                           2514 ;	cc1110_spicom.c:468: switch (*ptr++)
   1FD6 8C 82         [24] 2515 	mov	dpl,r4
   1FD8 8D 83         [24] 2516 	mov	dph,r5
   1FDA 8E F0         [24] 2517 	mov	b,r6
   1FDC 12 35 6B      [24] 2518 	lcall	__gptrget
   1FDF FB            [12] 2519 	mov	r3,a
   1FE0 74 01         [12] 2520 	mov	a,#0x01
   1FE2 2C            [12] 2521 	add	a,r4
   1FE3 F9            [12] 2522 	mov	r1,a
   1FE4 E4            [12] 2523 	clr	a
   1FE5 3D            [12] 2524 	addc	a,r5
   1FE6 FA            [12] 2525 	mov	r2,a
   1FE7 BB 02 02      [24] 2526 	cjne	r3,#0x02,00212$
   1FEA 80 0A         [24] 2527 	sjmp	00118$
   1FEC                    2528 00212$:
   1FEC BB 03 02      [24] 2529 	cjne	r3,#0x03,00213$
   1FEF 80 21         [24] 2530 	sjmp	00120$
   1FF1                    2531 00213$:
                           2532 ;	cc1110_spicom.c:470: case RFST_SRX:
   1FF1 BB 04 29      [24] 2533 	cjne	r3,#0x04,00121$
   1FF4 80 0D         [24] 2534 	sjmp	00119$
   1FF6                    2535 00118$:
                           2536 ;	cc1110_spicom.c:471: RxMode();
   1FF6 C0 02         [24] 2537 	push	ar2
   1FF8 C0 01         [24] 2538 	push	ar1
   1FFA 12 22 F6      [24] 2539 	lcall	_RxMode
   1FFD D0 01         [24] 2540 	pop	ar1
   1FFF D0 02         [24] 2541 	pop	ar2
                           2542 ;	cc1110_spicom.c:472: break;
                           2543 ;	cc1110_spicom.c:473: case RFST_SIDLE:
   2001 80 1A         [24] 2544 	sjmp	00121$
   2003                    2545 00119$:
                           2546 ;	cc1110_spicom.c:474: LED = 0;
   2003 C2 A4         [12] 2547 	clr	_P2_4
                           2548 ;	cc1110_spicom.c:475: IdleMode();
   2005 C0 02         [24] 2549 	push	ar2
   2007 C0 01         [24] 2550 	push	ar1
   2009 12 23 3A      [24] 2551 	lcall	_IdleMode
   200C D0 01         [24] 2552 	pop	ar1
   200E D0 02         [24] 2553 	pop	ar2
                           2554 ;	cc1110_spicom.c:476: break;
                           2555 ;	cc1110_spicom.c:477: case RFST_STX:
   2010 80 0B         [24] 2556 	sjmp	00121$
   2012                    2557 00120$:
                           2558 ;	cc1110_spicom.c:478: TxMode();
   2012 C0 02         [24] 2559 	push	ar2
   2014 C0 01         [24] 2560 	push	ar1
   2016 12 23 13      [24] 2561 	lcall	_TxMode
   2019 D0 01         [24] 2562 	pop	ar1
   201B D0 02         [24] 2563 	pop	ar2
                           2564 ;	cc1110_spicom.c:480: }
   201D                    2565 00121$:
                           2566 ;	cc1110_spicom.c:482: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   201D 90 F9 4E      [24] 2567 	mov	dptr,#(_ep5 + 0x000a)
   2020 E0            [24] 2568 	movx	a,@dptr
   2021 FB            [12] 2569 	mov	r3,a
   2022 90 F9 4F      [24] 2570 	mov	dptr,#(_ep5 + 0x000b)
   2025 E0            [24] 2571 	movx	a,@dptr
   2026 F5 2E         [12] 2572 	mov	_txdata_PARM_2,a
   2028 90 F9 4C      [24] 2573 	mov	dptr,#(_ep5 + 0x0008)
   202B E0            [24] 2574 	movx	a,@dptr
   202C F5 2F         [12] 2575 	mov	_txdata_PARM_3,a
   202E A3            [24] 2576 	inc	dptr
   202F E0            [24] 2577 	movx	a,@dptr
   2030 F5 30         [12] 2578 	mov	(_txdata_PARM_3 + 1),a
   2032 89 31         [24] 2579 	mov	_txdata_PARM_4,r1
   2034 8A 32         [24] 2580 	mov	(_txdata_PARM_4 + 1),r2
   2036 8B 82         [24] 2581 	mov	dpl,r3
   2038 12 1C 0B      [24] 2582 	lcall	_txdata
                           2583 ;	cc1110_spicom.c:483: break;
   203B 02 20 FF      [24] 2584 	ljmp	00128$
                           2585 ;	cc1110_spicom.c:485: case CMD_PARTNUM:
   203E                    2586 00122$:
                           2587 ;	cc1110_spicom.c:486: ep5.OUTbytesleft = 1;
   203E 90 F9 50      [24] 2588 	mov	dptr,#(_ep5 + 0x000c)
   2041 74 01         [12] 2589 	mov	a,#0x01
   2043 F0            [24] 2590 	movx	@dptr,a
   2044 E4            [12] 2591 	clr	a
   2045 A3            [24] 2592 	inc	dptr
   2046 F0            [24] 2593 	movx	@dptr,a
                           2594 ;	cc1110_spicom.c:488: ptr = (__xdata u8*) &PARTNUM;
   2047 75 31 36      [24] 2595 	mov	_txdata_PARM_4,#_PARTNUM
   204A 75 32 DF      [24] 2596 	mov	(_txdata_PARM_4 + 1),#(_PARTNUM >> 8)
                           2597 ;	cc1110_spicom.c:490: txdata(ep5.OUTapp, ep5.OUTcmd, ep5.OUTbytesleft, ptr);
   204D 90 F9 4E      [24] 2598 	mov	dptr,#(_ep5 + 0x000a)
   2050 E0            [24] 2599 	movx	a,@dptr
   2051 FB            [12] 2600 	mov	r3,a
   2052 90 F9 4F      [24] 2601 	mov	dptr,#(_ep5 + 0x000b)
   2055 E0            [24] 2602 	movx	a,@dptr
   2056 F5 2E         [12] 2603 	mov	_txdata_PARM_2,a
   2058 90 F9 50      [24] 2604 	mov	dptr,#(_ep5 + 0x000c)
   205B E0            [24] 2605 	movx	a,@dptr
   205C F5 2F         [12] 2606 	mov	_txdata_PARM_3,a
   205E A3            [24] 2607 	inc	dptr
   205F E0            [24] 2608 	movx	a,@dptr
   2060 F5 30         [12] 2609 	mov	(_txdata_PARM_3 + 1),a
   2062 8B 82         [24] 2610 	mov	dpl,r3
   2064 12 1C 0B      [24] 2611 	lcall	_txdata
                           2612 ;	cc1110_spicom.c:491: ep5.OUTbytesleft = 0;
   2067 90 F9 50      [24] 2613 	mov	dptr,#(_ep5 + 0x000c)
   206A E4            [12] 2614 	clr	a
   206B F0            [24] 2615 	movx	@dptr,a
   206C E4            [12] 2616 	clr	a
   206D A3            [24] 2617 	inc	dptr
   206E F0            [24] 2618 	movx	@dptr,a
                           2619 ;	cc1110_spicom.c:492: break;
   206F 02 20 FF      [24] 2620 	ljmp	00128$
                           2621 ;	cc1110_spicom.c:494: case CMD_RESET:
   2072                    2622 00123$:
                           2623 ;	cc1110_spicom.c:495: if (strncmp(ptr, "RESET_NOW", 9))
   2072 8C 02         [24] 2624 	mov	ar2,r4
   2074 8D 03         [24] 2625 	mov	ar3,r5
   2076 8B 01         [24] 2626 	mov	ar1,r3
   2078 7B 00         [12] 2627 	mov	r3,#0x00
   207A 90 FD BB      [24] 2628 	mov	dptr,#_strncmp_PARM_2
   207D 74 9A         [12] 2629 	mov	a,#__str_1
   207F F0            [24] 2630 	movx	@dptr,a
   2080 74 37         [12] 2631 	mov	a,#(__str_1 >> 8)
   2082 A3            [24] 2632 	inc	dptr
   2083 F0            [24] 2633 	movx	@dptr,a
   2084 74 80         [12] 2634 	mov	a,#0x80
   2086 A3            [24] 2635 	inc	dptr
   2087 F0            [24] 2636 	movx	@dptr,a
   2088 75 14 09      [24] 2637 	mov	_strncmp_PARM_3,#0x09
   208B 75 15 00      [24] 2638 	mov	(_strncmp_PARM_3 + 1),#0x00
   208E 8A 82         [24] 2639 	mov	dpl,r2
   2090 89 83         [24] 2640 	mov	dph,r1
   2092 8B F0         [24] 2641 	mov	b,r3
   2094 C0 06         [24] 2642 	push	ar6
   2096 C0 05         [24] 2643 	push	ar5
   2098 C0 04         [24] 2644 	push	ar4
   209A 12 2E 12      [24] 2645 	lcall	_strncmp
   209D E5 82         [12] 2646 	mov	a,dpl
   209F 85 83 F0      [24] 2647 	mov	b,dph
   20A2 D0 04         [24] 2648 	pop	ar4
   20A4 D0 05         [24] 2649 	pop	ar5
   20A6 D0 06         [24] 2650 	pop	ar6
   20A8 45 F0         [12] 2651 	orl	a,b
   20AA 70 53         [24] 2652 	jnz	00128$
                           2653 ;	cc1110_spicom.c:499: WDCTL = 0x80;   // Watchdog ENABLE, Watchdog mode, 1s until reset
   20AC 75 C9 80      [24] 2654 	mov	_WDCTL,#0x80
                           2655 ;	cc1110_spicom.c:501: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   20AF 90 F9 4E      [24] 2656 	mov	dptr,#(_ep5 + 0x000a)
   20B2 E0            [24] 2657 	movx	a,@dptr
   20B3 FB            [12] 2658 	mov	r3,a
   20B4 90 F9 4F      [24] 2659 	mov	dptr,#(_ep5 + 0x000b)
   20B7 E0            [24] 2660 	movx	a,@dptr
   20B8 F5 2E         [12] 2661 	mov	_txdata_PARM_2,a
   20BA 90 F9 4C      [24] 2662 	mov	dptr,#(_ep5 + 0x0008)
   20BD E0            [24] 2663 	movx	a,@dptr
   20BE F5 2F         [12] 2664 	mov	_txdata_PARM_3,a
   20C0 A3            [24] 2665 	inc	dptr
   20C1 E0            [24] 2666 	movx	a,@dptr
   20C2 F5 30         [12] 2667 	mov	(_txdata_PARM_3 + 1),a
   20C4 8C 31         [24] 2668 	mov	_txdata_PARM_4,r4
   20C6 8D 32         [24] 2669 	mov	(_txdata_PARM_4 + 1),r5
   20C8 8B 82         [24] 2670 	mov	dpl,r3
   20CA 12 1C 0B      [24] 2671 	lcall	_txdata
                           2672 ;	cc1110_spicom.c:502: break;
                           2673 ;	cc1110_spicom.c:504: case CMD_CLEAR_CODES:
   20CD 80 30         [24] 2674 	sjmp	00128$
   20CF                    2675 00126$:
                           2676 ;	cc1110_spicom.c:505: lastCode[0] = 0;
   20CF 90 FD B5      [24] 2677 	mov	dptr,#_lastCode
                           2678 ;	cc1110_spicom.c:506: lastCode[1] = 0;
   20D2 E4            [12] 2679 	clr	a
   20D3 F0            [24] 2680 	movx	@dptr,a
   20D4 90 FD B6      [24] 2681 	mov	dptr,#(_lastCode + 0x0001)
   20D7 F0            [24] 2682 	movx	@dptr,a
                           2683 ;	cc1110_spicom.c:508: appReturn(2, ptr);
   20D8 90 F9 59      [24] 2684 	mov	dptr,#_appReturn_PARM_2
   20DB EC            [12] 2685 	mov	a,r4
   20DC F0            [24] 2686 	movx	@dptr,a
   20DD ED            [12] 2687 	mov	a,r5
   20DE A3            [24] 2688 	inc	dptr
   20DF F0            [24] 2689 	movx	@dptr,a
   20E0 75 82 02      [24] 2690 	mov	dpl,#0x02
   20E3 12 1C 5E      [24] 2691 	lcall	_appReturn
                           2692 ;	cc1110_spicom.c:509: break;
                           2693 ;	cc1110_spicom.c:511: default:
   20E6 80 17         [24] 2694 	sjmp	00128$
   20E8                    2695 00127$:
                           2696 ;	cc1110_spicom.c:512: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   20E8 90 F9 4C      [24] 2697 	mov	dptr,#(_ep5 + 0x0008)
   20EB E0            [24] 2698 	movx	a,@dptr
   20EC F5 2F         [12] 2699 	mov	_txdata_PARM_3,a
   20EE A3            [24] 2700 	inc	dptr
   20EF E0            [24] 2701 	movx	a,@dptr
   20F0 F5 30         [12] 2702 	mov	(_txdata_PARM_3 + 1),a
   20F2 85 38 2E      [24] 2703 	mov	_txdata_PARM_2,_processOUTEP5_sloc2_1_0
   20F5 8C 31         [24] 2704 	mov	_txdata_PARM_4,r4
   20F7 8D 32         [24] 2705 	mov	(_txdata_PARM_4 + 1),r5
   20F9 85 3A 82      [24] 2706 	mov	dpl,_processOUTEP5_sloc3_1_0
   20FC 12 1C 0B      [24] 2707 	lcall	_txdata
                           2708 ;	cc1110_spicom.c:513: }
   20FF                    2709 00128$:
                           2710 ;	cc1110_spicom.c:515: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   20FF 90 F9 52      [24] 2711 	mov	dptr,#(_ep5 + 0x000e)
   2102 E0            [24] 2712 	movx	a,@dptr
   2103 54 FD         [12] 2713 	anl	a,#0xFD
   2105 F0            [24] 2714 	movx	@dptr,a
   2106 22            [24] 2715 	ret
   2107                    2716 00135$:
                           2717 ;	cc1110_spicom.c:519: if (cb_ep5)
   2107 E5 2C         [12] 2718 	mov	a,_cb_ep5
   2109 45 2D         [12] 2719 	orl	a,(_cb_ep5 + 1)
   210B 60 19         [24] 2720 	jz	00132$
                           2721 ;	cc1110_spicom.c:521: if (! cb_ep5())
   210D 85 2C 82      [24] 2722 	mov	dpl,_cb_ep5
   2110 85 2D 83      [24] 2723 	mov	dph,(_cb_ep5 + 1)
   2113 12 00 89      [24] 2724 	lcall	__sdcc_call_dptr
   2116 AD 82         [24] 2725 	mov	r5,dpl
   2118 AE 83         [24] 2726 	mov	r6,dph
   211A ED            [12] 2727 	mov	a,r5
   211B 4E            [12] 2728 	orl	a,r6
   211C 70 10         [24] 2729 	jnz	00143$
                           2730 ;	cc1110_spicom.c:525: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   211E 90 F9 52      [24] 2731 	mov	dptr,#(_ep5 + 0x000e)
   2121 E0            [24] 2732 	movx	a,@dptr
   2122 54 FD         [12] 2733 	anl	a,#0xFD
   2124 F0            [24] 2734 	movx	@dptr,a
   2125 22            [24] 2735 	ret
   2126                    2736 00132$:
                           2737 ;	cc1110_spicom.c:530: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   2126 53 07 FD      [24] 2738 	anl	ar7,#0xFD
   2129 90 F9 52      [24] 2739 	mov	dptr,#(_ep5 + 0x000e)
   212C EF            [12] 2740 	mov	a,r7
   212D F0            [24] 2741 	movx	@dptr,a
   212E                    2742 00143$:
   212E 22            [24] 2743 	ret
                           2744 	.area CSEG    (CODE)
                           2745 	.area CONST   (CODE)
   3774                    2746 _sdccver:
   3774 53 44 43 43 76 33  2747 	.ascii "SDCCv330"
        33 30
   377C 00                 2748 	.db 0x00
   377D                    2749 _buildname:
   377D 45                 2750 	.db #0x45	; 69	'E'
   377E 58                 2751 	.db #0x58	; 88	'X'
   377F 50                 2752 	.db #0x50	; 80	'P'
   3780 4C                 2753 	.db #0x4C	; 76	'L'
   3781 4F                 2754 	.db #0x4F	; 79	'O'
   3782 52                 2755 	.db #0x52	; 82	'R'
   3783 45                 2756 	.db #0x45	; 69	'E'
   3784 52                 2757 	.db #0x52	; 82	'R'
   3785 20                 2758 	.db #0x20	; 32
   3786 72                 2759 	.db #0x72	; 114	'r'
   3787 35                 2760 	.db #0x35	; 53	'5'
   3788 35                 2761 	.db #0x35	; 53	'5'
   3789 33                 2762 	.db #0x33	; 51	'3'
   378A 35                 2763 	.db #0x35	; 53	'5'
   378B 00                 2764 	.db #0x00	; 0
   378C                    2765 __str_0:
   378C 55 4E 49 4D 50 4C  2766 	.ascii "UNIMPLEMENTED"
        45 4D 45 4E 54 45
        44
   3799 00                 2767 	.db 0x00
   379A                    2768 __str_1:
   379A 52 45 53 45 54 5F  2769 	.ascii "RESET_NOW"
        4E 4F 57
   37A3 00                 2770 	.db 0x00
                           2771 	.area XINIT   (CODE)
                           2772 	.area CABS    (ABS,CODE)
