;--------- ex_1e_1
;--------- diret.global
	export	__main
;--------- diret.area  - dados  (ram)
	area	dds1,data,readwrite
vt1	space	8
vt2	space	8
;--------- diret.area  - programa  (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vt1+7
	mov	r1,#8
pk0	ldrb	r2,[r0]
	strb	r2,[r0,#vt2-vt1]
	sub	r0,r0,#1
	sub	r1,r1,#1
	bne	pk0
	b	__main
	end