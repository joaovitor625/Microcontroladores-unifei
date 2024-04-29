;-------- ex_1b
;-------- diret.global
	export	__main
;-------- diret.area - dados (ram)
	area	dds1,data,readwrite
vr1	space	1
;-------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr1
	ldrsb	r1,[r0]
	adds	r1,r1,#0
	bmi	pk1
pos	mvn	r1,r1	
	b	pk2
pk1	mvn	r1,r1
	add	r1,r1,#1
pk2	strb	r1,[r0]
	b	__main
	end