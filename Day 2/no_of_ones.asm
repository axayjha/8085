        LDA E100H
        MVI C, 08H
        MVI D, 00H
LOOP1:  RAL
        JNC LOOP
        INR D
LOOP:   DCR C 
        JNZ LOOP1
        MOV A, D
        STA E200H
        RST 1                