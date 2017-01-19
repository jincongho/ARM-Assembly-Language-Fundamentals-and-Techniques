	AREA copystring, CODE, READONLY
		
		ENTRY
		
		ADR		r0, String
		ADR		r1, String2

Copy	LDRB	r2, [r0], #1				;read a byte using post-index addressing
		STRB	r2, [r1], #1				;copy a byte to dest
		CMP		r2, #0x00					;stop at 0x00(null terminator)
		BNE		Copy
		
String	DCB 	"this is a string", 0x00	;source string
String2	SPACE 	20							;reserce space for copy
		
		END