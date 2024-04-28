;----------- ex_7b
;----------- diret.global
	export	__main
;===========
vr1	equ	0xFF
;===========
;------------ diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#vr1
	mov	r2,r1
	mov	r3,r1
	add	r1,r1,r2
	add	r1,r1,r3
aki	b	aki
	end