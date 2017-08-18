        LDA E100H
        MOV B, A 
        LDA E101H
        MOV C, A 
        CPI 00
        JZ END
        XRA A 
LOOP:   ADD B
        DCR C
        JZ  END
        JMP LOOP
END:    STA E102H
        RST 1
