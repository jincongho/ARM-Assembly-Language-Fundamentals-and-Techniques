	AREA boolean, CODE, READONLY
		
		ENTRY
		
		MOV		r0, #0xFFFF00FF
		MOV		r1, #0xFFFFFF00
		
		AND		r2, r0, r1
		
		ORR		r3, r0, r1
		
		EOR		r4, r0, r1

		BIC		r5, r0, r1
		
		END