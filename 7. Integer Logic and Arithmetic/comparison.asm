    AREA comparison, CODE, READONLY
        
        ENTRY
        
        ;compare 64bits number
        MOV     r0, #0xFFFFFFFF
        MOV     r1, #0xFFFFFFFF
        MOV     r2, #0xFFFFFFFF
        MOV     r3, #0x0FFFFFFF
        CMP     r0, r1
        CMPEQ   r2, r3
        
        ;compare string
        ;if(r0=='!' || r1=='?') r2++
        MOV     r0, #'A'
        MOV     r1, #'?'
        MOV     r2, #0
        TEQ     r0, #'!'
        TEQNE   r1, #'?'
        ADDEQ   r2, r2, #1
        
        END