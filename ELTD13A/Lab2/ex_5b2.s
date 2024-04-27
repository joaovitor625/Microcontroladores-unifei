;--------- ex_5b2
;--------- diret.global
	export	__main
;==========
vr3	equ	0xFFFF
vr4	equ	0xFFFE
;==========
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r3,#vr3
	mov	r4,#vr4
	sub	r3,r3,r4	
aki	b	aki
	end