.data
   message: .asciiz "Enter the value of pi:" 
   
.text
    li   $v0, 4
    la   $a0, message
    syscall
    
    li $v0,7
    syscall
    
    li $v0,3
    add.d $f12,$f0,$f2
    syscall