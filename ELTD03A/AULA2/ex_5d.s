;----------- ex_5d
;----------- diret.global
	export	__main
;==========================
ct1	equ	2_00001111
ct2	equ	15
ct3	equ	0x0F
;==========================
;----------- diret.mprog (flash)
	area	mprog,code,readonly
__main
	add	r1,#ct1,#ct2
	add	r1,r1,#ct3
aki	b	aki
	end