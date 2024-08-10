	.text
	.globl main
main:
	li $s1, 9
	li $s0, 1
	
while:
	mul $s0, $s0, $s1
	subi $s1, $s1, 1
	bnez, $s1, while
end:
	li $v0, 10
	syscall