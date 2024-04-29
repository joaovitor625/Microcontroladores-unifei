;--------- ex-1b-1
;--------- diret.global
	export	__main
;--------- diret.area - dados (ram)
	area	dds1,data,readwrite
vr1	space	1
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr1
	ldrsb	r1,[r0]
	movs	r2,r1
	bmi	pk0
pos	mvn	r2,r1
	add	r2,r2,#1
	b	pk2
pk0	mvn	r2,r1
pk2	strb	r2,[r0]
	b	__main
	end