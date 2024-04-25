;---------- ex-3b
;---------- diret.global
	export	__main
;==========
nb	equ	16
;==========
;---------- diret.area-dados(ram)
	area	dds1,data,readwrite
vr1	space	nb
vr2	space	nb
;---------- diret.area-programa(flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr2
	mov	r1,#8
pk0	ldrsh	r2,[r0,#vr1-vr2]
	adds	r2,r2,#0	;ativa o flag n para indicar se é >0 ou <0
	bmi	pk1		; verifca se r2 é positivo ou negativo
	lsl	r3,r2,#2	;r3=4*r2
	b	pk2
pk1	lsl	r3,r2,#1	;r3=2*r2
pk2	strh	r3,[r0],#1	
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end