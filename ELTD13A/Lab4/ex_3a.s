;---------  ex_3a
;--------- diret.global
	export	__main
;--------- diret.area - dados (ram)
	area	dds1,data,readwrite
vm	space	32
vn	space	32
vmn	space	36
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vm			;ponteiro 1
	ldr	r1,=vmn			;ponteiro 2
	mov	r2,#4
pk0	ldr	r3,[r0]			;r3=vm{32:0}
	ldr	r4,[r0,#4]		;r4=vm{64:32}
	ldr	r5,[r0,#vn-vm]		;r5=vn{32:0}
	ldr	r6,[r0,#vn-vm+4]	;r6=vn{64:0}
	subs	r7,r3,r5		;r7=vm-vn
	bcc	pk1
	subs	r8,r4,r6
	bcc	pk3
	mov	r9,#0
	b	pk2
pk1	subs	r8,r4,r6
	sub	r8,r8,#1
	bcc	pk3
	b	pk2
pk3	mov	r9,#0xFF
pk2	str	r7,[r1]
	str	r8,[r1,#4]
	strb	r9,[r1,#8]
	add	r1,r1,#9		;passo do ponteiro 2
	add	r0,r0,#8		;passo do ponteiro 1
	subs	r2,r2,#1		;decremento do contador
	bne	pk0
	b	__main
	end