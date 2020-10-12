; Program to find the largest number in an array

		    LXI H, 3000H  ; Load address in HL
    		MOV C, M      ; Store counter in regC
		    INX H 		    ; Increment pointer
		    MOV A, M      ; Load first number in Acc
		    DCR C         ; Decrement counter
LOOP: 	INX H  		    ; Increment pointer
		    CMP M         ; Compare number with Acc
		    JNC SKIP	    ; If Acc is greater, move on
		    MOV A, M      ; Else number pointed by current ptr is larger
SKIP:	  DCR C         ; Decrement counter
		    JNZ LOOP      ; loop back if counter not zero
		    STA 3A00H     ; Store result
		    HLT 
