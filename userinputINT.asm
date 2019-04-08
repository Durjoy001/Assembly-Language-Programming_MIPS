.data
    message1: .asciiz "Enter your age:"
    message2: .asciiz "\n Your age is:"
    
.text
    li $v0,4
    la $a0,message1
    syscall
    
    # user input 
    li $v0,5
    syscall
    
    move $t0,$v0
    
    li $v0,4
    la $a0,message2
    syscall
    
    li $v0,1
    move $a0,$t0
    syscall
    
    