;--------------- EX_4d--- mov e movt
	export	__main
;================
;------------- diret.atribuição
ct11	equ	2_00001010
ct12	equ	2_00001111
ct21	equ	8_012
ct22	equ	8_013
ct31	equ	30
ct32	equ	10
;=================
;-------------- diret.area (flash)
	area	mprog,code,readonly
__main
	mov	R1,#ct11
	movt	R1,#ct12
	mov	R2,#ct21
	movt	R2,#ct22
	mov	R3,#ct31
	movt	R3,#ct32
aki	b	aki
	end