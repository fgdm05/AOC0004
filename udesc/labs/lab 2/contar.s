# Aluno: Felipe Godinho Dal Molin
# Professor: Yuri Kaszubowski Lopes
# Data: 06/09/2024
# Semestre: 2024.2
# Disciplina: ARQUITETURA E ORGANIZACAO DE COMPUTADORES AOC0004

.data
breakl:
	.asciiz "\n"
.text
.globl main
main:
input:
	ori $v0, $zero, 5
	syscall
	move $a0, $v0  # n
	
	beq $a0, $zero, end
	
	ori $v0, $zero, 5
	syscall
	move $a1, $v0  # k
	
	jal contar
	move $a0, $v0
	
output:
	ori $v0, $zero, 1
	syscall
	
	la $t0, breakl
	move $a0, $t0
	ori $v0, $zero, 4
	syscall
	
	j input
end:
	ori $v0, $zero, 10
	syscall
contar:
	addi $sp, $sp, -24
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	sw $ra, 20($sp)
	
	move $s0, $a0  # n
	move $s1, $a1  # k
	ori $s3, $zero, 0
	blt $s0, 10, contar_base
	
	div $a0, $s0, 10
	jal contar
	move $s4, $v0
	
	rem $t0, $s0, 10
	bne $t0, $s1, diferente
	addi $s4, $s4, 1
diferente:
	move $v0, $s4
	
	
termino_base:
	lw $s0, 0($sp)
	lw $s1, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s4, 16($sp)
	lw $ra, 20($sp)
	addi $sp, $sp, 24
	
	jr $ra
	
contar_base:
	bne $s0, $s1, contar_base_else
	ori $v0, $zero, 1
	j termino_base
contar_base_else:
	ori $v0, $zero, 0
	j termino_base
	
	
	