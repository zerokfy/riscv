	.file	"main.c"
	.option nopic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	li	a5,10
	sw	a5,-20(s0)
	li	a5,20
	sw	a5,-24(s0)
	li	a5,512
	lw	a3,-20(s0)
	lw	a4,-24(s0)
	add	a4,a3,a4
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 7.2.0"
