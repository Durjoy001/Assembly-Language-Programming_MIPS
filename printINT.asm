.data
   age: .word 20

.text
   li $v0 1
   lw $a0 age
   syscall