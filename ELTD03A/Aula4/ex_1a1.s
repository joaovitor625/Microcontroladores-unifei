;-------- ex_1a_1
;-------- diret.global
	export	__main
;-------- diret.area - programa (flash)
	area	mprog,code,readonly
__main
	mov	r1,#5
pk1	nop
	subs	r1,r1,#1
	bne	pk1
	b	__main
	end