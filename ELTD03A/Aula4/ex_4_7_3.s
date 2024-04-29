;--------- ex_4.7.3
;--------- diret.global
	export	__main
;--------- diret.area - dados
	area	dds1,data,readwrite
vg	space	4
vh	space	4
vs	space	5
;--------- diret.area - programa
	area	mprog,code,readonly
__main
	ldr	r0,=vg
	ldr	r1,[r0]
	ldr	r2,[r0,#vh-vg]
	subs	r3,r1,r2
	bcc	pk1
	mov	r4,#0
	b	pk2
pk1	mov	r4,#0x0F
pk2	str	r3,[r0,#vs-vg]
	strb	r4,[r0,#vs-vg+4]
	b	__main
	end