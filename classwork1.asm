# Name:		Shakirul Hasan Khan
# Reg No:	2017831034

# Task: 	Add Three Numbers

.data
str2:	.asciiz "Input a number: "
str3:	.asciiz "Input another number: "
str1: 	.asciiz "Input one more number: "
str4:	.asciiz "Addition: "
	.text
	
main:
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 5
	syscall
	move $t3, $v0
	
	add $t4, $t1, $t2
	add $t4, $t4, $t3
	
	li $v0, 1
	la $a0, ($t4)
	syscall

	li $v0, 10
	syscall