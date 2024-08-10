# multiplicação de inteiros
# mul $s0, $t0, $t1 # s0= t0*t1

# multiplicação por pot de dois
# shift left logico = *2
# 000110 = 6
# 001100 = 12
# 011000 = 24
# 110000 = 48
# n casas
# sll $t0, $t1, n

.text
	li $t0, 12
	addi $t1, $zero, 10
	
	sll $s1 , $t1, 10 # multiplicar por 2^10
	
	mul $s0, $t0, $t1
	
	li $v0, 1
	move $a0, $s0
	syscall
	
