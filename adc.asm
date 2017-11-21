; Credits: Samrat Dutta 

            ; configure 8255
START:      MVI A, 90H
            OUT CSR
            ; select channel 0 of ADC
            MVI A, 00H
            OUT PORT_C
            ; toggle PC7 (ALE)
LOOP1:      MVI A, 0FH
            OUT CSR
            MVI A, 0EH
            OUT CSR
            ; loop until PC7 is high
LOOP:       IN PORT_A
            RLC
            JNZ LOOP
            ; once PC7 is high, set PC6 (OE)
            MVI A, 0DH
            OUT CSR
            ; read Port A and display
            IN PORT_A
            STA FFF9H
            CALL UPDDT
            ; Reset PC6 (OE)
            MVI A, 0CH
            OUT CSR
            ; loop back
END:        JMP LOOP1
