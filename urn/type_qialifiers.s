	.file	"type_qialifiers.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"*f_ptr1 = %d\n"
.LC1:
	.string	"*f_ptr2 = %d\n"
	.text
	.p2align 4
	.globl	test
	.type	test, @function
test:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	(%rdx), %eax
	movq	%rsi, %rbx
	addl	%eax, (%rdi)
	addl	%eax, (%rsi)
	movl	(%rdi), %edx
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	(%rbx), %edx
	leaq	.LC1(%rip), %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE23:
	.size	test, .-test
	.section	.rodata.str1.1
.LC2:
	.string	"a = %d\n"
.LC3:
	.string	"*ptr1 = %d\n"
.LC4:
	.string	"b = %d\n"
.LC5:
	.string	"*ptr3 = %d\n"
.LC6:
	.string	"a != 15"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$10, %edx
	leaq	.LC2(%rip), %rsi
	movl	$2, %edi
	leaq	.LC4(%rip), %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$5, %edx
	leaq	.LC3(%rip), %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	movl	$5, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	movl	$12, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	movl	$11, %edx
	leaq	.LC5(%rip), %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	leaq	.LC6(%rip), %rdi
	movl	$10, 8(%rsp)
	call	puts@PLT
	leaq	20(%rsp), %rdx
	leaq	16(%rsp), %rsi
	movl	$100, 12(%rsp)
	leaq	12(%rsp), %rdi
	movl	$200, 16(%rsp)
	movl	$33, 20(%rsp)
	call	test
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L7
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
