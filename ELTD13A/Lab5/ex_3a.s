;--------- ex-3a-pos decremento
;--------- diret.global
	export	__main
;=========
nb	equ	16
;=========
;--------- diret.area dados(ram)
	area	dds1,data,readwrite
vr1	space	nb
vr2	space 	nb
;--------- diret.area progama(flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr1
	mov	r1,#8
pk0	ldrsh	r2,[r0],#2
	lsl	r3,r2,#1	;r3=2*r2
	add	r3,r3,r2	;r3=r3+r2=3*r2
	strh	r3,[r0,#vr2-vr1-2]
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end