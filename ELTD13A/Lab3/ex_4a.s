;------------ ex_4a
;------------ diret.global
	export	__main
;------------ diret.area - dados (ram)
	area	dds1,data,readwrite
vt1	space	8
vt2	space	4
vs	space	8
;------------ diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vt1
	ldr	r5,=vt2
	mov	r1,#4
pk0	ldrsh	r2,[r0]
	ldrsb	r3,[r5]
	sub	r4,r2,r3
	strh	r4,[r0,#vs-vt1]
	add	r0,r0,#2
	add	r5,r5,#1
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end