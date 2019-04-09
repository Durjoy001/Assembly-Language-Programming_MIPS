.data
     myArray: .space 12
     newline: .asciiz "\n"
.text
    main:
         addi $s0,$zero,5
         addi $s1,$zero,10
         addi $s2,$zero,15
         
         addi $t0,$zero,0
         sw $s0,myArray($t0)
             addi $t0,$t0,4
         sw $s1,myArray($t0)
             addi $t0,$t0,4
         sw $s2,myArray($t0)
         
         addi $t0,$zero,0
         while:
              beq $t0,12,exit
              lw $t6,myArray($t0)
              addi $t0,$t0,4
              
              li $v0,1
              add $a0,$t6,$zero
              syscall
              li $v0,4
              la $a0,newline
              syscall
              j while                  
         exit:
          li $v0,10
         syscall