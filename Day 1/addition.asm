        MVI C, 00H
        LDA E100H
        MOV B, A 
        LDA E101H
        ADD B
        JNC LOOP
        INR C 
LOOP:   STA E102H 
        MOV A, C 
        STA E103H
        RST 1 
