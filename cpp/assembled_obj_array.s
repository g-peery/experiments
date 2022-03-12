	.file	"assembled_obj_array.cc"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2179:
	.cfi_startproc
	cmpl	$1, %edi
	je	.L7
.L4:
	ret
.L7:
	cmpl	$65535, %esi
	jne	.L4
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	call	__cxa_atexit@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2179:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"10"
.LC1:
	.string	"JACK"
.LC2:
	.string	"QUEEN"
.LC3:
	.string	"KING"
.LC4:
	.string	"ACE"
.LC5:
	.string	"?"
	.text
	.align 2
	.globl	_ZN11PlayingCard7SetRankERKi
	.type	_ZN11PlayingCard7SetRankERKi, @function
_ZN11PlayingCard7SetRankERKi:
.LFB1664:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	(%rsi), %r8d
	leal	-2(%r8), %eax
	cmpl	$7, %eax
	jbe	.L19
	cmpl	$13, %r8d
	ja	.L11
	movl	%r8d, %r8d
	leaq	.L13(%rip), %rdx
	movslq	(%rdx,%r8,4), %rax
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L13:
	.long	.L11-.L13
	.long	.L17-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L16-.L13
	.long	.L15-.L13
	.long	.L14-.L13
	.long	.L12-.L13
	.text
.L19:
	addl	$48, %r8d
	addq	$8, %rdi
	movq	8(%rdi), %rdx
	movsbl	%r8b, %r8d
	movl	$1, %ecx
	movl	$0, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc@PLT
.L8:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore_state
	addq	$8, %rdi
	movq	8(%rdi), %rdx
	movl	$2, %r8d
	leaq	.LC0(%rip), %rcx
	movl	$0, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L8
.L15:
	addq	$8, %rdi
	movq	8(%rdi), %rdx
	movl	$4, %r8d
	leaq	.LC1(%rip), %rcx
	movl	$0, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L8
.L14:
	addq	$8, %rdi
	movq	8(%rdi), %rdx
	movl	$5, %r8d
	leaq	.LC2(%rip), %rcx
	movl	$0, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L8
.L12:
	addq	$8, %rdi
	movq	8(%rdi), %rdx
	movl	$4, %r8d
	leaq	.LC3(%rip), %rcx
	movl	$0, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L8
.L17:
	addq	$8, %rdi
	movq	8(%rdi), %rdx
	movl	$3, %r8d
	leaq	.LC4(%rip), %rcx
	movl	$0, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L8
.L11:
	addq	$8, %rdi
	movq	8(%rdi), %rdx
	movl	$1, %r8d
	leaq	.LC5(%rip), %rcx
	movl	$0, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L8
	.cfi_endproc
.LFE1664:
	.size	_ZN11PlayingCard7SetRankERKi, .-_ZN11PlayingCard7SetRankERKi
	.align 2
	.globl	_ZN11PlayingCardC2ERK4SuitRKi
	.type	_ZN11PlayingCardC2ERK4SuitRKi, @function
_ZN11PlayingCardC2ERK4SuitRKi:
.LFB1659:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1659
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rdx, %rsi
	leaq	8(%rdi), %r12
	leaq	24(%rdi), %rax
	movq	%rax, 8(%rdi)
	movq	$0, 16(%rdi)
	movb	$0, 24(%rdi)
.LEHB0:
	call	_ZN11PlayingCard7SetRankERKi
.LEHE0:
	movl	0(%rbp), %eax
	movl	%eax, (%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	endbr64
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbx, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE1659:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1659:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1659-.LLSDACSB1659
.LLSDACSB1659:
	.uleb128 .LEHB0-.LFB1659
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L22-.LFB1659
	.uleb128 0
	.uleb128 .LEHB1-.LFB1659
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1659:
	.text
	.size	_ZN11PlayingCardC2ERK4SuitRKi, .-_ZN11PlayingCardC2ERK4SuitRKi
	.globl	_ZN11PlayingCardC1ERK4SuitRKi
	.set	_ZN11PlayingCardC1ERK4SuitRKi,_ZN11PlayingCardC2ERK4SuitRKi
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB2033:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movq	%rdx, %rbx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L32
.L26:
	subq	%r12, %rbx
	movq	%rbx, (%rsp)
	cmpq	$15, %rbx
	ja	.L33
.L27:
	movq	0(%rbp), %rdi
	cmpq	$1, %rbx
	je	.L34
	testq	%rbx, %rbx
	je	.L29
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	jmp	.L29
.L32:
	cmpq	%rdx, %rsi
	je	.L26
	leaq	.LC6(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
.L33:
	movq	%rsp, %rsi
	movl	$0, %edx
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, 0(%rbp)
	movq	(%rsp), %rax
	movq	%rax, 16(%rbp)
	jmp	.L27
.L34:
	movzbl	(%r12), %eax
	movb	%al, (%rdi)
.L29:
	movq	(%rsp), %rax
	movq	%rax, 8(%rbp)
	addq	0(%rbp), %rax
	movb	$0, (%rax)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L35
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2033:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.text
	.globl	_Z13GetSuitStringB5cxx11RK4Suit
	.type	_Z13GetSuitStringB5cxx11RK4Suit, @function
_Z13GetSuitStringB5cxx11RK4Suit:
.LFB1655:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movw	$0, 5(%rsp)
	movb	$0, 7(%rsp)
	movl	(%rsi), %edx
	movsbl	%dl, %eax
	sarl	$8, %eax
	movb	%al, 5(%rsp)
	movb	%dl, 6(%rsp)
	leaq	16(%rdi), %rax
	movq	%rax, (%rdi)
	leaq	5(%rsp), %rbp
	movq	%rbp, %rdi
	call	strlen@PLT
	leaq	0(%rbp,%rax), %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L39
	movq	%rbx, %rax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L39:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1655:
	.size	_Z13GetSuitStringB5cxx11RK4Suit, .-_Z13GetSuitStringB5cxx11RK4Suit
	.section	.rodata.str1.1
.LC7:
	.string	" "
	.text
	.globl	_ZlsRSoRK11PlayingCard
	.type	_ZlsRSoRK11PlayingCard, @function
_ZlsRSoRK11PlayingCard:
.LFB1656:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1656
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	16(%rsi), %rdx
	movq	8(%rsi), %rsi
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rbp
	movl	$1, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	call	_Z13GetSuitStringB5cxx11RK4Suit
.LEHE2:
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	movq	%rbp, %rdi
.LEHB3:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE3:
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L40
	movq	16(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L40:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L46
	movq	%rbx, %rax
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L44:
	.cfi_restore_state
	endbr64
	movq	%rax, %rbx
	movq	%rsp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L46:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1656:
	.section	.gcc_except_table
.LLSDA1656:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1656-.LLSDACSB1656
.LLSDACSB1656:
	.uleb128 .LEHB2-.LFB1656
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1656
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L44-.LFB1656
	.uleb128 0
	.uleb128 .LEHB4-.LFB1656
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1656:
	.text
	.size	_ZlsRSoRK11PlayingCard, .-_ZlsRSoRK11PlayingCard
	.section	.rodata.str1.1
.LC8:
	.string	"*Whoosh* "
	.text
	.align 2
	.globl	_ZN11PlayingCardD2Ev
	.type	_ZN11PlayingCardD2Ev, @function
_ZN11PlayingCardD2Ev:
.LFB1662:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1662
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$9, %edx
	leaq	.LC8(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZlsRSoRK11PlayingCard
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	%rbp, %rcx
	addq	-24(%rax), %rcx
	movq	240(%rcx), %r12
	testq	%r12, %r12
	je	.L53
	cmpb	$0, 56(%r12)
	je	.L49
	movzbl	67(%r12), %esi
.L50:
	movsbl	%sil, %esi
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	leaq	8(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$24, %rbx
	cmpq	%rbx, %rdi
	je	.L47
	movq	16(%rax), %rsi
	addq	$1, %rsi
	call	_ZdlPvm@PLT
.L47:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L53:
	.cfi_restore_state
	call	_ZSt16__throw_bad_castv@PLT
.L49:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	movq	%r12, %rdi
	call	*48(%rax)
	movl	%eax, %esi
	jmp	.L50
	.cfi_endproc
.LFE1662:
	.section	.gcc_except_table
.LLSDA1662:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1662-.LLSDACSB1662
.LLSDACSB1662:
.LLSDACSE1662:
	.text
	.size	_ZN11PlayingCardD2Ev, .-_ZN11PlayingCardD2Ev
	.globl	_ZN11PlayingCardD1Ev
	.set	_ZN11PlayingCardD1Ev,_ZN11PlayingCardD2Ev
	.globl	main
	.type	main, @function
main:
.LFB1665:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1665
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$200, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	movl	$10, 12(%rsp) # Rank
	movl	$9825, 8(%rsp) # Hearts
	leaq	12(%rsp), %rdx # Make rank argument (last)
	leaq	8(%rsp), %rsi # Make suit argument (second to last)
	leaq	16(%rsp), %rdi # Make implicit this argument (first)
.LEHB5:
	call	_ZN11PlayingCardC1ERK4SuitRKi # Constructor
.LEHE5:
	jmp	.L77 # Straight to next element
.L68:
	endbr64
	movq	%rax, %rbx
	movl	$3, %edx
.L57:
	movl	$3, %eax
	subq	%rdx, %rax
	imulq	$40, %rax, %rax
	leaq	16(%rsp,%rax), %rbp
.L66:
	leaq	16(%rsp), %rax
	cmpq	%rax, %rbp
	je	.L65
	subq	$40, %rbp
	movq	%rbp, %rdi
	call	_ZN11PlayingCardD1Ev
	jmp	.L66
.L77:
	movl	$1, 12(%rsp) # Rank
	movl	$9826, 8(%rsp) # Diamonds
	leaq	12(%rsp), %rdx
	leaq	8(%rsp), %rsi
	leaq	56(%rsp), %rdi
.LEHB6:
	call	_ZN11PlayingCardC1ERK4SuitRKi
.LEHE6:
	jmp	.L78
.L71:
	endbr64
	movq	%rax, %rbx
	movl	$2, %edx
	jmp	.L57
.L78:
	movl	$3, 12(%rsp) # Rank
	movl	$9824, 8(%rsp) # Spades
	leaq	12(%rsp), %rdx
	leaq	8(%rsp), %rsi
	leaq	96(%rsp), %rdi
.LEHB7:
	call	_ZN11PlayingCardC1ERK4SuitRKi
.LEHE7:
	jmp	.L79
.L70:
	endbr64
	movq	%rax, %rbx
	movl	$1, %edx
	jmp	.L57
.L79:
	movl	$12, 12(%rsp) # Rank
	movl	$9827, 8(%rsp) # Clubs
	leaq	12(%rsp), %rdx
	leaq	8(%rsp), %rsi
	leaq	136(%rsp), %rdi
.LEHB8:
	call	_ZN11PlayingCardC1ERK4SuitRKi
.LEHE8:
	leaq	176(%rsp), %rbx # Putting 40 off the end into calle-saved rbx?
	jmp	.L63 # Past something...
.L80:
	subq	$40, %rbx
	movq	%rbx, %rdi
	call	_ZN11PlayingCardD1Ev
.L63:
	leaq	16(%rsp), %rax # First element of my_cards into rax
	cmpq	%rax, %rbx
	jne	.L80 # I predict this jump made, to above ^^^
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L81
	movl	$0, %eax
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L69:
	.cfi_restore_state
	endbr64
	movq	%rax, %rbx
	movl	$0, %edx
	jmp	.L57
.L65:
	movq	%rbx, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L81:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1665:
	.section	.gcc_except_table
.LLSDA1665:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1665-.LLSDACSB1665
.LLSDACSB1665:
	.uleb128 .LEHB5-.LFB1665
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L68-.LFB1665
	.uleb128 0
	.uleb128 .LEHB6-.LFB1665
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L71-.LFB1665
	.uleb128 0
	.uleb128 .LEHB7-.LFB1665
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L70-.LFB1665
	.uleb128 0
	.uleb128 .LEHB8-.LFB1665
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L69-.LFB1665
	.uleb128 0
	.uleb128 .LEHB9-.LFB1665
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1665:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I__Z13GetSuitStringB5cxx11RK4Suit, @function
_GLOBAL__sub_I__Z13GetSuitStringB5cxx11RK4Suit:
.LFB2180:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2180:
	.size	_GLOBAL__sub_I__Z13GetSuitStringB5cxx11RK4Suit, .-_GLOBAL__sub_I__Z13GetSuitStringB5cxx11RK4Suit
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z13GetSuitStringB5cxx11RK4Suit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.2.0-7ubuntu2) 11.2.0"
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
