;----------- ex-2c -pré decremento
;----------- diret.global
	export	__main
;===========
nb	equ	32
;===========
;----------- diret.area-dados(ram)
	area	dds1,data,readwrite
vtx	space	nb
vty	space	nb
;----------- diret.area-programa(flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vty
	mov	r1,#8
pk0	ldr	r2,[r0,#-4]!
	rrx	r7,r2
	bcc	pk1		;verifica se é par
	lsr	r3,r2,#3	;se for impar vem para esta linha e divide por 8
	b	pk2
pk1	lsr	r3,r2,#2	;se for par vem para esta linha e divide por 4
pk2	str	r3,[r0,#vty-vtx];parte de controle e armazenamento
	subs	r1,r1,#1	;decremento contador
	bne	pk0		;enquanto o contador não for zero vai para pk0
	b	__main
	end