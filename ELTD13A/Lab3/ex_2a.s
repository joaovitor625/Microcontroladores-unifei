;---------- ex-2a
;---------- diret.global
	export	__main
;---------- diret.area dados (ram)
	area	dds1,data,readwrite
saida	space	16
;---------- diret.area programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=saida
	mov	r1,#0x10
	mov	r2,#0x20
	mov	r3,#0x30
	mov	r4,#0x40
	mov	r5,#0x50
	mov	r6,#0x60
	mov	r7,#0x70
	mov	r8,#0x80
	add	r1,r1,r1
	add	r2,r2,r2
	add	r3,r3,r3
	add	r4,r4,r4
	add	r5,r5,r5
	add	r6,r6,r6
	add	r7,r7,r7
	add	r8,r8,r8
	strh	r1,[r0]	
	strh	r2,[r0,#2]
	strh	r3,[r0,#4]
	strh	r4,[r0,#6]
	strh	r5,[r0,#8]
	strh	r6,[r0,#10]
	strh	r7,[r0,#12]
	strh	r8,[r0,#14]
	b	__main
	end