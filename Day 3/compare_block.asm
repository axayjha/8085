        LXI H, E100H
        MVI C, 10H
LOOP:   MOV A, M
        INR H
        CMP M
        JNZ LOOP1
        MVI A, 01H
        CALL MODIDT
        JMP LOOP2
LOOP1:  MVI A, 00H
        CALL MODIDT
LOOP2:  DCR H 
        INX H
        DCR C 
        JNZ LOOP 
        RST 1
