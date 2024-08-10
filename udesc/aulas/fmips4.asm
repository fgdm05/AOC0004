.text
.globl main
main:
	li $v0, 5
	syscall
	
	move $s1, $v0
	li $s0, 1

while:
	#mul $s0, $s0, $s1
	mult $s0, $s1
	mflo $s0
	
	subi $s1, $s1, 1
	bnez, $s1, while
print:
	move $a0, $s0
	li $v0, 1
	syscall