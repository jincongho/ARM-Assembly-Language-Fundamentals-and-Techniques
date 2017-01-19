	AREA shiftingdata, CODE, READONLY
		
		ENTRY
		
		MOV		r0, #0x11
		LSL		r1, r0, #1	;left shift by 1, equivalent to multiply by 2
		MOV		r2, #4
		LSL		r3, r0, r2	;left shift by the content of r2, which is 4
		
		END