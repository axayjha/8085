			LXI H, E100		; Starting address of the array
			MVI C, 10		; Counter=16
			MOV D, M		; The smallest number
LOOP:			MOV A, M 		; Load the number in A
			CMP D 			; Compare the current smallest with A
			JNC SKIP 		; If A>D: skip setting A=D
			MOV D, A 		; Set A=D, the current smallest
SKIP:			INX H			; Increment address
			DCR C 			; Decrement counter
			JNZ LOOP	  	; If C!=0, loop back	
			MOV A, D 		; Store result
			STA E200
			RST 1	
