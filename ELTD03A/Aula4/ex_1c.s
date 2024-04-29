;------- ex_1c
;------- diret.global
	export	__main
;------- diret.area - dados
	area	dds1,data,readwrite
vr1	space	3
;------- diret.area - programa
	area	mprog,code,readonly
__main
	ldr	r0,=vr1
pk3	ldrb	r1,[r0]		;r1=r
	ldrb	r2,[r0,#1]	;r2=s
	subs	r3,r1,r2	;r3=r-s
	bmi	negt
pos	strb	r2,[r0]		;r2->r
	strb	r1,[r0,#1]	;r1->s
negt	ldrb	r1,[r0]		;r1=r
	ldrb	r2,[r0,#2]	;r4=t
	subs	r3,r1,r2	;r3=r-t
	bmi	pk2
pk1	strb	r1,[r0,#2]	;r1->t
	strb	r2,[r0]		;r2->r
pk2	ldrb	r1,[r0,#1]	;r1<-s
	ldrb	r2,[r0,#2]	;r2<-t
	subs	r3,r1,r2	;r3=r-t
	bmi	pk4
	strb	r1,[r0,#2]	;r1->t
	strb	r2,[r0,#1]	;r2->s
	b	pk3
pk4	b	pk4
	end
	