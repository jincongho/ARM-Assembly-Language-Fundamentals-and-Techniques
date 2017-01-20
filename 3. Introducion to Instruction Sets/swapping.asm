    AREA swapping, CODE, READONLY
        
        ENTRY
        
        ;swapping register content without temporary register
        LDR     r0, =0xF631024C
        LDR     r1, =0x17539ABD
        EOR     r0, r0, r1
        EOR     r1, r0, r1
        EOR     r0, r0, r1
stop    B       stop
        
        END