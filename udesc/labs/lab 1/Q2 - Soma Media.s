.data
breakl:
	.asciiz "\n"
errormsg:
	.asciiz "ERRO"
.text
.globl main
main:
	ori $s1, $zero, 0  #  i
	ori $s2, $zero, 0  #  somatorio
	addi $s3, $zero, -1  #  media
loop:
	ori $v0, $zero, 5
	syscall
	move $s0, $v0 # v[i]
	
	beq $s0, -1, output # l 19
	
	add $s2, $s2, $s0
	addi $s1, $s1, 1
	
	j loop # l 7
	
output:
	
	# print somatorio
	move $a0, $s2
	ori $v0, $zero, 1
	syscall
	
	# print "\n"
	la $t0, breakl
	move $a0, $t0
	li $v0, 4
	syscall
	
	beq $s1, $zero, error
	div $s3, $s2, $s1
	# print media
	move $a0, $s3
	ori $v0, $zero, 1
	syscall

	
finalize_program:
	ori $v0, $zero, 10
	syscall
	
error:
	la $t0, errormsg
	move $a0, $t0
	ori $v0, $zero, 4
	syscall
	j finalize_program
