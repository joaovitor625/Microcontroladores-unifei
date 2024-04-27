;---------- ex_1a
;---------- diret.global
	export	__main
;==========
nb	equ	16
;==========
;---------- diret.area dados(ram)
	area	dds1,data,readwrite
vt1	space	nb
vt2	space	nb
;---------- diret.area code(flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vt1
	mov	r1,#8
pk0	ldrsh	r2,[r0]
	adds	r2,r2,#0
	bmi	pk1
	mov	r3,r2
	subs	r2,r2,#0x3f00
	bmi	pk2
	b	pk3
pk2	mvn	r3,r2
	b	pk3
pk1	mvn	r3,r2
	add	r3,r3,#1
pk3	strh	r3,[r0,#vt2-vt1]
	add	r0,r0,#2
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end