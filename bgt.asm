.data
    message: .asciiz "Hello?"

.text
    main:
        addi $s0,$zero,14
        addi $s1,$zero,10
        
        bgt $s0,$s1,print
    
    li $v0,10
    syscall
    
       print:
       li $v0,4
       la $a0,message
       syscall