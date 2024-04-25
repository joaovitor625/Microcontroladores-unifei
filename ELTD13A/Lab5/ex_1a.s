;----------- ex_1a - incremento imediato
	export	__main
;-----------
nb	equ	16
dst	equ	vt2-vt1
;----------- area de dados(ram)
	area 	dds1,data,readwrite
vt1	space	nb
vt2	space	nb
;----------- area do prog (Flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vt1+nb-1
	mov	r2,#nb
pk0	ldr	r1,[r0]
	str	r1,[r0,#dst]
	subs	r2,r2,#1
	sub	r0,r0,#1
	bne	pk0
	b	__main
	end