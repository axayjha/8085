        MVI D, 10H                
        MVI E, FH
        MVI B, E1H

loop:   MOV H, B
        MOV L, E
        MOV C, M        

        MOV A, E
        ADI 5
        MOV L, A 

        MOV M, C    

        DCR E  
        DCR D
        JNZ loop
        RST 1
