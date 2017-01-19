	AREA loopm, CODE, READONLY
		
		ENTRY
		
		MOV		r0, #9		;i
		MOV		r1, #0		;total
		ADR		r2, j		;j
loop	LDR		r3, [r2, r0]	
		ADD		r1, r1, r3	;total += j[i]
		SUBS	r0, r0, #1	;i--
		BNE		loop
		
j		DCD		10, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
		
		END