    AREA branches, CODE, READONLY
        
        ENTRY
        
        ;1. if r0 > 25 then r0 += 10
        MOV     r0, #10
        CMP     r0, #25
        BLE     exit
        ADD     r0, r0, #10     
exit
    
        ;same but using conditional execution
        MOV     r0, #10
        CMP     r0, #25
        ADDGT   r0, r0, #10
        
        ;2. if (r1==r2) r1++ else r1 += 2
        MOV     r1, #1
        MOV     r2, #2
        CMP     r1, r2
        BNE     plus2
        ADD     r1, r1, #1
        B leave
plus2   ADD     r1, r1, #2
leave
        ;same but using conditional execution
        MOV     r1, #1
        MOV     r2, #2
        CMP     r1, r2
        ADDEQ   r1, r1, #1
        ADDNE   r1, r1, #2
        
        ;3. if(r0==r1) r2 += 4
        ;if(r0< r1) r2 += 7
        ;if(r0> r1) r2 += 12
        MOV     r0, #10
        MOV     r1, #5
        MOV     r2, #0
        CMP     r0, r1
        ADDEQ   r2, r2, #4
        ADDLT   r2, r2, #7
        ADDGT   r2, r2, #12
        
        ;4. if((r0==r1) && (r2==r3)) r4 += 10
        ;compound predicate with conditional execution
        MOV     r0, #1
        MOV     r1, #1
        MOV     r2, #1
        MOV     r3, #1
        MOV     r4, #0
        CMP     r0, r1
        CMPEQ   r2, r3
        ADDEQ   r4, r4, #10
        
        END