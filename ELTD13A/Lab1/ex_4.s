;--------- ex_04- usar
;--------- diret.global
	EXPORT	__main
;=========
;--------- diret. area,programa
	area	meuprog,code,READONLY
__main
;--------- diret.atribuicao
ctb1	equ	0x12; ctb1=0x12
;---------loop infinito
aki	b	aki
	END