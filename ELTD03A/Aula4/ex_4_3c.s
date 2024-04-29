;--------- ex_4.3c
;--------- diret.global
	export	__main
;--------- diret.area - dados (ram)
	area	dds1,data,readwrite
vt1	space	16
vt2	space	16
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main	
	ldr	r0,=vt1
	mov	r1,#4
pk0	ldr	r2,[r0]
	mov	r3,#0xFF00
	movt	r3,#0xFF00
	orr	r4,r2,r3
	str	r4,[r0,#vt2-vt1]
	add	r0,r0,#4
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end