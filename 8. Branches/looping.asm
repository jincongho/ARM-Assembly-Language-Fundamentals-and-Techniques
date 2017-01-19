	AREA looping, CODE, READONLY
		
		ENTRY
		
		;1. for(i=0; i<=10; i++)
		;increment and check condition before every loop
		MOV		r0, #0		;i
		MOV		r1, #0		;total
for		CMP		r0, #10
		BGE		fordone		;first branch
		ADD		r1, r1, r0
		ADD		r0, r0, #1
		B		for			;second branch
fordone

		;2. for(i=10; i>0; i--)
		;decrement with using only one branch at the end
		MOV		r0, #10		;i
		MOV		r1, #0		;total
ford	ADD		r1, r1, r0	
		SUBS	r0, r0, #1
		BNE		ford		;first branch
forddone

		;3. while(i>0)
		;initial branch only run once
		MOV		r0, #10		;i
		MOV		r1, #0		;total
		B		wtest		;initial branch
while	ADD		r1, r1, r0
		SUB		r0, r0, #1
wtest	CMP		r0, #0
		BGE		while		;first branch
		
		;4. do..while(i>0)
		;same as while but without initial branch
		MOV		r0, #10		;i
		MOV		r1, #0		;total
dwhile	ADD		r1, r1, r0
		SUB		r0, r0, #1
dwtest	CMP		r0, #0
		BGE		while		;first branch
		
		END