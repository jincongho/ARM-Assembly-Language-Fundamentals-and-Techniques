	AREA factorial, CODE, READONLY
		
		ENTRY
		
		;factorial(10)
		MOV		r0, #10
		MOV		r1, #1
loop	CMP		r0, #0
		MULGT	r1, r0, r1
		SUBGT	r0, r0, #1
		BGT		loop
stop	B		stop
		
		END