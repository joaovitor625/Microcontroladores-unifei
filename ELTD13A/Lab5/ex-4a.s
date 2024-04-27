;---------- ex-4a
;---------- diret.global
	export	__main
;===========
kb	equ	56
;===========
;---------- diret.area dados(ram)
	area	dds1,data,readwrite
ky	space	kb
ndze	space	kb
;---------- diret.area mprog(flash)
	area	mprog,code,readonly
__main
	ldr	r0,=ky-1
	mov	r1,#-kb
pk0	ldrb	r2,[r0,#1]!
	mov	r3,#-8
pk2	rrx	r4,r2
	bcc	pk1		; verifica se c=0=> pk1
	b	pk3
pk1	add	r8,r8,#1	; conta o número de zeros
pk3	adds	r3,r3,#1
	bmi	pk2
	adds	r1,r1,#1
	bmi	pk0
	str	r8,[r0,#ndze-ky-kb+1]
	b	__main
	end