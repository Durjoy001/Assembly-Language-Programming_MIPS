# Name:		Shakirul Hasan Khan
# Reg No:	2017831034

# Task: 	character search in a string

.globl main 
.data
	
char:	.byte 'u'
string: .asciiz "aueuiou"
out:	.asciiz "Number of character: "

	.text
	
main:  
	lb	$t0, char
	li	$t1, 0
	la	$s0, string
	lb	$s1, ($s0)
	
loop:  
	beq	$s1, $zero, end
	seq	$t1, $s1, $t0
	add	$s2, $s2, $t1
	addi	$s0, $s0, 1
	
	lb	$s1, ($s0)
	b	loop

end:
	li	$v0, 4
	la	$a0, out
	syscall

	li	$v0, 1
	move	$a0, $s2
	syscall

	li    $v0, 10
	syscall 