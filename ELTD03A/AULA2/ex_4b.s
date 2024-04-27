;------------- ex_4b- usar o movt
;------------- diret.global
	EXPORT	__main
;=========================
;------------- diret.area (flash)
	area	mprog,code,readonly
__main
	movt	R0,#2_00001010
	movt	R1,#8_012
	movt	R2,#10
aki	b	aki
	end