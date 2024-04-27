;--------- ex_1b
;--------- diret.global
	export	__main
;============
vlr1	equ	0x10
vlr2	equ	0x10
vlr3	equ	0x10
vlr4	equ	0x10
vlr5	equ	0x10
vlr6	equ	0x10
vlr7	equ	0x10
vlr8	equ	0x10
;============
;--------- diret.area -	programa (flash)
	area	mprog,code,readonly
__main
	add	r9,r9,#vlr1
	add	r9,r9,#vlr2
	add	r9,r9,#vlr3
	add	r9,r9,#vlr4
	add	r9,r9,#vlr5
	add	r9,r9,#vlr6
	add	r9,r9,#vlr7
	add	r9,r9,#vlr8
aki	b	aki
	end