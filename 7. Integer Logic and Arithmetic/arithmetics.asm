	AREA arithmetics, CODE, READONLY
		
		ENTRY
		
		;10 + 8
		MOV		r0, #10
		MOV		r1, #8
		ADD		r2, r0, r1
		
		;(5*10)+(2*4)
		MOV		r0, #5
		MOV		r1, #10
		MUL		r2, r0, r1
		MOV		r3, #2
		MOV		r4, #4
		MLA		r5, r3, r4, r2
		
		;5x^2+3x+3
		;x = 4
		MOV		r0, #4		;x
		MOV		r1, #5		;5
		MUL		r2, r0, r0	;x^2
		MUL		r2, r1, r2	;5x^2
		MOV		r3, #3		;3
		MUL		r4, r3, r0	;3x
		ADD		r5, r2, r4	;5x^2+3x
		ADD		r6, r5, r3	;5x^2+3x+3
		
		;reverse subtract for shifting
		MOV		r0, #0xFF
		MOV		r1, #0x0F
		;r2 = r0 - r1*4
		SUB		r2, r0, r1, LSL #2
		;r3 = r1 - r0*4
		RSB		r3, r1, r0, LSL #2
		
		;add two 64bits number using add carry
		;there are also SUB and SUBC
		MOV		r0, #0xFF000000
		MOV		r1, #0xFF000000
		MOV		r2, #0x0000FF00
		MOV		r3, #0x0000FF00
		ADDS	r4, r0, r1		;lower part
		ADC		r5, r2, r3		;higher part
		ADD		r6, r2, r3		;normal high part without add carry
		
		END