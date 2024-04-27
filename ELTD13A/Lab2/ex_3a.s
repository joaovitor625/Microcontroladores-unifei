;---------- ex_3a
;---------- diret.global
	export	__main
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#0xFFFF
	mov	r2,#0xFFFF
	mov	r3,#0xFFFF
	mov	r4,#0xFFFF
	add	r1,r1,r2
	add	r1,r1,r3
	add	r1,r1,r4
aki	b	aki
	end