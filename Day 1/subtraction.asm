        MVI C, 00H   # borrow
        LDA E100H    # get first number       
        MOV B, A     # save it in B
        LDA E101H    # get second number
        SUB B        # A= A-B
        JP LOOP      # if result is +ve, skip complementing
        CMA          # complement
        INR A        # add one to get 2's complement
        INR C        # saving borrow
LOOP:   STA E102H    # saving the result
        MOV A, C     # moving the borrow to A
        STA E103H    # saving the borrow
        RST 1        # stop
