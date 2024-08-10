# adição de inteiros
# add $t0, %t1, %t2 # t0=t1+t2
# addi $t0, $t1, 15 # t0=t1+15 (add immediate)

.text
	li $t0, 75
	li $t1, 25 # addi $t1 $zero 25
	add $s0, $t0, $t1
	addi $s1, $s0, 36