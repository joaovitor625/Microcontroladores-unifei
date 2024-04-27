;---------- ex_4a
;---------- diret.global
	export	__main
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#0x00FF
	mov	r2,#0x0FFF
	mov	r3,#0xFFFF
	mov	r4,#0xFFFF
	movt	r4,#0x000F
	mov	r5,#0xFFFF
	movt	r5,#0x00FF
	mov	r6,#0xFFFF
	movt	r6,#0xcFFF
	add	r1,r1,r2
	add	r1,r1,r3
	add	r1,r1,r4
	add	r1,r1,r5
	add	r1,r1,r6
aki	b	aki
	end