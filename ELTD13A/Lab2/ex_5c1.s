;---------- ex-5c-1
;---------- diret.global
	export	__main
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r5,#0xFFFF
	movt	r5,#0x00FF
	mov	r6,#0xFFFF
	movt	r6,#0x0FFF
	sub	r5,r6,r5
aki	b	aki
	end