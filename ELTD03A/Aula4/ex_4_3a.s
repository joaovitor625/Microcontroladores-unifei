;--------- ex_4.3a
;--------- diret.global
	export	__main
;--------- diret.area - dados (ram)
	area	dds1,data,readwrite
vt1	space	4
vt2	space	4
;--------- diret.area - programa  (flash)
	area	mprog,code,readonly
__main	
	ldr	r0,=vt1
	mov	r1,#4
pk0	ldrb	r2,[r0]
	and	r3,r2,#0x0F
	strb	r3,[r0,#vt2-vt1]
	subs	r1,r1,#1
	add	r0,r0,#1
	bne	pk0
	b	__main
	end