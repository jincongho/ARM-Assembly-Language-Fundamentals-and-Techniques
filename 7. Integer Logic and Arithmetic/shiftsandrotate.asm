	AREA shiftandrotate, CODE, READONLY
		
		ENTRY
		
		MOV		r0, #0x00FFFFFF
		
		;left shift 2
		MOV		r1, r0, LSL #8
		MOV 	r2, #16
		MOV		r3, r0, LSL r2
		
		;right shift 2
		MOV		r4, r0, LSR #8
		
		;arithmetic shift right
		MOV		r5, r0, ASR #8
		
		;rotate right
		MOV		r6, r0, ROR #16
		
		END