;----------- ex_4a
;----------- diret.global
	export	__main
;----------- diret.area - programa (ram)
	area	dds1,data,readwrite
vg	space	16
vh	space	16
;----------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vg
	mov	r1,#4
pk0	ldrb	r3,[r0]			;r3=vg(7:0)
	orr	r4,r3,#0xF0		;vg(7:4)=1111
	strb	r4,[r0,#vh-vg]
	add	r0,r0,#1
	ldrb	r3,[r0]			;r3=vg(15:8)
	eor	r5,r3,#0xF0
	mov	r9,#0xFF
	bic	r7,r9,r5		;r7=~r5
	strb	r7,[r0,#vh-vg]
	add	r0,r0,#1	
	ldrh	r3,[r0]			;r3=vg(31:16)
	mov	r8,#0xF0F0
	and	r6,r3,r8
	strh	r6,[r0,#vh-vg]
	add	r0,r0,#2
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end