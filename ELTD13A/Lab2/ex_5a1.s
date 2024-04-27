;---------- ex_5a1
;---------- diret.global
	export	__main
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#0xFFF
	sub	r1,r1,#0x0FF
aki	b	aki
	end