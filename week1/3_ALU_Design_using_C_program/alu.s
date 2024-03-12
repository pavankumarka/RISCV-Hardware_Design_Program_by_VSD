	.file	"alu.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Select a num b/n 0x01 to 0x0C to perform ALU opertn: "
.LC1:
	.string	"%x"
.LC2:
	.string	"entry point aluOptr = 0x%x\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L2
	call	dispAluSuppOptnMsg
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L3
	movl	-12(%rbp), %eax
	cmpl	$12, %eax
	jbe	.L4
.L3:
	movl	$1, %edi
	call	printAluErrMsg
	movl	$0, -12(%rbp)
	movl	$-1, %eax
	jmp	.L8
.L4:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	checkAluOptnSupport
	movl	$0, -12(%rbp)
	movl	$0, %eax
	jmp	.L8
.L2:
	cmpl	$2, -20(%rbp)
	jne	.L6
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L7
	movl	-12(%rbp), %eax
	cmpl	$12, %eax
	ja	.L7
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	checkAluOptnSupport
	movl	$0, -12(%rbp)
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	$1, %edi
	call	printAluErrMsg
	movl	$0, -12(%rbp)
	movl	$-1, %eax
	jmp	.L8
.L6:
	movl	$0, %edi
	call	printAluErrMsg
	movl	$-1, %eax
.L8:
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC3:
	.string	"ALU supported Math operations:"
	.align 8
.LC4:
	.string	"1.Add  2.Sub  3.Mul  4.Div  5.Mod\n"
	.align 8
.LC5:
	.string	"ALU supported Logical operations:"
	.align 8
.LC6:
	.string	"6.NOT  7.OR   8.AND  9.NOR  A.NAND  B.XOR  C.XNOR\n"
	.text
	.globl	dispAluSuppOptnMsg
	.type	dispAluSuppOptnMsg, @function
dispAluSuppOptnMsg:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	dispAluSuppOptnMsg, .-dispAluSuppOptnMsg
	.section	.rodata
	.align 8
.LC7:
	.string	"Selected ALU operation is Addition"
	.align 8
.LC8:
	.string	"Selected ALU operation is Subration"
	.align 8
.LC9:
	.string	"Selected ALU operation is Multiplication"
	.align 8
.LC10:
	.string	"Selected ALU operation is Division"
	.align 8
.LC11:
	.string	"Selected ALU operation is Modulus"
.LC12:
	.string	"Selected ALU operation is NOT"
.LC13:
	.string	"Selected ALU operation is OR"
.LC14:
	.string	"Selected ALU operation is AND"
.LC15:
	.string	"Selected ALU operation is NOR"
	.align 8
.LC16:
	.string	"Selected ALU operation is NAND"
.LC17:
	.string	"Selected ALU operation is XOR"
	.align 8
.LC18:
	.string	"Selected ALU operation is XNOR"
	.align 8
.LC19:
	.string	"Selected unknown ALU operation"
	.text
	.globl	checkAluOptnSupport
	.type	checkAluOptnSupport, @function
checkAluOptnSupport:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$12, -4(%rbp)
	ja	.L12
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L14(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L14(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L14:
	.long	.L12-.L14
	.long	.L13-.L14
	.long	.L15-.L14
	.long	.L16-.L14
	.long	.L17-.L14
	.long	.L18-.L14
	.long	.L19-.L14
	.long	.L20-.L14
	.long	.L21-.L14
	.long	.L22-.L14
	.long	.L23-.L14
	.long	.L24-.L14
	.long	.L25-.L14
	.text
.L13:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L15:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L16:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L17:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L18:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L19:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L20:
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L21:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L22:
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L23:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L24:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L25:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	jmp	.L26
.L12:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	call	dispAluSuppOptnMsg
	nop
.L26:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	checkAluOptnSupport, .-checkAluOptnSupport
	.section	.rodata
	.align 8
.LC20:
	.string	"\nCommand Line arguments greater than 2 or unknown ALU operation\n"
.LC21:
	.string	"\nUnknown ALU operation\n"
	.text
	.globl	printAluErrMsg
	.type	printAluErrMsg, @function
printAluErrMsg:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L30
	cmpl	$1, %eax
	je	.L31
	jmp	.L28
.L30:
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	call	dispAluSuppOptnMsg
	jmp	.L29
.L31:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	call	dispAluSuppOptnMsg
	nop
.L29:
	nop
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	printAluErrMsg, .-printAluErrMsg
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
