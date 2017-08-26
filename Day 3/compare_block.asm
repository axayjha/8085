Check if two arrays of memory locations have same content. Return 1 for True and 0 otherwise.
  
        LXI H, E100H
        MVI C, 0FH
        MVI D, 01H
LOOP:   MOV A, M
        INR H
        CMP M
        JNZ LOOP1
        INR L
        DCR H
        DCR C
        JNZ LOOP1
        MOV A, D
        CALL MODIDT
        HLT
LOOP1:  MVI A, 00H
        CALL MODIDT
        HLT
