; BCD up-counter. Display in data field from 00 to 99

        LXI SP, 27FFH
        MVI C, OOH 
BACK:   CALL MODIDT
        CALL Delay 
        MOV A, C
        INR A
        DAA 
        MOV C,A
        CPI 00H
        JNZ BACK 
        HLT


Delay:  MVI B, 03H      
BACK1:  LXI D, 99H
BACK:   DCX D                                       
        MOV A, E
        ORA D                                                
        JNZ BACK                                           
        DCR B                                                
        JNZ BACK1                                       
        RET                                        