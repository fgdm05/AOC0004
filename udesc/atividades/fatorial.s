.data
.text
.globl main
main:
	li $v0 5
	syscall
	move $s0, $v0
	li $s1, 1
fatorial:
	mul $s1, $s1, $s0
	addi $s0, $s0, -1
	bgtz $s0, fatorial
print:
	move $a0, $s1
	li $v0, 1
	syscall
end:
	li $v0 10
	syscall
	
	