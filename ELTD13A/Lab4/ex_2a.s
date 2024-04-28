;---------- ex-2a
;---------- diret.global
	export	__main
;==========
nb	equ	32
;==========
;---------- diret.area dados(ram)
	area	dds1,data,readwrite
vr	space	nb
vs	space	nb
vrs	space	nb+4
;---------- diret.area mprog (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr
	ldr	r9,=vrs
	mov	r1,#4
pk0	ldr	r2,[r0]			;r2=vr{32:0}
	ldr	r3,[r0,#4]		;r2=vr{64:32}
	ldr	r4,[r0,#vs-vr]		;r3=vs{32:0}
	ldr	r5,[r0,#vs-vr+4]	;r3=vs{64:32}
	adds	r6,r2,r4
	bcs	pk1			;se o flag c=1 vai para pk1
	adds	r7,r3,r5
	bcs 	pk3
	b	pk2
pk1	adds	r7,r3,#1
	add	r7,r7,r5
	bcs	pk3
	mov	r8,#0
	b	pk2
pk3	mov	r8,#1
pk2	str	r6,[r9]
	str	r7,[r9,#4]!
	strb	r8,[r9,#4]!
	add	r9,r9,#1
	add	r0,r0,#8
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end