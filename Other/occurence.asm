    AREA occurence, CODE, READONLY
        
        ENTRY
        
        ;count occurence of 1s in target
        LDR     r0, =0x11AB003F ;target
        MOV     r1, #0          ;count
        MOV     r2, #32         ;loop counter
Count   MOVS    r0, r0, ROR #1
        ADDCS   r1, r1, #1
        SUBS    r2, r2, #1
        BNE     Count
        
        END