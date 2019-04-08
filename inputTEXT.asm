.data
   message: .asciiz "Hello! "
   input:   .space 20
.text

   main:
   #user input as text
        li $v0,8
        la $a0,input
        li $a1,20
        syscall
        
        li $v0,4
        la $a0,message
        syscall
        
        li $v0,4
        la $a0,input
        syscall
        
   
   li $v0,10
   syscall