	;1. Defining a Block of Data or Code
	;AREA section_name{,attr}{,attr}
	;attr: CODE, DATA, READONLY, READWRITE 
	AREA basics, CODE, READONLY
		
		;2. Register Name Definition
		;name RN expr(0-15)
coeff1	RN		8
coeff2	RN		9
dest	RN		0

		;3. Equating a Symbol to a Numeric Constant
		;name EQU expr{,type}
		;type: ARM, THUMB, CODE16, CODE32, DATA
		;not stored in memory, only exists when assembler run
SBASE	EQU		0x04000000
abc		EQU		2
fiq		EQU		0x1C, CODE32
		
		;4. Declaring an Entry Point
		ENTRY
		
		;instruction format:
		;{label} {instruction|directive|pseudo-instruction} {;comment}
		;data type in arm asm
		MOV		r0, #123	;decimal
		MOV		r1, #0x3F	;hexadecimal
		MOV		r2, #2_1111	;binary, format base_number
		MOV		r3, #'A'
		MOV		r4, #abc	;using equ directive
		MOV		dest, #0x3F	;using rn directive
		
		;5. Allocating Memory and Specifying Contents (must be put after instructions)
		;{label} DCB/DCW{U}/DCD{U} expr{,expr}{,expr}...
		;B - Bytes, W - Half-words, D - Words, DCWU/DCDU - without memory alignment
		;ALIGN afterward if any instructions follow to ensure that the instructions is aligned correctly in memory
		DCD		0x12345678
		DCB		0xFF
		ALIGN
		DCB		0xFF
		DCB		0xFF
		ALIGN
		DCW		0xABCD
		
CSTR	DCB		"Hello"		
CSTR2	DCB		"World", 0	;to construct null-terminated string, we have to do manually

		;6. Aligning Data or Code to Appropriate Boundaries
		;ALIGN {expr{,offset}}
		;all instruction is 4 byte length, if dcb use only one byte, we need align to the boundary of next word
		;so that pc will read the correct 4 byte instruction/data
		ALIGN
			
		;7. Reserve a Block of Memory
		;{label} SPACE expr
		;can be used for copy data, etc
empty	SPACE	20
		
		;8. Ending a Source File
		END