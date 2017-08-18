START:  LXI H, 0E100H
        MVI D, 00H
        MVI C, 04H
CHECK:  MOV A, M
        INX H 
        CMP M
        JC NXTBYT
        MOV B, M
        MOV M, A 
        DCX H 
        MOV M, B 
        INX H 
        MVI D, 01H
NXTBYT: DCR C
        JNZ CHECK 
        MOV A, D 
        RRC 
        JC START 
        HLT        