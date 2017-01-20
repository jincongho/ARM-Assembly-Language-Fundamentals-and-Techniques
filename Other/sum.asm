    AREA sum, CODE, READONLY
        
        ENTRY
        
        MOV     r0, #0      ;sum
        MOV     r1, #4      ;i
        ADR     r2, array   ;base address
loop    LDR     r3, [r2, r1, LSL #2]
        ADD     r0, r0, r3
        SUBS    r1, r1, #1
        BGE     loop
done    B       done

        ALIGN
array   DCD     1, 2, 3, 5, 6
        
        END