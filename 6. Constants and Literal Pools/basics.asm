    AREA basics, CODE, READONLY
        
        ENTRY
        
        ;Loading constant into registers

        ;this LDR is different from previous LDR
        ;this is a pseudo-instruction to load constant
        ;that cannot be generated with arm rotation scheme
        ;try MOV r0, #0x12345678 will generate error
        ;use this instead
        LDR     r0, =0x12345678

        ;get address of data location in memory
        ADR     r1, table
        ADR     r2, table2
        
        LDR     r3, =0xAAAAAAAA
        LDR     r4, table3
        
table   DCD     0xABCDDCBA
table2  DCD     0xFFFFFFFF
table3  DCD     0x22222222
        
        END