;--------- ex-2a
;--------- diret.global
	export	__main
;---------
nb	equ	16
dist	equ	vty-vtx
;--------- diret.dados (ram)
	area	dds1,data,readwrite
vtx	space	nb
vty	space	nb
;--------- diret.prog	(flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vtx-2
	mov	r1,#8
pk0	ldrsh	r2,[r0,#2]!
	asr	r3,r2,#1
	strh	r3,[r0,#dist]
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end