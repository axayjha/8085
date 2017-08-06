        MVI C, 00H
        LDA E100H
        MOV B, A 
        LDA E101H
        SUB B
        JP LOOP
        CMA
        INR A
        INR C 
LOOP:   STA E102H 
        MOV A, C 
        STA E103H
        RST 1 
