#Check if two arrays of memory locations have same content. Return 1 for True and 0 otherwise.
  
                LXI H, E100H          # loading starting address of first array
                MVI C, 0FH            # counter = 15
                MVI D, 01H            # boolean value to indicate if arrays are same (initial, true (0) )
CHECKAGAIN:     MOV A, M              # moving data from first array to A
                INR H                 # incrementing E1 to E2
                CMP M                 # comparing data in second array with data from first array (which is in A right now)
                JNZ SKIP              # if doesnt match, print 0 (False) straight, away
                INR L                 # else increment the last byte of the address
                DCR H                 # decrementing E2 to E1
                DCR C                 # decrementing counter
                JNZ CHECKAGAIN        # if counter != 0, loop back
                MOV A, D              # move boolean value to A
                CALL MODIDT           # display boolean result
                HLT                   # stop program

SKIP:           MVI A, 00H            # if arrays dont match, display false (0)
                CALL MODIDT
                HLT
