;-------- ex_4.6.3
;-------- diret.global
	export	__main
;-------- diret.area - dados (ram)
	area	dds1,data,readwrite
vg	space	4
vh	space	4
vs	space	5
;-------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vg
	ldr	r1,[r0]
	ldr	r2,[r0,#vh-vg]
	adds	r3,r1,r2
	bcs	pk0
	mov	r4,#0
	b	pk1
pk0	mov	r4,#1
pk1	str	r2,[r0,#vs-vg]
	b	__main
	end