;------------ ex_4c - movt e equ
;------------ diret.global
	EXPORT	__main
;=====================
;------------- declarando as variaveis
ct1	equ	2_00001010
ct2	equ	8_012
ct3	equ	10
;=====================
;------------- diret.area (memoria flash)
	area	mprog,code,readonly
__main
	movt	R1,#ct1
	movt	R2,#ct2
	movt	R3,#ct3
aki	b	aki
	end