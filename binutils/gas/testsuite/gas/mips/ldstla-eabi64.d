#objdump: -dr
#as: -mabi=eabi -mips3 -G8 -EB
#name: MIPS ld-st-la (EABI64)
#source: ldstla-sym32.s

.*file format .*

Disassembly .*:

0+00 <.*>:
#
# dla constants
#
.*	li	a0,0xa800
.*	dsll32	a0,a0,0x10
.*	li	a0,0xa800
.*	dsll32	a0,a0,0x10
.*	daddu	a0,a0,v1
.*	lui	a0,0x8000
.*	lui	a0,0x8000
.*	daddu	a0,a0,v1
.*	lui	a0,0x7fff
.*	ori	a0,a0,0x7ff8
.*	lui	a0,0x7fff
.*	ori	a0,a0,0x7ff8
.*	daddu	a0,a0,v1
.*	lui	a0,0x7fff
.*	ori	a0,a0,0xfff8
.*	lui	a0,0x7fff
.*	ori	a0,a0,0xfff8
.*	daddu	a0,a0,v1
.*	lui	a0,0x1234
.*	ori	a0,a0,0x5678
.*	dsll	a0,a0,0x10
.*	ori	a0,a0,0x9abc
.*	dsll	a0,a0,0x10
.*	ori	a0,a0,0xdef0
.*	lui	a0,0x1234
.*	ori	a0,a0,0x5678
.*	dsll	a0,a0,0x10
.*	ori	a0,a0,0x9abc
.*	dsll	a0,a0,0x10
.*	ori	a0,a0,0xdef0
.*	daddu	a0,a0,v1
#
# dla small_comm
#
.*	daddiu	a0,gp,0
.*: R_MIPS_GPREL16	small_comm
.*	daddiu	a0,gp,0
.*: R_MIPS_GPREL16	small_comm
.*	daddu	a0,a0,v1
.*	daddiu	a0,gp,3
.*: R_MIPS_GPREL16	small_comm
.*	daddiu	a0,gp,3
.*: R_MIPS_GPREL16	small_comm
.*	daddu	a0,a0,v1
#
# dla big_comm
#
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_comm
.*	d?addiu	a0,a0,0
.*: R_MIPS_LO16	big_comm
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_comm
.*	d?addiu	a0,a0,0
.*: R_MIPS_LO16	big_comm
.*	daddu	a0,a0,v1
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_comm
.*	d?addiu	a0,a0,3
.*: R_MIPS_LO16	big_comm
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_comm
.*	d?addiu	a0,a0,3
.*: R_MIPS_LO16	big_comm
.*	daddu	a0,a0,v1
#
# dla small_data
#
.*	daddiu	a0,gp,0
.*: R_MIPS_GPREL16	small_data
.*	daddiu	a0,gp,0
.*: R_MIPS_GPREL16	small_data
.*	daddu	a0,a0,v1
.*	daddiu	a0,gp,3
.*: R_MIPS_GPREL16	small_data
.*	daddiu	a0,gp,3
.*: R_MIPS_GPREL16	small_data
.*	daddu	a0,a0,v1
#
# dla big_data
#
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_data
.*	d?addiu	a0,a0,0
.*: R_MIPS_LO16	big_data
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_data
.*	d?addiu	a0,a0,0
.*: R_MIPS_LO16	big_data
.*	daddu	a0,a0,v1
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_data
.*	d?addiu	a0,a0,3
.*: R_MIPS_LO16	big_data
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_data
.*	d?addiu	a0,a0,3
.*: R_MIPS_LO16	big_data
.*	daddu	a0,a0,v1
#
# dla extern
#
.*	lui	a0,0x0
.*: R_MIPS_HI16	extern
.*	d?addiu	a0,a0,0
.*: R_MIPS_LO16	extern
.*	lui	a0,0x0
.*: R_MIPS_HI16	extern
.*	d?addiu	a0,a0,0
.*: R_MIPS_LO16	extern
.*	daddu	a0,a0,v1
.*	lui	a0,0x3
.*: R_MIPS_HI16	extern
.*	d?addiu	a0,a0,16384
.*: R_MIPS_LO16	extern
.*	lui	a0,0x3
.*: R_MIPS_HI16	extern
.*	d?addiu	a0,a0,16384
.*: R_MIPS_LO16	extern
.*	daddu	a0,a0,v1
.*	lui	a0,0xfffd
.*: R_MIPS_HI16	extern
.*	d?addiu	a0,a0,-16384
.*: R_MIPS_LO16	extern
.*	lui	a0,0xfffd
.*: R_MIPS_HI16	extern
.*	d?addiu	a0,a0,-16384
.*: R_MIPS_LO16	extern
.*	daddu	a0,a0,v1
#
# lw constants
#
.*	li	a0,0xa800
.*	dsll32	a0,a0,0x10
.*	lw	a0,0\(a0\)
.*	li	a0,0xa800
.*	dsll32	a0,a0,0x10
.*	daddu	a0,a0,v1
.*	lw	a0,0\(a0\)
.*	lui	a0,0x8000
.*	lw	a0,0\(a0\)
.*	lui	a0,0x8000
.*	daddu	a0,a0,v1
.*	lw	a0,0\(a0\)
.*	lui	a0,0x7fff
.*	lw	a0,32760\(a0\)
.*	lui	a0,0x7fff
.*	daddu	a0,a0,v1
.*	lw	a0,32760\(a0\)
.*	li	a0,0x8000
.*	dsll	a0,a0,0x10
.*	lw	a0,-8\(a0\)
.*	li	a0,0x8000
.*	dsll	a0,a0,0x10
.*	daddu	a0,a0,v1
.*	lw	a0,-8\(a0\)
.*	lui	a0,0x1234
.*	ori	a0,a0,0x5678
.*	dsll	a0,a0,0x10
.*	ori	a0,a0,0x9abd
.*	dsll	a0,a0,0x10
.*	lw	a0,-8464\(a0\)
.*	lui	a0,0x1234
.*	ori	a0,a0,0x5678
.*	dsll	a0,a0,0x10
.*	ori	a0,a0,0x9abd
.*	dsll	a0,a0,0x10
.*	daddu	a0,a0,v1
.*	lw	a0,-8464\(a0\)
#
# lw small_comm
#
.*	lw	a0,0\(gp\)
.*: R_MIPS_GPREL16	small_comm
.*	daddu	a0,v1,gp
.*	lw	a0,0\(a0\)
.*: R_MIPS_GPREL16	small_comm
.*	lw	a0,3\(gp\)
.*: R_MIPS_GPREL16	small_comm
.*	daddu	a0,v1,gp
.*	lw	a0,3\(a0\)
.*: R_MIPS_GPREL16	small_comm
#
# lw big_comm
#
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_comm
.*	lw	a0,0\(a0\)
.*: R_MIPS_LO16	big_comm
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_comm
.*	daddu	a0,a0,v1
.*	lw	a0,0\(a0\)
.*: R_MIPS_LO16	big_comm
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_comm
.*	lw	a0,3\(a0\)
.*: R_MIPS_LO16	big_comm
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_comm
.*	daddu	a0,a0,v1
.*	lw	a0,3\(a0\)
.*: R_MIPS_LO16	big_comm
#
# lw small_data
#
.*	lw	a0,0\(gp\)
.*: R_MIPS_GPREL16	small_data
.*	daddu	a0,v1,gp
.*	lw	a0,0\(a0\)
.*: R_MIPS_GPREL16	small_data
.*	lw	a0,3\(gp\)
.*: R_MIPS_GPREL16	small_data
.*	daddu	a0,v1,gp
.*	lw	a0,3\(a0\)
.*: R_MIPS_GPREL16	small_data
#
# lw big_data
#
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_data
.*	lw	a0,0\(a0\)
.*: R_MIPS_LO16	big_data
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_data
.*	daddu	a0,a0,v1
.*	lw	a0,0\(a0\)
.*: R_MIPS_LO16	big_data
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_data
.*	lw	a0,3\(a0\)
.*: R_MIPS_LO16	big_data
.*	lui	a0,0x0
.*: R_MIPS_HI16	big_data
.*	daddu	a0,a0,v1
.*	lw	a0,3\(a0\)
.*: R_MIPS_LO16	big_data
#
# lw extern
#
.*	lui	a0,0x0
.*: R_MIPS_HI16	extern
.*	lw	a0,0\(a0\)
.*: R_MIPS_LO16	extern
.*	lui	a0,0x0
.*: R_MIPS_HI16	extern
.*	daddu	a0,a0,v1
.*	lw	a0,0\(a0\)
.*: R_MIPS_LO16	extern
.*	lui	a0,0x3
.*: R_MIPS_HI16	extern
.*	lw	a0,16384\(a0\)
.*: R_MIPS_LO16	extern
.*	lui	a0,0x3
.*: R_MIPS_HI16	extern
.*	daddu	a0,a0,v1
.*	lw	a0,16384\(a0\)
.*: R_MIPS_LO16	extern
.*	lui	a0,0xfffd
.*: R_MIPS_HI16	extern
.*	lw	a0,-16384\(a0\)
.*: R_MIPS_LO16	extern
.*	lui	a0,0xfffd
.*: R_MIPS_HI16	extern
.*	daddu	a0,a0,v1
.*	lw	a0,-16384\(a0\)
.*: R_MIPS_LO16	extern
#
# sw constants
#
.*	li	at,0xa800
.*	dsll32	at,at,0x10
.*	sw	a0,0\(at\)
.*	li	at,0xa800
.*	dsll32	at,at,0x10
.*	daddu	at,at,v1
.*	sw	a0,0\(at\)
.*	lui	at,0x8000
.*	sw	a0,0\(at\)
.*	lui	at,0x8000
.*	daddu	at,at,v1
.*	sw	a0,0\(at\)
.*	lui	at,0x7fff
.*	sw	a0,32760\(at\)
.*	lui	at,0x7fff
.*	daddu	at,at,v1
.*	sw	a0,32760\(at\)
.*	li	at,0x8000
.*	dsll	at,at,0x10
.*	sw	a0,-8\(at\)
.*	li	at,0x8000
.*	dsll	at,at,0x10
.*	daddu	at,at,v1
.*	sw	a0,-8\(at\)
.*	lui	at,0x1234
.*	ori	at,at,0x5678
.*	dsll	at,at,0x10
.*	ori	at,at,0x9abd
.*	dsll	at,at,0x10
.*	sw	a0,-8464\(at\)
.*	lui	at,0x1234
.*	ori	at,at,0x5678
.*	dsll	at,at,0x10
.*	ori	at,at,0x9abd
.*	dsll	at,at,0x10
.*	daddu	at,at,v1
.*	sw	a0,-8464\(at\)
#
# sw small_comm
#
.*	sw	a0,0\(gp\)
.*: R_MIPS_GPREL16	small_comm
.*	daddu	at,v1,gp
.*	sw	a0,0\(at\)
.*: R_MIPS_GPREL16	small_comm
.*	sw	a0,3\(gp\)
.*: R_MIPS_GPREL16	small_comm
.*	daddu	at,v1,gp
.*	sw	a0,3\(at\)
.*: R_MIPS_GPREL16	small_comm
#
# sw big_comm
#
.*	lui	at,0x0
.*: R_MIPS_HI16	big_comm
.*	sw	a0,0\(at\)
.*: R_MIPS_LO16	big_comm
.*	lui	at,0x0
.*: R_MIPS_HI16	big_comm
.*	daddu	at,at,v1
.*	sw	a0,0\(at\)
.*: R_MIPS_LO16	big_comm
.*	lui	at,0x0
.*: R_MIPS_HI16	big_comm
.*	sw	a0,3\(at\)
.*: R_MIPS_LO16	big_comm
.*	lui	at,0x0
.*: R_MIPS_HI16	big_comm
.*	daddu	at,at,v1
.*	sw	a0,3\(at\)
.*: R_MIPS_LO16	big_comm
#
# sw small_data
#
.*	sw	a0,0\(gp\)
.*: R_MIPS_GPREL16	small_data
.*	daddu	at,v1,gp
.*	sw	a0,0\(at\)
.*: R_MIPS_GPREL16	small_data
.*	sw	a0,3\(gp\)
.*: R_MIPS_GPREL16	small_data
.*	daddu	at,v1,gp
.*	sw	a0,3\(at\)
.*: R_MIPS_GPREL16	small_data
#
# sw big_data
#
.*	lui	at,0x0
.*: R_MIPS_HI16	big_data
.*	sw	a0,0\(at\)
.*: R_MIPS_LO16	big_data
.*	lui	at,0x0
.*: R_MIPS_HI16	big_data
.*	daddu	at,at,v1
.*	sw	a0,0\(at\)
.*: R_MIPS_LO16	big_data
.*	lui	at,0x0
.*: R_MIPS_HI16	big_data
.*	sw	a0,3\(at\)
.*: R_MIPS_LO16	big_data
.*	lui	at,0x0
.*: R_MIPS_HI16	big_data
.*	daddu	at,at,v1
.*	sw	a0,3\(at\)
.*: R_MIPS_LO16	big_data
#
# sw extern
#
.*	lui	at,0x0
.*: R_MIPS_HI16	extern
.*	sw	a0,0\(at\)
.*: R_MIPS_LO16	extern
.*	lui	at,0x0
.*: R_MIPS_HI16	extern
.*	daddu	at,at,v1
.*	sw	a0,0\(at\)
.*: R_MIPS_LO16	extern
.*	lui	at,0x3
.*: R_MIPS_HI16	extern
.*	sw	a0,16384\(at\)
.*: R_MIPS_LO16	extern
.*	lui	at,0x3
.*: R_MIPS_HI16	extern
.*	daddu	at,at,v1
.*	sw	a0,16384\(at\)
.*: R_MIPS_LO16	extern
.*	lui	at,0xfffd
.*: R_MIPS_HI16	extern
.*	sw	a0,-16384\(at\)
.*: R_MIPS_LO16	extern
.*	lui	at,0xfffd
.*: R_MIPS_HI16	extern
.*	daddu	at,at,v1
.*	sw	a0,-16384\(at\)
.*: R_MIPS_LO16	extern
#
# usw constants
#
.*	li	at,0xa800
.*	dsll32	at,at,0x10
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	li	at,0xa800
.*	dsll32	at,at,0x10
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x8000
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x8000
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x7fff
.*	ori	at,at,0x7ff8
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x7fff
.*	ori	at,at,0x7ff8
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x7fff
.*	ori	at,at,0xfff8
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x7fff
.*	ori	at,at,0xfff8
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x1234
.*	ori	at,at,0x5678
.*	dsll	at,at,0x10
.*	ori	at,at,0x9abc
.*	dsll	at,at,0x10
.*	ori	at,at,0xdef0
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x1234
.*	ori	at,at,0x5678
.*	dsll	at,at,0x10
.*	ori	at,at,0x9abc
.*	dsll	at,at,0x10
.*	ori	at,at,0xdef0
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
#
# usw small_comm
#
.*	daddiu	at,gp,0
.*: R_MIPS_GPREL16	small_comm
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	daddiu	at,gp,0
.*: R_MIPS_GPREL16	small_comm
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	daddiu	at,gp,3
.*: R_MIPS_GPREL16	small_comm
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	daddiu	at,gp,3
.*: R_MIPS_GPREL16	small_comm
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
#
# usw big_comm
#
.*	lui	at,0x0
.*: R_MIPS_HI16	big_comm
.*	d?addiu	at,at,0
.*: R_MIPS_LO16	big_comm
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x0
.*: R_MIPS_HI16	big_comm
.*	d?addiu	at,at,0
.*: R_MIPS_LO16	big_comm
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x0
.*: R_MIPS_HI16	big_comm
.*	d?addiu	at,at,3
.*: R_MIPS_LO16	big_comm
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x0
.*: R_MIPS_HI16	big_comm
.*	d?addiu	at,at,3
.*: R_MIPS_LO16	big_comm
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
#
# usw small_data
#
.*	daddiu	at,gp,0
.*: R_MIPS_GPREL16	small_data
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	daddiu	at,gp,0
.*: R_MIPS_GPREL16	small_data
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	daddiu	at,gp,3
.*: R_MIPS_GPREL16	small_data
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	daddiu	at,gp,3
.*: R_MIPS_GPREL16	small_data
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
#
# usw big_data
#
.*	lui	at,0x0
.*: R_MIPS_HI16	big_data
.*	d?addiu	at,at,0
.*: R_MIPS_LO16	big_data
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x0
.*: R_MIPS_HI16	big_data
.*	d?addiu	at,at,0
.*: R_MIPS_LO16	big_data
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x0
.*: R_MIPS_HI16	big_data
.*	d?addiu	at,at,3
.*: R_MIPS_LO16	big_data
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x0
.*: R_MIPS_HI16	big_data
.*	d?addiu	at,at,3
.*: R_MIPS_LO16	big_data
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
#
# usw extern
#
.*	lui	at,0x0
.*: R_MIPS_HI16	extern
.*	d?addiu	at,at,0
.*: R_MIPS_LO16	extern
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x0
.*: R_MIPS_HI16	extern
.*	d?addiu	at,at,0
.*: R_MIPS_LO16	extern
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x3
.*: R_MIPS_HI16	extern
.*	d?addiu	at,at,16384
.*: R_MIPS_LO16	extern
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0x3
.*: R_MIPS_HI16	extern
.*	d?addiu	at,at,16384
.*: R_MIPS_LO16	extern
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0xfffd
.*: R_MIPS_HI16	extern
.*	d?addiu	at,at,-16384
.*: R_MIPS_LO16	extern
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
.*	lui	at,0xfffd
.*: R_MIPS_HI16	extern
.*	d?addiu	at,at,-16384
.*: R_MIPS_LO16	extern
.*	daddu	at,at,v1
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
#
# with sym32 off (has no effect for EABI64)
#
.*	lui	a0,0x0
.*: R_MIPS_HI16	extern
.*	daddiu	a0,a0,0
.*: R_MIPS_LO16	extern
.*	lui	a0,0x0
.*: R_MIPS_HI16	extern
.*	lw	a0,0\(a0\)
.*: R_MIPS_LO16	extern
.*	lui	at,0x0
.*: R_MIPS_HI16	extern
.*	sw	a0,0\(at\)
.*: R_MIPS_LO16	extern
.*	lui	at,0x0
.*: R_MIPS_HI16	extern
.*	daddiu	at,at,0
.*: R_MIPS_LO16	extern
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
#
# ...and back on again
#
.*	lui	a0,0x0
.*: R_MIPS_HI16	extern
.*	daddiu	a0,a0,0
.*: R_MIPS_LO16	extern
.*	lui	a0,0x0
.*: R_MIPS_HI16	extern
.*	lw	a0,0\(a0\)
.*: R_MIPS_LO16	extern
.*	lui	at,0x0
.*: R_MIPS_HI16	extern
.*	sw	a0,0\(at\)
.*: R_MIPS_LO16	extern
.*	lui	at,0x0
.*: R_MIPS_HI16	extern
.*	daddiu	at,at,0
.*: R_MIPS_LO16	extern
.*	swl	a0,0\(at\)
.*	swr	a0,3\(at\)
#pass
