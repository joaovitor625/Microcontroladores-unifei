;--------- ex_5e
;--------- diret.global
	export	__main
;=========
vc1	equ	0x1FF
vc2	equ	2_001
;==========
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r0,#vc1
	sub	r1,r0,#vc2
aki	b	aki
	end