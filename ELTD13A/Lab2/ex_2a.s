;----------- ex_2a
;----------- diret.global
	export	__main
;----------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	add	r9,r9,#0xFFF
	add	r9,r9,#0xFFF
	add	r9,r9,#0xFFF
	add	r9,r9,#0xFFF
	add	r9,r9,#0xFFF
	add	r9,r9,#0xFFF
	add	r9,r9,#0xFFF
	add	r9,r9,#0xFFF
aki	b	aki
	end