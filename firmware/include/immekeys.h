/*
 * Copyright 2011 atlas
 * adapted from code by Travis Goodspeed, Michael Ossmann
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */
#include "types.h"

u8 keyscan(void);
u8 getkey(void);

//Special keys.
//#define KPWR 0x01
//#define KMNU 0x03
//#define KCAP 0x82
//#define KSPK 0x83
//#define KALT 0x84
//#define KONL 0x85
//#define KBACK 0x86
//#define KDWN 0x87
//#define KBYE 0x02
#define KPWR 0x01
#define KMNU 0x03
#define KCAP 0x82
#define KSPK 0x83
#define KALT 0x84
#define KONL 0x85
#define KBACK 0x86
#define KUP  0x87
#define KDWN 0x5e
#define KBYE 0x02
#define KRIGHT 0x3e
#define KLEFT  0x3c
#define KENTER 0xa

