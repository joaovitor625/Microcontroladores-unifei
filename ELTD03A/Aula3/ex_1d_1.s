;-----------  ex_1d_1
;----------- diret.global
	export	__main
;----------- diret.area - dados (ram)
	area	dds1,data,readwrite
vt1	space	8
vx	space	4
vt2	space	8
;----------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vt2
	mov	r1,#8
pk0	ldrb	r2,[r0,#-12]
	strb	r2,[r0]
	add	r0,r0,#1
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end