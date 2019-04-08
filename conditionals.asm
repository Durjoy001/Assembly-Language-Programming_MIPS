.data
    Message: .asciiz "Numbers ar equal"
    
.text
   main:
       addi $t0,$zero,20
       addi $t1,$zero,20
       
       beq $t0,$t1, numbersame
       #beq
       #bnq
       #b
       
   li $v0 10
   syscall
   
       numbersame:
       li $v0,4
       la $a0,Message
       syscall
       
   li $v0,10
   syscall