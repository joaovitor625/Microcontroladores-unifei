;---------- ex_4.6.1
;---------- diret.global
	export	__main
;---------- diret.area - dados (ram)
	area	dds1,data,readwrite
vg	space	1
vh	space	1
vt2	space	2
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vg
	ldrb	r1,[r0]
	ldrb	r2,[r0,#vh-vg]
	add	r3,r1,r2
	strh	r3,[r0,#vt2-vg]
	b	__main
	end