# Aluno: Felipe Godinho Dal Molin
# Professor: Yuri Kaszubowski Lopes
# Disciplina: Arquitetura e Organização de Computadores (AOC0004)
# Semestre: 2024/2
# Data: 02/09/2024

.data
.text
.globl main
main:
	ori $v0, $zero, 5
	syscall
	move $a0, $v0
	
	# debug ----------------
	ori $s0, $zero, 0xAAAA
	ori $s1, $zero, 0xBBBB
	ori $s2, $zero, 0xCCCC
	
	jal fib
	move $a0, $v0
	ori $v0, $zero, 1
	syscall
exit:
	ori $v0, $zero, 10
	syscall
fib:
	beq $a0, 0, fib_base
	beq $a0, 1, fib_base
	
	# alocar --------------
	addi $sp, $sp, -16
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $ra, 12($sp)
	
	# implementação -------
	move $s2, $a0
	
	addi $a0, $s2, -1
	jal fib
	move $s0, $v0
	
	addi $a0, $s2, -2
	jal fib
	move $s1, $v0
	
	add $v0, $s0, $s1
	
	# desalocar -----------
	lw $s0, 0($sp)
	lw $s1, 4($sp)
	lw $s2, 8($sp)
	lw $ra, 12($sp)
	addi $sp, $sp, 16
	
	jr $ra
fib_base:
	ori $v0, $zero, 1
	jr $ra
