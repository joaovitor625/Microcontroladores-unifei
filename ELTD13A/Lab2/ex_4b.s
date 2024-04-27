;--------- ex_4b
;--------- diret.global
	export	__main
;===========
vr1	equ	0xFF
vr2	equ	0xFFF
vr3	equ	0xFFFF
vr4	equ	0xFFFF
vr4t	equ	0x000F
vr5	equ	0xFFFF	
vr5t	equ	0x00FF
vr6	equ	0xFFFF
vr6t	equ	0xCFFF
;===========
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#vr1
	mov	r2,#vr2
	mov	r3,#vr3
	mov	r4,#vr4
	movt	r4,#vr4t
	mov	r5,#vr5
	movt	r5,#vr5t
	mov	r6,#vr6
	movt	r6,#vr6t
	add	r1,r1,r2
	add	r1,r1,r3
	add	r1,r1,r4
	add	r1,r1,r5
	add	r1,r1,r6
aki	b	aki
	end