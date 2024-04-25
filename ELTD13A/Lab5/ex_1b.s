;---------- ex_1b - end.indexado
	export	__main
;===============
nb	equ	16
dst	equ	vt2-vt1
;===============
;------------area dados (ram)
	area	dds,data,readwrite
vt1	space	nb
vt2	space	nb
;---------- area progama (Flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vt2
	mov	r1,#nb
pk0	ldrh	r2,[r0,#vt1-vt2+nb-1]
	strh	r2,[r0,#dst]
	subs	r1,r1,#2
	sub	r0,r0,#2
	bne	pk0
	b	__main
	end