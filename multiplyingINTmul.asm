.data

.text
   addi $s0,$zero,10
   addi $s1,$zero,5
   
   mul $t0,$s0,$s1
   
   li $v0,1
   add $a0, $t0,$zero
   syscall