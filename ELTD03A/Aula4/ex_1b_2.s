;--------- ex_1b_2
;--------- diret.global
	export	__main
;--------- diret.area - dados (ram)
	area	dds1,data,readwrite
vr1	space	2
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr1
	ldrsh	r1,[r0]
	movs	r2,r1
	bmi	pk1
	mvn	r2,r1
	b	pk2
pk1	mvn	r2,r1
	add	r2,r2,#1
pk2	strh	r2,[r0]
	b	__main
	end