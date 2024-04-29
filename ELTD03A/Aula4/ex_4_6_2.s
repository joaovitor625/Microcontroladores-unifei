;------- ex_4.6.2
;------- diret.global
	export	__main
;------- diret.area - dados (flash)
	area	dds1,data,readwrite
vg	space	2
vh	space	2
vs	space	4
;-------- diret.area - programa (ram)
	area	mprog,code,readonly
__main
	ldr	r0,=vg
	ldrh	r1,[r0]
	ldrh	r2,[r0,#vh-vg]
	add	r3,r2,r1
	str	r3,[r0,#vs-vg]
	b	__main
	end