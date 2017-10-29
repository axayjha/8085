        LDA E100H       ; Load first number
        CPI 00          ; if number is 0, jump to end and result=0
        JZ END
        MOV B, A        ; Move first number to B
        LDA E101H       ; Load second number
        CPI 00          ; if number is 0, jump to end and result=0
        JZ END
        MOV C, A        ; Move second number to C
        
        XRA A           ; A XOR A => A=0

LOOP:   ADD B           ; A = A + B
        DCR C           ; C = C-1
        JZ  END         ; if C==0, jump to end and store result
        JMP LOOP        ; else, loop back and add
END:    STA E102H       ; store result
        JNC STOP        ; if no carry, stop the program (Cy from ADD B is still retained )
        MVI A, 01       ; else store carry
        STA E103H
STOP:   RST 1
