                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Fri Dec 16 14:02:34 2016
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
   0035                     802 	.ds 2
   0037                     803 _processOUTEP5_sloc1_1_0:
   0037                     804 	.ds 2
   0039                     805 _processOUTEP5_sloc2_1_0:
   0039                     806 	.ds 2
                            807 ;--------------------------------------------------------
                            808 ; overlayable items in internal ram 
                            809 ;--------------------------------------------------------
                            810 	.area	OSEG    (OVR,DATA)
                            811 	.area	OSEG    (OVR,DATA)
                            812 	.area	OSEG    (OVR,DATA)
                            813 ;--------------------------------------------------------
                            814 ; indirectly addressable internal ram data
                            815 ;--------------------------------------------------------
                            816 	.area ISEG    (DATA)
                            817 ;--------------------------------------------------------
                            818 ; absolute internal ram data
                            819 ;--------------------------------------------------------
                            820 	.area IABS    (ABS,DATA)
                            821 	.area IABS    (ABS,DATA)
                            822 ;--------------------------------------------------------
                            823 ; bit data
                            824 ;--------------------------------------------------------
                            825 	.area BSEG    (BIT)
                            826 ;--------------------------------------------------------
                            827 ; paged external ram data
                            828 ;--------------------------------------------------------
                            829 	.area PSEG    (PAG,XDATA)
                            830 ;--------------------------------------------------------
                            831 ; external ram data
                            832 ;--------------------------------------------------------
                            833 	.area XSEG    (XDATA)
                     DF02   834 _MDMCTRL0H	=	0xdf02
                     DF00   835 _SYNC1	=	0xdf00
                     DF01   836 _SYNC0	=	0xdf01
                     DF02   837 _PKTLEN	=	0xdf02
                     DF03   838 _PKTCTRL1	=	0xdf03
                     DF04   839 _PKTCTRL0	=	0xdf04
                     DF05   840 _ADDR	=	0xdf05
                     DF06   841 _CHANNR	=	0xdf06
                     DF07   842 _FSCTRL1	=	0xdf07
                     DF08   843 _FSCTRL0	=	0xdf08
                     DF09   844 _FREQ2	=	0xdf09
                     DF0A   845 _FREQ1	=	0xdf0a
                     DF0B   846 _FREQ0	=	0xdf0b
                     DF0C   847 _MDMCFG4	=	0xdf0c
                     DF0D   848 _MDMCFG3	=	0xdf0d
                     DF0E   849 _MDMCFG2	=	0xdf0e
                     DF0F   850 _MDMCFG1	=	0xdf0f
                     DF10   851 _MDMCFG0	=	0xdf10
                     DF11   852 _DEVIATN	=	0xdf11
                     DF12   853 _MCSM2	=	0xdf12
                     DF13   854 _MCSM1	=	0xdf13
                     DF14   855 _MCSM0	=	0xdf14
                     DF15   856 _FOCCFG	=	0xdf15
                     DF16   857 _BSCFG	=	0xdf16
                     DF17   858 _AGCCTRL2	=	0xdf17
                     DF18   859 _AGCCTRL1	=	0xdf18
                     DF19   860 _AGCCTRL0	=	0xdf19
                     DF1A   861 _FREND1	=	0xdf1a
                     DF1B   862 _FREND0	=	0xdf1b
                     DF1C   863 _FSCAL3	=	0xdf1c
                     DF1D   864 _FSCAL2	=	0xdf1d
                     DF1E   865 _FSCAL1	=	0xdf1e
                     DF1F   866 _FSCAL0	=	0xdf1f
                     DF20   867 __XREGDF20	=	0xdf20
                     DF21   868 __XREGDF21	=	0xdf21
                     DF22   869 __XREGDF22	=	0xdf22
                     DF23   870 _TEST2	=	0xdf23
                     DF24   871 _TEST1	=	0xdf24
                     DF25   872 _TEST0	=	0xdf25
                     DF26   873 __XREGDF26	=	0xdf26
                     DF27   874 _PA_TABLE7	=	0xdf27
                     DF28   875 _PA_TABLE6	=	0xdf28
                     DF29   876 _PA_TABLE5	=	0xdf29
                     DF2A   877 _PA_TABLE4	=	0xdf2a
                     DF2B   878 _PA_TABLE3	=	0xdf2b
                     DF2C   879 _PA_TABLE2	=	0xdf2c
                     DF2D   880 _PA_TABLE1	=	0xdf2d
                     DF2E   881 _PA_TABLE0	=	0xdf2e
                     DF2F   882 _IOCFG2	=	0xdf2f
                     DF30   883 _IOCFG1	=	0xdf30
                     DF31   884 _IOCFG0	=	0xdf31
                     DF32   885 __XREGDF32	=	0xdf32
                     DF33   886 __XREGDF33	=	0xdf33
                     DF34   887 __XREGDF34	=	0xdf34
                     DF35   888 __XREGDF35	=	0xdf35
                     DF36   889 _PARTNUM	=	0xdf36
                     DF37   890 _VERSION	=	0xdf37
                     DF38   891 _FREQEST	=	0xdf38
                     DF39   892 _LQI	=	0xdf39
                     DF3A   893 _RSSI	=	0xdf3a
                     DF3B   894 _MARCSTATE	=	0xdf3b
                     DF3C   895 _PKTSTATUS	=	0xdf3c
                     DF3D   896 _VCO_VC_DAC	=	0xdf3d
                     DF40   897 _I2SCFG0	=	0xdf40
                     DF41   898 _I2SCFG1	=	0xdf41
                     DF42   899 _I2SDATL	=	0xdf42
                     DF43   900 _I2SDATH	=	0xdf43
                     DF44   901 _I2SWCNT	=	0xdf44
                     DF45   902 _I2SSTAT	=	0xdf45
                     DF46   903 _I2SCLKF0	=	0xdf46
                     DF47   904 _I2SCLKF1	=	0xdf47
                     DF48   905 _I2SCLKF2	=	0xdf48
                     DF80   906 __NA_P0	=	0xdf80
                     DF81   907 __NA_SP	=	0xdf81
                     DF82   908 __NA_DPL0	=	0xdf82
                     DF83   909 __NA_DPH0	=	0xdf83
                     DF84   910 __NA_DPL1	=	0xdf84
                     DF85   911 __NA_DPH1	=	0xdf85
                     DF86   912 _X_U0CSR	=	0xdf86
                     DF87   913 __NA_PCON	=	0xdf87
                     DF88   914 __NA_TCON	=	0xdf88
                     DF89   915 _X_P0IFG	=	0xdf89
                     DF8A   916 _X_P1IFG	=	0xdf8a
                     DF8B   917 _X_P2IFG	=	0xdf8b
                     DF8C   918 _X_PICTL	=	0xdf8c
                     DF8D   919 _X_P1IEN	=	0xdf8d
                     DF8E   920 __X_SFR8E	=	0xdf8e
                     DF8F   921 _X_P0INP	=	0xdf8f
                     DF90   922 __NA_P1	=	0xdf90
                     DF91   923 _X_RFIM	=	0xdf91
                     DF92   924 __NA_DPS	=	0xdf92
                     DF93   925 _X_MPAGE	=	0xdf93
                     DF94   926 __X_SFR94	=	0xdf94
                     DF95   927 __X_SFR95	=	0xdf95
                     DF96   928 __X_SFR96	=	0xdf96
                     DF97   929 __X_SFR97	=	0xdf97
                     DF98   930 __NA_S0CON	=	0xdf98
                     DF99   931 __X_SFR99	=	0xdf99
                     DF9A   932 __NA_IEN2	=	0xdf9a
                     DF9B   933 __NA_S1CON	=	0xdf9b
                     DF9C   934 _X_T2CT	=	0xdf9c
                     DF9D   935 _X_T2PR	=	0xdf9d
                     DF9E   936 _X_T2CTL	=	0xdf9e
                     DF9F   937 __X_SFR9F	=	0xdf9f
                     DFA0   938 __NA_P2	=	0xdfa0
                     DFA1   939 _X_WORIRQ	=	0xdfa1
                     DFA2   940 _X_WORCTRL	=	0xdfa2
                     DFA3   941 _X_WOREVT0	=	0xdfa3
                     DFA4   942 _X_WOREVT1	=	0xdfa4
                     DFA5   943 _X_WORTIME0	=	0xdfa5
                     DFA6   944 _X_WORTIME1	=	0xdfa6
                     DFA7   945 __X_SFRA7	=	0xdfa7
                     DFA8   946 __NA_IEN0	=	0xdfa8
                     DFA9   947 __NA_IP0	=	0xdfa9
                     DFAA   948 __X_SFRAA	=	0xdfaa
                     DFAB   949 _X_FWT	=	0xdfab
                     DFAC   950 _X_FADDRL	=	0xdfac
                     DFAD   951 _X_FADDRH	=	0xdfad
                     DFAE   952 _X_FCTL	=	0xdfae
                     DFAF   953 _X_FWDATA	=	0xdfaf
                     DFB0   954 __X_SFRB0	=	0xdfb0
                     DFB1   955 _X_ENCDI	=	0xdfb1
                     DFB2   956 _X_ENCDO	=	0xdfb2
                     DFB3   957 _X_ENCCS	=	0xdfb3
                     DFB4   958 _X_ADCCON1	=	0xdfb4
                     DFB5   959 _X_ADCCON2	=	0xdfb5
                     DFB6   960 _X_ADCCON3	=	0xdfb6
                     DFB7   961 __X_SFRB7	=	0xdfb7
                     DFB8   962 __NA_IEN1	=	0xdfb8
                     DFB9   963 __NA_IP1	=	0xdfb9
                     DFBA   964 _X_ADCL	=	0xdfba
                     DFBB   965 _X_ADCH	=	0xdfbb
                     DFBC   966 _X_RNDL	=	0xdfbc
                     DFBD   967 _X_RNDH	=	0xdfbd
                     DFBE   968 _X_SLEEP	=	0xdfbe
                     DFBF   969 __X_SFRBF	=	0xdfbf
                     DFC0   970 __NA_IRCON	=	0xdfc0
                     DFC1   971 _X_U0DBUF	=	0xdfc1
                     DFC2   972 _X_U0BAUD	=	0xdfc2
                     DFC3   973 __X_SFRC3	=	0xdfc3
                     DFC4   974 _X_U0UCR	=	0xdfc4
                     DFC5   975 _X_U0GCR	=	0xdfc5
                     DFC6   976 _X_CLKCON	=	0xdfc6
                     DFC7   977 _X_MEMCTR	=	0xdfc7
                     DFC8   978 __X_SFRC8	=	0xdfc8
                     DFC9   979 _X_WDCTL	=	0xdfc9
                     DFCA   980 _X_T3CNT	=	0xdfca
                     DFCB   981 _X_T3CTL	=	0xdfcb
                     DFCC   982 _X_T3CCTL0	=	0xdfcc
                     DFCD   983 _X_T3CC0	=	0xdfcd
                     DFCE   984 _X_T3CCTL1	=	0xdfce
                     DFCF   985 _X_T3CC1	=	0xdfcf
                     DFD0   986 __NA_PSW	=	0xdfd0
                     DFD1   987 _X_DMAIRQ	=	0xdfd1
                     DFD2   988 _X_DMA1CFGL	=	0xdfd2
                     DFD3   989 _X_DMA1CFGH	=	0xdfd3
                     DFD4   990 _X_DMA0CFGL	=	0xdfd4
                     DFD5   991 _X_DMA0CFGH	=	0xdfd5
                     DFD6   992 _X_DMAARM	=	0xdfd6
                     DFD7   993 _X_DMAREQ	=	0xdfd7
                     DFD8   994 _X_TIMIF	=	0xdfd8
                     DFD9   995 _X_RFD	=	0xdfd9
                     DFDA   996 _X_T1CC0L	=	0xdfda
                     DFDB   997 _X_T1CC0H	=	0xdfdb
                     DFDC   998 _X_T1CC1L	=	0xdfdc
                     DFDD   999 _X_T1CC1H	=	0xdfdd
                     DFDE  1000 _X_T1CC2L	=	0xdfde
                     DFDF  1001 _X_T1CC2H	=	0xdfdf
                     DFE0  1002 __NA_ACC	=	0xdfe0
                     DFE1  1003 _X_RFST	=	0xdfe1
                     DFE2  1004 _X_T1CNTL	=	0xdfe2
                     DFE3  1005 _X_T1CNTH	=	0xdfe3
                     DFE4  1006 _X_T1CTL	=	0xdfe4
                     DFE5  1007 _X_T1CCTL0	=	0xdfe5
                     DFE6  1008 _X_T1CCTL1	=	0xdfe6
                     DFE7  1009 _X_T1CCTL2	=	0xdfe7
                     DFE8  1010 __NA_IRCON2	=	0xdfe8
                     DFE9  1011 _X_RFIF	=	0xdfe9
                     DFEA  1012 _X_T4CNT	=	0xdfea
                     DFEB  1013 _X_T4CTL	=	0xdfeb
                     DFEC  1014 _X_T4CCTL0	=	0xdfec
                     DFED  1015 _X_T4CC0	=	0xdfed
                     DFEE  1016 _X_T4CCTL1	=	0xdfee
                     DFEF  1017 _X_T4CC1	=	0xdfef
                     DFF0  1018 __NA_B	=	0xdff0
                     DFF1  1019 _X_PERCFG	=	0xdff1
                     DFF2  1020 _X_ADCCFG	=	0xdff2
                     DFF3  1021 _X_P0SEL	=	0xdff3
                     DFF4  1022 _X_P1SEL	=	0xdff4
                     DFF5  1023 _X_P2SEL	=	0xdff5
                     DFF6  1024 _X_P1INP	=	0xdff6
                     DFF7  1025 _X_P2INP	=	0xdff7
                     DFF8  1026 _X_U1CSR	=	0xdff8
                     DFF9  1027 _X_U1DBUF	=	0xdff9
                     DFFA  1028 _X_U1BAUD	=	0xdffa
                     DFFB  1029 _X_U1UCR	=	0xdffb
                     DFFC  1030 _X_U1GCR	=	0xdffc
                     DFFD  1031 _X_P0DIR	=	0xdffd
                     DFFE  1032 _X_P1DIR	=	0xdffe
                     DFFF  1033 _X_P2DIR	=	0xdfff
                     DE00  1034 _USBADDR	=	0xde00
                     DE01  1035 _USBPOW	=	0xde01
                     DE02  1036 _USBIIF	=	0xde02
                     DE04  1037 _USBOIF	=	0xde04
                     DE06  1038 _USBCIF	=	0xde06
                     DE07  1039 _USBIIE	=	0xde07
                     DE09  1040 _USBOIE	=	0xde09
                     DE0B  1041 _USBCIE	=	0xde0b
                     DE0C  1042 _USBFRML	=	0xde0c
                     DE0D  1043 _USBFRMH	=	0xde0d
                     DE0E  1044 _USBINDEX	=	0xde0e
                     DE10  1045 _USBMAXI	=	0xde10
                     DE11  1046 _USBCS0	=	0xde11
                     DE11  1047 _USBCSIL	=	0xde11
                     DE12  1048 _USBCSIH	=	0xde12
                     DE13  1049 _USBMAXO	=	0xde13
                     DE14  1050 _USBCSOL	=	0xde14
                     DE15  1051 _USBCSOH	=	0xde15
                     DE16  1052 _USBCNT0	=	0xde16
                     DE16  1053 _USBCNTL	=	0xde16
                     DE17  1054 _USBCNTH	=	0xde17
                     DE20  1055 _USBF0	=	0xde20
                     DE22  1056 _USBF1	=	0xde22
                     DE24  1057 _USBF2	=	0xde24
                     DE26  1058 _USBF3	=	0xde26
                     DE28  1059 _USBF4	=	0xde28
                     DE2A  1060 _USBF5	=	0xde2a
   F588                    1061 _spi_input_buf::
   F588                    1062 	.ds 220
   F664                    1063 _spi_output_buf::
   F664                    1064 	.ds 220
   F740                    1065 _usb_ep5_OUTbuf::
   F740                    1066 	.ds 516
   F944                    1067 _ep5::
   F944                    1068 	.ds 18
   F956                    1069 _vcom_putstr_buff_1_98:
   F956                    1070 	.ds 3
   F959                    1071 _appReturn_PARM_2:
   F959                    1072 	.ds 2
   F95B                    1073 _appReturn_len_1_114:
   F95B                    1074 	.ds 1
   F95C                    1075 _processOUTEP5_ptr_1_117:
   F95C                    1076 	.ds 2
                           1077 ;--------------------------------------------------------
                           1078 ; absolute external ram data
                           1079 ;--------------------------------------------------------
                           1080 	.area XABS    (ABS,XDATA)
                           1081 ;--------------------------------------------------------
                           1082 ; external initialized ram data
                           1083 ;--------------------------------------------------------
                           1084 	.area XISEG   (XDATA)
                           1085 	.area HOME    (CODE)
                           1086 	.area GSINIT0 (CODE)
                           1087 	.area GSINIT1 (CODE)
                           1088 	.area GSINIT2 (CODE)
                           1089 	.area GSINIT3 (CODE)
                           1090 	.area GSINIT4 (CODE)
                           1091 	.area GSINIT5 (CODE)
                           1092 	.area GSINIT  (CODE)
                           1093 	.area GSFINAL (CODE)
                           1094 	.area CSEG    (CODE)
                           1095 ;--------------------------------------------------------
                           1096 ; global & static initialisations
                           1097 ;--------------------------------------------------------
                           1098 	.area HOME    (CODE)
                           1099 	.area GSINIT  (CODE)
                           1100 	.area GSFINAL (CODE)
                           1101 	.area GSINIT  (CODE)
                           1102 ;	cc1110_spicom.c:40: volatile uint8_t input_size = 0;
   00E4 75 22 00      [24] 1103 	mov	_input_size,#0x00
                           1104 ;	cc1110_spicom.c:41: volatile uint8_t input_head_idx = 0;
   00E7 75 23 00      [24] 1105 	mov	_input_head_idx,#0x00
                           1106 ;	cc1110_spicom.c:42: volatile uint8_t input_tail_idx = 0;
   00EA 75 24 00      [24] 1107 	mov	_input_tail_idx,#0x00
                           1108 ;	cc1110_spicom.c:45: volatile uint8_t output_size = 0;
   00ED 75 25 00      [24] 1109 	mov	_output_size,#0x00
                           1110 ;	cc1110_spicom.c:46: volatile uint8_t output_head_idx = 0;
   00F0 75 26 00      [24] 1111 	mov	_output_head_idx,#0x00
                           1112 ;	cc1110_spicom.c:47: volatile uint8_t output_tail_idx = 0;
   00F3 75 27 00      [24] 1113 	mov	_output_tail_idx,#0x00
                           1114 ;	cc1110_spicom.c:56: volatile uint8_t master_send_size = 0;
   00F6 75 2A 00      [24] 1115 	mov	_master_send_size,#0x00
                           1116 ;	cc1110_spicom.c:57: volatile uint8_t slave_send_size = 0;
   00F9 75 2B 00      [24] 1117 	mov	_slave_send_size,#0x00
                           1118 ;--------------------------------------------------------
                           1119 ; Home
                           1120 ;--------------------------------------------------------
                           1121 	.area HOME    (CODE)
                           1122 	.area HOME    (CODE)
                           1123 ;--------------------------------------------------------
                           1124 ; code
                           1125 ;--------------------------------------------------------
                           1126 	.area CSEG    (CODE)
                           1127 ;------------------------------------------------------------
                           1128 ;Allocation info for local variables in function 'rx1_isr'
                           1129 ;------------------------------------------------------------
                           1130 ;value                     Allocated to registers r7 
                           1131 ;------------------------------------------------------------
                           1132 ;	cc1110_spicom.c:89: void rx1_isr(void) __interrupt URX1_VECTOR {
                           1133 ;	-----------------------------------------
                           1134 ;	 function rx1_isr
                           1135 ;	-----------------------------------------
   1915                    1136 _rx1_isr:
                     0007  1137 	ar7 = 0x07
                     0006  1138 	ar6 = 0x06
                     0005  1139 	ar5 = 0x05
                     0004  1140 	ar4 = 0x04
                     0003  1141 	ar3 = 0x03
                     0002  1142 	ar2 = 0x02
                     0001  1143 	ar1 = 0x01
                     0000  1144 	ar0 = 0x00
   1915 C0 21         [24] 1145 	push	bits
   1917 C0 E0         [24] 1146 	push	acc
   1919 C0 F0         [24] 1147 	push	b
   191B C0 82         [24] 1148 	push	dpl
   191D C0 83         [24] 1149 	push	dph
   191F C0 07         [24] 1150 	push	(0+7)
   1921 C0 06         [24] 1151 	push	(0+6)
   1923 C0 05         [24] 1152 	push	(0+5)
   1925 C0 04         [24] 1153 	push	(0+4)
   1927 C0 03         [24] 1154 	push	(0+3)
   1929 C0 02         [24] 1155 	push	(0+2)
   192B C0 01         [24] 1156 	push	(0+1)
   192D C0 00         [24] 1157 	push	(0+0)
   192F C0 D0         [24] 1158 	push	psw
   1931 75 D0 00      [24] 1159 	mov	psw,#0x00
                           1160 ;	cc1110_spicom.c:91: value = U1DBUF;
   1934 AF F9         [24] 1161 	mov	r7,_U1DBUF
                           1162 ;	cc1110_spicom.c:93: if (spi_mode == SPI_MODE_WAIT && value == 0x99) {
   1936 E5 29         [12] 1163 	mov	a,_spi_mode
   1938 70 0F         [24] 1164 	jnz	00102$
   193A BF 99 0C      [24] 1165 	cjne	r7,#0x99,00102$
                           1166 ;	cc1110_spicom.c:94: slave_send_size = output_size;
   193D 85 25 2B      [24] 1167 	mov	_slave_send_size,_output_size
                           1168 ;	cc1110_spicom.c:96: spi_mode = SPI_MODE_SIZE;
   1940 75 29 01      [24] 1169 	mov	_spi_mode,#0x01
                           1170 ;	cc1110_spicom.c:97: U1DBUF = slave_send_size;
   1943 85 2B F9      [24] 1171 	mov	_U1DBUF,_slave_send_size
                           1172 ;	cc1110_spicom.c:98: return;
   1946 02 19 F3      [24] 1173 	ljmp	00126$
   1949                    1174 00102$:
                           1175 ;	cc1110_spicom.c:101: if (spi_mode == SPI_MODE_SIZE) {
   1949 74 01         [12] 1176 	mov	a,#0x01
   194B B5 29 2C      [24] 1177 	cjne	a,_spi_mode,00109$
                           1178 ;	cc1110_spicom.c:102: master_send_size = value;
   194E 8F 2A         [24] 1179 	mov	_master_send_size,r7
                           1180 ;	cc1110_spicom.c:103: input_size = 0;
   1950 75 22 00      [24] 1181 	mov	_input_size,#0x00
                           1182 ;	cc1110_spicom.c:104: ep5.OUTlen = value - 2; // first two bytes are app and cmd
   1953 8F 05         [24] 1183 	mov	ar5,r7
   1955 7E 00         [12] 1184 	mov	r6,#0x00
   1957 ED            [12] 1185 	mov	a,r5
   1958 24 FE         [12] 1186 	add	a,#0xFE
   195A FD            [12] 1187 	mov	r5,a
   195B EE            [12] 1188 	mov	a,r6
   195C 34 FF         [12] 1189 	addc	a,#0xFF
   195E FE            [12] 1190 	mov	r6,a
   195F 90 F9 4C      [24] 1191 	mov	dptr,#(_ep5 + 0x0008)
   1962 ED            [12] 1192 	mov	a,r5
   1963 F0            [24] 1193 	movx	@dptr,a
   1964 EE            [12] 1194 	mov	a,r6
   1965 A3            [24] 1195 	inc	dptr
   1966 F0            [24] 1196 	movx	@dptr,a
                           1197 ;	cc1110_spicom.c:105: if (master_send_size > 0 || slave_send_size > 0) {
   1967 E5 2A         [12] 1198 	mov	a,_master_send_size
   1969 70 04         [24] 1199 	jnz	00104$
   196B E5 2B         [12] 1200 	mov	a,_slave_send_size
   196D 60 05         [24] 1201 	jz	00105$
   196F                    1202 00104$:
                           1203 ;	cc1110_spicom.c:106: spi_mode = SPI_MODE_XFER;
   196F 75 29 02      [24] 1204 	mov	_spi_mode,#0x02
   1972 80 03         [24] 1205 	sjmp	00106$
   1974                    1206 00105$:
                           1207 ;	cc1110_spicom.c:108: spi_mode = SPI_MODE_WAIT;
   1974 75 29 00      [24] 1208 	mov	_spi_mode,#0x00
   1977                    1209 00106$:
                           1210 ;	cc1110_spicom.c:110: return;
   1977 02 19 F3      [24] 1211 	ljmp	00126$
   197A                    1212 00109$:
                           1213 ;	cc1110_spicom.c:113: if (spi_mode == SPI_MODE_XFER && input_size < master_send_size) {
   197A 74 02         [12] 1214 	mov	a,#0x02
   197C B5 29 02      [24] 1215 	cjne	a,_spi_mode,00171$
   197F 80 03         [24] 1216 	sjmp	00172$
   1981                    1217 00171$:
   1981 02 19 F3      [24] 1218 	ljmp	00126$
   1984                    1219 00172$:
   1984 C3            [12] 1220 	clr	c
   1985 E5 22         [12] 1221 	mov	a,_input_size
   1987 95 2A         [12] 1222 	subb	a,_master_send_size
   1989 50 68         [24] 1223 	jnc	00126$
                           1224 ;	cc1110_spicom.c:114: if (input_size == 0) {
   198B E5 22         [12] 1225 	mov	a,_input_size
   198D 70 07         [24] 1226 	jnz	00114$
                           1227 ;	cc1110_spicom.c:116: ep5.OUTapp = value;
   198F 90 F9 4E      [24] 1228 	mov	dptr,#(_ep5 + 0x000a)
   1992 EF            [12] 1229 	mov	a,r7
   1993 F0            [24] 1230 	movx	@dptr,a
   1994 80 33         [24] 1231 	sjmp	00115$
   1996                    1232 00114$:
                           1233 ;	cc1110_spicom.c:118: } else if (input_size == 1) {
   1996 74 01         [12] 1234 	mov	a,#0x01
   1998 B5 22 07      [24] 1235 	cjne	a,_input_size,00111$
                           1236 ;	cc1110_spicom.c:120: ep5.OUTcmd = value;
   199B 90 F9 4F      [24] 1237 	mov	dptr,#(_ep5 + 0x000b)
   199E EF            [12] 1238 	mov	a,r7
   199F F0            [24] 1239 	movx	@dptr,a
   19A0 80 27         [24] 1240 	sjmp	00115$
   19A2                    1241 00111$:
                           1242 ;	cc1110_spicom.c:124: ep5.OUTbuf[input_size - 2] = value;
   19A2 90 F9 49      [24] 1243 	mov	dptr,#(_ep5 + 0x0005)
   19A5 E0            [24] 1244 	movx	a,@dptr
   19A6 FC            [12] 1245 	mov	r4,a
   19A7 A3            [24] 1246 	inc	dptr
   19A8 E0            [24] 1247 	movx	a,@dptr
   19A9 FD            [12] 1248 	mov	r5,a
   19AA A3            [24] 1249 	inc	dptr
   19AB E0            [24] 1250 	movx	a,@dptr
   19AC FE            [12] 1251 	mov	r6,a
   19AD AA 22         [24] 1252 	mov	r2,_input_size
   19AF 7B 00         [12] 1253 	mov	r3,#0x00
   19B1 EA            [12] 1254 	mov	a,r2
   19B2 24 FE         [12] 1255 	add	a,#0xFE
   19B4 FA            [12] 1256 	mov	r2,a
   19B5 EB            [12] 1257 	mov	a,r3
   19B6 34 FF         [12] 1258 	addc	a,#0xFF
   19B8 FB            [12] 1259 	mov	r3,a
   19B9 EA            [12] 1260 	mov	a,r2
   19BA 2C            [12] 1261 	add	a,r4
   19BB FC            [12] 1262 	mov	r4,a
   19BC EB            [12] 1263 	mov	a,r3
   19BD 3D            [12] 1264 	addc	a,r5
   19BE FD            [12] 1265 	mov	r5,a
   19BF 8C 82         [24] 1266 	mov	dpl,r4
   19C1 8D 83         [24] 1267 	mov	dph,r5
   19C3 8E F0         [24] 1268 	mov	b,r6
   19C5 EF            [12] 1269 	mov	a,r7
   19C6 12 33 EC      [24] 1270 	lcall	__gptrput
   19C9                    1271 00115$:
                           1272 ;	cc1110_spicom.c:126: input_size++;
   19C9 05 22         [12] 1273 	inc	_input_size
                           1274 ;	cc1110_spicom.c:127: if (input_size == master_send_size) {
   19CB E5 2A         [12] 1275 	mov	a,_master_send_size
   19CD B5 22 06      [24] 1276 	cjne	a,_input_size,00117$
                           1277 ;	cc1110_spicom.c:128: master_send_size = 0;
   19D0 75 2A 00      [24] 1278 	mov	_master_send_size,#0x00
                           1279 ;	cc1110_spicom.c:129: serial_data_available = 1;
   19D3 75 28 01      [24] 1280 	mov	_serial_data_available,#0x01
   19D6                    1281 00117$:
                           1282 ;	cc1110_spicom.c:131: if (slave_send_size == 0 && master_send_size == 0) {
   19D6 E5 2B         [12] 1283 	mov	a,_slave_send_size
   19D8 70 06         [24] 1284 	jnz	00119$
   19DA E5 2A         [12] 1285 	mov	a,_master_send_size
                           1286 ;	cc1110_spicom.c:132: spi_mode = SPI_MODE_WAIT;
   19DC 70 02         [24] 1287 	jnz	00119$
   19DE F5 29         [12] 1288 	mov	_spi_mode,a
   19E0                    1289 00119$:
                           1290 ;	cc1110_spicom.c:135: if (serial_data_available)
   19E0 E5 28         [12] 1291 	mov	a,_serial_data_available
   19E2 60 0F         [24] 1292 	jz	00126$
                           1293 ;	cc1110_spicom.c:137: ep5.flags |= EP_OUTBUF_WRITTEN;
   19E4 90 F9 52      [24] 1294 	mov	dptr,#(_ep5 + 0x000e)
   19E7 E0            [24] 1295 	movx	a,@dptr
   19E8 44 02         [12] 1296 	orl	a,#0x02
   19EA F0            [24] 1297 	movx	@dptr,a
                           1298 ;	cc1110_spicom.c:138: LED_RED = 1;
   19EB D2 A3         [12] 1299 	setb	_P2_3
                           1300 ;	cc1110_spicom.c:139: processOUTEP5();
   19ED 12 1C 90      [24] 1301 	lcall	_processOUTEP5
                           1302 ;	cc1110_spicom.c:141: serial_data_available = 0;
   19F0 75 28 00      [24] 1303 	mov	_serial_data_available,#0x00
   19F3                    1304 00126$:
   19F3 D0 D0         [24] 1305 	pop	psw
   19F5 D0 00         [24] 1306 	pop	(0+0)
   19F7 D0 01         [24] 1307 	pop	(0+1)
   19F9 D0 02         [24] 1308 	pop	(0+2)
   19FB D0 03         [24] 1309 	pop	(0+3)
   19FD D0 04         [24] 1310 	pop	(0+4)
   19FF D0 05         [24] 1311 	pop	(0+5)
   1A01 D0 06         [24] 1312 	pop	(0+6)
   1A03 D0 07         [24] 1313 	pop	(0+7)
   1A05 D0 83         [24] 1314 	pop	dph
   1A07 D0 82         [24] 1315 	pop	dpl
   1A09 D0 F0         [24] 1316 	pop	b
   1A0B D0 E0         [24] 1317 	pop	acc
   1A0D D0 21         [24] 1318 	pop	bits
   1A0F 32            [24] 1319 	reti
                           1320 ;------------------------------------------------------------
                           1321 ;Allocation info for local variables in function 'tx1_isr'
                           1322 ;------------------------------------------------------------
                           1323 ;	cc1110_spicom.c:146: void tx1_isr(void) __interrupt UTX1_VECTOR {
                           1324 ;	-----------------------------------------
                           1325 ;	 function tx1_isr
                           1326 ;	-----------------------------------------
   1A10                    1327 _tx1_isr:
   1A10 C0 E0         [24] 1328 	push	acc
   1A12 C0 82         [24] 1329 	push	dpl
   1A14 C0 83         [24] 1330 	push	dph
   1A16 C0 07         [24] 1331 	push	ar7
   1A18 C0 D0         [24] 1332 	push	psw
   1A1A 75 D0 00      [24] 1333 	mov	psw,#0x00
                           1334 ;	cc1110_spicom.c:147: IRCON2 &= ~BIT2; // Clear UTX1IF
   1A1D AF E8         [24] 1335 	mov	r7,_IRCON2
   1A1F 74 FB         [12] 1336 	mov	a,#0xFB
   1A21 5F            [12] 1337 	anl	a,r7
   1A22 F5 E8         [12] 1338 	mov	_IRCON2,a
                           1339 ;	cc1110_spicom.c:148: if (spi_mode == SPI_MODE_SIZE || spi_mode == SPI_MODE_XFER) {
   1A24 74 01         [12] 1340 	mov	a,#0x01
   1A26 B5 29 02      [24] 1341 	cjne	a,_spi_mode,00139$
   1A29 80 05         [24] 1342 	sjmp	00112$
   1A2B                    1343 00139$:
   1A2B 74 02         [12] 1344 	mov	a,#0x02
   1A2D B5 29 42      [24] 1345 	cjne	a,_spi_mode,00113$
   1A30                    1346 00112$:
                           1347 ;	cc1110_spicom.c:149: if (slave_send_size > 0 && output_size > 0) {
   1A30 E5 2B         [12] 1348 	mov	a,_slave_send_size
   1A32 60 39         [24] 1349 	jz	00109$
   1A34 E5 25         [12] 1350 	mov	a,_output_size
   1A36 60 35         [24] 1351 	jz	00109$
                           1352 ;	cc1110_spicom.c:150: slave_send_size--;
   1A38 15 2B         [12] 1353 	dec	_slave_send_size
                           1354 ;	cc1110_spicom.c:151: if (slave_send_size == 0 && master_send_size == 0) {
   1A3A E5 2B         [12] 1355 	mov	a,_slave_send_size
   1A3C 70 06         [24] 1356 	jnz	00102$
   1A3E E5 2A         [12] 1357 	mov	a,_master_send_size
                           1358 ;	cc1110_spicom.c:152: spi_mode = SPI_MODE_WAIT;
   1A40 70 02         [24] 1359 	jnz	00102$
   1A42 F5 29         [12] 1360 	mov	_spi_mode,a
   1A44                    1361 00102$:
                           1362 ;	cc1110_spicom.c:154: U1DBUF = spi_output_buf[output_tail_idx];
   1A44 E5 27         [12] 1363 	mov	a,_output_tail_idx
   1A46 24 64         [12] 1364 	add	a,#_spi_output_buf
   1A48 F5 82         [12] 1365 	mov	dpl,a
   1A4A E4            [12] 1366 	clr	a
   1A4B 34 F6         [12] 1367 	addc	a,#(_spi_output_buf >> 8)
   1A4D F5 83         [12] 1368 	mov	dph,a
   1A4F E0            [24] 1369 	movx	a,@dptr
   1A50 F5 F9         [12] 1370 	mov	_U1DBUF,a
                           1371 ;	cc1110_spicom.c:155: output_size--;
   1A52 15 25         [12] 1372 	dec	_output_size
                           1373 ;	cc1110_spicom.c:156: if (output_size == 0) {
   1A54 E5 25         [12] 1374 	mov	a,_output_size
   1A56 70 08         [24] 1375 	jnz	00105$
                           1376 ;	cc1110_spicom.c:157: ep5.flags &= ~EP_INBUF_WRITTEN;
   1A58 90 F9 52      [24] 1377 	mov	dptr,#(_ep5 + 0x000e)
   1A5B E0            [24] 1378 	movx	a,@dptr
   1A5C 54 FE         [12] 1379 	anl	a,#0xFE
   1A5E FF            [12] 1380 	mov	r7,a
   1A5F F0            [24] 1381 	movx	@dptr,a
   1A60                    1382 00105$:
                           1383 ;	cc1110_spicom.c:159: output_tail_idx++;
   1A60 05 27         [12] 1384 	inc	_output_tail_idx
                           1385 ;	cc1110_spicom.c:160: if (output_tail_idx >= SPI_BUF_LEN) {
   1A62 74 24         [12] 1386 	mov	a,#0x100 - 0xDC
   1A64 25 27         [12] 1387 	add	a,_output_tail_idx
   1A66 50 0D         [24] 1388 	jnc	00116$
                           1389 ;	cc1110_spicom.c:161: output_tail_idx = 0;
   1A68 75 27 00      [24] 1390 	mov	_output_tail_idx,#0x00
   1A6B 80 08         [24] 1391 	sjmp	00116$
   1A6D                    1392 00109$:
                           1393 ;	cc1110_spicom.c:164: U1DBUF = 0x99;
   1A6D 75 F9 99      [24] 1394 	mov	_U1DBUF,#0x99
   1A70 80 03         [24] 1395 	sjmp	00116$
   1A72                    1396 00113$:
                           1397 ;	cc1110_spicom.c:167: U1DBUF = 0x99;
   1A72 75 F9 99      [24] 1398 	mov	_U1DBUF,#0x99
   1A75                    1399 00116$:
   1A75 D0 D0         [24] 1400 	pop	psw
   1A77 D0 07         [24] 1401 	pop	ar7
   1A79 D0 83         [24] 1402 	pop	dph
   1A7B D0 82         [24] 1403 	pop	dpl
   1A7D D0 E0         [24] 1404 	pop	acc
   1A7F 32            [24] 1405 	reti
                           1406 ;	eliminated unneeded push/pop b
                           1407 ;------------------------------------------------------------
                           1408 ;Allocation info for local variables in function 'vcom_flush'
                           1409 ;------------------------------------------------------------
                           1410 ;	cc1110_spicom.c:171: void vcom_flush()
                           1411 ;	-----------------------------------------
                           1412 ;	 function vcom_flush
                           1413 ;	-----------------------------------------
   1A80                    1414 _vcom_flush:
                           1415 ;	cc1110_spicom.c:174: return;
   1A80 22            [24] 1416 	ret
                           1417 ;------------------------------------------------------------
                           1418 ;Allocation info for local variables in function 'vcom_putchar'
                           1419 ;------------------------------------------------------------
                           1420 ;c                         Allocated to registers r7 
                           1421 ;------------------------------------------------------------
                           1422 ;	cc1110_spicom.c:177: void vcom_putchar(char c)
                           1423 ;	-----------------------------------------
                           1424 ;	 function vcom_putchar
                           1425 ;	-----------------------------------------
   1A81                    1426 _vcom_putchar:
   1A81 AF 82         [24] 1427 	mov	r7,dpl
                           1428 ;	cc1110_spicom.c:179: if (output_size >= SPI_BUF_LEN) {
   1A83 74 24         [12] 1429 	mov	a,#0x100 - 0xDC
   1A85 25 25         [12] 1430 	add	a,_output_size
   1A87 50 0D         [24] 1431 	jnc	00104$
                           1432 ;	cc1110_spicom.c:181: output_size--;
   1A89 15 25         [12] 1433 	dec	_output_size
                           1434 ;	cc1110_spicom.c:182: output_tail_idx++;
   1A8B 05 27         [12] 1435 	inc	_output_tail_idx
                           1436 ;	cc1110_spicom.c:183: if (output_tail_idx >= SPI_BUF_LEN) {
   1A8D 74 24         [12] 1437 	mov	a,#0x100 - 0xDC
   1A8F 25 27         [12] 1438 	add	a,_output_tail_idx
   1A91 50 03         [24] 1439 	jnc	00104$
                           1440 ;	cc1110_spicom.c:184: output_tail_idx = 0;
   1A93 75 27 00      [24] 1441 	mov	_output_tail_idx,#0x00
   1A96                    1442 00104$:
                           1443 ;	cc1110_spicom.c:187: spi_output_buf[output_head_idx] = c;
   1A96 E5 26         [12] 1444 	mov	a,_output_head_idx
   1A98 24 64         [12] 1445 	add	a,#_spi_output_buf
   1A9A F5 82         [12] 1446 	mov	dpl,a
   1A9C E4            [12] 1447 	clr	a
   1A9D 34 F6         [12] 1448 	addc	a,#(_spi_output_buf >> 8)
   1A9F F5 83         [12] 1449 	mov	dph,a
   1AA1 EF            [12] 1450 	mov	a,r7
   1AA2 F0            [24] 1451 	movx	@dptr,a
                           1452 ;	cc1110_spicom.c:189: output_head_idx++;
   1AA3 05 26         [12] 1453 	inc	_output_head_idx
                           1454 ;	cc1110_spicom.c:190: if (output_head_idx >= SPI_BUF_LEN) {
   1AA5 74 24         [12] 1455 	mov	a,#0x100 - 0xDC
   1AA7 25 26         [12] 1456 	add	a,_output_head_idx
   1AA9 50 03         [24] 1457 	jnc	00106$
                           1458 ;	cc1110_spicom.c:191: output_head_idx = 0;
   1AAB 75 26 00      [24] 1459 	mov	_output_head_idx,#0x00
   1AAE                    1460 00106$:
                           1461 ;	cc1110_spicom.c:193: output_size++;
   1AAE 05 25         [12] 1462 	inc	_output_size
                           1463 ;	cc1110_spicom.c:195: ep5.flags |= EP_INBUF_WRITTEN;
   1AB0 90 F9 52      [24] 1464 	mov	dptr,#(_ep5 + 0x000e)
   1AB3 E0            [24] 1465 	movx	a,@dptr
   1AB4 44 01         [12] 1466 	orl	a,#0x01
   1AB6 F0            [24] 1467 	movx	@dptr,a
   1AB7 22            [24] 1468 	ret
                           1469 ;------------------------------------------------------------
                           1470 ;Allocation info for local variables in function 'vcom_pollchar'
                           1471 ;------------------------------------------------------------
                           1472 ;	cc1110_spicom.c:198: char vcom_pollchar()
                           1473 ;	-----------------------------------------
                           1474 ;	 function vcom_pollchar
                           1475 ;	-----------------------------------------
   1AB8                    1476 _vcom_pollchar:
                           1477 ;	cc1110_spicom.c:200: if (serial_data_available == 0) {
   1AB8 E5 28         [12] 1478 	mov	a,_serial_data_available
   1ABA 70 04         [24] 1479 	jnz	00102$
                           1480 ;	cc1110_spicom.c:201: return USB_READ_AGAIN;
   1ABC 75 82 FF      [24] 1481 	mov	dpl,#0xFF
   1ABF 22            [24] 1482 	ret
   1AC0                    1483 00102$:
                           1484 ;	cc1110_spicom.c:203: return spi_input_buf[input_tail_idx];
   1AC0 E5 24         [12] 1485 	mov	a,_input_tail_idx
   1AC2 24 88         [12] 1486 	add	a,#_spi_input_buf
   1AC4 F5 82         [12] 1487 	mov	dpl,a
   1AC6 E4            [12] 1488 	clr	a
   1AC7 34 F5         [12] 1489 	addc	a,#(_spi_input_buf >> 8)
   1AC9 F5 83         [12] 1490 	mov	dph,a
   1ACB E0            [24] 1491 	movx	a,@dptr
   1ACC F5 82         [12] 1492 	mov	dpl,a
   1ACE 22            [24] 1493 	ret
                           1494 ;------------------------------------------------------------
                           1495 ;Allocation info for local variables in function 'vcom_getchar'
                           1496 ;------------------------------------------------------------
                           1497 ;s_data                    Allocated to registers r7 
                           1498 ;------------------------------------------------------------
                           1499 ;	cc1110_spicom.c:206: char vcom_getchar()
                           1500 ;	-----------------------------------------
                           1501 ;	 function vcom_getchar
                           1502 ;	-----------------------------------------
   1ACF                    1503 _vcom_getchar:
                           1504 ;	cc1110_spicom.c:210: if (serial_data_available == 0) {
   1ACF E5 28         [12] 1505 	mov	a,_serial_data_available
   1AD1 70 04         [24] 1506 	jnz	00102$
                           1507 ;	cc1110_spicom.c:211: return USB_READ_AGAIN;
   1AD3 75 82 FF      [24] 1508 	mov	dpl,#0xFF
   1AD6 22            [24] 1509 	ret
   1AD7                    1510 00102$:
                           1511 ;	cc1110_spicom.c:214: s_data = spi_input_buf[input_tail_idx];
   1AD7 E5 24         [12] 1512 	mov	a,_input_tail_idx
   1AD9 24 88         [12] 1513 	add	a,#_spi_input_buf
   1ADB F5 82         [12] 1514 	mov	dpl,a
   1ADD E4            [12] 1515 	clr	a
   1ADE 34 F5         [12] 1516 	addc	a,#(_spi_input_buf >> 8)
   1AE0 F5 83         [12] 1517 	mov	dph,a
   1AE2 E0            [24] 1518 	movx	a,@dptr
   1AE3 FF            [12] 1519 	mov	r7,a
                           1520 ;	cc1110_spicom.c:215: input_tail_idx++;
   1AE4 05 24         [12] 1521 	inc	_input_tail_idx
                           1522 ;	cc1110_spicom.c:216: if (input_tail_idx >= SPI_BUF_LEN) {
   1AE6 74 24         [12] 1523 	mov	a,#0x100 - 0xDC
   1AE8 25 24         [12] 1524 	add	a,_input_tail_idx
   1AEA 50 03         [24] 1525 	jnc	00104$
                           1526 ;	cc1110_spicom.c:217: input_tail_idx = 0;
   1AEC 75 24 00      [24] 1527 	mov	_input_tail_idx,#0x00
   1AEF                    1528 00104$:
                           1529 ;	cc1110_spicom.c:219: input_size--;
   1AEF 15 22         [12] 1530 	dec	_input_size
                           1531 ;	cc1110_spicom.c:220: if (input_size == 0) {
   1AF1 E5 22         [12] 1532 	mov	a,_input_size
                           1533 ;	cc1110_spicom.c:221: serial_data_available = 0;
   1AF3 70 02         [24] 1534 	jnz	00106$
   1AF5 F5 28         [12] 1535 	mov	_serial_data_available,a
   1AF7                    1536 00106$:
                           1537 ;	cc1110_spicom.c:223: return s_data;
   1AF7 8F 82         [24] 1538 	mov	dpl,r7
   1AF9 22            [24] 1539 	ret
                           1540 ;------------------------------------------------------------
                           1541 ;Allocation info for local variables in function 'vcom_enable'
                           1542 ;------------------------------------------------------------
                           1543 ;	cc1110_spicom.c:226: void vcom_enable()
                           1544 ;	-----------------------------------------
                           1545 ;	 function vcom_enable
                           1546 ;	-----------------------------------------
   1AFA                    1547 _vcom_enable:
                           1548 ;	cc1110_spicom.c:228: TCON &= ~BIT3; // Clear URX1IF
   1AFA AF 88         [24] 1549 	mov	r7,_TCON
   1AFC 74 F7         [12] 1550 	mov	a,#0xF7
   1AFE 5F            [12] 1551 	anl	a,r7
   1AFF F5 88         [12] 1552 	mov	_TCON,a
                           1553 ;	cc1110_spicom.c:229: URX1IE = 1;    // Enable URX1IE interrupt
   1B01 D2 AB         [12] 1554 	setb	_URX1IE
                           1555 ;	cc1110_spicom.c:231: IRCON2 &= ~BIT2; // Clear UTX1IF
   1B03 AF E8         [24] 1556 	mov	r7,_IRCON2
   1B05 74 FB         [12] 1557 	mov	a,#0xFB
   1B07 5F            [12] 1558 	anl	a,r7
   1B08 F5 E8         [12] 1559 	mov	_IRCON2,a
                           1560 ;	cc1110_spicom.c:232: IEN2 |= BIT3;    // Enable UTX1IE interrupt
   1B0A 43 9A 08      [24] 1561 	orl	_IEN2,#0x08
   1B0D 22            [24] 1562 	ret
                           1563 ;------------------------------------------------------------
                           1564 ;Allocation info for local variables in function 'vcom_disable'
                           1565 ;------------------------------------------------------------
                           1566 ;	cc1110_spicom.c:235: void vcom_disable()
                           1567 ;	-----------------------------------------
                           1568 ;	 function vcom_disable
                           1569 ;	-----------------------------------------
   1B0E                    1570 _vcom_disable:
                           1571 ;	cc1110_spicom.c:237: TCON &= ~BIT3; // Clear URX1IF
   1B0E AF 88         [24] 1572 	mov	r7,_TCON
   1B10 74 F7         [12] 1573 	mov	a,#0xF7
   1B12 5F            [12] 1574 	anl	a,r7
   1B13 F5 88         [12] 1575 	mov	_TCON,a
                           1576 ;	cc1110_spicom.c:238: URX1IE = 0;    // Disable URX1IE interrupt
   1B15 C2 AB         [12] 1577 	clr	_URX1IE
                           1578 ;	cc1110_spicom.c:240: IRCON2 &= ~BIT2; // Clear UTX1IF
   1B17 AF E8         [24] 1579 	mov	r7,_IRCON2
   1B19 74 FB         [12] 1580 	mov	a,#0xFB
   1B1B 5F            [12] 1581 	anl	a,r7
   1B1C F5 E8         [12] 1582 	mov	_IRCON2,a
                           1583 ;	cc1110_spicom.c:241: IEN2 &= ~BIT3;    // Disable UTX1IE interrupt
   1B1E AF 9A         [24] 1584 	mov	r7,_IEN2
   1B20 74 F7         [12] 1585 	mov	a,#0xF7
   1B22 5F            [12] 1586 	anl	a,r7
   1B23 F5 9A         [12] 1587 	mov	_IEN2,a
   1B25 22            [24] 1588 	ret
                           1589 ;------------------------------------------------------------
                           1590 ;Allocation info for local variables in function 'initUSB'
                           1591 ;------------------------------------------------------------
                           1592 ;	cc1110_spicom.c:244: void initUSB()
                           1593 ;	-----------------------------------------
                           1594 ;	 function initUSB
                           1595 ;	-----------------------------------------
   1B26                    1596 _initUSB:
                           1597 ;	cc1110_spicom.c:258: PERCFG = (PERCFG & ~PERCFG_U0CFG) | PERCFG_U1CFG;
   1B26 AF F1         [24] 1598 	mov	r7,_PERCFG
   1B28 74 FE         [12] 1599 	mov	a,#0xFE
   1B2A 5F            [12] 1600 	anl	a,r7
   1B2B 44 02         [12] 1601 	orl	a,#0x02
   1B2D F5 F1         [12] 1602 	mov	_PERCFG,a
                           1603 ;	cc1110_spicom.c:261: P1SEL = P1SEL | BIT4 | BIT5 | BIT6 | BIT7;
   1B2F 43 F4 F0      [24] 1604 	orl	_P1SEL,#0xF0
                           1605 ;	cc1110_spicom.c:262: P1DIR = P1DIR & ~(BIT4 | BIT5 | BIT6 | BIT7);
   1B32 AF FE         [24] 1606 	mov	r7,_P1DIR
   1B34 74 0F         [12] 1607 	mov	a,#0x0F
   1B36 5F            [12] 1608 	anl	a,r7
   1B37 F5 FE         [12] 1609 	mov	_P1DIR,a
                           1610 ;	cc1110_spicom.c:269: U1CSR = (U1CSR & ~U1CSR_MODE) | U1CSR_SLAVE;
   1B39 AF F8         [24] 1611 	mov	r7,_U1CSR
   1B3B 74 7F         [12] 1612 	mov	a,#0x7F
   1B3D 5F            [12] 1613 	anl	a,r7
   1B3E 44 20         [12] 1614 	orl	a,#0x20
   1B40 F5 F8         [12] 1615 	mov	_U1CSR,a
                           1616 ;	cc1110_spicom.c:282: U1BAUD = SPI_BAUD_M;
   1B42 75 FA 3B      [24] 1617 	mov	_U1BAUD,#0x3B
                           1618 ;	cc1110_spicom.c:283: U1GCR = (U1GCR & ~(U1GCR_BAUD_E | U1GCR_CPOL | U1GCR_CPHA | U1GCR_ORDER))
   1B45 E5 FC         [12] 1619 	mov	a,_U1GCR
   1B47 75 FC 0B      [24] 1620 	mov	_U1GCR,#0x0B
                           1621 ;	cc1110_spicom.c:286: TCON &= ~BIT3; // Clear URX1IF
   1B4A AF 88         [24] 1622 	mov	r7,_TCON
   1B4C 74 F7         [12] 1623 	mov	a,#0xF7
   1B4E 5F            [12] 1624 	anl	a,r7
   1B4F F5 88         [12] 1625 	mov	_TCON,a
                           1626 ;	cc1110_spicom.c:287: URX1IE = 1;    // Enable URX1IE interrupt
   1B51 D2 AB         [12] 1627 	setb	_URX1IE
                           1628 ;	cc1110_spicom.c:289: IRCON2 &= ~BIT2; // Clear UTX1IF
   1B53 AF E8         [24] 1629 	mov	r7,_IRCON2
   1B55 74 FB         [12] 1630 	mov	a,#0xFB
   1B57 5F            [12] 1631 	anl	a,r7
   1B58 F5 E8         [12] 1632 	mov	_IRCON2,a
                           1633 ;	cc1110_spicom.c:290: IEN2 |= BIT3;    // Enable UTX1IE interrupt
   1B5A 43 9A 08      [24] 1634 	orl	_IEN2,#0x08
                           1635 ;	cc1110_spicom.c:292: ep5.OUTbuf = usb_ep5_OUTbuf;
   1B5D 90 F9 49      [24] 1636 	mov	dptr,#(_ep5 + 0x0005)
   1B60 74 40         [12] 1637 	mov	a,#_usb_ep5_OUTbuf
   1B62 F0            [24] 1638 	movx	@dptr,a
   1B63 74 F7         [12] 1639 	mov	a,#(_usb_ep5_OUTbuf >> 8)
   1B65 A3            [24] 1640 	inc	dptr
   1B66 F0            [24] 1641 	movx	@dptr,a
   1B67 E4            [12] 1642 	clr	a
   1B68 A3            [24] 1643 	inc	dptr
   1B69 F0            [24] 1644 	movx	@dptr,a
                           1645 ;	cc1110_spicom.c:294: spi_mode = SPI_MODE_WAIT;
   1B6A 75 29 00      [24] 1646 	mov	_spi_mode,#0x00
   1B6D 22            [24] 1647 	ret
                           1648 ;------------------------------------------------------------
                           1649 ;Allocation info for local variables in function 'usbProcessEvents'
                           1650 ;------------------------------------------------------------
                           1651 ;	cc1110_spicom.c:300: void usbProcessEvents()
                           1652 ;	-----------------------------------------
                           1653 ;	 function usbProcessEvents
                           1654 ;	-----------------------------------------
   1B6E                    1655 _usbProcessEvents:
                           1656 ;	cc1110_spicom.c:302: return; /* dummy function */
   1B6E 22            [24] 1657 	ret
                           1658 ;------------------------------------------------------------
                           1659 ;Allocation info for local variables in function 'vcom_readline'
                           1660 ;------------------------------------------------------------
                           1661 ;buff                      Allocated to registers 
                           1662 ;c                         Allocated to registers r3 
                           1663 ;------------------------------------------------------------
                           1664 ;	cc1110_spicom.c:305: void vcom_readline(char* buff) {
                           1665 ;	-----------------------------------------
                           1666 ;	 function vcom_readline
                           1667 ;	-----------------------------------------
   1B6F                    1668 _vcom_readline:
   1B6F AD 82         [24] 1669 	mov	r5,dpl
   1B71 AE 83         [24] 1670 	mov	r6,dph
   1B73 AF F0         [24] 1671 	mov	r7,b
                           1672 ;	cc1110_spicom.c:307: while ((c = vcom_getchar()) != '\n') {
   1B75                    1673 00101$:
   1B75 C0 07         [24] 1674 	push	ar7
   1B77 C0 06         [24] 1675 	push	ar6
   1B79 C0 05         [24] 1676 	push	ar5
   1B7B 12 1A CF      [24] 1677 	lcall	_vcom_getchar
   1B7E AC 82         [24] 1678 	mov	r4,dpl
   1B80 D0 05         [24] 1679 	pop	ar5
   1B82 D0 06         [24] 1680 	pop	ar6
   1B84 D0 07         [24] 1681 	pop	ar7
   1B86 8C 03         [24] 1682 	mov	ar3,r4
   1B88 BC 0A 02      [24] 1683 	cjne	r4,#0x0A,00113$
   1B8B 80 11         [24] 1684 	sjmp	00103$
   1B8D                    1685 00113$:
                           1686 ;	cc1110_spicom.c:308: *buff++ = c;
   1B8D 8D 82         [24] 1687 	mov	dpl,r5
   1B8F 8E 83         [24] 1688 	mov	dph,r6
   1B91 8F F0         [24] 1689 	mov	b,r7
   1B93 EB            [12] 1690 	mov	a,r3
   1B94 12 33 EC      [24] 1691 	lcall	__gptrput
   1B97 A3            [24] 1692 	inc	dptr
   1B98 AD 82         [24] 1693 	mov	r5,dpl
   1B9A AE 83         [24] 1694 	mov	r6,dph
   1B9C 80 D7         [24] 1695 	sjmp	00101$
   1B9E                    1696 00103$:
                           1697 ;	cc1110_spicom.c:310: *buff = 0;
   1B9E 8D 82         [24] 1698 	mov	dpl,r5
   1BA0 8E 83         [24] 1699 	mov	dph,r6
   1BA2 8F F0         [24] 1700 	mov	b,r7
   1BA4 E4            [12] 1701 	clr	a
   1BA5 02 33 EC      [24] 1702 	ljmp	__gptrput
                           1703 ;------------------------------------------------------------
                           1704 ;Allocation info for local variables in function 'vcom_putstr'
                           1705 ;------------------------------------------------------------
                           1706 ;buff                      Allocated with name '_vcom_putstr_buff_1_98'
                           1707 ;------------------------------------------------------------
                           1708 ;	cc1110_spicom.c:313: void vcom_putstr(char* __xdata buff) {
                           1709 ;	-----------------------------------------
                           1710 ;	 function vcom_putstr
                           1711 ;	-----------------------------------------
   1BA8                    1712 _vcom_putstr:
   1BA8 AF F0         [24] 1713 	mov	r7,b
   1BAA AE 83         [24] 1714 	mov	r6,dph
   1BAC E5 82         [12] 1715 	mov	a,dpl
   1BAE 90 F9 56      [24] 1716 	mov	dptr,#_vcom_putstr_buff_1_98
   1BB1 F0            [24] 1717 	movx	@dptr,a
   1BB2 EE            [12] 1718 	mov	a,r6
   1BB3 A3            [24] 1719 	inc	dptr
   1BB4 F0            [24] 1720 	movx	@dptr,a
   1BB5 EF            [12] 1721 	mov	a,r7
   1BB6 A3            [24] 1722 	inc	dptr
   1BB7 F0            [24] 1723 	movx	@dptr,a
                           1724 ;	cc1110_spicom.c:314: while (*buff) {
   1BB8 90 F9 56      [24] 1725 	mov	dptr,#_vcom_putstr_buff_1_98
   1BBB E0            [24] 1726 	movx	a,@dptr
   1BBC FD            [12] 1727 	mov	r5,a
   1BBD A3            [24] 1728 	inc	dptr
   1BBE E0            [24] 1729 	movx	a,@dptr
   1BBF FE            [12] 1730 	mov	r6,a
   1BC0 A3            [24] 1731 	inc	dptr
   1BC1 E0            [24] 1732 	movx	a,@dptr
   1BC2 FF            [12] 1733 	mov	r7,a
   1BC3                    1734 00101$:
   1BC3 8D 82         [24] 1735 	mov	dpl,r5
   1BC5 8E 83         [24] 1736 	mov	dph,r6
   1BC7 8F F0         [24] 1737 	mov	b,r7
   1BC9 12 35 83      [24] 1738 	lcall	__gptrget
   1BCC FC            [12] 1739 	mov	r4,a
   1BCD 60 23         [24] 1740 	jz	00108$
                           1741 ;	cc1110_spicom.c:315: vcom_putchar(*buff++);
   1BCF 0D            [12] 1742 	inc	r5
   1BD0 BD 00 01      [24] 1743 	cjne	r5,#0x00,00114$
   1BD3 0E            [12] 1744 	inc	r6
   1BD4                    1745 00114$:
   1BD4 90 F9 56      [24] 1746 	mov	dptr,#_vcom_putstr_buff_1_98
   1BD7 ED            [12] 1747 	mov	a,r5
   1BD8 F0            [24] 1748 	movx	@dptr,a
   1BD9 EE            [12] 1749 	mov	a,r6
   1BDA A3            [24] 1750 	inc	dptr
   1BDB F0            [24] 1751 	movx	@dptr,a
   1BDC EF            [12] 1752 	mov	a,r7
   1BDD A3            [24] 1753 	inc	dptr
   1BDE F0            [24] 1754 	movx	@dptr,a
   1BDF 8C 82         [24] 1755 	mov	dpl,r4
   1BE1 C0 07         [24] 1756 	push	ar7
   1BE3 C0 06         [24] 1757 	push	ar6
   1BE5 C0 05         [24] 1758 	push	ar5
   1BE7 12 1A 81      [24] 1759 	lcall	_vcom_putchar
   1BEA D0 05         [24] 1760 	pop	ar5
   1BEC D0 06         [24] 1761 	pop	ar6
   1BEE D0 07         [24] 1762 	pop	ar7
   1BF0 80 D1         [24] 1763 	sjmp	00101$
   1BF2                    1764 00108$:
   1BF2 90 F9 56      [24] 1765 	mov	dptr,#_vcom_putstr_buff_1_98
   1BF5 ED            [12] 1766 	mov	a,r5
   1BF6 F0            [24] 1767 	movx	@dptr,a
   1BF7 EE            [12] 1768 	mov	a,r6
   1BF8 A3            [24] 1769 	inc	dptr
   1BF9 F0            [24] 1770 	movx	@dptr,a
   1BFA EF            [12] 1771 	mov	a,r7
   1BFB A3            [24] 1772 	inc	dptr
   1BFC F0            [24] 1773 	movx	@dptr,a
                           1774 ;	cc1110_spicom.c:317: vcom_flush();
   1BFD 02 1A 80      [24] 1775 	ljmp	_vcom_flush
                           1776 ;------------------------------------------------------------
                           1777 ;Allocation info for local variables in function 'usb_up'
                           1778 ;------------------------------------------------------------
                           1779 ;	cc1110_spicom.c:320: void usb_up() {
                           1780 ;	-----------------------------------------
                           1781 ;	 function usb_up
                           1782 ;	-----------------------------------------
   1C00                    1783 _usb_up:
                           1784 ;	cc1110_spicom.c:322: vcom_enable();
   1C00 02 1A FA      [24] 1785 	ljmp	_vcom_enable
                           1786 ;------------------------------------------------------------
                           1787 ;Allocation info for local variables in function 'vcom_down'
                           1788 ;------------------------------------------------------------
                           1789 ;	cc1110_spicom.c:325: void vcom_down() {
                           1790 ;	-----------------------------------------
                           1791 ;	 function vcom_down
                           1792 ;	-----------------------------------------
   1C03                    1793 _vcom_down:
                           1794 ;	cc1110_spicom.c:327: vcom_disable();
   1C03 02 1B 0E      [24] 1795 	ljmp	_vcom_disable
                           1796 ;------------------------------------------------------------
                           1797 ;Allocation info for local variables in function 'txdata'
                           1798 ;------------------------------------------------------------
                           1799 ;cmd                       Allocated with name '_txdata_PARM_2'
                           1800 ;len                       Allocated with name '_txdata_PARM_3'
                           1801 ;dataptr                   Allocated with name '_txdata_PARM_4'
                           1802 ;app                       Allocated to registers 
                           1803 ;test                      Allocated to registers 
                           1804 ;------------------------------------------------------------
                           1805 ;	cc1110_spicom.c:330: int txdata(u8 app, u8 cmd, u16 len, __xdata u8* dataptr)
                           1806 ;	-----------------------------------------
                           1807 ;	 function txdata
                           1808 ;	-----------------------------------------
   1C06                    1809 _txdata:
                           1810 ;	cc1110_spicom.c:336: vcom_putchar(app);
   1C06 12 1A 81      [24] 1811 	lcall	_vcom_putchar
                           1812 ;	cc1110_spicom.c:337: vcom_putchar(cmd);
   1C09 85 2E 82      [24] 1813 	mov	dpl,_txdata_PARM_2
   1C0C 12 1A 81      [24] 1814 	lcall	_vcom_putchar
                           1815 ;	cc1110_spicom.c:338: vcom_putchar((u8)len);
   1C0F 85 2F 82      [24] 1816 	mov	dpl,_txdata_PARM_3
   1C12 12 1A 81      [24] 1817 	lcall	_vcom_putchar
                           1818 ;	cc1110_spicom.c:341: while (len > 0) //*dataptr) 
   1C15 AE 31         [24] 1819 	mov	r6,_txdata_PARM_4
   1C17 AF 32         [24] 1820 	mov	r7,(_txdata_PARM_4 + 1)
   1C19 AC 2F         [24] 1821 	mov	r4,_txdata_PARM_3
   1C1B AD 30         [24] 1822 	mov	r5,(_txdata_PARM_3 + 1)
   1C1D                    1823 00101$:
   1C1D EC            [12] 1824 	mov	a,r4
   1C1E 4D            [12] 1825 	orl	a,r5
   1C1F 60 27         [24] 1826 	jz	00103$
                           1827 ;	cc1110_spicom.c:343: vcom_putchar(*dataptr++);
   1C21 8E 82         [24] 1828 	mov	dpl,r6
   1C23 8F 83         [24] 1829 	mov	dph,r7
   1C25 E0            [24] 1830 	movx	a,@dptr
   1C26 FB            [12] 1831 	mov	r3,a
   1C27 A3            [24] 1832 	inc	dptr
   1C28 AE 82         [24] 1833 	mov	r6,dpl
   1C2A AF 83         [24] 1834 	mov	r7,dph
   1C2C 8B 82         [24] 1835 	mov	dpl,r3
   1C2E C0 07         [24] 1836 	push	ar7
   1C30 C0 06         [24] 1837 	push	ar6
   1C32 C0 05         [24] 1838 	push	ar5
   1C34 C0 04         [24] 1839 	push	ar4
   1C36 12 1A 81      [24] 1840 	lcall	_vcom_putchar
   1C39 D0 04         [24] 1841 	pop	ar4
   1C3B D0 05         [24] 1842 	pop	ar5
   1C3D D0 06         [24] 1843 	pop	ar6
   1C3F D0 07         [24] 1844 	pop	ar7
                           1845 ;	cc1110_spicom.c:344: len--;
   1C41 1C            [12] 1846 	dec	r4
   1C42 BC FF 01      [24] 1847 	cjne	r4,#0xFF,00114$
   1C45 1D            [12] 1848 	dec	r5
   1C46                    1849 00114$:
   1C46 80 D5         [24] 1850 	sjmp	00101$
   1C48                    1851 00103$:
                           1852 ;	cc1110_spicom.c:346: vcom_putchar(0);
   1C48 75 82 00      [24] 1853 	mov	dpl,#0x00
   1C4B 12 1A 81      [24] 1854 	lcall	_vcom_putchar
                           1855 ;	cc1110_spicom.c:347: vcom_flush();
   1C4E 12 1A 80      [24] 1856 	lcall	_vcom_flush
                           1857 ;	cc1110_spicom.c:351: return 0;
   1C51 90 00 00      [24] 1858 	mov	dptr,#0x0000
   1C54 22            [24] 1859 	ret
                           1860 ;------------------------------------------------------------
                           1861 ;Allocation info for local variables in function 'usbIntHandler'
                           1862 ;------------------------------------------------------------
                           1863 ;	cc1110_spicom.c:356: void usbIntHandler(void) __interrupt P2INT_VECTOR
                           1864 ;	-----------------------------------------
                           1865 ;	 function usbIntHandler
                           1866 ;	-----------------------------------------
   1C55                    1867 _usbIntHandler:
                           1868 ;	cc1110_spicom.c:358: return;
   1C55 32            [24] 1869 	reti
                           1870 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1871 ;	eliminated unneeded push/pop psw
                           1872 ;	eliminated unneeded push/pop dpl
                           1873 ;	eliminated unneeded push/pop dph
                           1874 ;	eliminated unneeded push/pop b
                           1875 ;	eliminated unneeded push/pop acc
                           1876 ;------------------------------------------------------------
                           1877 ;Allocation info for local variables in function 'p0IntHandler'
                           1878 ;------------------------------------------------------------
                           1879 ;	cc1110_spicom.c:361: void p0IntHandler(void) __interrupt P0INT_VECTOR
                           1880 ;	-----------------------------------------
                           1881 ;	 function p0IntHandler
                           1882 ;	-----------------------------------------
   1C56                    1883 _p0IntHandler:
                           1884 ;	cc1110_spicom.c:363: return;
   1C56 32            [24] 1885 	reti
                           1886 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1887 ;	eliminated unneeded push/pop psw
                           1888 ;	eliminated unneeded push/pop dpl
                           1889 ;	eliminated unneeded push/pop dph
                           1890 ;	eliminated unneeded push/pop b
                           1891 ;	eliminated unneeded push/pop acc
                           1892 ;------------------------------------------------------------
                           1893 ;Allocation info for local variables in function 'waitForUSBsetup'
                           1894 ;------------------------------------------------------------
                           1895 ;	cc1110_spicom.c:366: void waitForUSBsetup()
                           1896 ;	-----------------------------------------
                           1897 ;	 function waitForUSBsetup
                           1898 ;	-----------------------------------------
   1C57                    1899 _waitForUSBsetup:
                           1900 ;	cc1110_spicom.c:368: return;
   1C57 22            [24] 1901 	ret
                           1902 ;------------------------------------------------------------
                           1903 ;Allocation info for local variables in function 'registerCb_ep5'
                           1904 ;------------------------------------------------------------
                           1905 ;callback                  Allocated to registers 
                           1906 ;------------------------------------------------------------
                           1907 ;	cc1110_spicom.c:371: void registerCb_ep5(int (*callback)(void))
                           1908 ;	-----------------------------------------
                           1909 ;	 function registerCb_ep5
                           1910 ;	-----------------------------------------
   1C58                    1911 _registerCb_ep5:
   1C58 85 82 2C      [24] 1912 	mov	_cb_ep5,dpl
   1C5B 85 83 2D      [24] 1913 	mov	(_cb_ep5 + 1),dph
                           1914 ;	cc1110_spicom.c:373: cb_ep5 = callback;
   1C5E 22            [24] 1915 	ret
                           1916 ;------------------------------------------------------------
                           1917 ;Allocation info for local variables in function 'appReturn'
                           1918 ;------------------------------------------------------------
                           1919 ;response                  Allocated with name '_appReturn_PARM_2'
                           1920 ;len                       Allocated with name '_appReturn_len_1_114'
                           1921 ;------------------------------------------------------------
                           1922 ;	cc1110_spicom.c:376: void appReturn(__xdata u8 len, __xdata u8* __xdata  response)
                           1923 ;	-----------------------------------------
                           1924 ;	 function appReturn
                           1925 ;	-----------------------------------------
   1C5F                    1926 _appReturn:
   1C5F E5 82         [12] 1927 	mov	a,dpl
   1C61 90 F9 5B      [24] 1928 	mov	dptr,#_appReturn_len_1_114
   1C64 F0            [24] 1929 	movx	@dptr,a
                           1930 ;	cc1110_spicom.c:378: ep5.flags &= ~EP_OUTBUF_WRITTEN;                       // this should be superfluous... but could be causing problems?
   1C65 90 F9 52      [24] 1931 	mov	dptr,#(_ep5 + 0x000e)
   1C68 E0            [24] 1932 	movx	a,@dptr
   1C69 54 FD         [12] 1933 	anl	a,#0xFD
   1C6B F0            [24] 1934 	movx	@dptr,a
                           1935 ;	cc1110_spicom.c:379: txdata(ep5.OUTapp,ep5.OUTcmd, len, response);
   1C6C 90 F9 4E      [24] 1936 	mov	dptr,#(_ep5 + 0x000a)
   1C6F E0            [24] 1937 	movx	a,@dptr
   1C70 FF            [12] 1938 	mov	r7,a
   1C71 90 F9 4F      [24] 1939 	mov	dptr,#(_ep5 + 0x000b)
   1C74 E0            [24] 1940 	movx	a,@dptr
   1C75 F5 2E         [12] 1941 	mov	_txdata_PARM_2,a
   1C77 90 F9 5B      [24] 1942 	mov	dptr,#_appReturn_len_1_114
   1C7A E0            [24] 1943 	movx	a,@dptr
   1C7B FE            [12] 1944 	mov	r6,a
   1C7C 8E 2F         [24] 1945 	mov	_txdata_PARM_3,r6
   1C7E 75 30 00      [24] 1946 	mov	(_txdata_PARM_3 + 1),#0x00
   1C81 90 F9 59      [24] 1947 	mov	dptr,#_appReturn_PARM_2
   1C84 E0            [24] 1948 	movx	a,@dptr
   1C85 F5 31         [12] 1949 	mov	_txdata_PARM_4,a
   1C87 A3            [24] 1950 	inc	dptr
   1C88 E0            [24] 1951 	movx	a,@dptr
   1C89 F5 32         [12] 1952 	mov	(_txdata_PARM_4 + 1),a
   1C8B 8F 82         [24] 1953 	mov	dpl,r7
   1C8D 02 1C 06      [24] 1954 	ljmp	_txdata
                           1955 ;------------------------------------------------------------
                           1956 ;Allocation info for local variables in function 'processOUTEP5'
                           1957 ;------------------------------------------------------------
                           1958 ;loop                      Allocated with name '_processOUTEP5_loop_1_117'
                           1959 ;sloc0                     Allocated with name '_processOUTEP5_sloc0_1_0'
                           1960 ;sloc1                     Allocated with name '_processOUTEP5_sloc1_1_0'
                           1961 ;sloc2                     Allocated with name '_processOUTEP5_sloc2_1_0'
                           1962 ;ptr                       Allocated with name '_processOUTEP5_ptr_1_117'
                           1963 ;------------------------------------------------------------
                           1964 ;	cc1110_spicom.c:382: void processOUTEP5(void)
                           1965 ;	-----------------------------------------
                           1966 ;	 function processOUTEP5
                           1967 ;	-----------------------------------------
   1C90                    1968 _processOUTEP5:
                           1969 ;	cc1110_spicom.c:388: if ((ep5.flags & EP_OUTBUF_WRITTEN) == 0)
   1C90 90 F9 52      [24] 1970 	mov	dptr,#(_ep5 + 0x000e)
   1C93 E0            [24] 1971 	movx	a,@dptr
   1C94 FF            [12] 1972 	mov	r7,a
   1C95 20 E1 01      [24] 1973 	jb	acc.1,00102$
                           1974 ;	cc1110_spicom.c:389: return;
   1C98 22            [24] 1975 	ret
   1C99                    1976 00102$:
                           1977 ;	cc1110_spicom.c:391: ptr = &ep5.OUTbuf[2]; // skip first two bytes (they're superfluous)
   1C99 90 F9 49      [24] 1978 	mov	dptr,#(_ep5 + 0x0005)
   1C9C E0            [24] 1979 	movx	a,@dptr
   1C9D FD            [12] 1980 	mov	r5,a
   1C9E A3            [24] 1981 	inc	dptr
   1C9F E0            [24] 1982 	movx	a,@dptr
   1CA0 FE            [12] 1983 	mov	r6,a
   1CA1 A3            [24] 1984 	inc	dptr
   1CA2 E0            [24] 1985 	movx	a,@dptr
   1CA3 FF            [12] 1986 	mov	r7,a
   1CA4 74 02         [12] 1987 	mov	a,#0x02
   1CA6 2D            [12] 1988 	add	a,r5
   1CA7 FD            [12] 1989 	mov	r5,a
   1CA8 E4            [12] 1990 	clr	a
   1CA9 3E            [12] 1991 	addc	a,r6
   1CAA FE            [12] 1992 	mov	r6,a
   1CAB 90 F9 5C      [24] 1993 	mov	dptr,#_processOUTEP5_ptr_1_117
   1CAE ED            [12] 1994 	mov	a,r5
   1CAF F0            [24] 1995 	movx	@dptr,a
   1CB0 EE            [12] 1996 	mov	a,r6
   1CB1 A3            [24] 1997 	inc	dptr
   1CB2 F0            [24] 1998 	movx	@dptr,a
                           1999 ;	cc1110_spicom.c:392: ep5.OUTlen -= 2;
   1CB3 90 F9 4C      [24] 2000 	mov	dptr,#(_ep5 + 0x0008)
   1CB6 E0            [24] 2001 	movx	a,@dptr
   1CB7 FB            [12] 2002 	mov	r3,a
   1CB8 A3            [24] 2003 	inc	dptr
   1CB9 E0            [24] 2004 	movx	a,@dptr
   1CBA FC            [12] 2005 	mov	r4,a
   1CBB EB            [12] 2006 	mov	a,r3
   1CBC 24 FE         [12] 2007 	add	a,#0xFE
   1CBE FB            [12] 2008 	mov	r3,a
   1CBF EC            [12] 2009 	mov	a,r4
   1CC0 34 FF         [12] 2010 	addc	a,#0xFF
   1CC2 FC            [12] 2011 	mov	r4,a
   1CC3 90 F9 4C      [24] 2012 	mov	dptr,#(_ep5 + 0x0008)
   1CC6 EB            [12] 2013 	mov	a,r3
   1CC7 F0            [24] 2014 	movx	@dptr,a
   1CC8 EC            [12] 2015 	mov	a,r4
   1CC9 A3            [24] 2016 	inc	dptr
   1CCA F0            [24] 2017 	movx	@dptr,a
                           2018 ;	cc1110_spicom.c:394: if (ep5.OUTapp == 0xff)                                        
   1CCB 90 F9 4E      [24] 2019 	mov	dptr,#(_ep5 + 0x000a)
   1CCE E0            [24] 2020 	movx	a,@dptr
   1CCF F5 39         [12] 2021 	mov	_processOUTEP5_sloc2_1_0,a
   1CD1 74 FF         [12] 2022 	mov	a,#0xFF
   1CD3 B5 39 02      [24] 2023 	cjne	a,_processOUTEP5_sloc2_1_0,00200$
   1CD6 80 03         [24] 2024 	sjmp	00201$
   1CD8                    2025 00200$:
   1CD8 02 21 1F      [24] 2026 	ljmp	00135$
   1CDB                    2027 00201$:
                           2028 ;	cc1110_spicom.c:397: switch (ep5.OUTcmd)
   1CDB 90 F9 4F      [24] 2029 	mov	dptr,#(_ep5 + 0x000b)
   1CDE E0            [24] 2030 	movx	a,@dptr
   1CDF FB            [12] 2031 	mov	r3,a
   1CE0 BB 80 00      [24] 2032 	cjne	r3,#0x80,00202$
   1CE3                    2033 00202$:
   1CE3 50 03         [24] 2034 	jnc	00203$
   1CE5 02 21 01      [24] 2035 	ljmp	00127$
   1CE8                    2036 00203$:
   1CE8 EB            [12] 2037 	mov	a,r3
   1CE9 24 6F         [12] 2038 	add	a,#0xff - 0x90
   1CEB 50 03         [24] 2039 	jnc	00204$
   1CED 02 21 01      [24] 2040 	ljmp	00127$
   1CF0                    2041 00204$:
   1CF0 EB            [12] 2042 	mov	a,r3
   1CF1 24 80         [12] 2043 	add	a,#0x80
   1CF3 FA            [12] 2044 	mov	r2,a
   1CF4 24 0A         [12] 2045 	add	a,#(00205$-3-.)
   1CF6 83            [24] 2046 	movc	a,@a+pc
   1CF7 F5 82         [12] 2047 	mov	dpl,a
   1CF9 EA            [12] 2048 	mov	a,r2
   1CFA 24 15         [12] 2049 	add	a,#(00206$-3-.)
   1CFC 83            [24] 2050 	movc	a,@a+pc
   1CFD F5 83         [12] 2051 	mov	dph,a
   1CFF E4            [12] 2052 	clr	a
   1D00 73            [24] 2053 	jmp	@a+dptr
   1D01                    2054 00205$:
   1D01 23                 2055 	.db	00103$
   1D02 B6                 2056 	.db	00104$
   1D03 4C                 2057 	.db	00112$
   1D04 89                 2058 	.db	00113$
   1D05 69                 2059 	.db	00106$
   1D06 A0                 2060 	.db	00114$
   1D07 C1                 2061 	.db	00115$
   1D08 01                 2062 	.db	00127$
   1D09 EF                 2063 	.db	00117$
   1D0A D8                 2064 	.db	00116$
   1D0B 01                 2065 	.db	00127$
   1D0C 01                 2066 	.db	00127$
   1D0D 01                 2067 	.db	00127$
   1D0E 01                 2068 	.db	00127$
   1D0F 57                 2069 	.db	00122$
   1D10 8B                 2070 	.db	00123$
   1D11 E8                 2071 	.db	00126$
   1D12                    2072 00206$:
   1D12 1D                 2073 	.db	00103$>>8
   1D13 1D                 2074 	.db	00104$>>8
   1D14 1F                 2075 	.db	00112$>>8
   1D15 1F                 2076 	.db	00113$>>8
   1D16 1E                 2077 	.db	00106$>>8
   1D17 1F                 2078 	.db	00114$>>8
   1D18 1F                 2079 	.db	00115$>>8
   1D19 21                 2080 	.db	00127$>>8
   1D1A 1F                 2081 	.db	00117$>>8
   1D1B 1F                 2082 	.db	00116$>>8
   1D1C 21                 2083 	.db	00127$>>8
   1D1D 21                 2084 	.db	00127$>>8
   1D1E 21                 2085 	.db	00127$>>8
   1D1F 21                 2086 	.db	00127$>>8
   1D20 20                 2087 	.db	00122$>>8
   1D21 20                 2088 	.db	00123$>>8
   1D22 20                 2089 	.db	00126$>>8
                           2090 ;	cc1110_spicom.c:399: case CMD_PEEK:
   1D23                    2091 00103$:
                           2092 ;	cc1110_spicom.c:400: ep5.OUTbytesleft =  *ptr++;
   1D23 8D 82         [24] 2093 	mov	dpl,r5
   1D25 8E 83         [24] 2094 	mov	dph,r6
   1D27 8F F0         [24] 2095 	mov	b,r7
   1D29 12 35 83      [24] 2096 	lcall	__gptrget
   1D2C FA            [12] 2097 	mov	r2,a
   1D2D 74 01         [12] 2098 	mov	a,#0x01
   1D2F 2D            [12] 2099 	add	a,r5
   1D30 F5 35         [12] 2100 	mov	_processOUTEP5_sloc0_1_0,a
   1D32 E4            [12] 2101 	clr	a
   1D33 3E            [12] 2102 	addc	a,r6
   1D34 F5 36         [12] 2103 	mov	(_processOUTEP5_sloc0_1_0 + 1),a
   1D36 8A 37         [24] 2104 	mov	_processOUTEP5_sloc1_1_0,r2
   1D38 75 38 00      [24] 2105 	mov	(_processOUTEP5_sloc1_1_0 + 1),#0x00
   1D3B 90 F9 50      [24] 2106 	mov	dptr,#(_ep5 + 0x000c)
   1D3E E5 37         [12] 2107 	mov	a,_processOUTEP5_sloc1_1_0
   1D40 F0            [24] 2108 	movx	@dptr,a
   1D41 E5 38         [12] 2109 	mov	a,(_processOUTEP5_sloc1_1_0 + 1)
   1D43 A3            [24] 2110 	inc	dptr
   1D44 F0            [24] 2111 	movx	@dptr,a
                           2112 ;	cc1110_spicom.c:401: ep5.OUTbytesleft += (u16)*ptr++ << 8;
   1D45 85 35 82      [24] 2113 	mov	dpl,_processOUTEP5_sloc0_1_0
   1D48 85 36 83      [24] 2114 	mov	dph,(_processOUTEP5_sloc0_1_0 + 1)
   1D4B E0            [24] 2115 	movx	a,@dptr
   1D4C F5 35         [12] 2116 	mov	_processOUTEP5_sloc0_1_0,a
   1D4E 74 02         [12] 2117 	mov	a,#0x02
   1D50 2D            [12] 2118 	add	a,r5
   1D51 F5 39         [12] 2119 	mov	_processOUTEP5_sloc2_1_0,a
   1D53 E4            [12] 2120 	clr	a
   1D54 3E            [12] 2121 	addc	a,r6
   1D55 F5 3A         [12] 2122 	mov	(_processOUTEP5_sloc2_1_0 + 1),a
   1D57 A9 35         [24] 2123 	mov	r1,_processOUTEP5_sloc0_1_0
   1D59 89 02         [24] 2124 	mov	ar2,r1
   1D5B E4            [12] 2125 	clr	a
   1D5C 25 37         [12] 2126 	add	a,_processOUTEP5_sloc1_1_0
   1D5E F5 37         [12] 2127 	mov	_processOUTEP5_sloc1_1_0,a
   1D60 EA            [12] 2128 	mov	a,r2
   1D61 35 38         [12] 2129 	addc	a,(_processOUTEP5_sloc1_1_0 + 1)
   1D63 F5 38         [12] 2130 	mov	(_processOUTEP5_sloc1_1_0 + 1),a
   1D65 90 F9 50      [24] 2131 	mov	dptr,#(_ep5 + 0x000c)
   1D68 E5 37         [12] 2132 	mov	a,_processOUTEP5_sloc1_1_0
   1D6A F0            [24] 2133 	movx	@dptr,a
   1D6B E5 38         [12] 2134 	mov	a,(_processOUTEP5_sloc1_1_0 + 1)
   1D6D A3            [24] 2135 	inc	dptr
   1D6E F0            [24] 2136 	movx	@dptr,a
                           2137 ;	cc1110_spicom.c:403: loop =  (u16)*ptr++;
   1D6F 85 39 82      [24] 2138 	mov	dpl,_processOUTEP5_sloc2_1_0
   1D72 85 3A 83      [24] 2139 	mov	dph,(_processOUTEP5_sloc2_1_0 + 1)
   1D75 E0            [24] 2140 	movx	a,@dptr
   1D76 F8            [12] 2141 	mov	r0,a
   1D77 8D 82         [24] 2142 	mov	dpl,r5
   1D79 8E 83         [24] 2143 	mov	dph,r6
   1D7B A3            [24] 2144 	inc	dptr
   1D7C A3            [24] 2145 	inc	dptr
   1D7D A3            [24] 2146 	inc	dptr
   1D7E 88 33         [24] 2147 	mov	_processOUTEP5_loop_1_117,r0
   1D80 75 34 00      [24] 2148 	mov	(_processOUTEP5_loop_1_117 + 1),#0x00
                           2149 ;	cc1110_spicom.c:404: loop += (u16)*ptr++ << 8;
   1D83 E0            [24] 2150 	movx	a,@dptr
   1D84 FA            [12] 2151 	mov	r2,a
   1D85 E4            [12] 2152 	clr	a
   1D86 25 33         [12] 2153 	add	a,_processOUTEP5_loop_1_117
   1D88 F5 33         [12] 2154 	mov	_processOUTEP5_loop_1_117,a
   1D8A EA            [12] 2155 	mov	a,r2
   1D8B 35 34         [12] 2156 	addc	a,(_processOUTEP5_loop_1_117 + 1)
   1D8D F5 34         [12] 2157 	mov	(_processOUTEP5_loop_1_117 + 1),a
                           2158 ;	cc1110_spicom.c:405: ptr = (__xdata u8*) loop;
   1D8F 85 33 31      [24] 2159 	mov	_txdata_PARM_4,_processOUTEP5_loop_1_117
   1D92 85 34 32      [24] 2160 	mov	(_txdata_PARM_4 + 1),(_processOUTEP5_loop_1_117 + 1)
                           2161 ;	cc1110_spicom.c:407: txdata(ep5.OUTapp, ep5.OUTcmd, ep5.OUTbytesleft, ptr);
   1D95 90 F9 4E      [24] 2162 	mov	dptr,#(_ep5 + 0x000a)
   1D98 E0            [24] 2163 	movx	a,@dptr
   1D99 FA            [12] 2164 	mov	r2,a
   1D9A 90 F9 4F      [24] 2165 	mov	dptr,#(_ep5 + 0x000b)
   1D9D E0            [24] 2166 	movx	a,@dptr
   1D9E F5 2E         [12] 2167 	mov	_txdata_PARM_2,a
   1DA0 85 37 2F      [24] 2168 	mov	_txdata_PARM_3,_processOUTEP5_sloc1_1_0
   1DA3 85 38 30      [24] 2169 	mov	(_txdata_PARM_3 + 1),(_processOUTEP5_sloc1_1_0 + 1)
   1DA6 8A 82         [24] 2170 	mov	dpl,r2
   1DA8 12 1C 06      [24] 2171 	lcall	_txdata
                           2172 ;	cc1110_spicom.c:408: ep5.OUTbytesleft = 0;
   1DAB 90 F9 50      [24] 2173 	mov	dptr,#(_ep5 + 0x000c)
   1DAE E4            [12] 2174 	clr	a
   1DAF F0            [24] 2175 	movx	@dptr,a
   1DB0 E4            [12] 2176 	clr	a
   1DB1 A3            [24] 2177 	inc	dptr
   1DB2 F0            [24] 2178 	movx	@dptr,a
                           2179 ;	cc1110_spicom.c:409: break;
   1DB3 02 21 17      [24] 2180 	ljmp	00128$
                           2181 ;	cc1110_spicom.c:411: case CMD_POKE:
   1DB6                    2182 00104$:
                           2183 ;	cc1110_spicom.c:412: loop =  *ptr++;
   1DB6 8D 82         [24] 2184 	mov	dpl,r5
   1DB8 8E 83         [24] 2185 	mov	dph,r6
   1DBA 8F F0         [24] 2186 	mov	b,r7
   1DBC 12 35 83      [24] 2187 	lcall	__gptrget
   1DBF FA            [12] 2188 	mov	r2,a
   1DC0 8D 82         [24] 2189 	mov	dpl,r5
   1DC2 8E 83         [24] 2190 	mov	dph,r6
   1DC4 A3            [24] 2191 	inc	dptr
   1DC5 8A 33         [24] 2192 	mov	_processOUTEP5_loop_1_117,r2
   1DC7 75 34 00      [24] 2193 	mov	(_processOUTEP5_loop_1_117 + 1),#0x00
                           2194 ;	cc1110_spicom.c:413: loop += *ptr++ << 8;
   1DCA E0            [24] 2195 	movx	a,@dptr
   1DCB FA            [12] 2196 	mov	r2,a
   1DCC 74 02         [12] 2197 	mov	a,#0x02
   1DCE 2D            [12] 2198 	add	a,r5
   1DCF F5 39         [12] 2199 	mov	_processOUTEP5_sloc2_1_0,a
   1DD1 E4            [12] 2200 	clr	a
   1DD2 3E            [12] 2201 	addc	a,r6
   1DD3 F5 3A         [12] 2202 	mov	(_processOUTEP5_sloc2_1_0 + 1),a
   1DD5 8A 01         [24] 2203 	mov	ar1,r2
   1DD7 89 02         [24] 2204 	mov	ar2,r1
   1DD9 E4            [12] 2205 	clr	a
   1DDA 25 33         [12] 2206 	add	a,_processOUTEP5_loop_1_117
   1DDC F5 33         [12] 2207 	mov	_processOUTEP5_loop_1_117,a
   1DDE EA            [12] 2208 	mov	a,r2
   1DDF 35 34         [12] 2209 	addc	a,(_processOUTEP5_loop_1_117 + 1)
   1DE1 F5 34         [12] 2210 	mov	(_processOUTEP5_loop_1_117 + 1),a
                           2211 ;	cc1110_spicom.c:414: ep5.dptr = (__xdata u8*) loop;
   1DE3 A8 33         [24] 2212 	mov	r0,_processOUTEP5_loop_1_117
   1DE5 AA 34         [24] 2213 	mov	r2,(_processOUTEP5_loop_1_117 + 1)
   1DE7 90 F9 54      [24] 2214 	mov	dptr,#(_ep5 + 0x0010)
   1DEA E8            [12] 2215 	mov	a,r0
   1DEB F0            [24] 2216 	movx	@dptr,a
   1DEC EA            [12] 2217 	mov	a,r2
   1DED A3            [24] 2218 	inc	dptr
   1DEE F0            [24] 2219 	movx	@dptr,a
                           2220 ;	cc1110_spicom.c:416: loop = ep5.OUTlen - 2;
   1DEF 90 F9 4C      [24] 2221 	mov	dptr,#(_ep5 + 0x0008)
   1DF2 E0            [24] 2222 	movx	a,@dptr
   1DF3 F9            [12] 2223 	mov	r1,a
   1DF4 A3            [24] 2224 	inc	dptr
   1DF5 E0            [24] 2225 	movx	a,@dptr
   1DF6 FA            [12] 2226 	mov	r2,a
   1DF7 E9            [12] 2227 	mov	a,r1
   1DF8 24 FE         [12] 2228 	add	a,#0xFE
   1DFA F5 33         [12] 2229 	mov	_processOUTEP5_loop_1_117,a
   1DFC EA            [12] 2230 	mov	a,r2
   1DFD 34 FF         [12] 2231 	addc	a,#0xFF
   1DFF F5 34         [12] 2232 	mov	(_processOUTEP5_loop_1_117 + 1),a
   1E01 85 33 37      [24] 2233 	mov	_processOUTEP5_sloc1_1_0,_processOUTEP5_loop_1_117
   1E04 85 34 38      [24] 2234 	mov	(_processOUTEP5_sloc1_1_0 + 1),(_processOUTEP5_loop_1_117 + 1)
   1E07                    2235 00138$:
                           2236 ;	cc1110_spicom.c:418: for (;loop>0;loop--)
   1E07 E5 37         [12] 2237 	mov	a,_processOUTEP5_sloc1_1_0
   1E09 45 38         [12] 2238 	orl	a,(_processOUTEP5_sloc1_1_0 + 1)
   1E0B 60 3D         [24] 2239 	jz	00105$
                           2240 ;	cc1110_spicom.c:420: *ep5.dptr++ = *ptr++;
   1E0D 90 F9 54      [24] 2241 	mov	dptr,#(_ep5 + 0x0010)
   1E10 E0            [24] 2242 	movx	a,@dptr
   1E11 F5 35         [12] 2243 	mov	_processOUTEP5_sloc0_1_0,a
   1E13 A3            [24] 2244 	inc	dptr
   1E14 E0            [24] 2245 	movx	a,@dptr
   1E15 F5 36         [12] 2246 	mov	(_processOUTEP5_sloc0_1_0 + 1),a
   1E17 74 01         [12] 2247 	mov	a,#0x01
   1E19 25 35         [12] 2248 	add	a,_processOUTEP5_sloc0_1_0
   1E1B F9            [12] 2249 	mov	r1,a
   1E1C E4            [12] 2250 	clr	a
   1E1D 35 36         [12] 2251 	addc	a,(_processOUTEP5_sloc0_1_0 + 1)
   1E1F FA            [12] 2252 	mov	r2,a
   1E20 90 F9 54      [24] 2253 	mov	dptr,#(_ep5 + 0x0010)
   1E23 E9            [12] 2254 	mov	a,r1
   1E24 F0            [24] 2255 	movx	@dptr,a
   1E25 EA            [12] 2256 	mov	a,r2
   1E26 A3            [24] 2257 	inc	dptr
   1E27 F0            [24] 2258 	movx	@dptr,a
   1E28 85 39 82      [24] 2259 	mov	dpl,_processOUTEP5_sloc2_1_0
   1E2B 85 3A 83      [24] 2260 	mov	dph,(_processOUTEP5_sloc2_1_0 + 1)
   1E2E E0            [24] 2261 	movx	a,@dptr
   1E2F FA            [12] 2262 	mov	r2,a
   1E30 A3            [24] 2263 	inc	dptr
   1E31 85 82 39      [24] 2264 	mov	_processOUTEP5_sloc2_1_0,dpl
   1E34 85 83 3A      [24] 2265 	mov	(_processOUTEP5_sloc2_1_0 + 1),dph
   1E37 85 35 82      [24] 2266 	mov	dpl,_processOUTEP5_sloc0_1_0
   1E3A 85 36 83      [24] 2267 	mov	dph,(_processOUTEP5_sloc0_1_0 + 1)
   1E3D EA            [12] 2268 	mov	a,r2
   1E3E F0            [24] 2269 	movx	@dptr,a
                           2270 ;	cc1110_spicom.c:418: for (;loop>0;loop--)
   1E3F 15 37         [12] 2271 	dec	_processOUTEP5_sloc1_1_0
   1E41 74 FF         [12] 2272 	mov	a,#0xFF
   1E43 B5 37 02      [24] 2273 	cjne	a,_processOUTEP5_sloc1_1_0,00208$
   1E46 15 38         [12] 2274 	dec	(_processOUTEP5_sloc1_1_0 + 1)
   1E48                    2275 00208$:
   1E48 80 BD         [24] 2276 	sjmp	00138$
   1E4A                    2277 00105$:
                           2278 ;	cc1110_spicom.c:424: txdata(ep5.OUTapp, ep5.OUTcmd, 2, (__xdata u8*)&(ep5.OUTbytesleft));
   1E4A 90 F9 4E      [24] 2279 	mov	dptr,#(_ep5 + 0x000a)
   1E4D E0            [24] 2280 	movx	a,@dptr
   1E4E FA            [12] 2281 	mov	r2,a
   1E4F 90 F9 4F      [24] 2282 	mov	dptr,#(_ep5 + 0x000b)
   1E52 E0            [24] 2283 	movx	a,@dptr
   1E53 F5 2E         [12] 2284 	mov	_txdata_PARM_2,a
   1E55 75 31 50      [24] 2285 	mov	_txdata_PARM_4,#(_ep5 + 0x000c)
   1E58 75 32 F9      [24] 2286 	mov	(_txdata_PARM_4 + 1),#((_ep5 + 0x000c) >> 8)
   1E5B 75 2F 02      [24] 2287 	mov	_txdata_PARM_3,#0x02
   1E5E 75 30 00      [24] 2288 	mov	(_txdata_PARM_3 + 1),#0x00
   1E61 8A 82         [24] 2289 	mov	dpl,r2
   1E63 12 1C 06      [24] 2290 	lcall	_txdata
                           2291 ;	cc1110_spicom.c:425: break;
   1E66 02 21 17      [24] 2292 	ljmp	00128$
                           2293 ;	cc1110_spicom.c:427: case CMD_POKE_REG:
   1E69                    2294 00106$:
                           2295 ;	cc1110_spicom.c:428: if (!(ep5.flags & EP_OUTBUF_CONTINUED))
   1E69 90 F9 52      [24] 2296 	mov	dptr,#(_ep5 + 0x000e)
   1E6C E0            [24] 2297 	movx	a,@dptr
   1E6D FA            [12] 2298 	mov	r2,a
   1E6E 20 E2 3C      [24] 2299 	jb	acc.2,00108$
                           2300 ;	cc1110_spicom.c:430: loop =  *ptr++;
   1E71 8D 82         [24] 2301 	mov	dpl,r5
   1E73 8E 83         [24] 2302 	mov	dph,r6
   1E75 8F F0         [24] 2303 	mov	b,r7
   1E77 12 35 83      [24] 2304 	lcall	__gptrget
   1E7A FA            [12] 2305 	mov	r2,a
   1E7B 8D 82         [24] 2306 	mov	dpl,r5
   1E7D 8E 83         [24] 2307 	mov	dph,r6
   1E7F A3            [24] 2308 	inc	dptr
   1E80 8A 33         [24] 2309 	mov	_processOUTEP5_loop_1_117,r2
   1E82 75 34 00      [24] 2310 	mov	(_processOUTEP5_loop_1_117 + 1),#0x00
                           2311 ;	cc1110_spicom.c:431: loop += *ptr++ << 8;
   1E85 E0            [24] 2312 	movx	a,@dptr
   1E86 FA            [12] 2313 	mov	r2,a
   1E87 90 F9 5C      [24] 2314 	mov	dptr,#_processOUTEP5_ptr_1_117
   1E8A 74 02         [12] 2315 	mov	a,#0x02
   1E8C 2D            [12] 2316 	add	a,r5
   1E8D F0            [24] 2317 	movx	@dptr,a
   1E8E E4            [12] 2318 	clr	a
   1E8F 3E            [12] 2319 	addc	a,r6
   1E90 A3            [24] 2320 	inc	dptr
   1E91 F0            [24] 2321 	movx	@dptr,a
   1E92 8A 01         [24] 2322 	mov	ar1,r2
   1E94 89 02         [24] 2323 	mov	ar2,r1
   1E96 E4            [12] 2324 	clr	a
   1E97 F9            [12] 2325 	mov	r1,a
   1E98 25 33         [12] 2326 	add	a,_processOUTEP5_loop_1_117
   1E9A F5 33         [12] 2327 	mov	_processOUTEP5_loop_1_117,a
   1E9C EA            [12] 2328 	mov	a,r2
   1E9D 35 34         [12] 2329 	addc	a,(_processOUTEP5_loop_1_117 + 1)
   1E9F F5 34         [12] 2330 	mov	(_processOUTEP5_loop_1_117 + 1),a
                           2331 ;	cc1110_spicom.c:432: ep5.dptr = (__xdata u8*) loop;
   1EA1 A8 33         [24] 2332 	mov	r0,_processOUTEP5_loop_1_117
   1EA3 AA 34         [24] 2333 	mov	r2,(_processOUTEP5_loop_1_117 + 1)
   1EA5 90 F9 54      [24] 2334 	mov	dptr,#(_ep5 + 0x0010)
   1EA8 E8            [12] 2335 	mov	a,r0
   1EA9 F0            [24] 2336 	movx	@dptr,a
   1EAA EA            [12] 2337 	mov	a,r2
   1EAB A3            [24] 2338 	inc	dptr
   1EAC F0            [24] 2339 	movx	@dptr,a
   1EAD                    2340 00108$:
                           2341 ;	cc1110_spicom.c:436: loop = ep5.OUTbytesleft;
   1EAD 90 F9 50      [24] 2342 	mov	dptr,#(_ep5 + 0x000c)
   1EB0 E0            [24] 2343 	movx	a,@dptr
   1EB1 F9            [12] 2344 	mov	r1,a
   1EB2 A3            [24] 2345 	inc	dptr
   1EB3 E0            [24] 2346 	movx	a,@dptr
   1EB4 FA            [12] 2347 	mov	r2,a
   1EB5 89 33         [24] 2348 	mov	_processOUTEP5_loop_1_117,r1
   1EB7 8A 34         [24] 2349 	mov	(_processOUTEP5_loop_1_117 + 1),r2
                           2350 ;	cc1110_spicom.c:437: if (loop > EP5OUT_MAX_PACKET_SIZE)
   1EB9 C3            [12] 2351 	clr	c
   1EBA 74 40         [12] 2352 	mov	a,#0x40
   1EBC 95 33         [12] 2353 	subb	a,_processOUTEP5_loop_1_117
   1EBE E4            [12] 2354 	clr	a
   1EBF 95 34         [12] 2355 	subb	a,(_processOUTEP5_loop_1_117 + 1)
   1EC1 50 06         [24] 2356 	jnc	00110$
                           2357 ;	cc1110_spicom.c:439: loop = EP5OUT_MAX_PACKET_SIZE;
   1EC3 75 33 40      [24] 2358 	mov	_processOUTEP5_loop_1_117,#0x40
   1EC6 75 34 00      [24] 2359 	mov	(_processOUTEP5_loop_1_117 + 1),#0x00
   1EC9                    2360 00110$:
                           2361 ;	cc1110_spicom.c:442: ep5.OUTbytesleft -= loop;
   1EC9 E9            [12] 2362 	mov	a,r1
   1ECA C3            [12] 2363 	clr	c
   1ECB 95 33         [12] 2364 	subb	a,_processOUTEP5_loop_1_117
   1ECD F9            [12] 2365 	mov	r1,a
   1ECE EA            [12] 2366 	mov	a,r2
   1ECF 95 34         [12] 2367 	subb	a,(_processOUTEP5_loop_1_117 + 1)
   1ED1 FA            [12] 2368 	mov	r2,a
   1ED2 90 F9 50      [24] 2369 	mov	dptr,#(_ep5 + 0x000c)
   1ED5 E9            [12] 2370 	mov	a,r1
   1ED6 F0            [24] 2371 	movx	@dptr,a
   1ED7 EA            [12] 2372 	mov	a,r2
   1ED8 A3            [24] 2373 	inc	dptr
   1ED9 F0            [24] 2374 	movx	@dptr,a
   1EDA 90 F9 5C      [24] 2375 	mov	dptr,#_processOUTEP5_ptr_1_117
   1EDD E0            [24] 2376 	movx	a,@dptr
   1EDE F5 37         [12] 2377 	mov	_processOUTEP5_sloc1_1_0,a
   1EE0 A3            [24] 2378 	inc	dptr
   1EE1 E0            [24] 2379 	movx	a,@dptr
   1EE2 F5 38         [12] 2380 	mov	(_processOUTEP5_sloc1_1_0 + 1),a
   1EE4 85 33 39      [24] 2381 	mov	_processOUTEP5_sloc2_1_0,_processOUTEP5_loop_1_117
   1EE7 85 34 3A      [24] 2382 	mov	(_processOUTEP5_sloc2_1_0 + 1),(_processOUTEP5_loop_1_117 + 1)
   1EEA                    2383 00141$:
                           2384 ;	cc1110_spicom.c:445: for (;loop>0;loop--)
   1EEA E5 39         [12] 2385 	mov	a,_processOUTEP5_sloc2_1_0
   1EEC 45 3A         [12] 2386 	orl	a,(_processOUTEP5_sloc2_1_0 + 1)
   1EEE 60 3D         [24] 2387 	jz	00111$
                           2388 ;	cc1110_spicom.c:447: *ep5.dptr++ = *ptr++;
   1EF0 90 F9 54      [24] 2389 	mov	dptr,#(_ep5 + 0x0010)
   1EF3 E0            [24] 2390 	movx	a,@dptr
   1EF4 F5 35         [12] 2391 	mov	_processOUTEP5_sloc0_1_0,a
   1EF6 A3            [24] 2392 	inc	dptr
   1EF7 E0            [24] 2393 	movx	a,@dptr
   1EF8 F5 36         [12] 2394 	mov	(_processOUTEP5_sloc0_1_0 + 1),a
   1EFA 74 01         [12] 2395 	mov	a,#0x01
   1EFC 25 35         [12] 2396 	add	a,_processOUTEP5_sloc0_1_0
   1EFE F9            [12] 2397 	mov	r1,a
   1EFF E4            [12] 2398 	clr	a
   1F00 35 36         [12] 2399 	addc	a,(_processOUTEP5_sloc0_1_0 + 1)
   1F02 FA            [12] 2400 	mov	r2,a
   1F03 90 F9 54      [24] 2401 	mov	dptr,#(_ep5 + 0x0010)
   1F06 E9            [12] 2402 	mov	a,r1
   1F07 F0            [24] 2403 	movx	@dptr,a
   1F08 EA            [12] 2404 	mov	a,r2
   1F09 A3            [24] 2405 	inc	dptr
   1F0A F0            [24] 2406 	movx	@dptr,a
   1F0B 85 37 82      [24] 2407 	mov	dpl,_processOUTEP5_sloc1_1_0
   1F0E 85 38 83      [24] 2408 	mov	dph,(_processOUTEP5_sloc1_1_0 + 1)
   1F11 E0            [24] 2409 	movx	a,@dptr
   1F12 FA            [12] 2410 	mov	r2,a
   1F13 A3            [24] 2411 	inc	dptr
   1F14 85 82 37      [24] 2412 	mov	_processOUTEP5_sloc1_1_0,dpl
   1F17 85 83 38      [24] 2413 	mov	(_processOUTEP5_sloc1_1_0 + 1),dph
   1F1A 85 35 82      [24] 2414 	mov	dpl,_processOUTEP5_sloc0_1_0
   1F1D 85 36 83      [24] 2415 	mov	dph,(_processOUTEP5_sloc0_1_0 + 1)
   1F20 EA            [12] 2416 	mov	a,r2
   1F21 F0            [24] 2417 	movx	@dptr,a
                           2418 ;	cc1110_spicom.c:445: for (;loop>0;loop--)
   1F22 15 39         [12] 2419 	dec	_processOUTEP5_sloc2_1_0
   1F24 74 FF         [12] 2420 	mov	a,#0xFF
   1F26 B5 39 02      [24] 2421 	cjne	a,_processOUTEP5_sloc2_1_0,00212$
   1F29 15 3A         [12] 2422 	dec	(_processOUTEP5_sloc2_1_0 + 1)
   1F2B                    2423 00212$:
   1F2B 80 BD         [24] 2424 	sjmp	00141$
   1F2D                    2425 00111$:
                           2426 ;	cc1110_spicom.c:450: txdata(ep5.OUTapp, ep5.OUTcmd, 2, (__xdata u8*)&(ep5.OUTbytesleft));
   1F2D 90 F9 4E      [24] 2427 	mov	dptr,#(_ep5 + 0x000a)
   1F30 E0            [24] 2428 	movx	a,@dptr
   1F31 FA            [12] 2429 	mov	r2,a
   1F32 90 F9 4F      [24] 2430 	mov	dptr,#(_ep5 + 0x000b)
   1F35 E0            [24] 2431 	movx	a,@dptr
   1F36 F5 2E         [12] 2432 	mov	_txdata_PARM_2,a
   1F38 75 31 50      [24] 2433 	mov	_txdata_PARM_4,#(_ep5 + 0x000c)
   1F3B 75 32 F9      [24] 2434 	mov	(_txdata_PARM_4 + 1),#((_ep5 + 0x000c) >> 8)
   1F3E 75 2F 02      [24] 2435 	mov	_txdata_PARM_3,#0x02
   1F41 75 30 00      [24] 2436 	mov	(_txdata_PARM_3 + 1),#0x00
   1F44 8A 82         [24] 2437 	mov	dpl,r2
   1F46 12 1C 06      [24] 2438 	lcall	_txdata
                           2439 ;	cc1110_spicom.c:452: break;
   1F49 02 21 17      [24] 2440 	ljmp	00128$
                           2441 ;	cc1110_spicom.c:453: case CMD_PING:
   1F4C                    2442 00112$:
                           2443 ;	cc1110_spicom.c:454: blink(2,2);
   1F4C D2 A4         [12] 2444 	setb	_P2_4
   1F4E 90 00 02      [24] 2445 	mov	dptr,#0x0002
   1F51 C0 07         [24] 2446 	push	ar7
   1F53 C0 06         [24] 2447 	push	ar6
   1F55 C0 05         [24] 2448 	push	ar5
   1F57 12 2D 63      [24] 2449 	lcall	_sleepMillis
   1F5A C2 A4         [12] 2450 	clr	_P2_4
   1F5C 90 00 02      [24] 2451 	mov	dptr,#0x0002
   1F5F 12 2D 63      [24] 2452 	lcall	_sleepMillis
   1F62 D0 05         [24] 2453 	pop	ar5
   1F64 D0 06         [24] 2454 	pop	ar6
   1F66 D0 07         [24] 2455 	pop	ar7
                           2456 ;	cc1110_spicom.c:455: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   1F68 90 F9 4E      [24] 2457 	mov	dptr,#(_ep5 + 0x000a)
   1F6B E0            [24] 2458 	movx	a,@dptr
   1F6C FA            [12] 2459 	mov	r2,a
   1F6D 90 F9 4F      [24] 2460 	mov	dptr,#(_ep5 + 0x000b)
   1F70 E0            [24] 2461 	movx	a,@dptr
   1F71 F5 2E         [12] 2462 	mov	_txdata_PARM_2,a
   1F73 90 F9 4C      [24] 2463 	mov	dptr,#(_ep5 + 0x0008)
   1F76 E0            [24] 2464 	movx	a,@dptr
   1F77 F5 2F         [12] 2465 	mov	_txdata_PARM_3,a
   1F79 A3            [24] 2466 	inc	dptr
   1F7A E0            [24] 2467 	movx	a,@dptr
   1F7B F5 30         [12] 2468 	mov	(_txdata_PARM_3 + 1),a
   1F7D 8D 31         [24] 2469 	mov	_txdata_PARM_4,r5
   1F7F 8E 32         [24] 2470 	mov	(_txdata_PARM_4 + 1),r6
   1F81 8A 82         [24] 2471 	mov	dpl,r2
   1F83 12 1C 06      [24] 2472 	lcall	_txdata
                           2473 ;	cc1110_spicom.c:456: break;
   1F86 02 21 17      [24] 2474 	ljmp	00128$
                           2475 ;	cc1110_spicom.c:458: case CMD_STATUS:
   1F89                    2476 00113$:
                           2477 ;	cc1110_spicom.c:459: txdata(ep5.OUTapp, ep5.OUTcmd, 13, (__xdata u8*)"UNIMPLEMENTED");
   1F89 75 31 A4      [24] 2478 	mov	_txdata_PARM_4,#__str_0
   1F8C 75 32 37      [24] 2479 	mov	(_txdata_PARM_4 + 1),#(__str_0 >> 8)
   1F8F 8B 2E         [24] 2480 	mov	_txdata_PARM_2,r3
   1F91 75 2F 0D      [24] 2481 	mov	_txdata_PARM_3,#0x0D
   1F94 75 30 00      [24] 2482 	mov	(_txdata_PARM_3 + 1),#0x00
   1F97 85 39 82      [24] 2483 	mov	dpl,_processOUTEP5_sloc2_1_0
   1F9A 12 1C 06      [24] 2484 	lcall	_txdata
                           2485 ;	cc1110_spicom.c:461: break;
   1F9D 02 21 17      [24] 2486 	ljmp	00128$
                           2487 ;	cc1110_spicom.c:463: case CMD_GET_CLOCK:
   1FA0                    2488 00114$:
                           2489 ;	cc1110_spicom.c:464: txdata(ep5.OUTapp, ep5.OUTcmd, 4, (__xdata u8*)clock);
   1FA0 90 FD B7      [24] 2490 	mov	dptr,#_clock
   1FA3 E0            [24] 2491 	movx	a,@dptr
   1FA4 F8            [12] 2492 	mov	r0,a
   1FA5 A3            [24] 2493 	inc	dptr
   1FA6 E0            [24] 2494 	movx	a,@dptr
   1FA7 F9            [12] 2495 	mov	r1,a
   1FA8 A3            [24] 2496 	inc	dptr
   1FA9 E0            [24] 2497 	movx	a,@dptr
   1FAA A3            [24] 2498 	inc	dptr
   1FAB E0            [24] 2499 	movx	a,@dptr
   1FAC 88 31         [24] 2500 	mov	_txdata_PARM_4,r0
   1FAE 89 32         [24] 2501 	mov	(_txdata_PARM_4 + 1),r1
   1FB0 8B 2E         [24] 2502 	mov	_txdata_PARM_2,r3
   1FB2 75 2F 04      [24] 2503 	mov	_txdata_PARM_3,#0x04
   1FB5 75 30 00      [24] 2504 	mov	(_txdata_PARM_3 + 1),#0x00
   1FB8 85 39 82      [24] 2505 	mov	dpl,_processOUTEP5_sloc2_1_0
   1FBB 12 1C 06      [24] 2506 	lcall	_txdata
                           2507 ;	cc1110_spicom.c:465: break;
   1FBE 02 21 17      [24] 2508 	ljmp	00128$
                           2509 ;	cc1110_spicom.c:467: case CMD_BUILDTYPE:
   1FC1                    2510 00115$:
                           2511 ;	cc1110_spicom.c:468: txdata(ep5.OUTapp, ep5.OUTcmd, sizeof(buildname), (__xdata u8*)&buildname[0]);
   1FC1 75 31 95      [24] 2512 	mov	_txdata_PARM_4,#_buildname
   1FC4 75 32 37      [24] 2513 	mov	(_txdata_PARM_4 + 1),#(_buildname >> 8)
   1FC7 8B 2E         [24] 2514 	mov	_txdata_PARM_2,r3
   1FC9 75 2F 0F      [24] 2515 	mov	_txdata_PARM_3,#0x0F
   1FCC 75 30 00      [24] 2516 	mov	(_txdata_PARM_3 + 1),#0x00
   1FCF 85 39 82      [24] 2517 	mov	dpl,_processOUTEP5_sloc2_1_0
   1FD2 12 1C 06      [24] 2518 	lcall	_txdata
                           2519 ;	cc1110_spicom.c:469: break;
   1FD5 02 21 17      [24] 2520 	ljmp	00128$
                           2521 ;	cc1110_spicom.c:471: case CMD_COMPILER:
   1FD8                    2522 00116$:
                           2523 ;	cc1110_spicom.c:472: txdata(ep5.OUTapp, ep5.OUTcmd, sizeof(sdccver), (__xdata u8*)&sdccver[0]);
   1FD8 75 31 8C      [24] 2524 	mov	_txdata_PARM_4,#_sdccver
   1FDB 75 32 37      [24] 2525 	mov	(_txdata_PARM_4 + 1),#(_sdccver >> 8)
   1FDE 8B 2E         [24] 2526 	mov	_txdata_PARM_2,r3
   1FE0 75 2F 09      [24] 2527 	mov	_txdata_PARM_3,#0x09
   1FE3 75 30 00      [24] 2528 	mov	(_txdata_PARM_3 + 1),#0x00
   1FE6 85 39 82      [24] 2529 	mov	dpl,_processOUTEP5_sloc2_1_0
   1FE9 12 1C 06      [24] 2530 	lcall	_txdata
                           2531 ;	cc1110_spicom.c:473: break;
   1FEC 02 21 17      [24] 2532 	ljmp	00128$
                           2533 ;	cc1110_spicom.c:475: case CMD_RFMODE:
   1FEF                    2534 00117$:
                           2535 ;	cc1110_spicom.c:476: switch (*ptr++)
   1FEF 8D 82         [24] 2536 	mov	dpl,r5
   1FF1 8E 83         [24] 2537 	mov	dph,r6
   1FF3 8F F0         [24] 2538 	mov	b,r7
   1FF5 12 35 83      [24] 2539 	lcall	__gptrget
   1FF8 FC            [12] 2540 	mov	r4,a
   1FF9 74 01         [12] 2541 	mov	a,#0x01
   1FFB 2D            [12] 2542 	add	a,r5
   1FFC F9            [12] 2543 	mov	r1,a
   1FFD E4            [12] 2544 	clr	a
   1FFE 3E            [12] 2545 	addc	a,r6
   1FFF FA            [12] 2546 	mov	r2,a
   2000 BC 02 02      [24] 2547 	cjne	r4,#0x02,00213$
   2003 80 0A         [24] 2548 	sjmp	00118$
   2005                    2549 00213$:
   2005 BC 03 02      [24] 2550 	cjne	r4,#0x03,00214$
   2008 80 21         [24] 2551 	sjmp	00120$
   200A                    2552 00214$:
                           2553 ;	cc1110_spicom.c:478: case RFST_SRX:
   200A BC 04 29      [24] 2554 	cjne	r4,#0x04,00121$
   200D 80 0D         [24] 2555 	sjmp	00119$
   200F                    2556 00118$:
                           2557 ;	cc1110_spicom.c:479: RxMode();
   200F C0 02         [24] 2558 	push	ar2
   2011 C0 01         [24] 2559 	push	ar1
   2013 12 23 0E      [24] 2560 	lcall	_RxMode
   2016 D0 01         [24] 2561 	pop	ar1
   2018 D0 02         [24] 2562 	pop	ar2
                           2563 ;	cc1110_spicom.c:480: break;
                           2564 ;	cc1110_spicom.c:481: case RFST_SIDLE:
   201A 80 1A         [24] 2565 	sjmp	00121$
   201C                    2566 00119$:
                           2567 ;	cc1110_spicom.c:482: LED = 0;
   201C C2 A4         [12] 2568 	clr	_P2_4
                           2569 ;	cc1110_spicom.c:483: IdleMode();
   201E C0 02         [24] 2570 	push	ar2
   2020 C0 01         [24] 2571 	push	ar1
   2022 12 23 52      [24] 2572 	lcall	_IdleMode
   2025 D0 01         [24] 2573 	pop	ar1
   2027 D0 02         [24] 2574 	pop	ar2
                           2575 ;	cc1110_spicom.c:484: break;
                           2576 ;	cc1110_spicom.c:485: case RFST_STX:
   2029 80 0B         [24] 2577 	sjmp	00121$
   202B                    2578 00120$:
                           2579 ;	cc1110_spicom.c:486: TxMode();
   202B C0 02         [24] 2580 	push	ar2
   202D C0 01         [24] 2581 	push	ar1
   202F 12 23 2B      [24] 2582 	lcall	_TxMode
   2032 D0 01         [24] 2583 	pop	ar1
   2034 D0 02         [24] 2584 	pop	ar2
                           2585 ;	cc1110_spicom.c:488: }
   2036                    2586 00121$:
                           2587 ;	cc1110_spicom.c:490: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   2036 90 F9 4E      [24] 2588 	mov	dptr,#(_ep5 + 0x000a)
   2039 E0            [24] 2589 	movx	a,@dptr
   203A FC            [12] 2590 	mov	r4,a
   203B 90 F9 4F      [24] 2591 	mov	dptr,#(_ep5 + 0x000b)
   203E E0            [24] 2592 	movx	a,@dptr
   203F F5 2E         [12] 2593 	mov	_txdata_PARM_2,a
   2041 90 F9 4C      [24] 2594 	mov	dptr,#(_ep5 + 0x0008)
   2044 E0            [24] 2595 	movx	a,@dptr
   2045 F5 2F         [12] 2596 	mov	_txdata_PARM_3,a
   2047 A3            [24] 2597 	inc	dptr
   2048 E0            [24] 2598 	movx	a,@dptr
   2049 F5 30         [12] 2599 	mov	(_txdata_PARM_3 + 1),a
   204B 89 31         [24] 2600 	mov	_txdata_PARM_4,r1
   204D 8A 32         [24] 2601 	mov	(_txdata_PARM_4 + 1),r2
   204F 8C 82         [24] 2602 	mov	dpl,r4
   2051 12 1C 06      [24] 2603 	lcall	_txdata
                           2604 ;	cc1110_spicom.c:491: break;
   2054 02 21 17      [24] 2605 	ljmp	00128$
                           2606 ;	cc1110_spicom.c:493: case CMD_PARTNUM:
   2057                    2607 00122$:
                           2608 ;	cc1110_spicom.c:494: ep5.OUTbytesleft = 1;
   2057 90 F9 50      [24] 2609 	mov	dptr,#(_ep5 + 0x000c)
   205A 74 01         [12] 2610 	mov	a,#0x01
   205C F0            [24] 2611 	movx	@dptr,a
   205D E4            [12] 2612 	clr	a
   205E A3            [24] 2613 	inc	dptr
   205F F0            [24] 2614 	movx	@dptr,a
                           2615 ;	cc1110_spicom.c:496: ptr = (__xdata u8*) &PARTNUM;
   2060 75 31 36      [24] 2616 	mov	_txdata_PARM_4,#_PARTNUM
   2063 75 32 DF      [24] 2617 	mov	(_txdata_PARM_4 + 1),#(_PARTNUM >> 8)
                           2618 ;	cc1110_spicom.c:498: txdata(ep5.OUTapp, ep5.OUTcmd, ep5.OUTbytesleft, ptr);
   2066 90 F9 4E      [24] 2619 	mov	dptr,#(_ep5 + 0x000a)
   2069 E0            [24] 2620 	movx	a,@dptr
   206A FC            [12] 2621 	mov	r4,a
   206B 90 F9 4F      [24] 2622 	mov	dptr,#(_ep5 + 0x000b)
   206E E0            [24] 2623 	movx	a,@dptr
   206F F5 2E         [12] 2624 	mov	_txdata_PARM_2,a
   2071 90 F9 50      [24] 2625 	mov	dptr,#(_ep5 + 0x000c)
   2074 E0            [24] 2626 	movx	a,@dptr
   2075 F5 2F         [12] 2627 	mov	_txdata_PARM_3,a
   2077 A3            [24] 2628 	inc	dptr
   2078 E0            [24] 2629 	movx	a,@dptr
   2079 F5 30         [12] 2630 	mov	(_txdata_PARM_3 + 1),a
   207B 8C 82         [24] 2631 	mov	dpl,r4
   207D 12 1C 06      [24] 2632 	lcall	_txdata
                           2633 ;	cc1110_spicom.c:499: ep5.OUTbytesleft = 0;
   2080 90 F9 50      [24] 2634 	mov	dptr,#(_ep5 + 0x000c)
   2083 E4            [12] 2635 	clr	a
   2084 F0            [24] 2636 	movx	@dptr,a
   2085 E4            [12] 2637 	clr	a
   2086 A3            [24] 2638 	inc	dptr
   2087 F0            [24] 2639 	movx	@dptr,a
                           2640 ;	cc1110_spicom.c:500: break;
   2088 02 21 17      [24] 2641 	ljmp	00128$
                           2642 ;	cc1110_spicom.c:502: case CMD_RESET:
   208B                    2643 00123$:
                           2644 ;	cc1110_spicom.c:503: if (strncmp(ptr, "RESET_NOW", 9))
   208B 8D 02         [24] 2645 	mov	ar2,r5
   208D 8E 04         [24] 2646 	mov	ar4,r6
   208F 8C 01         [24] 2647 	mov	ar1,r4
   2091 7C 00         [12] 2648 	mov	r4,#0x00
   2093 90 FD BB      [24] 2649 	mov	dptr,#_strncmp_PARM_2
   2096 74 B2         [12] 2650 	mov	a,#__str_1
   2098 F0            [24] 2651 	movx	@dptr,a
   2099 74 37         [12] 2652 	mov	a,#(__str_1 >> 8)
   209B A3            [24] 2653 	inc	dptr
   209C F0            [24] 2654 	movx	@dptr,a
   209D 74 80         [12] 2655 	mov	a,#0x80
   209F A3            [24] 2656 	inc	dptr
   20A0 F0            [24] 2657 	movx	@dptr,a
   20A1 75 14 09      [24] 2658 	mov	_strncmp_PARM_3,#0x09
   20A4 75 15 00      [24] 2659 	mov	(_strncmp_PARM_3 + 1),#0x00
   20A7 8A 82         [24] 2660 	mov	dpl,r2
   20A9 89 83         [24] 2661 	mov	dph,r1
   20AB 8C F0         [24] 2662 	mov	b,r4
   20AD C0 07         [24] 2663 	push	ar7
   20AF C0 06         [24] 2664 	push	ar6
   20B1 C0 05         [24] 2665 	push	ar5
   20B3 12 2E 2A      [24] 2666 	lcall	_strncmp
   20B6 E5 82         [12] 2667 	mov	a,dpl
   20B8 85 83 F0      [24] 2668 	mov	b,dph
   20BB D0 05         [24] 2669 	pop	ar5
   20BD D0 06         [24] 2670 	pop	ar6
   20BF D0 07         [24] 2671 	pop	ar7
   20C1 45 F0         [12] 2672 	orl	a,b
   20C3 70 52         [24] 2673 	jnz	00128$
                           2674 ;	cc1110_spicom.c:507: WDCTL = 0x80;   // Watchdog ENABLE, Watchdog mode, 1s until reset
   20C5 75 C9 80      [24] 2675 	mov	_WDCTL,#0x80
                           2676 ;	cc1110_spicom.c:509: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   20C8 90 F9 4E      [24] 2677 	mov	dptr,#(_ep5 + 0x000a)
   20CB E0            [24] 2678 	movx	a,@dptr
   20CC FC            [12] 2679 	mov	r4,a
   20CD 90 F9 4F      [24] 2680 	mov	dptr,#(_ep5 + 0x000b)
   20D0 E0            [24] 2681 	movx	a,@dptr
   20D1 F5 2E         [12] 2682 	mov	_txdata_PARM_2,a
   20D3 90 F9 4C      [24] 2683 	mov	dptr,#(_ep5 + 0x0008)
   20D6 E0            [24] 2684 	movx	a,@dptr
   20D7 F5 2F         [12] 2685 	mov	_txdata_PARM_3,a
   20D9 A3            [24] 2686 	inc	dptr
   20DA E0            [24] 2687 	movx	a,@dptr
   20DB F5 30         [12] 2688 	mov	(_txdata_PARM_3 + 1),a
   20DD 8D 31         [24] 2689 	mov	_txdata_PARM_4,r5
   20DF 8E 32         [24] 2690 	mov	(_txdata_PARM_4 + 1),r6
   20E1 8C 82         [24] 2691 	mov	dpl,r4
   20E3 12 1C 06      [24] 2692 	lcall	_txdata
                           2693 ;	cc1110_spicom.c:510: break;
                           2694 ;	cc1110_spicom.c:512: case CMD_CLEAR_CODES:
   20E6 80 2F         [24] 2695 	sjmp	00128$
   20E8                    2696 00126$:
                           2697 ;	cc1110_spicom.c:513: lastCode[0] = 0;
   20E8 90 FD B5      [24] 2698 	mov	dptr,#_lastCode
                           2699 ;	cc1110_spicom.c:514: lastCode[1] = 0;
   20EB E4            [12] 2700 	clr	a
   20EC F0            [24] 2701 	movx	@dptr,a
   20ED 90 FD B6      [24] 2702 	mov	dptr,#(_lastCode + 0x0001)
   20F0 F0            [24] 2703 	movx	@dptr,a
                           2704 ;	cc1110_spicom.c:516: appReturn(2, ptr);
   20F1 90 F9 59      [24] 2705 	mov	dptr,#_appReturn_PARM_2
   20F4 ED            [12] 2706 	mov	a,r5
   20F5 F0            [24] 2707 	movx	@dptr,a
   20F6 EE            [12] 2708 	mov	a,r6
   20F7 A3            [24] 2709 	inc	dptr
   20F8 F0            [24] 2710 	movx	@dptr,a
   20F9 75 82 02      [24] 2711 	mov	dpl,#0x02
   20FC 12 1C 5F      [24] 2712 	lcall	_appReturn
                           2713 ;	cc1110_spicom.c:517: break;
                           2714 ;	cc1110_spicom.c:519: default:
   20FF 80 16         [24] 2715 	sjmp	00128$
   2101                    2716 00127$:
                           2717 ;	cc1110_spicom.c:520: txdata(ep5.OUTapp,ep5.OUTcmd,ep5.OUTlen,ptr);
   2101 90 F9 4C      [24] 2718 	mov	dptr,#(_ep5 + 0x0008)
   2104 E0            [24] 2719 	movx	a,@dptr
   2105 F5 2F         [12] 2720 	mov	_txdata_PARM_3,a
   2107 A3            [24] 2721 	inc	dptr
   2108 E0            [24] 2722 	movx	a,@dptr
   2109 F5 30         [12] 2723 	mov	(_txdata_PARM_3 + 1),a
   210B 8B 2E         [24] 2724 	mov	_txdata_PARM_2,r3
   210D 8D 31         [24] 2725 	mov	_txdata_PARM_4,r5
   210F 8E 32         [24] 2726 	mov	(_txdata_PARM_4 + 1),r6
   2111 85 39 82      [24] 2727 	mov	dpl,_processOUTEP5_sloc2_1_0
   2114 12 1C 06      [24] 2728 	lcall	_txdata
                           2729 ;	cc1110_spicom.c:521: }
   2117                    2730 00128$:
                           2731 ;	cc1110_spicom.c:523: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   2117 90 F9 52      [24] 2732 	mov	dptr,#(_ep5 + 0x000e)
   211A E0            [24] 2733 	movx	a,@dptr
   211B 54 FD         [12] 2734 	anl	a,#0xFD
   211D F0            [24] 2735 	movx	@dptr,a
   211E 22            [24] 2736 	ret
   211F                    2737 00135$:
                           2738 ;	cc1110_spicom.c:527: if (cb_ep5)
   211F E5 2C         [12] 2739 	mov	a,_cb_ep5
   2121 45 2D         [12] 2740 	orl	a,(_cb_ep5 + 1)
   2123 60 19         [24] 2741 	jz	00132$
                           2742 ;	cc1110_spicom.c:529: if (! cb_ep5())
   2125 85 2C 82      [24] 2743 	mov	dpl,_cb_ep5
   2128 85 2D 83      [24] 2744 	mov	dph,(_cb_ep5 + 1)
   212B 12 00 89      [24] 2745 	lcall	__sdcc_call_dptr
   212E AE 82         [24] 2746 	mov	r6,dpl
   2130 AF 83         [24] 2747 	mov	r7,dph
   2132 EE            [12] 2748 	mov	a,r6
   2133 4F            [12] 2749 	orl	a,r7
   2134 70 10         [24] 2750 	jnz	00143$
                           2751 ;	cc1110_spicom.c:533: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   2136 90 F9 52      [24] 2752 	mov	dptr,#(_ep5 + 0x000e)
   2139 E0            [24] 2753 	movx	a,@dptr
   213A 54 FD         [12] 2754 	anl	a,#0xFD
   213C F0            [24] 2755 	movx	@dptr,a
   213D 22            [24] 2756 	ret
   213E                    2757 00132$:
                           2758 ;	cc1110_spicom.c:538: ep5.flags &= ~EP_OUTBUF_WRITTEN; 
   213E 90 F9 52      [24] 2759 	mov	dptr,#(_ep5 + 0x000e)
   2141 E0            [24] 2760 	movx	a,@dptr
   2142 54 FD         [12] 2761 	anl	a,#0xFD
   2144 FF            [12] 2762 	mov	r7,a
   2145 F0            [24] 2763 	movx	@dptr,a
   2146                    2764 00143$:
   2146 22            [24] 2765 	ret
                           2766 	.area CSEG    (CODE)
                           2767 	.area CONST   (CODE)
   378C                    2768 _sdccver:
   378C 53 44 43 43 76 33  2769 	.ascii "SDCCv330"
        33 30
   3794 00                 2770 	.db 0x00
   3795                    2771 _buildname:
   3795 45                 2772 	.db #0x45	; 69	'E'
   3796 58                 2773 	.db #0x58	; 88	'X'
   3797 50                 2774 	.db #0x50	; 80	'P'
   3798 4C                 2775 	.db #0x4C	; 76	'L'
   3799 4F                 2776 	.db #0x4F	; 79	'O'
   379A 52                 2777 	.db #0x52	; 82	'R'
   379B 45                 2778 	.db #0x45	; 69	'E'
   379C 52                 2779 	.db #0x52	; 82	'R'
   379D 20                 2780 	.db #0x20	; 32
   379E 72                 2781 	.db #0x72	; 114	'r'
   379F 35                 2782 	.db #0x35	; 53	'5'
   37A0 35                 2783 	.db #0x35	; 53	'5'
   37A1 33                 2784 	.db #0x33	; 51	'3'
   37A2 35                 2785 	.db #0x35	; 53	'5'
   37A3 00                 2786 	.db #0x00	; 0
   37A4                    2787 __str_0:
   37A4 55 4E 49 4D 50 4C  2788 	.ascii "UNIMPLEMENTED"
        45 4D 45 4E 54 45
        44
   37B1 00                 2789 	.db 0x00
   37B2                    2790 __str_1:
   37B2 52 45 53 45 54 5F  2791 	.ascii "RESET_NOW"
        4E 4F 57
   37BB 00                 2792 	.db 0x00
                           2793 	.area XINIT   (CODE)
                           2794 	.area CABS    (ABS,CODE)
