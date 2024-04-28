;--------- ex_6c
;--------- diret.global
	export	__main
;==========
vr1	equ	0xFFFF
;==========
;---------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	movt	r1,#vr1
	movt	r2,#vr1
aki	b	aki
	end