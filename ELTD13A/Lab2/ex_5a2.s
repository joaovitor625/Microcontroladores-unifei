;-------- ex_5a2
;-------- diret.global
	export	__main
;==========
vr1	equ	0x0FF
vr2	equ	0xFFF
;==========
;-------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#vr2
	sub	r1,r1,#vr1
aki	b	aki
	end