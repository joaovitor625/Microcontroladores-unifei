;---------- ex_7a
;---------- diret.global
	export	__main
;===========
vr1	EQU	0xFF
;===========
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#vr1
	mov	r2,r1
	add	r2,r1,r2
aki	b	aki
	end