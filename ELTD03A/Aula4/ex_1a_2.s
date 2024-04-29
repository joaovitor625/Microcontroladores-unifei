;-------- ex_1a_2
;-------- diret.global
	export	__main
;-------- diret.area - programa  (flash)
	area	mprog,code,readonly
__main
	mov	r1,#0xC1
pk0	nop
	subs	r1,r1,#1
	bne	pk0
	b	__main
	end