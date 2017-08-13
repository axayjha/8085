        MVI D, 80H                 
        MVI E, 00H
        MVI B, E1H
        MVI C, 00H  

loop:   MOV H, B
        MOV L, E
        MOV A, M        
        INR E

        INR H
        MOV L, C
        MOV M, A 
        INR C

        MOV H, B 
        MOV L, E
        MOV A, M
        MVI E, 00H

        INR H
        MOV L, C 
        MOV M, A 
        INR C 
        
        DCR D
        JNZ loop
        RST 1
