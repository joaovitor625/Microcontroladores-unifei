;---------- ex_5c
;---------- diret.global
	export	__main
;=======================
ct1	equ	2_00001111
ct2	equ	16
ct3	equ	0x10
;=======================
;---------- diret.area mprog (flash)
	area	mprog,code,readonly
__main
	mov	r0,#0
	add	r0,r0,#ct1
	mov	r0,#0
	add	r0,r0,#ct2
	mov	r0,#0
	add	r0,r0,#ct3
aki	b	aki
	end