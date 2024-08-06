.data
.globl main
main:
	la $s0, v
	li $s1, 0
	li $s2, 0
	
for:
	sll $t0, $s2, 2
	add $t0, $s0, $t0
	lw $t1, 0($t0)
	add $s1, $s1, $t1
	addi $s2, $s2, 1
	#blt $s2, 100, for
	ori $t2, $zero, 100
	blt $s2, $t2, for
