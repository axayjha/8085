
        LDA E100H       ; Load first number
        CPI 00          ; if number is 0, jump to end and result=0
        JZ END
        MOV B, A        ; Move first number to B
        LDA E101H       ; Load second number
        CPI 00          ; if number is 0, jump to end and result=0
        JZ END
        MOV C, A        ; Move second number to C     
        MVI D, 00H      ; carry
        
        XRA A           ; A XOR A => A=0

LOOP:   ADD B           ; A = A + B
        JNC SKIP
        INR D
SKIP:   DCR C           ; C = C-1
        JZ  END         ; if C==0, jump to end and store result
        JMP LOOP        ; else, loop back and add
END:    STA FFF8H       ; store result
        MOV A, D        ; store carry
        STA FFF7H
DISPLAY:CALL UPDAD
        JMP DISPLAY

