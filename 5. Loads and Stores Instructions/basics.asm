	AREA basics, CODE, READONLY

		ENTRY
		
		;format: LDR|STR{<size>}{<cond>} <Rd>, <addressing_mode>
		;size: default - word, H - halfword, B - byte
		ADR		r0, dat
		LDRB	r1, [r0]	;get 'A' from byte
		
		ADR		r2, dat2
		LDRH	r3, [r2]	;get 40000 from half word
		
		ADR		r4, dat3
		LDR		r5, [r4]	;get 10 from word
		LDR		r6, [r4, #4];get 20 from word
		
		;get 30, effective addr = r4 + #4<<#1 = r4 + #8
		MOV		r7, #4
		LDR		r8, [r4, r7, LSL #1]
		
		;1. pre-indexed addressing
		;format: LDR|STR{<size>}{<cond>} <Rd>,[<Rn>,<offset>]{!}
		;add offset to Rn before operation
		;use '!' to update base register(r0)
		ADR		r0, dat3
		LDR		r1, [r0, #4]!	;read 20
		LDR		r2, [r0, #4]!	;read 30
		LDR		r3, [r0, #4]!	;read 40
		LDR		r4, [r0, #4]!	;read 40
		
		;2. post-indexed addressing
		;format: LDR|STR{<size>}{<cond>} <Rd>, [<Rn>], <offset>
		;add offset to Rn after operation complete
		;no need '!', always update base register(Rn)
		ADR		r0, dat3
		LDR		r1, [r0], #4	;read 10
		LDR		r2, [r0], #4	;read 20
		LDR		r3, [r0], #4	;read 30
		LDR		r4, [r0], #4	;read 40
		
dat		DCB		'A', 'B', 1, 100
dat2	DCW		40000, 50000
dat3	DCD		10, 20, 30, 40, 50
		ALIGN
		
		END