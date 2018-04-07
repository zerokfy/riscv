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
	sw	zero,-20(s0)
	sw	zero,-24(s0)
.L3:
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	li	a4,50
	bne	a5,a4,.L3
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	li	a4,4096
	sw	a5,0(a4)
	sw	zero,-20(s0)
	j	.L3
	.size	main, .-main
	.ident	"GCC: (GNU) 7.2.0"
