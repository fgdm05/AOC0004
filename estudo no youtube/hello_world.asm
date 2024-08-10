# load e store
# load: instrução de movimentação de dados da memória para o registrador
# - operação de leitura da memória
# store: instrução de movimentação de dados do registrador para a memória
# operação de escrita na memória
# move
# instrução para passar o conteúdo de um registrador para outro registrador
# memória RAM não é envolvida

# MARS é um .jar (precisa de Java)


# No MIPS, os operandos das instruções são registradores
# Há 32 registradores de 32 bits, cada um registrador possui o símbolo $ antecendendo o seu nome


# f = (g+h) - (i+j)
# add $t0,$s1,%s2
# add %t1,%s3,%s4
# sub %s0,%t0,%t1


# Registradores
# $zero $0 - constante zero (0)
# $at - assember temporary
# $v0,%$v1 - retornam resultados de funções
# $a0,$a1,$a2,$a3 - argumentos de funções
# $ra - return address (endereço de retorno de uma função)
# $t1 a $t9 - registradores temporários, que podem ser modificados por funções
# $s1 a $s8 - similares aos $t, mas salvam valores
# $k0 e $k1 - registradores do kernel
# $gp - registrador de valores globais
# $sp - stack pointer (aponta pro início da stack e muda progressivamente)
# $fp - frame pointer (aponta pro início da pilha e não muda até que a função seja executada)

# COMANDOS LI %v0
# li $v0 1 (imprimir inteiro)
# li $v0 2 (imprimir float)
# li $v0 3 (imprimir double)
# li $v0 4 (imprimir String ou char)
# li $v0 5 (ler inteiro)
# li $v0 6 (ler float)
# li $v0 7 (ler double)
# li $v0 8 (ler String ou char)
# li $v0 10 (encerrar programa principal)


.data
	msg: .asciiz "Hello World"
.text
.globl main
main:
	li $v0 4
	la $a0, msg
	syscall
