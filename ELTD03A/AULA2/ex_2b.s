;---------- ex_2b- usar equ e mov
;---------- diret. global
	EXPORT __main
;========================
ct1	equ	2_00000011;
ct2	equ	8_002;
;========================
;---------- diret.area
	area	meuprog, code,readonly
__main
	MOV	R1,#ct1;
	MOV	R2,#ct2;
aki	b 	aki
	END