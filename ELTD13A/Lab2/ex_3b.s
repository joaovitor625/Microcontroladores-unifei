;--------- ex_3b
;--------- diret.global
	export	__main
;=========
vlr1	equ	0xFFFF
vlr2	equ	0xFFFF
vlr3	equ	0xFFFF
vlr4	equ	0xFFFF	
;=========
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#vlr1
	mov	r2,#vlr2
	mov	r3,#vlr3
	mov	r4,#vlr4
	add	r1,r1,r2
	add	r1,r1,r3
	add	r1,r1,r4
aki	b	aki
	end