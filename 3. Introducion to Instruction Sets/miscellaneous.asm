	AREA miscellaneous, CODE, READONLY
		
		ENTRY
		
		;clear contents of r0
		LDR		r0, =0xF0F0F0F0
		BIC		r0, r0, r0
		
		;-149 -4321, two complements
		LDR		r0, =-149
		LDR		r1, =-4321
		ADD		r2, r0, r1
		
		END