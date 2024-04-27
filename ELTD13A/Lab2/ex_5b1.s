;-------- ex_5b1
;-------- diret.global
	export	__main
;-------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r3,#0xFFFF
	mov	r4,#0xFFFF
	sub	r3,r3,r4
aki	b	aki
	end
	