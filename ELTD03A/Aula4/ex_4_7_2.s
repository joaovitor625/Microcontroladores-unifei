;--------- ex_4.7.2
;--------- diret.global
	export	__main
;--------- diret.area - dados
	area	dds1,data,readwrite
vg	space	1
vh	space	2
vs	space	2
;--------- diret.area - programa
	area	mprog,code,readonly
__main
	ldr	r0,=vg
	ldrh	r1,[r0]
	ldrh	r2,[r0,#vh-vg]
	sub	r3,r1,r2
	str	r3,[r0,#vs-vg]
	b	__main
	end