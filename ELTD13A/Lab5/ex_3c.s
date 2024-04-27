;------------ ex-3c - pos incremento
;------------ diret.global
	export	__main
;===============
nb	equ	32
;===============
;------------	area.dados (ram)
	area	dds1,data,readwrite
vr1	space	nb
vr2	space	nb
;------------ area.meu programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr2		;ponteiro
	mov	r1,#8		;contador
pk0	ldr	r2,[r0,#vr1-vr2]
	adds	r2,r2,#0
	bmi	pk1		; se o bit 32 for 1 vai para pk1
	lsl	r3,r2,#1
	b	pk2
pk1	mov	r3,r2
pk2	str	r3,[r0],#4
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end
