
		MVI A, 0E 	
		SIM
		CALL RDKBD  	; Take first input

		RLC
		RLC
		RLC
		RLC			
		ANI F0H	
		MOV B, A 		; Shift left 4 postions and store in B

		MVI A, 0E
		SIM
		CALL RDKBD		; Take second input

		    	
		ADD B 			; Pack two numbers

		CALL MODIDT     ; Display
		CALL DELAY
		RST 1

DELAY:  LXI H, FFFFH
BACK:   DCX H 
        MOV A, L 
        ORA H 
        JNZ BACK 
        RET    
