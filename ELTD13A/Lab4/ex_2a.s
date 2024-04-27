;---------- ex-2a
;---------- diret.global
	export	__main
;==========
nb	equ	32
;==========
;---------- diret.area dados(ram)
	area	dds1,data,readwrite
vr	space	nb
vs	space	nb
vrs	space	nb
;---------- diret.area mprog (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vr
	mov	r1,#1
	ldr	r2,[r0]
	