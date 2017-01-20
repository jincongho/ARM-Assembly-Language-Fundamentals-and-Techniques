    AREA link, CODE, READONLY
        
        ENTRY
        
        MOV     r0, #4
        BL      SQR     ;save current address in lr
loop    B       loop

SQR     MUL     r1, r0, r0
        MOV     r0, r1
        MOV     r1, #0
        MOV     pc, lr  ;use lr to jump back
        
        END