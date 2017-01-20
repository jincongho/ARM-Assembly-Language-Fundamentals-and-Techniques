    AREA longsequence, CODE, READONLY
        
        ENTRY
        
        ;find the longest run in a sequence
        ADR     r0, seq
        LDR     r1, [r0], #4;new_value
        MOV     r2, r1      ;current_value
        MOV     r3, #1      ;current_length
        MOV     r4, r1      ;max_value
        MOV     r5, #1      ;max_length
        
loop    LDR     r1, [r0], #4
        CMP     r1, #0      ;use 0 as terminating value
        BEQ     stop
        CMP     r1, r2
        ADDEQ   r3, r3, #1  ;current_length++
        MOVNE   r3, #1      ;current_length=1
        MOVNE   r2, r1      ;current_value = new_value
        CMP     r3, r5
        MOVGT   r4, r1      ;max_value = new_value
        MOVGT   r5, r3      ;max_length = max_length
        B       loop
        
stop    B       stop
seq     DCD     2,2,2,2,2,3,4,4,4,4,5,5,5,5,5,5,5,6,6,6,7,0
        
        END