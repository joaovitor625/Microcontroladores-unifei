;----------- ex-5a
;----------- diret.global
	export	__main
;===============
nb	equ	8
;===============
;----------- diret.area-dados(ram)
	area	dds1,data,readwrite
vr	space	nb
vs	space	nb
vrs1	space	nb
vrs2	space	2*nb
;----------- diret.area programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr-2
	ldr	r8,=vrs2-4
	mov	r1,#4
pk0	ldrh	r2,[r0,#2]!
	ldrsh	r3,[r0,#vs-vr]
	lsl	r5,r2,#15
	lsl	r6,r3,#15
	subs	r4,r5,r6		;vr-vs
	sub	r7,r2,r3
	bmi	pk1			
	strh	r7,[r0,#vrs1-vr]
	b 	pk2
pk1	str	r7,[r8,#4]!
pk2	subs	r1,r1,#1
	bne	pk0
	b	__main
	end