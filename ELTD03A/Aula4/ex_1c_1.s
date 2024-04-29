;------- ex_1c_1
;------- diret.global
	export	__main
;------- diret.area - dados
	area	dds1,data,readwrite
vr1	space	6
;------- diret.area - programa
	area	mprog,code,readonly
__main
	ldr	r0,=vr1
pk3	ldrh	r1,[r0]		;r1=r
	ldrh	r2,[r0,#2]	;r2=s
	subs	r3,r1,r2	;r3=r-s
	bmi	negt
pos	strh	r2,[r0]		;r2->r
	strh	r1,[r0,#2]	;r1->s
negt	ldrh	r1,[r0]		;r1=r
	ldrh	r2,[r0,#4]	;r4=t
	subs	r3,r1,r2	;r3=r-t
	bmi	pk2
pk1	strh	r1,[r0,#4]	;r1->t
	strh	r2,[r0]		;r2->r
pk2	ldrh	r1,[r0,#2]	;r1<-s
	ldrh	r2,[r0,#4]	;r2<-t
	subs	r3,r1,r2	;r3=r-t
	bmi	pk4
	strh	r1,[r0,#4]	;r1->t
	strh	r2,[r0,#2]	;r2->s
	b	pk3
pk4	b	pk4
	end
	