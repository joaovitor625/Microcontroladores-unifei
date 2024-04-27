;---------- ex_3a
;---------- diret.global
	export	__main
;---------- diret.area-dados (ram)
	area	dds1,data,readwrite
vt1	space	4
vt2	space	8
vts	space	16
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vt1
	ldr	r1,=vt2
	ldr	r2,=vts
	mov	r3,#4
pk0	ldrb	r4,[r0]		;r4=vt1
	ldrh	r5,[r1]		;r5=vt2
	add	r6,r4,r5	;r6=r4+r5
	str	r6,[r2]
	add	r0,r0,#1
	add	r1,r1,#2
	add	r2,r2,#4
	subs	r3,r3,#1
	bne	pk0
	b	__main
	end