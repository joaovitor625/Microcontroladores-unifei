;---------  ex_3_1
;--------- diret.global
	export	__main
;--------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
pk0	mov	R0,#1
	mov	r1,#1
	add	r2,r1,r0
	b	pk1
	add	r2,r1,#10
pk1	sub	r2,r2,r0
	b	pk0
	end