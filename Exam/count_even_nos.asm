; Count the number of even numbers in a 16 byte data block starting from E100 and store the result in E200
		
		LXI H, E100H	; Loading the starting address of data block
		MVI C, 10H		; loop counter = 16
		MVI D, 00H		; result = 0
LOOP:	MOV A, M        ; moving data from memory to accumulator
		RRC				; shifting left, so that LSB goes to Cy
		JC SKIP 		; if Cy is 1, i.e, LSB was 1, means number is odd. So, skip incrementing result

		INR D 			; increment result value
SKIP:	INX H   		; increment memory address
		DCR C 			; decrement counter
		JNZ LOOP 		; if counter != 0, loop back
		MOV A, D  		; move result to A
		STA E200		; store result in E200		
