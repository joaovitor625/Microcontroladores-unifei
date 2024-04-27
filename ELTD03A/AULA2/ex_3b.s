;--------- ex_3b - movw
;--------- diret.global
	EXPORT	__main
;--------- diret.atrib
;===============
ct1	equ	2_0000000011111111
ct2	equ	8_000111
ct3	equ	1023
;===============
;--------- diret.area
	area	meuprog,code,readonly
__main
	movw	R0,#ct1
	movw	R1,#ct2
	movw	R2,#ct3
aki	b	aki
	end