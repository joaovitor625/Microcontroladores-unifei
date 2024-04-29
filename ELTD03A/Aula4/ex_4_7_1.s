;--------- ex_4.7.1
;--------- diret.global
	export	__main
;--------- diret.area - dados
	area	dds1,data,readwrite
vg	space	1
vh	space	1
vs	space	2
;--------- diret.area - programa
	area	mprog,code,readonly
__main
	ldr	r0,=vg
	ldrb	r1,[r0]
	ldrb	r2,[r0,#vh-vg]
	sub	r3,r1,r2
	strh	r3,[r0,#vs-vg]
	b	__main
	end