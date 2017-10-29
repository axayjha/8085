; You have two numbers in E100 and E101. Copy them in alternately in 256 locations starting from E200
;
; Suppose if E100 has 01 and E101 has 02, then
; then 256  (means FFh) locations starting from E200 will have:
;       e200: 1
;       e201: 2
;       e202 :1
;       e203: 2
;       e204: 1 and so on ....



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
