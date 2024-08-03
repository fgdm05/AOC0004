# load e store
# load: instru��o de movimenta��o de dados da mem�ria para o registrador
# - opera��o de leitura da mem�ria
# store: instru��o de movimenta��o de dados do registrador para a mem�ria
# opera��o de escrita na mem�ria
# move
# instru��o para passar o conte�do de um registrador para outro registrador
# mem�ria RAM n�o � envolvida

# MARS � um .jar (precisa de Java)


# No MIPS, os operandos das instru��es s�o registradores
# H� 32 registradores de 32 bits, cada um registrador possui o s�mbolo $ antecendendo o seu nome


# f = (g+h) - (i+j)
# add $t0,$s1,%s2
# add %t1,%s3,%s4
# sub %s0,%t0,%t1


# Registradores
# $zero $0 - constante zero (0)
# $at - assember temporary
# $v0,%$v1 - retornam resultados de fun��es
# $a0,$a1,$a2,$a3 - argumentos de fun��es
# $ra - return address (endere�o de retorno de uma fun��o)
# $t1 a $t9 - registradores tempor�rios, que podem ser modificados por fun��es
# $s1 a $s8 - similares aos $t, mas salvam valores
# $k0 e $k1 - registradores do kernel
# $gp - registrador de valores globais
# $sp - stack pointer (aponta pro in�cio da stack e muda progressivamente)
# $fp - frame pointer (aponta pro in�cio da pilha e n�o muda at� que a fun��o seja executada)

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


.data # �rea para dados na mem�ria principal
	msg: .asciiz "Ol�, mundo!" # mensagem a ser exibida para o usu�rio
.text # �rea para instru��es do programa
	
	li $v0, 4 # instru��o para impress�o de String
	la $a0, msg #indicar endere�o em que est� a mensagem
	syscall #fa�a! Imprima