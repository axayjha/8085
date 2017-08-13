
        MVI D, 10H                 
        MVI E, 00H
        MVI B, E1H

LOOP:   
        MOV H, B
        MOV L, E
        MOV C, M
        
        MOV A, B
        ADI 1H
        MOV H, A
        MOV A, M

        ADD C
        MOV C, A

        MOV A, B
        ADI 2H
        MOV H, A
        MOV M, C

        INR E  
        DCR D
        JNZ LOOP
        RST 1

