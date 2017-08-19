; BCD up-counter. Display in data field from 00 to 99

START:  MVI A, 00H
        STA E100H
LOOP:   LDA E100H
        CALL MODIDT
        CALL DELAY
        LDA E100H
        INR A 
        DAA
        STA E100H 
        JNZ LOOP
        JMP START 
DELAY:  LXI H, FFFFH
BACK:   DCX H 
        MOV A, L 
        ORA H 
        JNZ BACK 
        RET        
                
