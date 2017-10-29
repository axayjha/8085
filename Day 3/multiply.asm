        LDA E100H       # Load first number
        MOV B, A        # Move to B
        CPI 00          # if number is 0, jump to end and result=0
        JZ END  
        LDA E101H       # Load second number
        MOV C, A        # Move to C
        CPI 00          # if number is 0, jump to end and result=0
        JZ END
        
        XRA A           # A XOR A => A = 0
LOOP:   ADD B           # A=A+B
        DCR C           # C = C-1
        JZ  END         # if C==0, jump to end and store result
        JMP LOOP        # Loop back n add again
END:    STA E102H       # store result in memory
        RST 1
