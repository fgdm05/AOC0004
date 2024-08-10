# subtrações de inteiros
# sub $t0, $t1, $t2 # t0=t1-t2
# subi $t0, $t1, 15 # t0=t1-15

.text
	li $t0, 75
	li $t1, 25
	sub $t2, $t0, $t1
	subi $t3, $t2, -40