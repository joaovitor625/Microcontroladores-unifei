;--------- ex_6a
;--------- diret.global
	export	__main
;=========
vr1	equ	0xFF
;=========
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r0,#vr1
	mov	r1,r0
aki	b	aki
	end