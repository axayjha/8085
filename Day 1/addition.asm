        MVI C, 00H      ; carry
        LDA E100H       ; get first number
        MOV B, A        ; save in B
        LDA E101H       ; get second number in A
        ADD B           ; A=A+B
        JNC LOOP        ; if no carry, continue to store the val, and carry =0
        INR C           ; else carry=1
LOOP:   STA E102H       ; store the val
        MOV A, C        ; A=C
        STA E103H       ; store the carry
        RST 1           ; stop
