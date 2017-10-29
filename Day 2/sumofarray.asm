        LXI H, E100     ; Load the starting address of first array/block
        MVI C, 10       ; counter C=16
LOOP:   MOV A, M        ; load number from first block in A
        INR H           ; increment address from E1XX to E2XX to load second number in M
        ADD M           ; add second number to first (A=A+M)
        INR H           ; increment address to E3XX
        MOV M, A        ; save the result in third block
        DCR H           ; decrement address
        DCR H           ; back to E1XX
        INR L           ; increment lower byte (XX part)
        DCR C           ; decrement counter
        JNZ LOOP        ; if C!=0, loop back
