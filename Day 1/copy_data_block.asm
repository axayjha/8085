        MVI D 10                 
        MVI E 00
        MVI B E1
        MVI C E2  

loop:   MOV H B
        MOV L E
        MOV A M
        
        MOV H C
        MOV M A 

        INR E  
        DCR D
        JNZ loop
        RST 1
