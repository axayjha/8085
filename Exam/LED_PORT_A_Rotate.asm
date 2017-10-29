; lights port A LEDs, one by one from right to left and back to right end and so on 	   
	   
	   MVI A,80 
	   OUT 33 		; OUT CSR
	   MVI A,01		; to light up just one right-most LED (00000001)

MAIN:  
; to go from right to left
	   MVI C,07     ; counter to iterate over n light up remaining 7 LEDs   

LOOP1: OUT 30       ; send data from accumulator to port A
	   RLC			; Shift accumulator data byte left
	   MOV D,A      ; Saving accumulator value as DELAY subroutine destroys data in A
	   CALL DELAY   ; to keep the LED lit for a moment
	   MOV A,D      ; Restoring accumulator value 
	   DCR C        ; decrement counter
	   JNZ LOOP1    ; break loop if counter == 0, else loop back

; to go back right from left end
; similar logic as explained above
	   MVI B,07 

LOOP2: OUT 30
	   RRC
	   MOV D,A
	   CALL DELAY
	   MOV A,D
	   DCR B
	   JNZ LOOP2
; one round done	   
; loop back to main to restart the whole process again	   
	   JMP MAIN


;--------------------------------------------
DELAY: LXI H,FFFF
BACK:  DCX H
	   MOV A,L
	   ORA H
	   JNZ BACK
	   RET
