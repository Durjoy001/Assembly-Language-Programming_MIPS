.data

.text
    addi $t0,$zero,30
    addi $t1,$zero,2
    
    div $s0,$t0,3
    
    li $v0,1
    add $a0,$s0,$zero
    syscall