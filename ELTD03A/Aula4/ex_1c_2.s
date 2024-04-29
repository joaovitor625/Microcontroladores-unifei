;------- ex_1c_2
;------- diret.global
	export	__main
;------- diret.area - dados
	area	dds1,data,readwrite
vr1	space	12
;------- diret.area - programa
	area	mprog,code,readonly
__main
	ldr	r0,=vr1
pk3	ldr	r1,[r0]		;r1=r
	ldr	r2,[r0,#4]	;r2=s
	subs	r3,r1,r2	;r3=r-s
	bmi	negt
pos	str	r2,[r0]		;r2->r
	str	r1,[r0,#4]	;r1->s
negt	ldr	r1,[r0]		;r1=r
	ldr	r2,[r0,#8]	;r4=t
	subs	r3,r1,r2	;r3=r-t
	bmi	pk2
pk1	str	r1,[r0,#8]	;r1->t
	str	r2,[r0]		;r2->r
pk2	ldr	r1,[r0,#4]	;r1<-s
	ldr	r2,[r0,#8]	;r2<-t
	subs	r3,r1,r2	;r3=r-t
	bmi	pk4
	str	r1,[r0,#8]	;r1->t
	str	r2,[r0,#4]	;r2->s
	b	pk3
pk4	b	pk4
	end
	