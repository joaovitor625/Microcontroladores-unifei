;--------- ex_5c_2
;---------  diret.global
	export	__main
;===========
vr5	equ	0xFFFF
vr5t	equ	0x00FF
vr6	equ	0xFFFF
vr6t	equ	0x0FFF
;===========
;---------- diret.area -programa (flash)
	area	mprog,code,readonly
__main
	mov	r5,#vr5
	movt	r5,#vr5t
	mov	r6,#vr6
	movt	r6,#vr6t
	sub	r5,r6,r5
aki	b	aki
	end