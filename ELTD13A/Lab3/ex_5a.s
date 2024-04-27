;--------- ex_5a
;--------- diret.global
	export	__main
;--------- diret.area-dados(ram)
	area	dds1,data,readwrite
vtx	space	8
vty	space	8
vts	space	16
;--------- diret.area-programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vtx
	ldr	r1,=vts
	mov	r2,#4
pk0	ldrh	r3,[r0]
	ldrsh	r4,[r0,#vty-vtx]
	sub	r5,r3,r4
	str	r5,[r1]
	add	r0,r0,#2
	add	r1,r1,#4
	subs	r2,r2,#1
	bne	pk0
	b	__main
	end