;-----------EX_1C- end. imediato
;----------- diret.global
	export	__main
;===========
nb	equ	32
;===========
;-----------diret.area dados (ram)
	area	dds1,data,readwrite
vt1	space	nb
vt2	space	nb
;-----------diret.area mprog (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vt2
	mov	r1,#nb
pk0	ldr	r2,[r0,#vt1-vt2]
	str	r2,[r0,#vt2-vt1]
	subs	r1,r1,#4
	add	r0,r0,#4
	bne	pk0
	b	__main
	end