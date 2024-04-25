;----------ex-2b
;----------diret.global
	export	__main
;============
nb	equ	16
;============
;----------- diret.area dados (ram)
	area	dds1,data,readwrite
vtx	space	nb
vty	space	nb
;----------- diret.area mprog (flash)
	area	mprog,code,readonly
__main
	ldr	r0,=vtx+nb		;vetor
	mov	r6,#8		;contador
pk0	ldrsh	r1,[r0,#-2]!
	rrx	r7,r1
	bcc	pk1		;verifica se é par
	asr	r2,r1,#2	;se for impar vem para esta linha
	b	pk2
pk1	asr	r2,r1,#1	;se for par vem para esta linha
pk2	strh	r2,[r0,#vty-vtx]	; linha para salvar e controle do contador
	subs	r6,r6,#1
	bne	pk0
	b	__main
	end
