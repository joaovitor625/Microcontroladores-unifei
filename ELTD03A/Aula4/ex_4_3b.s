;----------- ex_4_3b
;----------- diret.global
	export	__main
;----------- diret.area - dados (ram)
	area	dds1,data,readwrite
vt1	space	8
vt2	space	8
;----------- diret.area - programa (flash)
	area	mprog,code,readonly
__main	
	ldr	r0,=vt1
	mov	r1,#4
pk0	ldrh	r2,[r0]
	mov	r3,#0x0F0F
	and	r4,r2,r3
	strh	r4,[r0,#vt2-vt1]
	add	r0,r0,#2
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end