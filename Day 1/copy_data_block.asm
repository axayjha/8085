        MVI D, 10H                 
        MVI E, 00H
        MVI B, E1H
        MVI C, E2H 

loop:   MOV H, B
        MOV L, E
        MOV A, M
        
        MOV H, C
        MOV M, A 

        INR E  
        DCR D
        JNZ loop
        RST 1
