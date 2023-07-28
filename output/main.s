	.cpu cortex-m3
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.global	Reserved_IRQHandler
	.arch armv7-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	Reserved_IRQHandler, %function
Reserved_IRQHandler:
.LFB0:
	.file 1 "./src/main.c"
	.loc 1 7 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L2:
	.loc 1 8 8 discriminator 1
	b	.L2
	.cfi_endproc
.LFE0:
	.size	Reserved_IRQHandler, .-Reserved_IRQHandler
	.align	1
	.global	NMI_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NMI_Handler, %function
NMI_Handler:
.LFB1:
	.loc 1 15 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L4:
	.loc 1 16 8 discriminator 1
	b	.L4
	.cfi_endproc
.LFE1:
	.size	NMI_Handler, .-NMI_Handler
	.align	1
	.global	HardFault_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HardFault_Handler, %function
HardFault_Handler:
.LFB2:
	.loc 1 23 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L6:
	.loc 1 24 8 discriminator 1
	b	.L6
	.cfi_endproc
.LFE2:
	.size	HardFault_Handler, .-HardFault_Handler
	.align	1
	.global	SVC_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SVC_Handler, %function
SVC_Handler:
.LFB3:
	.loc 1 31 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L8:
	.loc 1 32 8 discriminator 1
	b	.L8
	.cfi_endproc
.LFE3:
	.size	SVC_Handler, .-SVC_Handler
	.align	1
	.global	PendSV_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	PendSV_Handler, %function
PendSV_Handler:
.LFB4:
	.loc 1 39 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L10:
	.loc 1 40 8 discriminator 1
	b	.L10
	.cfi_endproc
.LFE4:
	.size	PendSV_Handler, .-PendSV_Handler
	.align	1
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB5:
	.loc 1 47 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L12:
	.loc 1 48 8 discriminator 1
	b	.L12
	.cfi_endproc
.LFE5:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
.LFB6:
	.loc 1 59 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 60 75
	ldr	r3, .L15
	ldr	r3, [r3, #24]
	ldr	r2, .L15
	orr	r3, r3, #16
	str	r3, [r2, #24]
	.loc 1 61 72
	ldr	r3, .L15+4
	ldr	r3, [r3, #4]
	ldr	r2, .L15+4
	bic	r3, r3, #15728640
	str	r3, [r2, #4]
	.loc 1 62 72
	ldr	r3, .L15+4
	ldr	r3, [r3, #4]
	ldr	r2, .L15+4
	orr	r3, r3, #3145728
	str	r3, [r2, #4]
	.loc 1 63 72
	ldr	r3, .L15+4
	ldr	r3, [r3, #12]
	ldr	r2, .L15+4
	orr	r3, r3, #8192
	str	r3, [r2, #12]
.L14:
	.loc 1 67 73 discriminator 1
	ldr	r3, .L15+4
	ldr	r3, [r3, #12]
	ldr	r2, .L15+4
	orr	r3, r3, #8192
	str	r3, [r2, #12]
	.loc 1 68 3 discriminator 1
	movs	r0, #10
	bl	delay
	.loc 1 69 73 discriminator 1
	ldr	r3, .L15+4
	ldr	r3, [r3, #12]
	ldr	r2, .L15+4
	bic	r3, r3, #8192
	str	r3, [r2, #12]
	.loc 1 70 3 discriminator 1
	movs	r0, #10
	bl	delay
	.loc 1 67 73 discriminator 1
	b	.L14
.L16:
	.align	2
.L15:
	.word	1073876992
	.word	1073811456
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	1
	.global	delay
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	delay, %function
delay:
.LFB7:
	.loc 1 79 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 80 2
	b	.L18
.L21:
.LBB2:
	.loc 1 83 7
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 83 2
	b	.L19
.L20:
	.loc 1 83 22 discriminator 3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L19:
	.loc 1 83 2 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, .L22
	cmp	r3, r2
	ble	.L20
.LBE2:
	.loc 1 80 16
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L18:
	.loc 1 80 2 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L21
	.loc 1 86 1
	nop
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L23:
	.align	2
.L22:
	.word	99999
	.cfi_endproc
.LFE7:
	.size	delay, .-delay
.Letext0:
	.file 2 "e:\\gcc\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "e:\\gcc\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "./inc/stm32f10x.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x261
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.uleb128 0x5
	.4byte	0x77
	.uleb128 0x6
	.byte	0x1c
	.byte	0x4
	.2byte	0x359
	.byte	0x9
	.4byte	0xf5
	.uleb128 0x7
	.ascii	"CRL\000"
	.byte	0x4
	.2byte	0x35b
	.byte	0x15
	.4byte	0x83
	.byte	0
	.uleb128 0x7
	.ascii	"CRH\000"
	.byte	0x4
	.2byte	0x35c
	.byte	0x15
	.4byte	0x83
	.byte	0x4
	.uleb128 0x7
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x35d
	.byte	0x15
	.4byte	0x83
	.byte	0x8
	.uleb128 0x7
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x35e
	.byte	0x15
	.4byte	0x83
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x35f
	.byte	0x15
	.4byte	0x83
	.byte	0x10
	.uleb128 0x7
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x360
	.byte	0x15
	.4byte	0x83
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x361
	.byte	0x15
	.4byte	0x83
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x362
	.byte	0x3
	.4byte	0x88
	.uleb128 0x6
	.byte	0x28
	.byte	0x4
	.2byte	0x3a4
	.byte	0x9
	.4byte	0x198
	.uleb128 0x7
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x3a6
	.byte	0x15
	.4byte	0x83
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x3a7
	.byte	0x15
	.4byte	0x83
	.byte	0x4
	.uleb128 0x7
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x3a8
	.byte	0x15
	.4byte	0x83
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x3a9
	.byte	0x15
	.4byte	0x83
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x3aa
	.byte	0x15
	.4byte	0x83
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x3ab
	.byte	0x15
	.4byte	0x83
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x3ac
	.byte	0x15
	.4byte	0x83
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x3ad
	.byte	0x15
	.4byte	0x83
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x3ae
	.byte	0x15
	.4byte	0x83
	.byte	0x20
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x3af
	.byte	0x15
	.4byte	0x83
	.byte	0x24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x3ba
	.byte	0x3
	.4byte	0x102
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4e
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e2
	.uleb128 0xb
	.ascii	"rep\000"
	.byte	0x1
	.byte	0x4e
	.byte	0x10
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x1
	.byte	0x52
	.byte	0x6
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF20:
	.ascii	"BDCR\000"
.LASF14:
	.ascii	"CFGR\000"
.LASF17:
	.ascii	"AHBENR\000"
.LASF22:
	.ascii	"SysTick_Handler\000"
.LASF11:
	.ascii	"BSRR\000"
.LASF27:
	.ascii	"Reserved_IRQHandler\000"
.LASF16:
	.ascii	"APB1RSTR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF28:
	.ascii	"GNU C17 10.3.1 20210621 (release) -mcpu=cortex-m3 -"
	.ascii	"mthumb -mfloat-abi=soft -march=armv7-m -g -O0\000"
.LASF26:
	.ascii	"NMI_Handler\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF18:
	.ascii	"APB2ENR\000"
.LASF24:
	.ascii	"SVC_Handler\000"
.LASF19:
	.ascii	"APB1ENR\000"
.LASF15:
	.ascii	"APB2RSTR\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"GPIO_TypeDef\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF32:
	.ascii	"main\000"
.LASF6:
	.ascii	"long long int\000"
.LASF25:
	.ascii	"HardFault_Handler\000"
.LASF31:
	.ascii	"delay\000"
.LASF2:
	.ascii	"short int\000"
.LASF23:
	.ascii	"PendSV_Handler\000"
.LASF21:
	.ascii	"RCC_TypeDef\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF29:
	.ascii	"./output/main.c\000"
.LASF0:
	.ascii	"signed char\000"
.LASF30:
	.ascii	"F:\\LapTrinhNhungA-Z\\LapTrinhStm32\\Master_Stm32f1"
	.ascii	"03\\BasicCourse\\Lesson_1\\1.ProcessToCreateExecute"
	.ascii	"Files\\Code\000"
.LASF12:
	.ascii	"LCKR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.07) 10.3.1 20210621 (release)"
