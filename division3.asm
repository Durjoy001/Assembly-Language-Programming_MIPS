.data

.text
    addi $t0,$zero,30
    addi $t1,$zero,7
    
    div $t0,$t1
    
    mflo $s0
    mfhi $s1 #remainder
    
    li $v0,1
    add,$a0,$zero,$s1
    syscall