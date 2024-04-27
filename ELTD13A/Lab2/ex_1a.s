;-------- ex_1a
;-------- diret.global
	export	__main
;-------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	add	r9,r9,#0x10
	add	r9,r9,#0x20
	add	r9,r9,#0x30
	add	r9,r9,#0x40
	add	r9,r9,#0x50
	add	r9,r9,#0x60
	add	r9,r9,#0x70
	add	r9,r9,#0x80
aki	b	aki
	end