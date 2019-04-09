# Name:		Shakirul Hasan Khan
# Reg No:	2017831034

# Task: 	Cumulative sum with array

	.globl	main	
.data
list:   .space  1000
listsz: .word	250   
newline:   .asciiz	"\n"
       .text
main:   lw	$s0, listsz
	la	$s1, list
	li	$t0, 0
	xor 	$t5, $t5, $t5
initlp: beq	$t0, $s0, initdn
	sw	$t0, ($s1)
	lw 	$t4, ($s1)
	add 	$t5, $t5, $t4
	addi	$s1, $s1, 4
	addi	$t0, $t0, 1
	li	$v0, 1
	move	$a0, $t5
	syscall
		
	li	$v0,4
	la	$a0, newline
	syscall
	b	initlp
initdn:	
	li	$v0, 10	
	syscall