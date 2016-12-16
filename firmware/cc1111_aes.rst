                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Fri Dec 16 14:02:34 2016
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
   0000                     495 	.org 0x0000
                     0080   496 _P0	=	0x0080
                     0081   497 _SP	=	0x0081
                     0082   498 _DPL0	=	0x0082
                     0083   499 _DPH0	=	0x0083
                     0084   500 _DPL1	=	0x0084
                     0085   501 _DPH1	=	0x0085
                     0086   502 _U0CSR	=	0x0086
                     0087   503 _PCON	=	0x0087
                     0088   504 _TCON	=	0x0088
                     0089   505 _P0IFG	=	0x0089
                     008A   506 _P1IFG	=	0x008a
                     008B   507 _P2IFG	=	0x008b
                     008C   508 _PICTL	=	0x008c
                     008D   509 _P1IEN	=	0x008d
                     008E   510 __SFR8E	=	0x008e
                     008F   511 _P0INP	=	0x008f
                     0090   512 _P1	=	0x0090
                     0091   513 _RFIM	=	0x0091
                     0092   514 _DPS	=	0x0092
                     0093   515 _MPAGE	=	0x0093
                     0093   516 __XPAGE	=	0x0093
                     0094   517 __SFR94	=	0x0094
                     0095   518 __SFR95	=	0x0095
                     0096   519 __SFR96	=	0x0096
                     0097   520 __SFR97	=	0x0097
                     0098   521 _S0CON	=	0x0098
                     0099   522 __SFR99	=	0x0099
                     009A   523 _IEN2	=	0x009a
                     009B   524 _S1CON	=	0x009b
                     009C   525 _T2CT	=	0x009c
                     009D   526 _T2PR	=	0x009d
                     009E   527 _T2CTL	=	0x009e
                     009F   528 __SFR9F	=	0x009f
                     00A0   529 _P2	=	0x00a0
                     00A1   530 _WORIRQ	=	0x00a1
                     00A2   531 _WORCTRL	=	0x00a2
                     00A3   532 _WOREVT0	=	0x00a3
                     00A4   533 _WOREVT1	=	0x00a4
                     00A5   534 _WORTIME0	=	0x00a5
                     00A6   535 _WORTIME1	=	0x00a6
                     00A7   536 __SFRA7	=	0x00a7
                     00A8   537 _IEN0	=	0x00a8
                     00A9   538 _IP0	=	0x00a9
                     00AA   539 __SFRAA	=	0x00aa
                     00AB   540 _FWT	=	0x00ab
                     00AC   541 _FADDRL	=	0x00ac
                     00AD   542 _FADDRH	=	0x00ad
                     00AE   543 _FCTL	=	0x00ae
                     00AF   544 _FWDATA	=	0x00af
                     00B0   545 __SFRB0	=	0x00b0
                     00B1   546 _ENCDI	=	0x00b1
                     00B2   547 _ENCDO	=	0x00b2
                     00B3   548 _ENCCS	=	0x00b3
                     00B4   549 _ADCCON1	=	0x00b4
                     00B5   550 _ADCCON2	=	0x00b5
                     00B6   551 _ADCCON3	=	0x00b6
                     00B7   552 __SFRB7	=	0x00b7
                     00B8   553 _IEN1	=	0x00b8
                     00B9   554 _IP1	=	0x00b9
                     00BA   555 _ADCL	=	0x00ba
                     00BB   556 _ADCH	=	0x00bb
                     00BC   557 _RNDL	=	0x00bc
                     00BD   558 _RNDH	=	0x00bd
                     00BE   559 _SLEEP	=	0x00be
                     00BF   560 __SFRBF	=	0x00bf
                     00C0   561 _IRCON	=	0x00c0
                     00C1   562 _U0DBUF	=	0x00c1
                     00C2   563 _U0BAUD	=	0x00c2
                     00C3   564 __SFRC3	=	0x00c3
                     00C4   565 _U0UCR	=	0x00c4
                     00C5   566 _U0GCR	=	0x00c5
                     00C6   567 _CLKCON	=	0x00c6
                     00C7   568 _MEMCTR	=	0x00c7
                     00C8   569 __SFRC8	=	0x00c8
                     00C9   570 _WDCTL	=	0x00c9
                     00CA   571 _T3CNT	=	0x00ca
                     00CB   572 _T3CTL	=	0x00cb
                     00CC   573 _T3CCTL0	=	0x00cc
                     00CD   574 _T3CC0	=	0x00cd
                     00CE   575 _T3CCTL1	=	0x00ce
                     00CF   576 _T3CC1	=	0x00cf
                     00D0   577 _PSW	=	0x00d0
                     00D1   578 _DMAIRQ	=	0x00d1
                     00D2   579 _DMA1CFGL	=	0x00d2
                     00D3   580 _DMA1CFGH	=	0x00d3
                     00D4   581 _DMA0CFGL	=	0x00d4
                     00D5   582 _DMA0CFGH	=	0x00d5
                     00D6   583 _DMAARM	=	0x00d6
                     00D7   584 _DMAREQ	=	0x00d7
                     00D8   585 _TIMIF	=	0x00d8
                     00D9   586 _RFD	=	0x00d9
                     00DA   587 _T1CC0L	=	0x00da
                     00DB   588 _T1CC0H	=	0x00db
                     00DC   589 _T1CC1L	=	0x00dc
                     00DD   590 _T1CC1H	=	0x00dd
                     00DE   591 _T1CC2L	=	0x00de
                     00DF   592 _T1CC2H	=	0x00df
                     00E0   593 _ACC	=	0x00e0
                     00E1   594 _RFST	=	0x00e1
                     00E2   595 _T1CNTL	=	0x00e2
                     00E3   596 _T1CNTH	=	0x00e3
                     00E4   597 _T1CTL	=	0x00e4
                     00E5   598 _T1CCTL0	=	0x00e5
                     00E6   599 _T1CCTL1	=	0x00e6
                     00E7   600 _T1CCTL2	=	0x00e7
                     00E8   601 _IRCON2	=	0x00e8
                     00E9   602 _RFIF	=	0x00e9
                     00EA   603 _T4CNT	=	0x00ea
                     00EB   604 _T4CTL	=	0x00eb
                     00EC   605 _T4CCTL0	=	0x00ec
                     00ED   606 _T4CC0	=	0x00ed
                     00EE   607 _T4CCTL1	=	0x00ee
                     00EF   608 _T4CC1	=	0x00ef
                     00F0   609 _B	=	0x00f0
                     00F1   610 _PERCFG	=	0x00f1
                     00F2   611 _ADCCFG	=	0x00f2
                     00F3   612 _P0SEL	=	0x00f3
                     00F4   613 _P1SEL	=	0x00f4
                     00F5   614 _P2SEL	=	0x00f5
                     00F6   615 _P1INP	=	0x00f6
                     00F7   616 _P2INP	=	0x00f7
                     00F8   617 _U1CSR	=	0x00f8
                     00F9   618 _U1DBUF	=	0x00f9
                     00FA   619 _U1BAUD	=	0x00fa
                     00FB   620 _U1UCR	=	0x00fb
                     00FC   621 _U1GCR	=	0x00fc
                     00FD   622 _P0DIR	=	0x00fd
                     00FE   623 _P1DIR	=	0x00fe
                     00FF   624 _P2DIR	=	0x00ff
                            625 ;--------------------------------------------------------
                            626 ; special function bits
                            627 ;--------------------------------------------------------
                            628 	.area RSEG    (ABS,DATA)
   0000                     629 	.org 0x0000
                     0080   630 _P0_0	=	0x0080
                     0081   631 _P0_1	=	0x0081
                     0082   632 _P0_2	=	0x0082
                     0083   633 _P0_3	=	0x0083
                     0084   634 _P0_4	=	0x0084
                     0085   635 _P0_5	=	0x0085
                     0086   636 _P0_6	=	0x0086
                     0087   637 _P0_7	=	0x0087
                     0088   638 _IT0	=	0x0088
                     0089   639 _RFTXRXIF	=	0x0089
                     008A   640 _IT1	=	0x008a
                     008B   641 _URX0IF	=	0x008b
                     008D   642 _ADCIF	=	0x008d
                     008F   643 _URX1IF	=	0x008f
                     0090   644 _P1_0	=	0x0090
                     0091   645 _P1_1	=	0x0091
                     0092   646 _P1_2	=	0x0092
                     0093   647 _P1_3	=	0x0093
                     0094   648 _P1_4	=	0x0094
                     0095   649 _P1_5	=	0x0095
                     0096   650 _P1_6	=	0x0096
                     0097   651 _P1_7	=	0x0097
                     0098   652 _ENCIF_0	=	0x0098
                     0099   653 _ENCIF_1	=	0x0099
                     00A0   654 _P2_0	=	0x00a0
                     00A1   655 _P2_1	=	0x00a1
                     00A2   656 _P2_2	=	0x00a2
                     00A3   657 _P2_3	=	0x00a3
                     00A4   658 _P2_4	=	0x00a4
                     00A5   659 _P2_5	=	0x00a5
                     00A6   660 _P2_6	=	0x00a6
                     00A7   661 _P2_7	=	0x00a7
                     00A8   662 _RFTXRXIE	=	0x00a8
                     00A9   663 _ADCIE	=	0x00a9
                     00AA   664 _URX0IE	=	0x00aa
                     00AB   665 _URX1IE	=	0x00ab
                     00AC   666 _ENCIE	=	0x00ac
                     00AD   667 _STIE	=	0x00ad
                     00AF   668 _EA	=	0x00af
                     00B8   669 _DMAIE	=	0x00b8
                     00B9   670 _T1IE	=	0x00b9
                     00BA   671 _T2IE	=	0x00ba
                     00BB   672 _T3IE	=	0x00bb
                     00BC   673 _T4IE	=	0x00bc
                     00BD   674 _P0IE	=	0x00bd
                     00C0   675 _DMAIF	=	0x00c0
                     00C1   676 _T1IF	=	0x00c1
                     00C2   677 _T2IF	=	0x00c2
                     00C3   678 _T3IF	=	0x00c3
                     00C4   679 _T4IF	=	0x00c4
                     00C5   680 _P0IF	=	0x00c5
                     00C7   681 _STIF	=	0x00c7
                     00D0   682 _P	=	0x00d0
                     00D1   683 _F1	=	0x00d1
                     00D2   684 _OV	=	0x00d2
                     00D3   685 _RS0	=	0x00d3
                     00D4   686 _RS1	=	0x00d4
                     00D5   687 _F0	=	0x00d5
                     00D6   688 _AC	=	0x00d6
                     00D7   689 _CY	=	0x00d7
                     00D8   690 _T3OVFIF	=	0x00d8
                     00D9   691 _T3CH0IF	=	0x00d9
                     00DA   692 _T3CH1IF	=	0x00da
                     00DB   693 _T4OVFIF	=	0x00db
                     00DC   694 _T4CH0IF	=	0x00dc
                     00DD   695 _T4CH1IF	=	0x00dd
                     00DE   696 _OVFIM	=	0x00de
                     00E0   697 _ACC_0	=	0x00e0
                     00E1   698 _ACC_1	=	0x00e1
                     00E2   699 _ACC_2	=	0x00e2
                     00E3   700 _ACC_3	=	0x00e3
                     00E4   701 _ACC_4	=	0x00e4
                     00E5   702 _ACC_5	=	0x00e5
                     00E6   703 _ACC_6	=	0x00e6
                     00E7   704 _ACC_7	=	0x00e7
                     00E8   705 _P2IF	=	0x00e8
                     00E9   706 _UTX0IF	=	0x00e9
                     00EA   707 _UTX1IF	=	0x00ea
                     00EB   708 _P1IF	=	0x00eb
                     00EC   709 _WDTIF	=	0x00ec
                     00F0   710 _B_0	=	0x00f0
                     00F1   711 _B_1	=	0x00f1
                     00F2   712 _B_2	=	0x00f2
                     00F3   713 _B_3	=	0x00f3
                     00F4   714 _B_4	=	0x00f4
                     00F5   715 _B_5	=	0x00f5
                     00F6   716 _B_6	=	0x00f6
                     00F7   717 _B_7	=	0x00f7
                     00F8   718 _ACTIVE	=	0x00f8
                     00F9   719 _TX_BYTE	=	0x00f9
                     00FA   720 _RX_BYTE	=	0x00fa
                     00FB   721 _ERR	=	0x00fb
                     00FC   722 _FE	=	0x00fc
                     00FD   723 _SLAVE	=	0x00fd
                     00FE   724 _RE	=	0x00fe
                     00FF   725 _MODE	=	0x00ff
                     00E8   726 _USBIF	=	0x00e8
                            727 ;--------------------------------------------------------
                            728 ; overlayable register banks
                            729 ;--------------------------------------------------------
                            730 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     731 	.ds 8
                            732 ;--------------------------------------------------------
                            733 ; internal ram data
                            734 ;--------------------------------------------------------
                            735 	.area DSEG    (DATA)
                            736 ;--------------------------------------------------------
                            737 ; overlayable items in internal ram 
                            738 ;--------------------------------------------------------
                            739 	.area	OSEG    (OVR,DATA)
   0014                     740 _doAES_sloc0_1_0:
   0014                     741 	.ds 2
   0016                     742 _doAES_sloc1_1_0:
   0016                     743 	.ds 2
   0018                     744 _doAES_sloc2_1_0:
   0018                     745 	.ds 1
   0019                     746 _doAES_sloc3_1_0:
   0019                     747 	.ds 1
   001A                     748 _doAES_sloc4_1_0:
   001A                     749 	.ds 2
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
                     DF02   771 _MDMCTRL0H	=	0xdf02
                     DF00   772 _SYNC1	=	0xdf00
                     DF01   773 _SYNC0	=	0xdf01
                     DF02   774 _PKTLEN	=	0xdf02
                     DF03   775 _PKTCTRL1	=	0xdf03
                     DF04   776 _PKTCTRL0	=	0xdf04
                     DF05   777 _ADDR	=	0xdf05
                     DF06   778 _CHANNR	=	0xdf06
                     DF07   779 _FSCTRL1	=	0xdf07
                     DF08   780 _FSCTRL0	=	0xdf08
                     DF09   781 _FREQ2	=	0xdf09
                     DF0A   782 _FREQ1	=	0xdf0a
                     DF0B   783 _FREQ0	=	0xdf0b
                     DF0C   784 _MDMCFG4	=	0xdf0c
                     DF0D   785 _MDMCFG3	=	0xdf0d
                     DF0E   786 _MDMCFG2	=	0xdf0e
                     DF0F   787 _MDMCFG1	=	0xdf0f
                     DF10   788 _MDMCFG0	=	0xdf10
                     DF11   789 _DEVIATN	=	0xdf11
                     DF12   790 _MCSM2	=	0xdf12
                     DF13   791 _MCSM1	=	0xdf13
                     DF14   792 _MCSM0	=	0xdf14
                     DF15   793 _FOCCFG	=	0xdf15
                     DF16   794 _BSCFG	=	0xdf16
                     DF17   795 _AGCCTRL2	=	0xdf17
                     DF18   796 _AGCCTRL1	=	0xdf18
                     DF19   797 _AGCCTRL0	=	0xdf19
                     DF1A   798 _FREND1	=	0xdf1a
                     DF1B   799 _FREND0	=	0xdf1b
                     DF1C   800 _FSCAL3	=	0xdf1c
                     DF1D   801 _FSCAL2	=	0xdf1d
                     DF1E   802 _FSCAL1	=	0xdf1e
                     DF1F   803 _FSCAL0	=	0xdf1f
                     DF20   804 __XREGDF20	=	0xdf20
                     DF21   805 __XREGDF21	=	0xdf21
                     DF22   806 __XREGDF22	=	0xdf22
                     DF23   807 _TEST2	=	0xdf23
                     DF24   808 _TEST1	=	0xdf24
                     DF25   809 _TEST0	=	0xdf25
                     DF26   810 __XREGDF26	=	0xdf26
                     DF27   811 _PA_TABLE7	=	0xdf27
                     DF28   812 _PA_TABLE6	=	0xdf28
                     DF29   813 _PA_TABLE5	=	0xdf29
                     DF2A   814 _PA_TABLE4	=	0xdf2a
                     DF2B   815 _PA_TABLE3	=	0xdf2b
                     DF2C   816 _PA_TABLE2	=	0xdf2c
                     DF2D   817 _PA_TABLE1	=	0xdf2d
                     DF2E   818 _PA_TABLE0	=	0xdf2e
                     DF2F   819 _IOCFG2	=	0xdf2f
                     DF30   820 _IOCFG1	=	0xdf30
                     DF31   821 _IOCFG0	=	0xdf31
                     DF32   822 __XREGDF32	=	0xdf32
                     DF33   823 __XREGDF33	=	0xdf33
                     DF34   824 __XREGDF34	=	0xdf34
                     DF35   825 __XREGDF35	=	0xdf35
                     DF36   826 _PARTNUM	=	0xdf36
                     DF37   827 _VERSION	=	0xdf37
                     DF38   828 _FREQEST	=	0xdf38
                     DF39   829 _LQI	=	0xdf39
                     DF3A   830 _RSSI	=	0xdf3a
                     DF3B   831 _MARCSTATE	=	0xdf3b
                     DF3C   832 _PKTSTATUS	=	0xdf3c
                     DF3D   833 _VCO_VC_DAC	=	0xdf3d
                     DF40   834 _I2SCFG0	=	0xdf40
                     DF41   835 _I2SCFG1	=	0xdf41
                     DF42   836 _I2SDATL	=	0xdf42
                     DF43   837 _I2SDATH	=	0xdf43
                     DF44   838 _I2SWCNT	=	0xdf44
                     DF45   839 _I2SSTAT	=	0xdf45
                     DF46   840 _I2SCLKF0	=	0xdf46
                     DF47   841 _I2SCLKF1	=	0xdf47
                     DF48   842 _I2SCLKF2	=	0xdf48
                     DF80   843 __NA_P0	=	0xdf80
                     DF81   844 __NA_SP	=	0xdf81
                     DF82   845 __NA_DPL0	=	0xdf82
                     DF83   846 __NA_DPH0	=	0xdf83
                     DF84   847 __NA_DPL1	=	0xdf84
                     DF85   848 __NA_DPH1	=	0xdf85
                     DF86   849 _X_U0CSR	=	0xdf86
                     DF87   850 __NA_PCON	=	0xdf87
                     DF88   851 __NA_TCON	=	0xdf88
                     DF89   852 _X_P0IFG	=	0xdf89
                     DF8A   853 _X_P1IFG	=	0xdf8a
                     DF8B   854 _X_P2IFG	=	0xdf8b
                     DF8C   855 _X_PICTL	=	0xdf8c
                     DF8D   856 _X_P1IEN	=	0xdf8d
                     DF8E   857 __X_SFR8E	=	0xdf8e
                     DF8F   858 _X_P0INP	=	0xdf8f
                     DF90   859 __NA_P1	=	0xdf90
                     DF91   860 _X_RFIM	=	0xdf91
                     DF92   861 __NA_DPS	=	0xdf92
                     DF93   862 _X_MPAGE	=	0xdf93
                     DF94   863 __X_SFR94	=	0xdf94
                     DF95   864 __X_SFR95	=	0xdf95
                     DF96   865 __X_SFR96	=	0xdf96
                     DF97   866 __X_SFR97	=	0xdf97
                     DF98   867 __NA_S0CON	=	0xdf98
                     DF99   868 __X_SFR99	=	0xdf99
                     DF9A   869 __NA_IEN2	=	0xdf9a
                     DF9B   870 __NA_S1CON	=	0xdf9b
                     DF9C   871 _X_T2CT	=	0xdf9c
                     DF9D   872 _X_T2PR	=	0xdf9d
                     DF9E   873 _X_T2CTL	=	0xdf9e
                     DF9F   874 __X_SFR9F	=	0xdf9f
                     DFA0   875 __NA_P2	=	0xdfa0
                     DFA1   876 _X_WORIRQ	=	0xdfa1
                     DFA2   877 _X_WORCTRL	=	0xdfa2
                     DFA3   878 _X_WOREVT0	=	0xdfa3
                     DFA4   879 _X_WOREVT1	=	0xdfa4
                     DFA5   880 _X_WORTIME0	=	0xdfa5
                     DFA6   881 _X_WORTIME1	=	0xdfa6
                     DFA7   882 __X_SFRA7	=	0xdfa7
                     DFA8   883 __NA_IEN0	=	0xdfa8
                     DFA9   884 __NA_IP0	=	0xdfa9
                     DFAA   885 __X_SFRAA	=	0xdfaa
                     DFAB   886 _X_FWT	=	0xdfab
                     DFAC   887 _X_FADDRL	=	0xdfac
                     DFAD   888 _X_FADDRH	=	0xdfad
                     DFAE   889 _X_FCTL	=	0xdfae
                     DFAF   890 _X_FWDATA	=	0xdfaf
                     DFB0   891 __X_SFRB0	=	0xdfb0
                     DFB1   892 _X_ENCDI	=	0xdfb1
                     DFB2   893 _X_ENCDO	=	0xdfb2
                     DFB3   894 _X_ENCCS	=	0xdfb3
                     DFB4   895 _X_ADCCON1	=	0xdfb4
                     DFB5   896 _X_ADCCON2	=	0xdfb5
                     DFB6   897 _X_ADCCON3	=	0xdfb6
                     DFB7   898 __X_SFRB7	=	0xdfb7
                     DFB8   899 __NA_IEN1	=	0xdfb8
                     DFB9   900 __NA_IP1	=	0xdfb9
                     DFBA   901 _X_ADCL	=	0xdfba
                     DFBB   902 _X_ADCH	=	0xdfbb
                     DFBC   903 _X_RNDL	=	0xdfbc
                     DFBD   904 _X_RNDH	=	0xdfbd
                     DFBE   905 _X_SLEEP	=	0xdfbe
                     DFBF   906 __X_SFRBF	=	0xdfbf
                     DFC0   907 __NA_IRCON	=	0xdfc0
                     DFC1   908 _X_U0DBUF	=	0xdfc1
                     DFC2   909 _X_U0BAUD	=	0xdfc2
                     DFC3   910 __X_SFRC3	=	0xdfc3
                     DFC4   911 _X_U0UCR	=	0xdfc4
                     DFC5   912 _X_U0GCR	=	0xdfc5
                     DFC6   913 _X_CLKCON	=	0xdfc6
                     DFC7   914 _X_MEMCTR	=	0xdfc7
                     DFC8   915 __X_SFRC8	=	0xdfc8
                     DFC9   916 _X_WDCTL	=	0xdfc9
                     DFCA   917 _X_T3CNT	=	0xdfca
                     DFCB   918 _X_T3CTL	=	0xdfcb
                     DFCC   919 _X_T3CCTL0	=	0xdfcc
                     DFCD   920 _X_T3CC0	=	0xdfcd
                     DFCE   921 _X_T3CCTL1	=	0xdfce
                     DFCF   922 _X_T3CC1	=	0xdfcf
                     DFD0   923 __NA_PSW	=	0xdfd0
                     DFD1   924 _X_DMAIRQ	=	0xdfd1
                     DFD2   925 _X_DMA1CFGL	=	0xdfd2
                     DFD3   926 _X_DMA1CFGH	=	0xdfd3
                     DFD4   927 _X_DMA0CFGL	=	0xdfd4
                     DFD5   928 _X_DMA0CFGH	=	0xdfd5
                     DFD6   929 _X_DMAARM	=	0xdfd6
                     DFD7   930 _X_DMAREQ	=	0xdfd7
                     DFD8   931 _X_TIMIF	=	0xdfd8
                     DFD9   932 _X_RFD	=	0xdfd9
                     DFDA   933 _X_T1CC0L	=	0xdfda
                     DFDB   934 _X_T1CC0H	=	0xdfdb
                     DFDC   935 _X_T1CC1L	=	0xdfdc
                     DFDD   936 _X_T1CC1H	=	0xdfdd
                     DFDE   937 _X_T1CC2L	=	0xdfde
                     DFDF   938 _X_T1CC2H	=	0xdfdf
                     DFE0   939 __NA_ACC	=	0xdfe0
                     DFE1   940 _X_RFST	=	0xdfe1
                     DFE2   941 _X_T1CNTL	=	0xdfe2
                     DFE3   942 _X_T1CNTH	=	0xdfe3
                     DFE4   943 _X_T1CTL	=	0xdfe4
                     DFE5   944 _X_T1CCTL0	=	0xdfe5
                     DFE6   945 _X_T1CCTL1	=	0xdfe6
                     DFE7   946 _X_T1CCTL2	=	0xdfe7
                     DFE8   947 __NA_IRCON2	=	0xdfe8
                     DFE9   948 _X_RFIF	=	0xdfe9
                     DFEA   949 _X_T4CNT	=	0xdfea
                     DFEB   950 _X_T4CTL	=	0xdfeb
                     DFEC   951 _X_T4CCTL0	=	0xdfec
                     DFED   952 _X_T4CC0	=	0xdfed
                     DFEE   953 _X_T4CCTL1	=	0xdfee
                     DFEF   954 _X_T4CC1	=	0xdfef
                     DFF0   955 __NA_B	=	0xdff0
                     DFF1   956 _X_PERCFG	=	0xdff1
                     DFF2   957 _X_ADCCFG	=	0xdff2
                     DFF3   958 _X_P0SEL	=	0xdff3
                     DFF4   959 _X_P1SEL	=	0xdff4
                     DFF5   960 _X_P2SEL	=	0xdff5
                     DFF6   961 _X_P1INP	=	0xdff6
                     DFF7   962 _X_P2INP	=	0xdff7
                     DFF8   963 _X_U1CSR	=	0xdff8
                     DFF9   964 _X_U1DBUF	=	0xdff9
                     DFFA   965 _X_U1BAUD	=	0xdffa
                     DFFB   966 _X_U1UCR	=	0xdffb
                     DFFC   967 _X_U1GCR	=	0xdffc
                     DFFD   968 _X_P0DIR	=	0xdffd
                     DFFE   969 _X_P1DIR	=	0xdffe
                     DFFF   970 _X_P2DIR	=	0xdfff
                     DE00   971 _USBADDR	=	0xde00
                     DE01   972 _USBPOW	=	0xde01
                     DE02   973 _USBIIF	=	0xde02
                     DE04   974 _USBOIF	=	0xde04
                     DE06   975 _USBCIF	=	0xde06
                     DE07   976 _USBIIE	=	0xde07
                     DE09   977 _USBOIE	=	0xde09
                     DE0B   978 _USBCIE	=	0xde0b
                     DE0C   979 _USBFRML	=	0xde0c
                     DE0D   980 _USBFRMH	=	0xde0d
                     DE0E   981 _USBINDEX	=	0xde0e
                     DE10   982 _USBMAXI	=	0xde10
                     DE11   983 _USBCS0	=	0xde11
                     DE11   984 _USBCSIL	=	0xde11
                     DE12   985 _USBCSIH	=	0xde12
                     DE13   986 _USBMAXO	=	0xde13
                     DE14   987 _USBCSOL	=	0xde14
                     DE15   988 _USBCSOH	=	0xde15
                     DE16   989 _USBCNT0	=	0xde16
                     DE16   990 _USBCNTL	=	0xde16
                     DE17   991 _USBCNTH	=	0xde17
                     DE20   992 _USBF0	=	0xde20
                     DE22   993 _USBF1	=	0xde22
                     DE24   994 _USBF2	=	0xde24
                     DE26   995 _USBF3	=	0xde26
                     DE28   996 _USBF4	=	0xde28
                     DE2A   997 _USBF5	=	0xde2a
   FDC1                     998 _aesdmai::
   FDC1                     999 	.ds 2
   FDC3                    1000 _aesdmao::
   FDC3                    1001 	.ds 2
   FDC5                    1002 _aesdmachani::
   FDC5                    1003 	.ds 1
   FDC6                    1004 _aesdmaarmi::
   FDC6                    1005 	.ds 1
   FDC7                    1006 _aesdmachano::
   FDC7                    1007 	.ds 1
   FDC8                    1008 _aesdmaarmo::
   FDC8                    1009 	.ds 1
   FDC9                    1010 _setAES_PARM_2:
   FDC9                    1011 	.ds 1
   FDCA                    1012 _setAES_PARM_3:
   FDCA                    1013 	.ds 1
   FDCB                    1014 _setAES_buf_1_56:
   FDCB                    1015 	.ds 2
   FDCD                    1016 _padAES_PARM_2:
   FDCD                    1017 	.ds 2
   FDCF                    1018 _padAES_buf_1_58:
   FDCF                    1019 	.ds 2
   FDD1                    1020 _encAES_PARM_2:
   FDD1                    1021 	.ds 2
   FDD3                    1022 _encAES_PARM_3:
   FDD3                    1023 	.ds 2
   FDD5                    1024 _encAES_PARM_4:
   FDD5                    1025 	.ds 1
   FDD6                    1026 _encAES_inbuf_1_60:
   FDD6                    1027 	.ds 2
   FDD8                    1028 _decAES_PARM_2:
   FDD8                    1029 	.ds 2
   FDDA                    1030 _decAES_PARM_3:
   FDDA                    1031 	.ds 2
   FDDC                    1032 _decAES_PARM_4:
   FDDC                    1033 	.ds 1
   FDDD                    1034 _decAES_inbuf_1_62:
   FDDD                    1035 	.ds 2
   FDDF                    1036 _doAES_PARM_2:
   FDDF                    1037 	.ds 2
   FDE1                    1038 _doAES_PARM_3:
   FDE1                    1039 	.ds 2
   FDE3                    1040 _doAES_PARM_4:
   FDE3                    1041 	.ds 1
   FDE4                    1042 _doAES_PARM_5:
   FDE4                    1043 	.ds 1
   FDE5                    1044 _doAES_inbuf_1_64:
   FDE5                    1045 	.ds 2
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
   2F16                    1087 _initAES:
                     0007  1088 	ar7 = 0x07
                     0006  1089 	ar6 = 0x06
                     0005  1090 	ar5 = 0x05
                     0004  1091 	ar4 = 0x04
                     0003  1092 	ar3 = 0x03
                     0002  1093 	ar2 = 0x02
                     0001  1094 	ar1 = 0x01
                     0000  1095 	ar0 = 0x00
                           1096 ;	cc1111_aes.c:18: aesdmachani= getDMA();                    // allocate a DMA channel
   2F16 12 22 59      [24] 1097 	lcall	_getDMA
   2F19 AF 82         [24] 1098 	mov	r7,dpl
   2F1B 90 FD C5      [24] 1099 	mov	dptr,#_aesdmachani
   2F1E EF            [12] 1100 	mov	a,r7
   2F1F F0            [24] 1101 	movx	@dptr,a
                           1102 ;	cc1111_aes.c:19: aesdmaarmi= (DMAARM0 << aesdmachani);     // pre-calculate arming bit
   2F20 8F F0         [24] 1103 	mov	b,r7
   2F22 05 F0         [12] 1104 	inc	b
   2F24 74 01         [12] 1105 	mov	a,#0x01
   2F26 80 02         [24] 1106 	sjmp	00105$
   2F28                    1107 00103$:
   2F28 25 E0         [12] 1108 	add	a,acc
   2F2A                    1109 00105$:
   2F2A D5 F0 FB      [24] 1110 	djnz	b,00103$
   2F2D 90 FD C6      [24] 1111 	mov	dptr,#_aesdmaarmi
   2F30 F0            [24] 1112 	movx	@dptr,a
                           1113 ;	cc1111_aes.c:20: aesdmai= &dma_configs[aesdmachani];       // point our DMA descriptor at allocated channel descriptor
   2F31 EF            [12] 1114 	mov	a,r7
   2F32 75 F0 08      [24] 1115 	mov	b,#0x08
   2F35 A4            [48] 1116 	mul	ab
   2F36 24 69         [12] 1117 	add	a,#_dma_configs
   2F38 FE            [12] 1118 	mov	r6,a
   2F39 74 F9         [12] 1119 	mov	a,#(_dma_configs >> 8)
   2F3B 35 F0         [12] 1120 	addc	a,b
   2F3D FF            [12] 1121 	mov	r7,a
   2F3E 90 FD C1      [24] 1122 	mov	dptr,#_aesdmai
   2F41 EE            [12] 1123 	mov	a,r6
   2F42 F0            [24] 1124 	movx	@dptr,a
   2F43 EF            [12] 1125 	mov	a,r7
   2F44 A3            [24] 1126 	inc	dptr
   2F45 F0            [24] 1127 	movx	@dptr,a
                           1128 ;	cc1111_aes.c:21: aesdmai->destAddrH = 0xdf;                // ENCDI == 0xdfb1 - AES Input SFR
   2F46 8E 82         [24] 1129 	mov	dpl,r6
   2F48 8F 83         [24] 1130 	mov	dph,r7
   2F4A A3            [24] 1131 	inc	dptr
   2F4B A3            [24] 1132 	inc	dptr
   2F4C 74 DF         [12] 1133 	mov	a,#0xDF
   2F4E F0            [24] 1134 	movx	@dptr,a
                           1135 ;	cc1111_aes.c:22: aesdmai->destAddrL = 0xb1;
   2F4F 8E 82         [24] 1136 	mov	dpl,r6
   2F51 8F 83         [24] 1137 	mov	dph,r7
   2F53 A3            [24] 1138 	inc	dptr
   2F54 A3            [24] 1139 	inc	dptr
   2F55 A3            [24] 1140 	inc	dptr
   2F56 74 B1         [12] 1141 	mov	a,#0xB1
   2F58 F0            [24] 1142 	movx	@dptr,a
                           1143 ;	cc1111_aes.c:23: aesdmai->lenL = 16;                       // always 128 bit operations
   2F59 8E 82         [24] 1144 	mov	dpl,r6
   2F5B 8F 83         [24] 1145 	mov	dph,r7
   2F5D A3            [24] 1146 	inc	dptr
   2F5E A3            [24] 1147 	inc	dptr
   2F5F A3            [24] 1148 	inc	dptr
   2F60 A3            [24] 1149 	inc	dptr
   2F61 A3            [24] 1150 	inc	dptr
   2F62 74 10         [12] 1151 	mov	a,#0x10
   2F64 F0            [24] 1152 	movx	@dptr,a
                           1153 ;	cc1111_aes.c:24: aesdmai->trig = DMA_CFG0_TRIGGER_ENC_DW;  // trigger when co-processor requests data
   2F65 74 06         [12] 1154 	mov	a,#0x06
   2F67 2E            [12] 1155 	add	a,r6
   2F68 F5 82         [12] 1156 	mov	dpl,a
   2F6A E4            [12] 1157 	clr	a
   2F6B 3F            [12] 1158 	addc	a,r7
   2F6C F5 83         [12] 1159 	mov	dph,a
   2F6E E0            [24] 1160 	movx	a,@dptr
   2F6F 54 E0         [12] 1161 	anl	a,#0xE0
   2F71 44 1D         [12] 1162 	orl	a,#0x1D
   2F73 F0            [24] 1163 	movx	@dptr,a
                           1164 ;	cc1111_aes.c:25: aesdmai->srcInc = 1;
   2F74 74 07         [12] 1165 	mov	a,#0x07
   2F76 2E            [12] 1166 	add	a,r6
   2F77 F5 82         [12] 1167 	mov	dpl,a
   2F79 E4            [12] 1168 	clr	a
   2F7A 3F            [12] 1169 	addc	a,r7
   2F7B F5 83         [12] 1170 	mov	dph,a
   2F7D E0            [24] 1171 	movx	a,@dptr
   2F7E 54 3F         [12] 1172 	anl	a,#0x3F
   2F80 44 40         [12] 1173 	orl	a,#0x40
   2F82 F0            [24] 1174 	movx	@dptr,a
                           1175 ;	cc1111_aes.c:26: aesdmai->priority = 1;
   2F83 74 07         [12] 1176 	mov	a,#0x07
   2F85 2E            [12] 1177 	add	a,r6
   2F86 F5 82         [12] 1178 	mov	dpl,a
   2F88 E4            [12] 1179 	clr	a
   2F89 3F            [12] 1180 	addc	a,r7
   2F8A F5 83         [12] 1181 	mov	dph,a
   2F8C E0            [24] 1182 	movx	a,@dptr
   2F8D 54 FC         [12] 1183 	anl	a,#0xFC
   2F8F 44 01         [12] 1184 	orl	a,#0x01
   2F91 F0            [24] 1185 	movx	@dptr,a
                           1186 ;	cc1111_aes.c:29: aesdmachano= getDMA();
   2F92 12 22 59      [24] 1187 	lcall	_getDMA
   2F95 AF 82         [24] 1188 	mov	r7,dpl
   2F97 90 FD C7      [24] 1189 	mov	dptr,#_aesdmachano
   2F9A EF            [12] 1190 	mov	a,r7
   2F9B F0            [24] 1191 	movx	@dptr,a
                           1192 ;	cc1111_aes.c:30: aesdmaarmo= (DMAARM0 << aesdmachano);
   2F9C 8F F0         [24] 1193 	mov	b,r7
   2F9E 05 F0         [12] 1194 	inc	b
   2FA0 74 01         [12] 1195 	mov	a,#0x01
   2FA2 80 02         [24] 1196 	sjmp	00108$
   2FA4                    1197 00106$:
   2FA4 25 E0         [12] 1198 	add	a,acc
   2FA6                    1199 00108$:
   2FA6 D5 F0 FB      [24] 1200 	djnz	b,00106$
   2FA9 90 FD C8      [24] 1201 	mov	dptr,#_aesdmaarmo
   2FAC F0            [24] 1202 	movx	@dptr,a
                           1203 ;	cc1111_aes.c:31: aesdmao= &dma_configs[aesdmachano];
   2FAD EF            [12] 1204 	mov	a,r7
   2FAE 75 F0 08      [24] 1205 	mov	b,#0x08
   2FB1 A4            [48] 1206 	mul	ab
   2FB2 24 69         [12] 1207 	add	a,#_dma_configs
   2FB4 FE            [12] 1208 	mov	r6,a
   2FB5 74 F9         [12] 1209 	mov	a,#(_dma_configs >> 8)
   2FB7 35 F0         [12] 1210 	addc	a,b
   2FB9 FF            [12] 1211 	mov	r7,a
   2FBA 90 FD C3      [24] 1212 	mov	dptr,#_aesdmao
   2FBD EE            [12] 1213 	mov	a,r6
   2FBE F0            [24] 1214 	movx	@dptr,a
   2FBF EF            [12] 1215 	mov	a,r7
   2FC0 A3            [24] 1216 	inc	dptr
   2FC1 F0            [24] 1217 	movx	@dptr,a
                           1218 ;	cc1111_aes.c:32: aesdmao->srcAddrH = 0xdf;                 // ENCDO == 0xdfb2 - AES Output SFR
   2FC2 8E 82         [24] 1219 	mov	dpl,r6
   2FC4 8F 83         [24] 1220 	mov	dph,r7
   2FC6 74 DF         [12] 1221 	mov	a,#0xDF
   2FC8 F0            [24] 1222 	movx	@dptr,a
                           1223 ;	cc1111_aes.c:33: aesdmao->srcAddrL = 0xb2;
   2FC9 8E 82         [24] 1224 	mov	dpl,r6
   2FCB 8F 83         [24] 1225 	mov	dph,r7
   2FCD A3            [24] 1226 	inc	dptr
   2FCE 74 B2         [12] 1227 	mov	a,#0xB2
   2FD0 F0            [24] 1228 	movx	@dptr,a
                           1229 ;	cc1111_aes.c:34: aesdmao->lenL = 16;
   2FD1 8E 82         [24] 1230 	mov	dpl,r6
   2FD3 8F 83         [24] 1231 	mov	dph,r7
   2FD5 A3            [24] 1232 	inc	dptr
   2FD6 A3            [24] 1233 	inc	dptr
   2FD7 A3            [24] 1234 	inc	dptr
   2FD8 A3            [24] 1235 	inc	dptr
   2FD9 A3            [24] 1236 	inc	dptr
   2FDA 74 10         [12] 1237 	mov	a,#0x10
   2FDC F0            [24] 1238 	movx	@dptr,a
                           1239 ;	cc1111_aes.c:35: aesdmao->trig = DMA_CFG0_TRIGGER_DNC_UP;  // trigger when co-processor signals upload ready
   2FDD 74 06         [12] 1240 	mov	a,#0x06
   2FDF 2E            [12] 1241 	add	a,r6
   2FE0 F5 82         [12] 1242 	mov	dpl,a
   2FE2 E4            [12] 1243 	clr	a
   2FE3 3F            [12] 1244 	addc	a,r7
   2FE4 F5 83         [12] 1245 	mov	dph,a
   2FE6 E0            [24] 1246 	movx	a,@dptr
   2FE7 54 E0         [12] 1247 	anl	a,#0xE0
   2FE9 44 1E         [12] 1248 	orl	a,#0x1E
   2FEB F0            [24] 1249 	movx	@dptr,a
                           1250 ;	cc1111_aes.c:36: aesdmao->destInc = 1;
   2FEC 74 07         [12] 1251 	mov	a,#0x07
   2FEE 2E            [12] 1252 	add	a,r6
   2FEF F5 82         [12] 1253 	mov	dpl,a
   2FF1 E4            [12] 1254 	clr	a
   2FF2 3F            [12] 1255 	addc	a,r7
   2FF3 F5 83         [12] 1256 	mov	dph,a
   2FF5 E0            [24] 1257 	movx	a,@dptr
   2FF6 54 CF         [12] 1258 	anl	a,#0xCF
   2FF8 44 10         [12] 1259 	orl	a,#0x10
   2FFA F0            [24] 1260 	movx	@dptr,a
                           1261 ;	cc1111_aes.c:37: aesdmao->priority = 1;
   2FFB 74 07         [12] 1262 	mov	a,#0x07
   2FFD 2E            [12] 1263 	add	a,r6
   2FFE F5 82         [12] 1264 	mov	dpl,a
   3000 E4            [12] 1265 	clr	a
   3001 3F            [12] 1266 	addc	a,r7
   3002 F5 83         [12] 1267 	mov	dph,a
   3004 E0            [24] 1268 	movx	a,@dptr
   3005 54 FC         [12] 1269 	anl	a,#0xFC
   3007 44 01         [12] 1270 	orl	a,#0x01
   3009 F0            [24] 1271 	movx	@dptr,a
                           1272 ;	cc1111_aes.c:40: IP0 |= BIT4;
   300A 43 A9 10      [24] 1273 	orl	_IP0,#0x10
                           1274 ;	cc1111_aes.c:41: IP1 |= BIT4;
   300D 43 B9 10      [24] 1275 	orl	_IP1,#0x10
   3010 22            [24] 1276 	ret
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
   3011                    1288 _setAES:
   3011 AF 83         [24] 1289 	mov	r7,dph
   3013 E5 82         [12] 1290 	mov	a,dpl
   3015 90 FD CB      [24] 1291 	mov	dptr,#_setAES_buf_1_56
   3018 F0            [24] 1292 	movx	@dptr,a
   3019 EF            [12] 1293 	mov	a,r7
   301A A3            [24] 1294 	inc	dptr
   301B F0            [24] 1295 	movx	@dptr,a
                           1296 ;	cc1111_aes.c:48: while(!(ENCCS & ENCCS_RDY))
   301C                    1297 00101$:
   301C E5 B3         [12] 1298 	mov	a,_ENCCS
   301E 30 E3 FB      [24] 1299 	jnb	acc.3,00101$
                           1300 ;	cc1111_aes.c:52: aesdmai->srcAddrH = (u8) ((u16) buf >> 8);
   3021 90 FD C1      [24] 1301 	mov	dptr,#_aesdmai
   3024 E0            [24] 1302 	movx	a,@dptr
   3025 FE            [12] 1303 	mov	r6,a
   3026 A3            [24] 1304 	inc	dptr
   3027 E0            [24] 1305 	movx	a,@dptr
   3028 FF            [12] 1306 	mov	r7,a
   3029 90 FD CB      [24] 1307 	mov	dptr,#_setAES_buf_1_56
   302C E0            [24] 1308 	movx	a,@dptr
   302D FC            [12] 1309 	mov	r4,a
   302E A3            [24] 1310 	inc	dptr
   302F E0            [24] 1311 	movx	a,@dptr
   3030 FD            [12] 1312 	mov	r5,a
   3031 8C 02         [24] 1313 	mov	ar2,r4
   3033 8D 03         [24] 1314 	mov	ar3,r5
   3035 8B 02         [24] 1315 	mov	ar2,r3
   3037 8E 82         [24] 1316 	mov	dpl,r6
   3039 8F 83         [24] 1317 	mov	dph,r7
   303B EA            [12] 1318 	mov	a,r2
   303C F0            [24] 1319 	movx	@dptr,a
                           1320 ;	cc1111_aes.c:53: aesdmai->srcAddrL = (u8) ((u16) buf & 0xff);
   303D 90 FD C1      [24] 1321 	mov	dptr,#_aesdmai
   3040 E0            [24] 1322 	movx	a,@dptr
   3041 FE            [12] 1323 	mov	r6,a
   3042 A3            [24] 1324 	inc	dptr
   3043 E0            [24] 1325 	movx	a,@dptr
   3044 FF            [12] 1326 	mov	r7,a
   3045 8E 82         [24] 1327 	mov	dpl,r6
   3047 8F 83         [24] 1328 	mov	dph,r7
   3049 A3            [24] 1329 	inc	dptr
   304A 7D 00         [12] 1330 	mov	r5,#0x00
   304C EC            [12] 1331 	mov	a,r4
   304D F0            [24] 1332 	movx	@dptr,a
                           1333 ;	cc1111_aes.c:54: DMAARM |= aesdmaarmi;
   304E 90 FD C6      [24] 1334 	mov	dptr,#_aesdmaarmi
   3051 E0            [24] 1335 	movx	a,@dptr
   3052 42 D6         [12] 1336 	orl	_DMAARM,a
                           1337 ;	cc1111_aes.c:55: NOP();
                           1338 ; nop; 
                           1339 ;	cc1111_aes.c:58: ENCCS = mode | command | ENCCS_ST;
   3054 90 FD C9      [24] 1340 	mov	dptr,#_setAES_PARM_2
   3057 E0            [24] 1341 	movx	a,@dptr
   3058 FF            [12] 1342 	mov	r7,a
   3059 90 FD CA      [24] 1343 	mov	dptr,#_setAES_PARM_3
   305C E0            [24] 1344 	movx	a,@dptr
   305D FE            [12] 1345 	mov	r6,a
   305E 4F            [12] 1346 	orl	a,r7
   305F 44 01         [12] 1347 	orl	a,#0x01
   3061 F5 B3         [12] 1348 	mov	_ENCCS,a
                           1349 ;	cc1111_aes.c:61: while(!(ENCCS & ENCCS_RDY))
   3063                    1350 00104$:
   3063 E5 B3         [12] 1351 	mov	a,_ENCCS
   3065 30 E3 FB      [24] 1352 	jnb	acc.3,00104$
   3068 22            [24] 1353 	ret
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
   3069                    1364 _padAES:
   3069 AF 83         [24] 1365 	mov	r7,dph
   306B E5 82         [12] 1366 	mov	a,dpl
   306D 90 FD CF      [24] 1367 	mov	dptr,#_padAES_buf_1_58
   3070 F0            [24] 1368 	movx	@dptr,a
   3071 EF            [12] 1369 	mov	a,r7
   3072 A3            [24] 1370 	inc	dptr
   3073 F0            [24] 1371 	movx	@dptr,a
                           1372 ;	cc1111_aes.c:69: while(len % 16)
   3074 90 FD CF      [24] 1373 	mov	dptr,#_padAES_buf_1_58
   3077 E0            [24] 1374 	movx	a,@dptr
   3078 FE            [12] 1375 	mov	r6,a
   3079 A3            [24] 1376 	inc	dptr
   307A E0            [24] 1377 	movx	a,@dptr
   307B FF            [12] 1378 	mov	r7,a
   307C 90 FD CD      [24] 1379 	mov	dptr,#_padAES_PARM_2
   307F E0            [24] 1380 	movx	a,@dptr
   3080 FC            [12] 1381 	mov	r4,a
   3081 A3            [24] 1382 	inc	dptr
   3082 E0            [24] 1383 	movx	a,@dptr
   3083 FD            [12] 1384 	mov	r5,a
   3084                    1385 00101$:
   3084 EC            [12] 1386 	mov	a,r4
   3085 54 0F         [12] 1387 	anl	a,#0x0F
   3087 60 15         [24] 1388 	jz	00103$
                           1389 ;	cc1111_aes.c:70: buf[len++]= '\0';
   3089 8C 02         [24] 1390 	mov	ar2,r4
   308B 8D 03         [24] 1391 	mov	ar3,r5
   308D 0C            [12] 1392 	inc	r4
   308E BC 00 01      [24] 1393 	cjne	r4,#0x00,00114$
   3091 0D            [12] 1394 	inc	r5
   3092                    1395 00114$:
   3092 EA            [12] 1396 	mov	a,r2
   3093 2E            [12] 1397 	add	a,r6
   3094 F5 82         [12] 1398 	mov	dpl,a
   3096 EB            [12] 1399 	mov	a,r3
   3097 3F            [12] 1400 	addc	a,r7
   3098 F5 83         [12] 1401 	mov	dph,a
   309A E4            [12] 1402 	clr	a
   309B F0            [24] 1403 	movx	@dptr,a
   309C 80 E6         [24] 1404 	sjmp	00101$
   309E                    1405 00103$:
                           1406 ;	cc1111_aes.c:72: return len;
   309E 8C 82         [24] 1407 	mov	dpl,r4
   30A0 8D 83         [24] 1408 	mov	dph,r5
   30A2 22            [24] 1409 	ret
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
   30A3                    1422 _encAES:
   30A3 AF 83         [24] 1423 	mov	r7,dph
   30A5 E5 82         [12] 1424 	mov	a,dpl
   30A7 90 FD D6      [24] 1425 	mov	dptr,#_encAES_inbuf_1_60
   30AA F0            [24] 1426 	movx	@dptr,a
   30AB EF            [12] 1427 	mov	a,r7
   30AC A3            [24] 1428 	inc	dptr
   30AD F0            [24] 1429 	movx	@dptr,a
                           1430 ;	cc1111_aes.c:78: doAES(inbuf, outbuf, len, ENCCS_CMD_ENC, mode);
   30AE 90 FD D6      [24] 1431 	mov	dptr,#_encAES_inbuf_1_60
   30B1 E0            [24] 1432 	movx	a,@dptr
   30B2 FE            [12] 1433 	mov	r6,a
   30B3 A3            [24] 1434 	inc	dptr
   30B4 E0            [24] 1435 	movx	a,@dptr
   30B5 FF            [12] 1436 	mov	r7,a
   30B6 90 FD D1      [24] 1437 	mov	dptr,#_encAES_PARM_2
   30B9 E0            [24] 1438 	movx	a,@dptr
   30BA FC            [12] 1439 	mov	r4,a
   30BB A3            [24] 1440 	inc	dptr
   30BC E0            [24] 1441 	movx	a,@dptr
   30BD FD            [12] 1442 	mov	r5,a
   30BE 90 FD D3      [24] 1443 	mov	dptr,#_encAES_PARM_3
   30C1 E0            [24] 1444 	movx	a,@dptr
   30C2 FA            [12] 1445 	mov	r2,a
   30C3 A3            [24] 1446 	inc	dptr
   30C4 E0            [24] 1447 	movx	a,@dptr
   30C5 FB            [12] 1448 	mov	r3,a
   30C6 90 FD D5      [24] 1449 	mov	dptr,#_encAES_PARM_4
   30C9 E0            [24] 1450 	movx	a,@dptr
   30CA F9            [12] 1451 	mov	r1,a
   30CB 90 FD DF      [24] 1452 	mov	dptr,#_doAES_PARM_2
   30CE EC            [12] 1453 	mov	a,r4
   30CF F0            [24] 1454 	movx	@dptr,a
   30D0 ED            [12] 1455 	mov	a,r5
   30D1 A3            [24] 1456 	inc	dptr
   30D2 F0            [24] 1457 	movx	@dptr,a
   30D3 90 FD E1      [24] 1458 	mov	dptr,#_doAES_PARM_3
   30D6 EA            [12] 1459 	mov	a,r2
   30D7 F0            [24] 1460 	movx	@dptr,a
   30D8 EB            [12] 1461 	mov	a,r3
   30D9 A3            [24] 1462 	inc	dptr
   30DA F0            [24] 1463 	movx	@dptr,a
   30DB 90 FD E3      [24] 1464 	mov	dptr,#_doAES_PARM_4
   30DE E4            [12] 1465 	clr	a
   30DF F0            [24] 1466 	movx	@dptr,a
   30E0 90 FD E4      [24] 1467 	mov	dptr,#_doAES_PARM_5
   30E3 E9            [12] 1468 	mov	a,r1
   30E4 F0            [24] 1469 	movx	@dptr,a
   30E5 8E 82         [24] 1470 	mov	dpl,r6
   30E7 8F 83         [24] 1471 	mov	dph,r7
   30E9 02 31 36      [24] 1472 	ljmp	_doAES
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
   30EC                    1485 _decAES:
   30EC AF 83         [24] 1486 	mov	r7,dph
   30EE E5 82         [12] 1487 	mov	a,dpl
   30F0 90 FD DD      [24] 1488 	mov	dptr,#_decAES_inbuf_1_62
   30F3 F0            [24] 1489 	movx	@dptr,a
   30F4 EF            [12] 1490 	mov	a,r7
   30F5 A3            [24] 1491 	inc	dptr
   30F6 F0            [24] 1492 	movx	@dptr,a
                           1493 ;	cc1111_aes.c:84: doAES(inbuf, outbuf, len, ENCCS_CMD_DEC, mode);
   30F7 90 FD DD      [24] 1494 	mov	dptr,#_decAES_inbuf_1_62
   30FA E0            [24] 1495 	movx	a,@dptr
   30FB FE            [12] 1496 	mov	r6,a
   30FC A3            [24] 1497 	inc	dptr
   30FD E0            [24] 1498 	movx	a,@dptr
   30FE FF            [12] 1499 	mov	r7,a
   30FF 90 FD D8      [24] 1500 	mov	dptr,#_decAES_PARM_2
   3102 E0            [24] 1501 	movx	a,@dptr
   3103 FC            [12] 1502 	mov	r4,a
   3104 A3            [24] 1503 	inc	dptr
   3105 E0            [24] 1504 	movx	a,@dptr
   3106 FD            [12] 1505 	mov	r5,a
   3107 90 FD DA      [24] 1506 	mov	dptr,#_decAES_PARM_3
   310A E0            [24] 1507 	movx	a,@dptr
   310B FA            [12] 1508 	mov	r2,a
   310C A3            [24] 1509 	inc	dptr
   310D E0            [24] 1510 	movx	a,@dptr
   310E FB            [12] 1511 	mov	r3,a
   310F 90 FD DC      [24] 1512 	mov	dptr,#_decAES_PARM_4
   3112 E0            [24] 1513 	movx	a,@dptr
   3113 F9            [12] 1514 	mov	r1,a
   3114 90 FD DF      [24] 1515 	mov	dptr,#_doAES_PARM_2
   3117 EC            [12] 1516 	mov	a,r4
   3118 F0            [24] 1517 	movx	@dptr,a
   3119 ED            [12] 1518 	mov	a,r5
   311A A3            [24] 1519 	inc	dptr
   311B F0            [24] 1520 	movx	@dptr,a
   311C 90 FD E1      [24] 1521 	mov	dptr,#_doAES_PARM_3
   311F EA            [12] 1522 	mov	a,r2
   3120 F0            [24] 1523 	movx	@dptr,a
   3121 EB            [12] 1524 	mov	a,r3
   3122 A3            [24] 1525 	inc	dptr
   3123 F0            [24] 1526 	movx	@dptr,a
   3124 90 FD E3      [24] 1527 	mov	dptr,#_doAES_PARM_4
   3127 74 02         [12] 1528 	mov	a,#0x02
   3129 F0            [24] 1529 	movx	@dptr,a
   312A 90 FD E4      [24] 1530 	mov	dptr,#_doAES_PARM_5
   312D E9            [12] 1531 	mov	a,r1
   312E F0            [24] 1532 	movx	@dptr,a
   312F 8E 82         [24] 1533 	mov	dpl,r6
   3131 8F 83         [24] 1534 	mov	dph,r7
   3133 02 31 36      [24] 1535 	ljmp	_doAES
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
   3136                    1555 _doAES:
   3136 AF 83         [24] 1556 	mov	r7,dph
   3138 E5 82         [12] 1557 	mov	a,dpl
   313A 90 FD E5      [24] 1558 	mov	dptr,#_doAES_inbuf_1_64
   313D F0            [24] 1559 	movx	@dptr,a
   313E EF            [12] 1560 	mov	a,r7
   313F A3            [24] 1561 	inc	dptr
   3140 F0            [24] 1562 	movx	@dptr,a
                           1563 ;	cc1111_aes.c:93: while(!(ENCCS & ENCCS_RDY))
   3141                    1564 00101$:
   3141 E5 B3         [12] 1565 	mov	a,_ENCCS
   3143 30 E3 FB      [24] 1566 	jnb	acc.3,00101$
                           1567 ;	cc1111_aes.c:96: for(bufp= 0 ; bufp < len ; bufp += 16)
   3146 90 FD E5      [24] 1568 	mov	dptr,#_doAES_inbuf_1_64
   3149 E0            [24] 1569 	movx	a,@dptr
   314A FE            [12] 1570 	mov	r6,a
   314B A3            [24] 1571 	inc	dptr
   314C E0            [24] 1572 	movx	a,@dptr
   314D FF            [12] 1573 	mov	r7,a
   314E 90 FD DF      [24] 1574 	mov	dptr,#_doAES_PARM_2
   3151 E0            [24] 1575 	movx	a,@dptr
   3152 F5 1A         [12] 1576 	mov	_doAES_sloc4_1_0,a
   3154 A3            [24] 1577 	inc	dptr
   3155 E0            [24] 1578 	movx	a,@dptr
   3156 F5 1B         [12] 1579 	mov	(_doAES_sloc4_1_0 + 1),a
   3158 90 FD E4      [24] 1580 	mov	dptr,#_doAES_PARM_5
   315B E0            [24] 1581 	movx	a,@dptr
   315C FB            [12] 1582 	mov	r3,a
   315D 74 50         [12] 1583 	mov	a,#0x50
   315F 5B            [12] 1584 	anl	a,r3
   3160 F5 19         [12] 1585 	mov	_doAES_sloc3_1_0,a
   3162 90 FD E3      [24] 1586 	mov	dptr,#_doAES_PARM_4
   3165 E0            [24] 1587 	movx	a,@dptr
   3166 F9            [12] 1588 	mov	r1,a
   3167 4B            [12] 1589 	orl	a,r3
   3168 44 01         [12] 1590 	orl	a,#0x01
   316A FB            [12] 1591 	mov	r3,a
   316B 74 01         [12] 1592 	mov	a,#0x01
   316D 49            [12] 1593 	orl	a,r1
   316E F5 18         [12] 1594 	mov	_doAES_sloc2_1_0,a
   3170 90 FD E1      [24] 1595 	mov	dptr,#_doAES_PARM_3
   3173 E0            [24] 1596 	movx	a,@dptr
   3174 F5 14         [12] 1597 	mov	_doAES_sloc0_1_0,a
   3176 A3            [24] 1598 	inc	dptr
   3177 E0            [24] 1599 	movx	a,@dptr
   3178 F5 15         [12] 1600 	mov	(_doAES_sloc0_1_0 + 1),a
   317A E4            [12] 1601 	clr	a
   317B F5 16         [12] 1602 	mov	_doAES_sloc1_1_0,a
   317D F5 17         [12] 1603 	mov	(_doAES_sloc1_1_0 + 1),a
   317F                    1604 00113$:
   317F C3            [12] 1605 	clr	c
   3180 E5 16         [12] 1606 	mov	a,_doAES_sloc1_1_0
   3182 95 14         [12] 1607 	subb	a,_doAES_sloc0_1_0
   3184 E5 17         [12] 1608 	mov	a,(_doAES_sloc1_1_0 + 1)
   3186 95 15         [12] 1609 	subb	a,(_doAES_sloc0_1_0 + 1)
   3188 40 01         [24] 1610 	jc	00143$
   318A 22            [24] 1611 	ret
   318B                    1612 00143$:
                           1613 ;	cc1111_aes.c:99: aesdmai->srcAddrH = (u8) ((u16) (inbuf + bufp) >> 8);
   318B C0 03         [24] 1614 	push	ar3
   318D 90 FD C1      [24] 1615 	mov	dptr,#_aesdmai
   3190 E0            [24] 1616 	movx	a,@dptr
   3191 F8            [12] 1617 	mov	r0,a
   3192 A3            [24] 1618 	inc	dptr
   3193 E0            [24] 1619 	movx	a,@dptr
   3194 FB            [12] 1620 	mov	r3,a
   3195 E5 16         [12] 1621 	mov	a,_doAES_sloc1_1_0
   3197 2E            [12] 1622 	add	a,r6
   3198 F9            [12] 1623 	mov	r1,a
   3199 E5 17         [12] 1624 	mov	a,(_doAES_sloc1_1_0 + 1)
   319B 3F            [12] 1625 	addc	a,r7
   319C FA            [12] 1626 	mov	r2,a
   319D 89 04         [24] 1627 	mov	ar4,r1
   319F 8A 05         [24] 1628 	mov	ar5,r2
   31A1 8D 04         [24] 1629 	mov	ar4,r5
   31A3 88 82         [24] 1630 	mov	dpl,r0
   31A5 8B 83         [24] 1631 	mov	dph,r3
   31A7 EC            [12] 1632 	mov	a,r4
   31A8 F0            [24] 1633 	movx	@dptr,a
                           1634 ;	cc1111_aes.c:100: aesdmai->srcAddrL = (u8) ((u16) (inbuf + bufp) & 0xff);
   31A9 90 FD C1      [24] 1635 	mov	dptr,#_aesdmai
   31AC E0            [24] 1636 	movx	a,@dptr
   31AD FC            [12] 1637 	mov	r4,a
   31AE A3            [24] 1638 	inc	dptr
   31AF E0            [24] 1639 	movx	a,@dptr
   31B0 FD            [12] 1640 	mov	r5,a
   31B1 8C 82         [24] 1641 	mov	dpl,r4
   31B3 8D 83         [24] 1642 	mov	dph,r5
   31B5 A3            [24] 1643 	inc	dptr
   31B6 E9            [12] 1644 	mov	a,r1
   31B7 F0            [24] 1645 	movx	@dptr,a
                           1646 ;	cc1111_aes.c:101: aesdmao->destAddrH = (u8) ((u16) (outbuf + bufp) >> 8);
   31B8 90 FD C3      [24] 1647 	mov	dptr,#_aesdmao
   31BB E0            [24] 1648 	movx	a,@dptr
   31BC FC            [12] 1649 	mov	r4,a
   31BD A3            [24] 1650 	inc	dptr
   31BE E0            [24] 1651 	movx	a,@dptr
   31BF FD            [12] 1652 	mov	r5,a
   31C0 8C 82         [24] 1653 	mov	dpl,r4
   31C2 8D 83         [24] 1654 	mov	dph,r5
   31C4 A3            [24] 1655 	inc	dptr
   31C5 A3            [24] 1656 	inc	dptr
   31C6 E5 16         [12] 1657 	mov	a,_doAES_sloc1_1_0
   31C8 25 1A         [12] 1658 	add	a,_doAES_sloc4_1_0
   31CA FC            [12] 1659 	mov	r4,a
   31CB E5 17         [12] 1660 	mov	a,(_doAES_sloc1_1_0 + 1)
   31CD 35 1B         [12] 1661 	addc	a,(_doAES_sloc4_1_0 + 1)
   31CF FD            [12] 1662 	mov	r5,a
   31D0 8C 02         [24] 1663 	mov	ar2,r4
   31D2 8D 03         [24] 1664 	mov	ar3,r5
   31D4 8B 02         [24] 1665 	mov	ar2,r3
   31D6 EA            [12] 1666 	mov	a,r2
   31D7 F0            [24] 1667 	movx	@dptr,a
                           1668 ;	cc1111_aes.c:102: aesdmao->destAddrL = (u8) ((u16) (outbuf + bufp) & 0xff);
   31D8 90 FD C3      [24] 1669 	mov	dptr,#_aesdmao
   31DB E0            [24] 1670 	movx	a,@dptr
   31DC FA            [12] 1671 	mov	r2,a
   31DD A3            [24] 1672 	inc	dptr
   31DE E0            [24] 1673 	movx	a,@dptr
   31DF FB            [12] 1674 	mov	r3,a
   31E0 8A 82         [24] 1675 	mov	dpl,r2
   31E2 8B 83         [24] 1676 	mov	dph,r3
   31E4 A3            [24] 1677 	inc	dptr
   31E5 A3            [24] 1678 	inc	dptr
   31E6 A3            [24] 1679 	inc	dptr
   31E7 EC            [12] 1680 	mov	a,r4
   31E8 F0            [24] 1681 	movx	@dptr,a
                           1682 ;	cc1111_aes.c:103: DMAARM |= (aesdmaarmi | aesdmaarmo);
   31E9 90 FD C8      [24] 1683 	mov	dptr,#_aesdmaarmo
   31EC E0            [24] 1684 	movx	a,@dptr
   31ED FD            [12] 1685 	mov	r5,a
   31EE 90 FD C6      [24] 1686 	mov	dptr,#_aesdmaarmi
   31F1 E0            [24] 1687 	movx	a,@dptr
   31F2 FC            [12] 1688 	mov	r4,a
   31F3 4D            [12] 1689 	orl	a,r5
   31F4 42 D6         [12] 1690 	orl	_DMAARM,a
                           1691 ;	cc1111_aes.c:104: NOP(); NOP();
                           1692 ; nop; 
                           1693 ; nop; 
                           1694 ;	cc1111_aes.c:114: if((mode & ENCCS_MODE_CBCMAC) && bufp == len - 16)
   31F6 D0 03         [24] 1695 	pop	ar3
   31F8 E5 19         [12] 1696 	mov	a,_doAES_sloc3_1_0
   31FA 60 17         [24] 1697 	jz	00105$
   31FC E5 14         [12] 1698 	mov	a,_doAES_sloc0_1_0
   31FE 24 F0         [12] 1699 	add	a,#0xF0
   3200 FC            [12] 1700 	mov	r4,a
   3201 E5 15         [12] 1701 	mov	a,(_doAES_sloc0_1_0 + 1)
   3203 34 FF         [12] 1702 	addc	a,#0xFF
   3205 FD            [12] 1703 	mov	r5,a
   3206 EC            [12] 1704 	mov	a,r4
   3207 B5 16 09      [24] 1705 	cjne	a,_doAES_sloc1_1_0,00105$
   320A ED            [12] 1706 	mov	a,r5
   320B B5 17 05      [24] 1707 	cjne	a,(_doAES_sloc1_1_0 + 1),00105$
                           1708 ;	cc1111_aes.c:115: ENCCS = ENCCS_MODE_CBC | command | ENCCS_ST;
   320E 85 18 B3      [24] 1709 	mov	_ENCCS,_doAES_sloc2_1_0
   3211 80 02         [24] 1710 	sjmp	00108$
   3213                    1711 00105$:
                           1712 ;	cc1111_aes.c:117: ENCCS = mode | command | ENCCS_ST;
   3213 8B B3         [24] 1713 	mov	_ENCCS,r3
                           1714 ;	cc1111_aes.c:120: while(!(ENCCS & ENCCS_RDY))
   3215                    1715 00108$:
   3215 E5 B3         [12] 1716 	mov	a,_ENCCS
   3217 30 E3 FB      [24] 1717 	jnb	acc.3,00108$
                           1718 ;	cc1111_aes.c:96: for(bufp= 0 ; bufp < len ; bufp += 16)
   321A 74 10         [12] 1719 	mov	a,#0x10
   321C 25 16         [12] 1720 	add	a,_doAES_sloc1_1_0
   321E F5 16         [12] 1721 	mov	_doAES_sloc1_1_0,a
   3220 E4            [12] 1722 	clr	a
   3221 35 17         [12] 1723 	addc	a,(_doAES_sloc1_1_0 + 1)
   3223 F5 17         [12] 1724 	mov	(_doAES_sloc1_1_0 + 1),a
   3225 02 31 7F      [24] 1725 	ljmp	00113$
                           1726 	.area CSEG    (CODE)
                           1727 	.area CONST   (CODE)
                           1728 	.area XINIT   (CODE)
                           1729 	.area CABS    (ABS,CODE)
