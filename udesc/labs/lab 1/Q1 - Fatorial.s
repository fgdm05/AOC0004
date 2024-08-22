.data

.text
.globl main
main:
	ori $s1, $zero, 1  #  fatorial = 1
	ori $v0, $zero, 5
	syscall
	move $s0, $v0  #  n
	beq $s0, $zero, exit

fat:
	mult $s1, $s0
	mflo $s1
	addi $s0, $s0, -1
	bne $s0, $zero, fat

exit:
	ori $v0, $zero, 1
	move $a0, $s1
	syscall
	
end:
	ori $v0, $zero, 10
	syscall