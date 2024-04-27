;----------- ex-5b
;----------- diret.global
	export	__main
;----------- diret.mprog (flash)
	area	mprog,code,readonly
__main
	mov	R1,#0
	add	R1,R1,#2_00001010
	mov	R1,#0
	add	R1,R1,#10
	mov	R1,#0
	add	R1,R1,#0x0A
aki	b	aki
	end