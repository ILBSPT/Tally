	.file	"random_walk.c"
	.text
.Ltext0:
	.globl	walk
	.type	walk, @function
walk:
.LFB6:
	.file 1 "./../code/random_walk.c"
	.loc 1 10 16
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
.L2:
.LBB2:
	.loc 1 12 11 discriminator 1
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_n_neighbours@PLT
	movl	%eax, -4(%rbp)
	.loc 1 13 17 discriminator 1
	call	rand@PLT
	.loc 1 13 7 discriminator 1
	cltd
	idivl	-4(%rbp)
	movl	%edx, -8(%rbp)
	.loc 1 14 7 discriminator 1
	movl	-8(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	get_x_neighbour@PLT
	movl	%eax, -20(%rbp)
	.loc 1 15 14 discriminator 1
	data16	leaq	threadInUse@tlsgd(%rip), %rdi
	.value	0x6666
	rex64
	call	__tls_get_addr@PLT
.LVL0:
	movq	(%rax), %rax
	.loc 1 15 21 discriminator 1
	movl	$4, 48(%rax)
	.loc 1 15 25 discriminator 1
#APP
# 15 "./../code/random_walk.c" 1
	add $1, %r15
# 0 "" 2
	.loc 1 15 55 discriminator 1
# 15 "./../code/random_walk.c" 1
	push ._minithread_yeild_label_0@GOTPCREL(%rip)
# 0 "" 2
	.loc 1 15 125 discriminator 1
# 15 "./../code/random_walk.c" 1
	push _minithread_break@GOTPCREL(%rip)
# 0 "" 2
	.loc 1 15 180 discriminator 1
# 15 "./../code/random_walk.c" 1
	ret
# 0 "" 2
	.loc 1 15 201 discriminator 1
# 15 "./../code/random_walk.c" 1
	._minithread_yeild_label_0:
# 0 "" 2
# 15 "./../code/random_walk.c" 1
	sub $21, %r15
	jle ._minithread_switch_label_214725
	._minithread_continue_label_214725:
	jmp ._minithread_fix_branching_label_214725
	
# 0 "" 2
# 15 "./../code/random_walk.c" 1
	._minithread_switch_label_214725:
	push ._minithread_continue_label_214725@GOTPCREL(%rip)
	push _minithread_break@GOTPCREL(%rip)
	ret
	._minithread_fix_branching_label_214725:
	
# 0 "" 2
#NO_APP
.LBE2:
	.loc 1 11 10 discriminator 1
	jmp	.L2
	.cfi_endproc
.LFE6:
	.size	walk, .-walk
	.globl	run_walk
	.type	run_walk, @function
run_walk:
.LFB7:
	.loc 1 19 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 21 19
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	time@PLT
	.loc 1 21 2
	movl	%eax, %edi
	call	srand@PLT
	.loc 1 22 5
	movl	$0, %edi
	call	walk@PLT
	.loc 1 23 1
#APP
# 23 "./../code/random_walk.c" 1
	sub $15, %r15
	jle ._minithread_switch_label_214726
	._minithread_continue_label_214726:
	jmp ._minithread_fix_branching_label_214726
	
# 0 "" 2
# 23 "./../code/random_walk.c" 1
	._minithread_switch_label_214726:
	push ._minithread_continue_label_214726@GOTPCREL(%rip)
	push _minithread_break@GOTPCREL(%rip)
	ret
	._minithread_fix_branching_label_214726:
	
# 0 "" 2
#NO_APP
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	run_walk, .-run_walk
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "./../code/./../include/minithread_struct.h"
	.file 11 "./../code/./../include/minithread_api.h"
	.file 12 "./../code/./../include/graph.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x58a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF91
	.byte	0xc
	.long	.LASF92
	.long	.LASF93
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x50
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x78
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x78
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x78
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x7
	.long	0xb5
	.uleb128 0x8
	.long	.LASF58
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x248
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x71
	.byte	0
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xaf
	.byte	0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xaf
	.byte	0x10
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xaf
	.byte	0x18
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xaf
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xaf
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xaf
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xaf
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xaf
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xaf
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xaf
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xaf
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x261
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x267
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x71
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x71
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x8b
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x26d
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x27d
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x97
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x288
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x293
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x267
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x71
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x299
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xc1
	.uleb128 0xa
	.long	.LASF94
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF44
	.uleb128 0x6
	.byte	0x8
	.long	0x25c
	.uleb128 0x6
	.byte	0x8
	.long	0xc1
	.uleb128 0xc
	.long	0xb5
	.long	0x27d
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x254
	.uleb128 0xb
	.long	.LASF45
	.uleb128 0x6
	.byte	0x8
	.long	0x283
	.uleb128 0xb
	.long	.LASF46
	.uleb128 0x6
	.byte	0x8
	.long	0x28e
	.uleb128 0xc
	.long	0xb5
	.long	0x2a9
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2b5
	.uleb128 0x6
	.byte	0x8
	.long	0x248
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2b5
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2b5
	.uleb128 0xe
	.long	.LASF50
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x71
	.uleb128 0xc
	.long	0x2f5
	.long	0x2ea
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2df
	.uleb128 0x6
	.byte	0x8
	.long	0xbc
	.uleb128 0x7
	.long	0x2ef
	.uleb128 0xe
	.long	.LASF51
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2ea
	.uleb128 0x2
	.long	.LASF52
	.byte	0x8
	.byte	0x19
	.byte	0x14
	.long	0x65
	.uleb128 0x2
	.long	.LASF53
	.byte	0x8
	.byte	0x1b
	.byte	0x14
	.long	0x7f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xa3
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0x2
	.long	.LASF57
	.byte	0xa
	.byte	0x6
	.byte	0x20
	.long	0x344
	.uleb128 0x6
	.byte	0x8
	.long	0x34a
	.uleb128 0x8
	.long	.LASF59
	.byte	0x28
	.byte	0xa
	.byte	0x39
	.byte	0x8
	.long	0x398
	.uleb128 0x9
	.long	.LASF60
	.byte	0xa
	.byte	0x3b
	.byte	0xb
	.long	0x47
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0xa
	.byte	0x3d
	.byte	0xc
	.long	0x498
	.byte	0x8
	.uleb128 0x9
	.long	.LASF62
	.byte	0xa
	.byte	0x3f
	.byte	0xb
	.long	0xaf
	.byte	0x10
	.uleb128 0x9
	.long	.LASF63
	.byte	0xa
	.byte	0x40
	.byte	0xb
	.long	0xaf
	.byte	0x18
	.uleb128 0x10
	.string	"id"
	.byte	0xa
	.byte	0x42
	.byte	0xe
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0xa
	.byte	0x7
	.byte	0xf
	.long	0x47
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0xa
	.byte	0x9
	.byte	0xe
	.long	0x3dd
	.uleb128 0x12
	.long	.LASF65
	.byte	0
	.uleb128 0x12
	.long	.LASF66
	.byte	0x1
	.uleb128 0x12
	.long	.LASF67
	.byte	0x2
	.uleb128 0x12
	.long	.LASF68
	.byte	0x3
	.uleb128 0x12
	.long	.LASF69
	.byte	0x4
	.uleb128 0x12
	.long	.LASF70
	.byte	0x5
	.uleb128 0x12
	.long	.LASF71
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF72
	.byte	0xa
	.byte	0x11
	.byte	0x3
	.long	0x3a4
	.uleb128 0x8
	.long	.LASF73
	.byte	0x58
	.byte	0xa
	.byte	0x15
	.byte	0x8
	.long	0x485
	.uleb128 0x10
	.string	"sp"
	.byte	0xa
	.byte	0x17
	.byte	0xc
	.long	0x485
	.byte	0
	.uleb128 0x9
	.long	.LASF74
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x485
	.byte	0x8
	.uleb128 0x9
	.long	.LASF75
	.byte	0xa
	.byte	0x1d
	.byte	0xc
	.long	0x485
	.byte	0x10
	.uleb128 0x9
	.long	.LASF76
	.byte	0xa
	.byte	0x20
	.byte	0xc
	.long	0x485
	.byte	0x18
	.uleb128 0x9
	.long	.LASF77
	.byte	0xa
	.byte	0x23
	.byte	0xb
	.long	0x47
	.byte	0x20
	.uleb128 0x9
	.long	.LASF78
	.byte	0xa
	.byte	0x26
	.byte	0xe
	.long	0x312
	.byte	0x28
	.uleb128 0x9
	.long	.LASF79
	.byte	0xa
	.byte	0x29
	.byte	0x15
	.long	0x3dd
	.byte	0x30
	.uleb128 0x9
	.long	.LASF80
	.byte	0xa
	.byte	0x2c
	.byte	0x14
	.long	0x338
	.byte	0x38
	.uleb128 0x9
	.long	.LASF81
	.byte	0xa
	.byte	0x2f
	.byte	0xe
	.long	0x312
	.byte	0x40
	.uleb128 0x9
	.long	.LASF82
	.byte	0xa
	.byte	0x31
	.byte	0xe
	.long	0x312
	.byte	0x48
	.uleb128 0x9
	.long	.LASF83
	.byte	0xa
	.byte	0x34
	.byte	0x18
	.long	0x48b
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x47
	.uleb128 0x6
	.byte	0x8
	.long	0x398
	.uleb128 0x13
	.long	0x498
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x491
	.uleb128 0x2
	.long	.LASF84
	.byte	0xb
	.byte	0xc
	.byte	0x1e
	.long	0x4aa
	.uleb128 0x6
	.byte	0x8
	.long	0x3e9
	.uleb128 0xe
	.long	.LASF85
	.byte	0xb
	.byte	0xd
	.byte	0x21
	.long	0x49e
	.uleb128 0x15
	.string	"G"
	.byte	0xc
	.byte	0x7
	.byte	0xe
	.long	0x4c6
	.uleb128 0x6
	.byte	0x8
	.long	0x4cc
	.uleb128 0x6
	.byte	0x8
	.long	0x71
	.uleb128 0xe
	.long	.LASF86
	.byte	0xc
	.byte	0x8
	.byte	0xd
	.long	0x4cc
	.uleb128 0x15
	.string	"N_G"
	.byte	0xc
	.byte	0x9
	.byte	0xc
	.long	0x71
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x533
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.byte	0x13
	.byte	0x15
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.long	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.byte	0x15
	.byte	0x13
	.long	0x71
	.uleb128 0x14
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.byte	0xa
	.byte	0x5
	.long	0x71
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.string	"u"
	.byte	0x1
	.byte	0xa
	.byte	0xe
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0xc
	.byte	0x7
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.long	.LASF90
	.byte	0x1
	.byte	0xd
	.byte	0x7
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
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
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF71:
	.string	"MINITHREAD_RETURNED"
.LASF27:
	.string	"_chain"
.LASF6:
	.string	"size_t"
.LASF76:
	.string	"stack_top"
.LASF33:
	.string	"_shortbuf"
.LASF65:
	.string	"MINITHREAD_NEW"
.LASF92:
	.string	"./../code/random_walk.c"
.LASF73:
	.string	"stMinithread"
.LASF21:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF64:
	.string	"MinithreadModules"
.LASF83:
	.string	"modules"
.LASF36:
	.string	"_codecvt"
.LASF72:
	.string	"MinithreadState"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF79:
	.string	"state"
.LASF8:
	.string	"long int"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF45:
	.string	"_IO_codecvt"
.LASF52:
	.string	"uint16_t"
.LASF85:
	.string	"threadInUse"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF74:
	.string	"sp_base"
.LASF62:
	.string	"file_name"
.LASF44:
	.string	"_IO_marker"
.LASF47:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF39:
	.string	"_freeres_buf"
.LASF87:
	.string	"run_walk"
.LASF80:
	.string	"body"
.LASF70:
	.string	"MINITHREAD_ERRORED"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF50:
	.string	"sys_nerr"
.LASF3:
	.string	"short unsigned int"
.LASF82:
	.string	"cycles_left"
.LASF57:
	.string	"MinithreadCode"
.LASF23:
	.string	"_IO_save_base"
.LASF67:
	.string	"MINITHREAD_RUNNING"
.LASF68:
	.string	"MINITHREAD_PAUSED"
.LASF77:
	.string	"init_Args"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF48:
	.string	"stdout"
.LASF66:
	.string	"MINITHREAD_STOPPED"
.LASF60:
	.string	"handler"
.LASF61:
	.string	"fptr"
.LASF20:
	.string	"_IO_write_end"
.LASF53:
	.string	"uint64_t"
.LASF88:
	.string	"walk"
.LASF94:
	.string	"_IO_lock_t"
.LASF58:
	.string	"_IO_FILE"
.LASF95:
	.string	"time"
.LASF93:
	.string	"/code/tallyproj/gcctally_v3/bin"
.LASF59:
	.string	"minithreadFunc"
.LASF55:
	.string	"time_t"
.LASF9:
	.string	"__uint64_t"
.LASF51:
	.string	"sys_errlist"
.LASF81:
	.string	"cycles_to_run"
.LASF26:
	.string	"_markers"
.LASF69:
	.string	"MINITHREAD_YIELDED"
.LASF86:
	.string	"Glen"
.LASF2:
	.string	"unsigned char"
.LASF90:
	.string	"v_index"
.LASF5:
	.string	"short int"
.LASF46:
	.string	"_IO_wide_data"
.LASF91:
	.string	"GNU C17 9.4.0 -mtune=generic -march=x86-64 -g -ffixed-r15 -fplugin=./../bin/gcc-tally.so -fPIC -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF32:
	.string	"_vtable_offset"
.LASF43:
	.string	"FILE"
.LASF78:
	.string	"memory_size_bytes"
.LASF63:
	.string	"func_name"
.LASF89:
	.string	"args"
.LASF13:
	.string	"char"
.LASF7:
	.string	"__uint16_t"
.LASF11:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF40:
	.string	"__pad5"
.LASF12:
	.string	"__time_t"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stderr"
.LASF24:
	.string	"_IO_backup_base"
.LASF38:
	.string	"_freeres_list"
.LASF37:
	.string	"_wide_data"
.LASF75:
	.string	"stack"
.LASF18:
	.string	"_IO_write_base"
.LASF84:
	.string	"Minithread"
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
