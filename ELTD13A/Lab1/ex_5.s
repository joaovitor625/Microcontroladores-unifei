;--------- ex_5 - usar space
;--------- diret.global
	EXPORT __main
;=========
;--------- diret. area
	AREA	meuprog,code,readonly
__main
ct1	SPACE	2; numeros de bytes com valor zero
aki	b	aki; loop infinito
	END