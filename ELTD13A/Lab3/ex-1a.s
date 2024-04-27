;------------- ex-1a
;------------- diret.global
	export	__main
;------------- diret.area dados(ram)
	area	dds1,data,readwrite
saida	space	8
;------------- diret.area code (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=saida
	mov 	r1,#0x10
	mov	r2,#0x20
	mov	r3,#0x30
	mov	r4,#0x40
	mov	r5,#0x50
	mov	r6,#0x60
	mov	r7,#0x70
	mov	r8,#0x80
	strb	r1,[r0]
	strb	r2,[r0,#1]
	strb	r3,[r0,#2]
	strb	r4,[r0,#3]
	strb	r5,[r0,#4]
	strb	r6,[r0,#5]
	strb	r7,[r0,#6]
	strb	r8,[r0,#7]
	b	__main
	end