                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Fri Dec 16 14:41:37 2016
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
   0000                     481 	.org 0x0000
                     0080   482 _P0	=	0x0080
                     0081   483 _SP	=	0x0081
                     0082   484 _DPL0	=	0x0082
                     0083   485 _DPH0	=	0x0083
                     0084   486 _DPL1	=	0x0084
                     0085   487 _DPH1	=	0x0085
                     0086   488 _U0CSR	=	0x0086
                     0087   489 _PCON	=	0x0087
                     0088   490 _TCON	=	0x0088
                     0089   491 _P0IFG	=	0x0089
                     008A   492 _P1IFG	=	0x008a
                     008B   493 _P2IFG	=	0x008b
                     008C   494 _PICTL	=	0x008c
                     008D   495 _P1IEN	=	0x008d
                     008E   496 __SFR8E	=	0x008e
                     008F   497 _P0INP	=	0x008f
                     0090   498 _P1	=	0x0090
                     0091   499 _RFIM	=	0x0091
                     0092   500 _DPS	=	0x0092
                     0093   501 _MPAGE	=	0x0093
                     0093   502 __XPAGE	=	0x0093
                     0094   503 __SFR94	=	0x0094
                     0095   504 __SFR95	=	0x0095
                     0096   505 __SFR96	=	0x0096
                     0097   506 __SFR97	=	0x0097
                     0098   507 _S0CON	=	0x0098
                     0099   508 __SFR99	=	0x0099
                     009A   509 _IEN2	=	0x009a
                     009B   510 _S1CON	=	0x009b
                     009C   511 _T2CT	=	0x009c
                     009D   512 _T2PR	=	0x009d
                     009E   513 _T2CTL	=	0x009e
                     009F   514 __SFR9F	=	0x009f
                     00A0   515 _P2	=	0x00a0
                     00A1   516 _WORIRQ	=	0x00a1
                     00A2   517 _WORCTRL	=	0x00a2
                     00A3   518 _WOREVT0	=	0x00a3
                     00A4   519 _WOREVT1	=	0x00a4
                     00A5   520 _WORTIME0	=	0x00a5
                     00A6   521 _WORTIME1	=	0x00a6
                     00A7   522 __SFRA7	=	0x00a7
                     00A8   523 _IEN0	=	0x00a8
                     00A9   524 _IP0	=	0x00a9
                     00AA   525 __SFRAA	=	0x00aa
                     00AB   526 _FWT	=	0x00ab
                     00AC   527 _FADDRL	=	0x00ac
                     00AD   528 _FADDRH	=	0x00ad
                     00AE   529 _FCTL	=	0x00ae
                     00AF   530 _FWDATA	=	0x00af
                     00B0   531 __SFRB0	=	0x00b0
                     00B1   532 _ENCDI	=	0x00b1
                     00B2   533 _ENCDO	=	0x00b2
                     00B3   534 _ENCCS	=	0x00b3
                     00B4   535 _ADCCON1	=	0x00b4
                     00B5   536 _ADCCON2	=	0x00b5
                     00B6   537 _ADCCON3	=	0x00b6
                     00B7   538 __SFRB7	=	0x00b7
                     00B8   539 _IEN1	=	0x00b8
                     00B9   540 _IP1	=	0x00b9
                     00BA   541 _ADCL	=	0x00ba
                     00BB   542 _ADCH	=	0x00bb
                     00BC   543 _RNDL	=	0x00bc
                     00BD   544 _RNDH	=	0x00bd
                     00BE   545 _SLEEP	=	0x00be
                     00BF   546 __SFRBF	=	0x00bf
                     00C0   547 _IRCON	=	0x00c0
                     00C1   548 _U0DBUF	=	0x00c1
                     00C2   549 _U0BAUD	=	0x00c2
                     00C3   550 __SFRC3	=	0x00c3
                     00C4   551 _U0UCR	=	0x00c4
                     00C5   552 _U0GCR	=	0x00c5
                     00C6   553 _CLKCON	=	0x00c6
                     00C7   554 _MEMCTR	=	0x00c7
                     00C8   555 __SFRC8	=	0x00c8
                     00C9   556 _WDCTL	=	0x00c9
                     00CA   557 _T3CNT	=	0x00ca
                     00CB   558 _T3CTL	=	0x00cb
                     00CC   559 _T3CCTL0	=	0x00cc
                     00CD   560 _T3CC0	=	0x00cd
                     00CE   561 _T3CCTL1	=	0x00ce
                     00CF   562 _T3CC1	=	0x00cf
                     00D0   563 _PSW	=	0x00d0
                     00D1   564 _DMAIRQ	=	0x00d1
                     00D2   565 _DMA1CFGL	=	0x00d2
                     00D3   566 _DMA1CFGH	=	0x00d3
                     00D4   567 _DMA0CFGL	=	0x00d4
                     00D5   568 _DMA0CFGH	=	0x00d5
                     00D6   569 _DMAARM	=	0x00d6
                     00D7   570 _DMAREQ	=	0x00d7
                     00D8   571 _TIMIF	=	0x00d8
                     00D9   572 _RFD	=	0x00d9
                     00DA   573 _T1CC0L	=	0x00da
                     00DB   574 _T1CC0H	=	0x00db
                     00DC   575 _T1CC1L	=	0x00dc
                     00DD   576 _T1CC1H	=	0x00dd
                     00DE   577 _T1CC2L	=	0x00de
                     00DF   578 _T1CC2H	=	0x00df
                     00E0   579 _ACC	=	0x00e0
                     00E1   580 _RFST	=	0x00e1
                     00E2   581 _T1CNTL	=	0x00e2
                     00E3   582 _T1CNTH	=	0x00e3
                     00E4   583 _T1CTL	=	0x00e4
                     00E5   584 _T1CCTL0	=	0x00e5
                     00E6   585 _T1CCTL1	=	0x00e6
                     00E7   586 _T1CCTL2	=	0x00e7
                     00E8   587 _IRCON2	=	0x00e8
                     00E9   588 _RFIF	=	0x00e9
                     00EA   589 _T4CNT	=	0x00ea
                     00EB   590 _T4CTL	=	0x00eb
                     00EC   591 _T4CCTL0	=	0x00ec
                     00ED   592 _T4CC0	=	0x00ed
                     00EE   593 _T4CCTL1	=	0x00ee
                     00EF   594 _T4CC1	=	0x00ef
                     00F0   595 _B	=	0x00f0
                     00F1   596 _PERCFG	=	0x00f1
                     00F2   597 _ADCCFG	=	0x00f2
                     00F3   598 _P0SEL	=	0x00f3
                     00F4   599 _P1SEL	=	0x00f4
                     00F5   600 _P2SEL	=	0x00f5
                     00F6   601 _P1INP	=	0x00f6
                     00F7   602 _P2INP	=	0x00f7
                     00F8   603 _U1CSR	=	0x00f8
                     00F9   604 _U1DBUF	=	0x00f9
                     00FA   605 _U1BAUD	=	0x00fa
                     00FB   606 _U1UCR	=	0x00fb
                     00FC   607 _U1GCR	=	0x00fc
                     00FD   608 _P0DIR	=	0x00fd
                     00FE   609 _P1DIR	=	0x00fe
                     00FF   610 _P2DIR	=	0x00ff
                            611 ;--------------------------------------------------------
                            612 ; special function bits
                            613 ;--------------------------------------------------------
                            614 	.area RSEG    (ABS,DATA)
   0000                     615 	.org 0x0000
                     0080   616 _P0_0	=	0x0080
                     0081   617 _P0_1	=	0x0081
                     0082   618 _P0_2	=	0x0082
                     0083   619 _P0_3	=	0x0083
                     0084   620 _P0_4	=	0x0084
                     0085   621 _P0_5	=	0x0085
                     0086   622 _P0_6	=	0x0086
                     0087   623 _P0_7	=	0x0087
                     0088   624 _IT0	=	0x0088
                     0089   625 _RFTXRXIF	=	0x0089
                     008A   626 _IT1	=	0x008a
                     008B   627 _URX0IF	=	0x008b
                     008D   628 _ADCIF	=	0x008d
                     008F   629 _URX1IF	=	0x008f
                     0090   630 _P1_0	=	0x0090
                     0091   631 _P1_1	=	0x0091
                     0092   632 _P1_2	=	0x0092
                     0093   633 _P1_3	=	0x0093
                     0094   634 _P1_4	=	0x0094
                     0095   635 _P1_5	=	0x0095
                     0096   636 _P1_6	=	0x0096
                     0097   637 _P1_7	=	0x0097
                     0098   638 _ENCIF_0	=	0x0098
                     0099   639 _ENCIF_1	=	0x0099
                     00A0   640 _P2_0	=	0x00a0
                     00A1   641 _P2_1	=	0x00a1
                     00A2   642 _P2_2	=	0x00a2
                     00A3   643 _P2_3	=	0x00a3
                     00A4   644 _P2_4	=	0x00a4
                     00A5   645 _P2_5	=	0x00a5
                     00A6   646 _P2_6	=	0x00a6
                     00A7   647 _P2_7	=	0x00a7
                     00A8   648 _RFTXRXIE	=	0x00a8
                     00A9   649 _ADCIE	=	0x00a9
                     00AA   650 _URX0IE	=	0x00aa
                     00AB   651 _URX1IE	=	0x00ab
                     00AC   652 _ENCIE	=	0x00ac
                     00AD   653 _STIE	=	0x00ad
                     00AF   654 _EA	=	0x00af
                     00B8   655 _DMAIE	=	0x00b8
                     00B9   656 _T1IE	=	0x00b9
                     00BA   657 _T2IE	=	0x00ba
                     00BB   658 _T3IE	=	0x00bb
                     00BC   659 _T4IE	=	0x00bc
                     00BD   660 _P0IE	=	0x00bd
                     00C0   661 _DMAIF	=	0x00c0
                     00C1   662 _T1IF	=	0x00c1
                     00C2   663 _T2IF	=	0x00c2
                     00C3   664 _T3IF	=	0x00c3
                     00C4   665 _T4IF	=	0x00c4
                     00C5   666 _P0IF	=	0x00c5
                     00C7   667 _STIF	=	0x00c7
                     00D0   668 _P	=	0x00d0
                     00D1   669 _F1	=	0x00d1
                     00D2   670 _OV	=	0x00d2
                     00D3   671 _RS0	=	0x00d3
                     00D4   672 _RS1	=	0x00d4
                     00D5   673 _F0	=	0x00d5
                     00D6   674 _AC	=	0x00d6
                     00D7   675 _CY	=	0x00d7
                     00D8   676 _T3OVFIF	=	0x00d8
                     00D9   677 _T3CH0IF	=	0x00d9
                     00DA   678 _T3CH1IF	=	0x00da
                     00DB   679 _T4OVFIF	=	0x00db
                     00DC   680 _T4CH0IF	=	0x00dc
                     00DD   681 _T4CH1IF	=	0x00dd
                     00DE   682 _OVFIM	=	0x00de
                     00E0   683 _ACC_0	=	0x00e0
                     00E1   684 _ACC_1	=	0x00e1
                     00E2   685 _ACC_2	=	0x00e2
                     00E3   686 _ACC_3	=	0x00e3
                     00E4   687 _ACC_4	=	0x00e4
                     00E5   688 _ACC_5	=	0x00e5
                     00E6   689 _ACC_6	=	0x00e6
                     00E7   690 _ACC_7	=	0x00e7
                     00E8   691 _P2IF	=	0x00e8
                     00E9   692 _UTX0IF	=	0x00e9
                     00EA   693 _UTX1IF	=	0x00ea
                     00EB   694 _P1IF	=	0x00eb
                     00EC   695 _WDTIF	=	0x00ec
                     00F0   696 _B_0	=	0x00f0
                     00F1   697 _B_1	=	0x00f1
                     00F2   698 _B_2	=	0x00f2
                     00F3   699 _B_3	=	0x00f3
                     00F4   700 _B_4	=	0x00f4
                     00F5   701 _B_5	=	0x00f5
                     00F6   702 _B_6	=	0x00f6
                     00F7   703 _B_7	=	0x00f7
                     00F8   704 _ACTIVE	=	0x00f8
                     00F9   705 _TX_BYTE	=	0x00f9
                     00FA   706 _RX_BYTE	=	0x00fa
                     00FB   707 _ERR	=	0x00fb
                     00FC   708 _FE	=	0x00fc
                     00FD   709 _SLAVE	=	0x00fd
                     00FE   710 _RE	=	0x00fe
                     00FF   711 _MODE	=	0x00ff
                     00E8   712 _USBIF	=	0x00e8
                            713 ;--------------------------------------------------------
                            714 ; overlayable register banks
                            715 ;--------------------------------------------------------
                            716 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     717 	.ds 8
                            718 ;--------------------------------------------------------
                            719 ; internal ram data
                            720 ;--------------------------------------------------------
                            721 	.area DSEG    (DATA)
   0013                     722 _blink_binary_baby_lsb_PARM_2:
   0013                     723 	.ds 1
                            724 ;--------------------------------------------------------
                            725 ; overlayable items in internal ram 
                            726 ;--------------------------------------------------------
                            727 	.area	OSEG    (OVR,DATA)
                            728 	.area	OSEG    (OVR,DATA)
                            729 	.area	OSEG    (OVR,DATA)
   0014                     730 _strncmp_PARM_3:
   0014                     731 	.ds 2
   0016                     732 _strncmp_tst_1_59:
   0016                     733 	.ds 1
   0017                     734 _strncmp_sloc0_1_0:
   0017                     735 	.ds 2
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
                     DF02   757 _MDMCTRL0H	=	0xdf02
                     DF00   758 _SYNC1	=	0xdf00
                     DF01   759 _SYNC0	=	0xdf01
                     DF02   760 _PKTLEN	=	0xdf02
                     DF03   761 _PKTCTRL1	=	0xdf03
                     DF04   762 _PKTCTRL0	=	0xdf04
                     DF05   763 _ADDR	=	0xdf05
                     DF06   764 _CHANNR	=	0xdf06
                     DF07   765 _FSCTRL1	=	0xdf07
                     DF08   766 _FSCTRL0	=	0xdf08
                     DF09   767 _FREQ2	=	0xdf09
                     DF0A   768 _FREQ1	=	0xdf0a
                     DF0B   769 _FREQ0	=	0xdf0b
                     DF0C   770 _MDMCFG4	=	0xdf0c
                     DF0D   771 _MDMCFG3	=	0xdf0d
                     DF0E   772 _MDMCFG2	=	0xdf0e
                     DF0F   773 _MDMCFG1	=	0xdf0f
                     DF10   774 _MDMCFG0	=	0xdf10
                     DF11   775 _DEVIATN	=	0xdf11
                     DF12   776 _MCSM2	=	0xdf12
                     DF13   777 _MCSM1	=	0xdf13
                     DF14   778 _MCSM0	=	0xdf14
                     DF15   779 _FOCCFG	=	0xdf15
                     DF16   780 _BSCFG	=	0xdf16
                     DF17   781 _AGCCTRL2	=	0xdf17
                     DF18   782 _AGCCTRL1	=	0xdf18
                     DF19   783 _AGCCTRL0	=	0xdf19
                     DF1A   784 _FREND1	=	0xdf1a
                     DF1B   785 _FREND0	=	0xdf1b
                     DF1C   786 _FSCAL3	=	0xdf1c
                     DF1D   787 _FSCAL2	=	0xdf1d
                     DF1E   788 _FSCAL1	=	0xdf1e
                     DF1F   789 _FSCAL0	=	0xdf1f
                     DF20   790 __XREGDF20	=	0xdf20
                     DF21   791 __XREGDF21	=	0xdf21
                     DF22   792 __XREGDF22	=	0xdf22
                     DF23   793 _TEST2	=	0xdf23
                     DF24   794 _TEST1	=	0xdf24
                     DF25   795 _TEST0	=	0xdf25
                     DF26   796 __XREGDF26	=	0xdf26
                     DF27   797 _PA_TABLE7	=	0xdf27
                     DF28   798 _PA_TABLE6	=	0xdf28
                     DF29   799 _PA_TABLE5	=	0xdf29
                     DF2A   800 _PA_TABLE4	=	0xdf2a
                     DF2B   801 _PA_TABLE3	=	0xdf2b
                     DF2C   802 _PA_TABLE2	=	0xdf2c
                     DF2D   803 _PA_TABLE1	=	0xdf2d
                     DF2E   804 _PA_TABLE0	=	0xdf2e
                     DF2F   805 _IOCFG2	=	0xdf2f
                     DF30   806 _IOCFG1	=	0xdf30
                     DF31   807 _IOCFG0	=	0xdf31
                     DF32   808 __XREGDF32	=	0xdf32
                     DF33   809 __XREGDF33	=	0xdf33
                     DF34   810 __XREGDF34	=	0xdf34
                     DF35   811 __XREGDF35	=	0xdf35
                     DF36   812 _PARTNUM	=	0xdf36
                     DF37   813 _VERSION	=	0xdf37
                     DF38   814 _FREQEST	=	0xdf38
                     DF39   815 _LQI	=	0xdf39
                     DF3A   816 _RSSI	=	0xdf3a
                     DF3B   817 _MARCSTATE	=	0xdf3b
                     DF3C   818 _PKTSTATUS	=	0xdf3c
                     DF3D   819 _VCO_VC_DAC	=	0xdf3d
                     DF40   820 _I2SCFG0	=	0xdf40
                     DF41   821 _I2SCFG1	=	0xdf41
                     DF42   822 _I2SDATL	=	0xdf42
                     DF43   823 _I2SDATH	=	0xdf43
                     DF44   824 _I2SWCNT	=	0xdf44
                     DF45   825 _I2SSTAT	=	0xdf45
                     DF46   826 _I2SCLKF0	=	0xdf46
                     DF47   827 _I2SCLKF1	=	0xdf47
                     DF48   828 _I2SCLKF2	=	0xdf48
                     DF80   829 __NA_P0	=	0xdf80
                     DF81   830 __NA_SP	=	0xdf81
                     DF82   831 __NA_DPL0	=	0xdf82
                     DF83   832 __NA_DPH0	=	0xdf83
                     DF84   833 __NA_DPL1	=	0xdf84
                     DF85   834 __NA_DPH1	=	0xdf85
                     DF86   835 _X_U0CSR	=	0xdf86
                     DF87   836 __NA_PCON	=	0xdf87
                     DF88   837 __NA_TCON	=	0xdf88
                     DF89   838 _X_P0IFG	=	0xdf89
                     DF8A   839 _X_P1IFG	=	0xdf8a
                     DF8B   840 _X_P2IFG	=	0xdf8b
                     DF8C   841 _X_PICTL	=	0xdf8c
                     DF8D   842 _X_P1IEN	=	0xdf8d
                     DF8E   843 __X_SFR8E	=	0xdf8e
                     DF8F   844 _X_P0INP	=	0xdf8f
                     DF90   845 __NA_P1	=	0xdf90
                     DF91   846 _X_RFIM	=	0xdf91
                     DF92   847 __NA_DPS	=	0xdf92
                     DF93   848 _X_MPAGE	=	0xdf93
                     DF94   849 __X_SFR94	=	0xdf94
                     DF95   850 __X_SFR95	=	0xdf95
                     DF96   851 __X_SFR96	=	0xdf96
                     DF97   852 __X_SFR97	=	0xdf97
                     DF98   853 __NA_S0CON	=	0xdf98
                     DF99   854 __X_SFR99	=	0xdf99
                     DF9A   855 __NA_IEN2	=	0xdf9a
                     DF9B   856 __NA_S1CON	=	0xdf9b
                     DF9C   857 _X_T2CT	=	0xdf9c
                     DF9D   858 _X_T2PR	=	0xdf9d
                     DF9E   859 _X_T2CTL	=	0xdf9e
                     DF9F   860 __X_SFR9F	=	0xdf9f
                     DFA0   861 __NA_P2	=	0xdfa0
                     DFA1   862 _X_WORIRQ	=	0xdfa1
                     DFA2   863 _X_WORCTRL	=	0xdfa2
                     DFA3   864 _X_WOREVT0	=	0xdfa3
                     DFA4   865 _X_WOREVT1	=	0xdfa4
                     DFA5   866 _X_WORTIME0	=	0xdfa5
                     DFA6   867 _X_WORTIME1	=	0xdfa6
                     DFA7   868 __X_SFRA7	=	0xdfa7
                     DFA8   869 __NA_IEN0	=	0xdfa8
                     DFA9   870 __NA_IP0	=	0xdfa9
                     DFAA   871 __X_SFRAA	=	0xdfaa
                     DFAB   872 _X_FWT	=	0xdfab
                     DFAC   873 _X_FADDRL	=	0xdfac
                     DFAD   874 _X_FADDRH	=	0xdfad
                     DFAE   875 _X_FCTL	=	0xdfae
                     DFAF   876 _X_FWDATA	=	0xdfaf
                     DFB0   877 __X_SFRB0	=	0xdfb0
                     DFB1   878 _X_ENCDI	=	0xdfb1
                     DFB2   879 _X_ENCDO	=	0xdfb2
                     DFB3   880 _X_ENCCS	=	0xdfb3
                     DFB4   881 _X_ADCCON1	=	0xdfb4
                     DFB5   882 _X_ADCCON2	=	0xdfb5
                     DFB6   883 _X_ADCCON3	=	0xdfb6
                     DFB7   884 __X_SFRB7	=	0xdfb7
                     DFB8   885 __NA_IEN1	=	0xdfb8
                     DFB9   886 __NA_IP1	=	0xdfb9
                     DFBA   887 _X_ADCL	=	0xdfba
                     DFBB   888 _X_ADCH	=	0xdfbb
                     DFBC   889 _X_RNDL	=	0xdfbc
                     DFBD   890 _X_RNDH	=	0xdfbd
                     DFBE   891 _X_SLEEP	=	0xdfbe
                     DFBF   892 __X_SFRBF	=	0xdfbf
                     DFC0   893 __NA_IRCON	=	0xdfc0
                     DFC1   894 _X_U0DBUF	=	0xdfc1
                     DFC2   895 _X_U0BAUD	=	0xdfc2
                     DFC3   896 __X_SFRC3	=	0xdfc3
                     DFC4   897 _X_U0UCR	=	0xdfc4
                     DFC5   898 _X_U0GCR	=	0xdfc5
                     DFC6   899 _X_CLKCON	=	0xdfc6
                     DFC7   900 _X_MEMCTR	=	0xdfc7
                     DFC8   901 __X_SFRC8	=	0xdfc8
                     DFC9   902 _X_WDCTL	=	0xdfc9
                     DFCA   903 _X_T3CNT	=	0xdfca
                     DFCB   904 _X_T3CTL	=	0xdfcb
                     DFCC   905 _X_T3CCTL0	=	0xdfcc
                     DFCD   906 _X_T3CC0	=	0xdfcd
                     DFCE   907 _X_T3CCTL1	=	0xdfce
                     DFCF   908 _X_T3CC1	=	0xdfcf
                     DFD0   909 __NA_PSW	=	0xdfd0
                     DFD1   910 _X_DMAIRQ	=	0xdfd1
                     DFD2   911 _X_DMA1CFGL	=	0xdfd2
                     DFD3   912 _X_DMA1CFGH	=	0xdfd3
                     DFD4   913 _X_DMA0CFGL	=	0xdfd4
                     DFD5   914 _X_DMA0CFGH	=	0xdfd5
                     DFD6   915 _X_DMAARM	=	0xdfd6
                     DFD7   916 _X_DMAREQ	=	0xdfd7
                     DFD8   917 _X_TIMIF	=	0xdfd8
                     DFD9   918 _X_RFD	=	0xdfd9
                     DFDA   919 _X_T1CC0L	=	0xdfda
                     DFDB   920 _X_T1CC0H	=	0xdfdb
                     DFDC   921 _X_T1CC1L	=	0xdfdc
                     DFDD   922 _X_T1CC1H	=	0xdfdd
                     DFDE   923 _X_T1CC2L	=	0xdfde
                     DFDF   924 _X_T1CC2H	=	0xdfdf
                     DFE0   925 __NA_ACC	=	0xdfe0
                     DFE1   926 _X_RFST	=	0xdfe1
                     DFE2   927 _X_T1CNTL	=	0xdfe2
                     DFE3   928 _X_T1CNTH	=	0xdfe3
                     DFE4   929 _X_T1CTL	=	0xdfe4
                     DFE5   930 _X_T1CCTL0	=	0xdfe5
                     DFE6   931 _X_T1CCTL1	=	0xdfe6
                     DFE7   932 _X_T1CCTL2	=	0xdfe7
                     DFE8   933 __NA_IRCON2	=	0xdfe8
                     DFE9   934 _X_RFIF	=	0xdfe9
                     DFEA   935 _X_T4CNT	=	0xdfea
                     DFEB   936 _X_T4CTL	=	0xdfeb
                     DFEC   937 _X_T4CCTL0	=	0xdfec
                     DFED   938 _X_T4CC0	=	0xdfed
                     DFEE   939 _X_T4CCTL1	=	0xdfee
                     DFEF   940 _X_T4CC1	=	0xdfef
                     DFF0   941 __NA_B	=	0xdff0
                     DFF1   942 _X_PERCFG	=	0xdff1
                     DFF2   943 _X_ADCCFG	=	0xdff2
                     DFF3   944 _X_P0SEL	=	0xdff3
                     DFF4   945 _X_P1SEL	=	0xdff4
                     DFF5   946 _X_P2SEL	=	0xdff5
                     DFF6   947 _X_P1INP	=	0xdff6
                     DFF7   948 _X_P2INP	=	0xdff7
                     DFF8   949 _X_U1CSR	=	0xdff8
                     DFF9   950 _X_U1DBUF	=	0xdff9
                     DFFA   951 _X_U1BAUD	=	0xdffa
                     DFFB   952 _X_U1UCR	=	0xdffb
                     DFFC   953 _X_U1GCR	=	0xdffc
                     DFFD   954 _X_P0DIR	=	0xdffd
                     DFFE   955 _X_P1DIR	=	0xdffe
                     DFFF   956 _X_P2DIR	=	0xdfff
                     DE00   957 _USBADDR	=	0xde00
                     DE01   958 _USBPOW	=	0xde01
                     DE02   959 _USBIIF	=	0xde02
                     DE04   960 _USBOIF	=	0xde04
                     DE06   961 _USBCIF	=	0xde06
                     DE07   962 _USBIIE	=	0xde07
                     DE09   963 _USBOIE	=	0xde09
                     DE0B   964 _USBCIE	=	0xde0b
                     DE0C   965 _USBFRML	=	0xde0c
                     DE0D   966 _USBFRMH	=	0xde0d
                     DE0E   967 _USBINDEX	=	0xde0e
                     DE10   968 _USBMAXI	=	0xde10
                     DE11   969 _USBCS0	=	0xde11
                     DE11   970 _USBCSIL	=	0xde11
                     DE12   971 _USBCSIH	=	0xde12
                     DE13   972 _USBMAXO	=	0xde13
                     DE14   973 _USBCSOL	=	0xde14
                     DE15   974 _USBCSOH	=	0xde15
                     DE16   975 _USBCNT0	=	0xde16
                     DE16   976 _USBCNTL	=	0xde16
                     DE17   977 _USBCNTH	=	0xde17
                     DE20   978 _USBF0	=	0xde20
                     DE22   979 _USBF1	=	0xde22
                     DE24   980 _USBF2	=	0xde24
                     DE26   981 _USBF3	=	0xde26
                     DE28   982 _USBF4	=	0xde28
                     DE2A   983 _USBF5	=	0xde2a
   FE01                     984 _lastCode::
   FE01                     985 	.ds 2
   FE03                     986 _clock::
   FE03                     987 	.ds 4
   FE07                     988 _strncmp_PARM_2:
   FE07                     989 	.ds 3
   FE0A                     990 _strncmp_s1_1_58:
   FE0A                     991 	.ds 3
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
   2DD3                    1036 _sleepMillis:
                     0007  1037 	ar7 = 0x07
                     0006  1038 	ar6 = 0x06
                     0005  1039 	ar5 = 0x05
                     0004  1040 	ar4 = 0x04
                     0003  1041 	ar3 = 0x03
                     0002  1042 	ar2 = 0x02
                     0001  1043 	ar1 = 0x01
                     0000  1044 	ar0 = 0x00
   2DD3 AE 82         [24] 1045 	mov	r6,dpl
   2DD5 AF 83         [24] 1046 	mov	r7,dph
                           1047 ;	global.c:12: while (--ms > 0) 
   2DD7                    1048 00102$:
   2DD7 1E            [12] 1049 	dec	r6
   2DD8 BE FF 01      [24] 1050 	cjne	r6,#0xFF,00124$
   2DDB 1F            [12] 1051 	dec	r7
   2DDC                    1052 00124$:
   2DDC C3            [12] 1053 	clr	c
   2DDD E4            [12] 1054 	clr	a
   2DDE 9E            [12] 1055 	subb	a,r6
   2DDF E4            [12] 1056 	clr	a
   2DE0 64 80         [12] 1057 	xrl	a,#0x80
   2DE2 8F F0         [24] 1058 	mov	b,r7
   2DE4 63 F0 80      [24] 1059 	xrl	b,#0x80
   2DE7 95 F0         [12] 1060 	subb	a,b
   2DE9 50 0F         [24] 1061 	jnc	00108$
                           1062 ;	global.c:14: for (j=0; j<SLEEPTIMER;j++); // about 1 millisecond
   2DEB 7C 4C         [12] 1063 	mov	r4,#0x4C
   2DED 7D 04         [12] 1064 	mov	r5,#0x04
   2DEF                    1065 00107$:
   2DEF 1C            [12] 1066 	dec	r4
   2DF0 BC FF 01      [24] 1067 	cjne	r4,#0xFF,00126$
   2DF3 1D            [12] 1068 	dec	r5
   2DF4                    1069 00126$:
   2DF4 EC            [12] 1070 	mov	a,r4
   2DF5 4D            [12] 1071 	orl	a,r5
   2DF6 70 F7         [24] 1072 	jnz	00107$
   2DF8 80 DD         [24] 1073 	sjmp	00102$
   2DFA                    1074 00108$:
   2DFA 22            [24] 1075 	ret
                           1076 ;------------------------------------------------------------
                           1077 ;Allocation info for local variables in function 'sleepMicros'
                           1078 ;------------------------------------------------------------
                           1079 ;us                        Allocated to registers r6 r7 
                           1080 ;------------------------------------------------------------
                           1081 ;	global.c:19: void sleepMicros(int us) 
                           1082 ;	-----------------------------------------
                           1083 ;	 function sleepMicros
                           1084 ;	-----------------------------------------
   2DFB                    1085 _sleepMicros:
   2DFB AE 82         [24] 1086 	mov	r6,dpl
                           1087 ;	global.c:23: us *= PLATFORM_CLOCK_FREQ/11;
   2DFD E5 83         [12] 1088 	mov	a,dph
   2DFF CE            [12] 1089 	xch	a,r6
   2E00 25 E0         [12] 1090 	add	a,acc
   2E02 CE            [12] 1091 	xch	a,r6
   2E03 33            [12] 1092 	rlc	a
   2E04 FF            [12] 1093 	mov	r7,a
                           1094 ;	global.c:24: while (--us > 0) ;
   2E05                    1095 00101$:
   2E05 1E            [12] 1096 	dec	r6
   2E06 BE FF 01      [24] 1097 	cjne	r6,#0xFF,00110$
   2E09 1F            [12] 1098 	dec	r7
   2E0A                    1099 00110$:
   2E0A C3            [12] 1100 	clr	c
   2E0B E4            [12] 1101 	clr	a
   2E0C 9E            [12] 1102 	subb	a,r6
   2E0D E4            [12] 1103 	clr	a
   2E0E 64 80         [12] 1104 	xrl	a,#0x80
   2E10 8F F0         [24] 1105 	mov	b,r7
   2E12 63 F0 80      [24] 1106 	xrl	b,#0x80
   2E15 95 F0         [12] 1107 	subb	a,b
   2E17 40 EC         [24] 1108 	jc	00101$
   2E19 22            [24] 1109 	ret
                           1110 ;------------------------------------------------------------
                           1111 ;Allocation info for local variables in function 'blink_binary_baby_lsb'
                           1112 ;------------------------------------------------------------
                           1113 ;bits                      Allocated with name '_blink_binary_baby_lsb_PARM_2'
                           1114 ;num                       Allocated to registers r6 r7 
                           1115 ;------------------------------------------------------------
                           1116 ;	global.c:27: void blink_binary_baby_lsb(u16 num, char bits)
                           1117 ;	-----------------------------------------
                           1118 ;	 function blink_binary_baby_lsb
                           1119 ;	-----------------------------------------
   2E1A                    1120 _blink_binary_baby_lsb:
   2E1A AE 82         [24] 1121 	mov	r6,dpl
   2E1C AF 83         [24] 1122 	mov	r7,dph
                           1123 ;	global.c:29: LED = 1;
   2E1E D2 A4         [12] 1124 	setb	_P2_4
                           1125 ;	global.c:30: sleepMillis(1000);
   2E20 90 03 E8      [24] 1126 	mov	dptr,#0x03E8
   2E23 C0 07         [24] 1127 	push	ar7
   2E25 C0 06         [24] 1128 	push	ar6
   2E27 12 2D D3      [24] 1129 	lcall	_sleepMillis
                           1130 ;	global.c:31: LED = 0;
   2E2A C2 A4         [12] 1131 	clr	_P2_4
                           1132 ;	global.c:32: sleepMillis(500);
   2E2C 90 01 F4      [24] 1133 	mov	dptr,#0x01F4
   2E2F 12 2D D3      [24] 1134 	lcall	_sleepMillis
   2E32 D0 06         [24] 1135 	pop	ar6
   2E34 D0 07         [24] 1136 	pop	ar7
                           1137 ;	global.c:33: bits -= 1;          // 16 bit numbers needs to start on bit 15, etc....
   2E36 15 13         [12] 1138 	dec	_blink_binary_baby_lsb_PARM_2
   2E38 AD 13         [24] 1139 	mov	r5,_blink_binary_baby_lsb_PARM_2
   2E3A                    1140 00106$:
                           1141 ;	global.c:35: for (; bits>=0; bits--)
   2E3A ED            [12] 1142 	mov	a,r5
   2E3B 20 E7 54      [24] 1143 	jb	acc.7,00104$
                           1144 ;	global.c:37: if (num & 1)
   2E3E EE            [12] 1145 	mov	a,r6
   2E3F 30 E0 24      [24] 1146 	jnb	acc.0,00102$
                           1147 ;	global.c:39: sleepMillis(25);
   2E42 90 00 19      [24] 1148 	mov	dptr,#0x0019
   2E45 C0 07         [24] 1149 	push	ar7
   2E47 C0 06         [24] 1150 	push	ar6
   2E49 C0 05         [24] 1151 	push	ar5
   2E4B 12 2D D3      [24] 1152 	lcall	_sleepMillis
                           1153 ;	global.c:40: LED = 1;
   2E4E D2 A4         [12] 1154 	setb	_P2_4
                           1155 ;	global.c:41: sleepMillis(550);
   2E50 90 02 26      [24] 1156 	mov	dptr,#0x0226
   2E53 12 2D D3      [24] 1157 	lcall	_sleepMillis
                           1158 ;	global.c:42: LED = 0;
   2E56 C2 A4         [12] 1159 	clr	_P2_4
                           1160 ;	global.c:43: sleepMillis(25);
   2E58 90 00 19      [24] 1161 	mov	dptr,#0x0019
   2E5B 12 2D D3      [24] 1162 	lcall	_sleepMillis
   2E5E D0 05         [24] 1163 	pop	ar5
   2E60 D0 06         [24] 1164 	pop	ar6
   2E62 D0 07         [24] 1165 	pop	ar7
   2E64 80 22         [24] 1166 	sjmp	00103$
   2E66                    1167 00102$:
                           1168 ;	global.c:47: sleepMillis(275);
   2E66 90 01 13      [24] 1169 	mov	dptr,#0x0113
   2E69 C0 07         [24] 1170 	push	ar7
   2E6B C0 06         [24] 1171 	push	ar6
   2E6D C0 05         [24] 1172 	push	ar5
   2E6F 12 2D D3      [24] 1173 	lcall	_sleepMillis
                           1174 ;	global.c:48: LED = 1;
   2E72 D2 A4         [12] 1175 	setb	_P2_4
                           1176 ;	global.c:49: sleepMillis(50);
   2E74 90 00 32      [24] 1177 	mov	dptr,#0x0032
   2E77 12 2D D3      [24] 1178 	lcall	_sleepMillis
                           1179 ;	global.c:50: LED = 0;
   2E7A C2 A4         [12] 1180 	clr	_P2_4
                           1181 ;	global.c:51: sleepMillis(275);
   2E7C 90 01 13      [24] 1182 	mov	dptr,#0x0113
   2E7F 12 2D D3      [24] 1183 	lcall	_sleepMillis
   2E82 D0 05         [24] 1184 	pop	ar5
   2E84 D0 06         [24] 1185 	pop	ar6
   2E86 D0 07         [24] 1186 	pop	ar7
   2E88                    1187 00103$:
                           1188 ;	global.c:53: num = num >> 1;
   2E88 EF            [12] 1189 	mov	a,r7
   2E89 C3            [12] 1190 	clr	c
   2E8A 13            [12] 1191 	rrc	a
   2E8B CE            [12] 1192 	xch	a,r6
   2E8C 13            [12] 1193 	rrc	a
   2E8D CE            [12] 1194 	xch	a,r6
   2E8E FF            [12] 1195 	mov	r7,a
                           1196 ;	global.c:35: for (; bits>=0; bits--)
   2E8F 1D            [12] 1197 	dec	r5
   2E90 80 A8         [24] 1198 	sjmp	00106$
   2E92                    1199 00104$:
                           1200 ;	global.c:55: LED = 0;
   2E92 C2 A4         [12] 1201 	clr	_P2_4
                           1202 ;	global.c:56: sleepMillis(1000);
   2E94 90 03 E8      [24] 1203 	mov	dptr,#0x03E8
   2E97 02 2D D3      [24] 1204 	ljmp	_sleepMillis
                           1205 ;------------------------------------------------------------
                           1206 ;Allocation info for local variables in function 'strncmp'
                           1207 ;------------------------------------------------------------
                           1208 ;s2                        Allocated with name '_strncmp_PARM_2'
                           1209 ;s1                        Allocated with name '_strncmp_s1_1_58'
                           1210 ;n                         Allocated with name '_strncmp_PARM_3'
                           1211 ;tst                       Allocated with name '_strncmp_tst_1_59'
                           1212 ;sloc0                     Allocated with name '_strncmp_sloc0_1_0'
                           1213 ;------------------------------------------------------------
                           1214 ;	global.c:88: int strncmp(const char * __xdata s1, const char * __xdata s2, u16 n)
                           1215 ;	-----------------------------------------
                           1216 ;	 function strncmp
                           1217 ;	-----------------------------------------
   2E9A                    1218 _strncmp:
   2E9A AF F0         [24] 1219 	mov	r7,b
   2E9C AE 83         [24] 1220 	mov	r6,dph
   2E9E E5 82         [12] 1221 	mov	a,dpl
   2EA0 90 FE 0A      [24] 1222 	mov	dptr,#_strncmp_s1_1_58
   2EA3 F0            [24] 1223 	movx	@dptr,a
   2EA4 EE            [12] 1224 	mov	a,r6
   2EA5 A3            [24] 1225 	inc	dptr
   2EA6 F0            [24] 1226 	movx	@dptr,a
   2EA7 EF            [12] 1227 	mov	a,r7
   2EA8 A3            [24] 1228 	inc	dptr
   2EA9 F0            [24] 1229 	movx	@dptr,a
                           1230 ;	global.c:100: return 0;
   2EAA 90 FE 0A      [24] 1231 	mov	dptr,#_strncmp_s1_1_58
   2EAD E0            [24] 1232 	movx	a,@dptr
   2EAE FD            [12] 1233 	mov	r5,a
   2EAF A3            [24] 1234 	inc	dptr
   2EB0 E0            [24] 1235 	movx	a,@dptr
   2EB1 FE            [12] 1236 	mov	r6,a
   2EB2 A3            [24] 1237 	inc	dptr
   2EB3 E0            [24] 1238 	movx	a,@dptr
   2EB4 FF            [12] 1239 	mov	r7,a
   2EB5 90 FE 07      [24] 1240 	mov	dptr,#_strncmp_PARM_2
   2EB8 E0            [24] 1241 	movx	a,@dptr
   2EB9 FA            [12] 1242 	mov	r2,a
   2EBA A3            [24] 1243 	inc	dptr
   2EBB E0            [24] 1244 	movx	a,@dptr
   2EBC FB            [12] 1245 	mov	r3,a
   2EBD A3            [24] 1246 	inc	dptr
   2EBE E0            [24] 1247 	movx	a,@dptr
   2EBF FC            [12] 1248 	mov	r4,a
   2EC0 A8 14         [24] 1249 	mov	r0,_strncmp_PARM_3
   2EC2 A9 15         [24] 1250 	mov	r1,(_strncmp_PARM_3 + 1)
   2EC4                    1251 00105$:
                           1252 ;	global.c:92: for (;n>0;n--)
   2EC4 E8            [12] 1253 	mov	a,r0
   2EC5 49            [12] 1254 	orl	a,r1
   2EC6 60 51         [24] 1255 	jz	00103$
                           1256 ;	global.c:94: tst = *s1 - *s2;
   2EC8 C0 00         [24] 1257 	push	ar0
   2ECA C0 01         [24] 1258 	push	ar1
   2ECC 8D 82         [24] 1259 	mov	dpl,r5
   2ECE 8E 83         [24] 1260 	mov	dph,r6
   2ED0 8F F0         [24] 1261 	mov	b,r7
   2ED2 12 35 F3      [24] 1262 	lcall	__gptrget
   2ED5 F9            [12] 1263 	mov	r1,a
   2ED6 8A 82         [24] 1264 	mov	dpl,r2
   2ED8 8B 83         [24] 1265 	mov	dph,r3
   2EDA 8C F0         [24] 1266 	mov	b,r4
   2EDC 12 35 F3      [24] 1267 	lcall	__gptrget
   2EDF F8            [12] 1268 	mov	r0,a
   2EE0 E9            [12] 1269 	mov	a,r1
   2EE1 C3            [12] 1270 	clr	c
   2EE2 98            [12] 1271 	subb	a,r0
   2EE3 F5 16         [12] 1272 	mov	_strncmp_tst_1_59,a
                           1273 ;	global.c:95: if (tst)
   2EE5 D0 01         [24] 1274 	pop	ar1
   2EE7 D0 00         [24] 1275 	pop	ar0
   2EE9 E5 16         [12] 1276 	mov	a,_strncmp_tst_1_59
   2EEB 60 10         [24] 1277 	jz	00102$
                           1278 ;	global.c:96: return tst;
   2EED E5 16         [12] 1279 	mov	a,_strncmp_tst_1_59
   2EEF F5 17         [12] 1280 	mov	_strncmp_sloc0_1_0,a
   2EF1 33            [12] 1281 	rlc	a
   2EF2 95 E0         [12] 1282 	subb	a,acc
   2EF4 F5 18         [12] 1283 	mov	(_strncmp_sloc0_1_0 + 1),a
   2EF6 85 17 82      [24] 1284 	mov	dpl,_strncmp_sloc0_1_0
   2EF9 85 18 83      [24] 1285 	mov	dph,(_strncmp_sloc0_1_0 + 1)
   2EFC 22            [24] 1286 	ret
   2EFD                    1287 00102$:
                           1288 ;	global.c:97: s1++;
   2EFD 0D            [12] 1289 	inc	r5
   2EFE BD 00 01      [24] 1290 	cjne	r5,#0x00,00122$
   2F01 0E            [12] 1291 	inc	r6
   2F02                    1292 00122$:
   2F02 90 FE 0A      [24] 1293 	mov	dptr,#_strncmp_s1_1_58
   2F05 ED            [12] 1294 	mov	a,r5
   2F06 F0            [24] 1295 	movx	@dptr,a
   2F07 EE            [12] 1296 	mov	a,r6
   2F08 A3            [24] 1297 	inc	dptr
   2F09 F0            [24] 1298 	movx	@dptr,a
   2F0A EF            [12] 1299 	mov	a,r7
   2F0B A3            [24] 1300 	inc	dptr
   2F0C F0            [24] 1301 	movx	@dptr,a
                           1302 ;	global.c:98: s2++;
   2F0D 0A            [12] 1303 	inc	r2
   2F0E BA 00 01      [24] 1304 	cjne	r2,#0x00,00123$
   2F11 0B            [12] 1305 	inc	r3
   2F12                    1306 00123$:
                           1307 ;	global.c:92: for (;n>0;n--)
   2F12 18            [12] 1308 	dec	r0
   2F13 B8 FF 01      [24] 1309 	cjne	r0,#0xFF,00124$
   2F16 19            [12] 1310 	dec	r1
   2F17                    1311 00124$:
   2F17 80 AB         [24] 1312 	sjmp	00105$
   2F19                    1313 00103$:
                           1314 ;	global.c:100: return 0;
   2F19 90 00 00      [24] 1315 	mov	dptr,#0x0000
   2F1C 22            [24] 1316 	ret
                           1317 ;------------------------------------------------------------
                           1318 ;Allocation info for local variables in function 'clock_init'
                           1319 ;------------------------------------------------------------
                           1320 ;	global.c:103: void clock_init(void)
                           1321 ;	-----------------------------------------
                           1322 ;	 function clock_init
                           1323 ;	-----------------------------------------
   2F1D                    1324 _clock_init:
                           1325 ;	global.c:108: SLEEP &= ~SLEEP_OSC_PD;
   2F1D AF BE         [24] 1326 	mov	r7,_SLEEP
   2F1F 74 FB         [12] 1327 	mov	a,#0xFB
   2F21 5F            [12] 1328 	anl	a,r7
   2F22 F5 BE         [12] 1329 	mov	_SLEEP,a
                           1330 ;	global.c:109: while( !(SLEEP & SLEEP_XOSC_S) );
   2F24                    1331 00101$:
   2F24 E5 BE         [12] 1332 	mov	a,_SLEEP
   2F26 30 E6 FB      [24] 1333 	jnb	acc.6,00101$
                           1334 ;	global.c:110: CLKCON = (CLKCON & ~(CLKCON_CLKSPD | CLKCON_OSC)) | CLKSPD_DIV_1;
   2F29 AF C6         [24] 1335 	mov	r7,_CLKCON
   2F2B 74 B8         [12] 1336 	mov	a,#0xB8
   2F2D 5F            [12] 1337 	anl	a,r7
   2F2E F5 C6         [12] 1338 	mov	_CLKCON,a
                           1339 ;	global.c:111: while (CLKCON & CLKCON_OSC);
   2F30                    1340 00104$:
   2F30 E5 C6         [12] 1341 	mov	a,_CLKCON
   2F32 20 E6 FB      [24] 1342 	jb	acc.6,00104$
                           1343 ;	global.c:112: SLEEP |= SLEEP_OSC_PD;
   2F35 43 BE 04      [24] 1344 	orl	_SLEEP,#0x04
                           1345 ;	global.c:113: while (!IS_XOSC_STABLE());
   2F38                    1346 00107$:
   2F38 E5 BE         [12] 1347 	mov	a,_SLEEP
   2F3A 30 E6 FB      [24] 1348 	jnb	acc.6,00107$
                           1349 ;	global.c:119: CLKCON &= 0xc7;          //( ~ 0b00111000);  - clearing out TICKSPD  freq = 24mhz on cc1111, 26mhz on cc1110
   2F3D 53 C6 C7      [24] 1350 	anl	_CLKCON,#0xC7
                           1351 ;	global.c:121: T1CTL |= T1CTL_DIV_128;     // T1 running at 187.500 kHz
   2F40 43 E4 0C      [24] 1352 	orl	_T1CTL,#0x0C
                           1353 ;	global.c:122: T1CTL |= T1CTL_MODE_FREERUN;
   2F43 43 E4 01      [24] 1354 	orl	_T1CTL,#0x01
                           1355 ;	global.c:123: T1IE = 1;
   2F46 D2 B9         [12] 1356 	setb	_T1IE
   2F48 22            [24] 1357 	ret
                           1358 ;------------------------------------------------------------
                           1359 ;Allocation info for local variables in function 'io_init'
                           1360 ;------------------------------------------------------------
                           1361 ;	global.c:130: void io_init(void)
                           1362 ;	-----------------------------------------
                           1363 ;	 function io_init
                           1364 ;	-----------------------------------------
   2F49                    1365 _io_init:
                           1366 ;	global.c:172: IEN2&=~IEN2_WDTIE;
   2F49 AF 9A         [24] 1367 	mov	r7,_IEN2
   2F4B 74 DF         [12] 1368 	mov	a,#0xDF
   2F4D 5F            [12] 1369 	anl	a,r7
   2F4E F5 9A         [12] 1370 	mov	_IEN2,a
                           1371 ;	global.c:173: IEN0&=~EA;
   2F50 A2 AF         [12] 1372 	mov	c,_EA
   2F52 E4            [12] 1373 	clr	a
   2F53 33            [12] 1374 	rlc	a
   2F54 F4            [12] 1375 	cpl	a
   2F55 52 A8         [12] 1376 	anl	_IEN0,a
                           1377 ;	global.c:180: P2DIR |= BIT3|BIT4;
   2F57 43 FF 18      [24] 1378 	orl	_P2DIR,#0x18
                           1379 ;	global.c:181: P2_3 = 0;
   2F5A C2 A3         [12] 1380 	clr	_P2_3
                           1381 ;	global.c:182: P2_4 = 0;
   2F5C C2 A4         [12] 1382 	clr	_P2_4
   2F5E 22            [24] 1383 	ret
                           1384 ;------------------------------------------------------------
                           1385 ;Allocation info for local variables in function 't1IntHandler'
                           1386 ;------------------------------------------------------------
                           1387 ;	global.c:219: void t1IntHandler(void) __interrupt T1_VECTOR  // interrupt handler should trigger on T1 overflow
                           1388 ;	-----------------------------------------
                           1389 ;	 function t1IntHandler
                           1390 ;	-----------------------------------------
   2F5F                    1391 _t1IntHandler:
   2F5F C0 E0         [24] 1392 	push	acc
   2F61 C0 82         [24] 1393 	push	dpl
   2F63 C0 83         [24] 1394 	push	dph
   2F65 C0 D0         [24] 1395 	push	psw
                           1396 ;	global.c:221: clock ++;
   2F67 90 FE 03      [24] 1397 	mov	dptr,#_clock
   2F6A E0            [24] 1398 	movx	a,@dptr
   2F6B 24 01         [12] 1399 	add	a,#0x01
   2F6D F0            [24] 1400 	movx	@dptr,a
   2F6E A3            [24] 1401 	inc	dptr
   2F6F E0            [24] 1402 	movx	a,@dptr
   2F70 34 00         [12] 1403 	addc	a,#0x00
   2F72 F0            [24] 1404 	movx	@dptr,a
   2F73 A3            [24] 1405 	inc	dptr
   2F74 E0            [24] 1406 	movx	a,@dptr
   2F75 34 00         [12] 1407 	addc	a,#0x00
   2F77 F0            [24] 1408 	movx	@dptr,a
   2F78 A3            [24] 1409 	inc	dptr
   2F79 E0            [24] 1410 	movx	a,@dptr
   2F7A 34 00         [12] 1411 	addc	a,#0x00
   2F7C F0            [24] 1412 	movx	@dptr,a
   2F7D D0 D0         [24] 1413 	pop	psw
   2F7F D0 83         [24] 1414 	pop	dph
   2F81 D0 82         [24] 1415 	pop	dpl
   2F83 D0 E0         [24] 1416 	pop	acc
   2F85 32            [24] 1417 	reti
                           1418 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1419 ;	eliminated unneeded push/pop b
                           1420 	.area CSEG    (CODE)
                           1421 	.area CONST   (CODE)
                           1422 	.area XINIT   (CODE)
                           1423 	.area CABS    (ABS,CODE)
