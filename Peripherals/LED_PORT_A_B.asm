; Ligh the LEDs of Port A and B, starting
; from the extreme ends, meeting at the middle
; and then moving away together

		MVI  A, 80H
		OUT  CSR
		MVI  A, 01H
		STA  E100H
		MVI  A, 80H
		STA  E101H

LOOP:	LDA  E100H
		OUT  30H
		RLC
		STA  E100H		
		LDA  E101H
		OUT  31H
		RRC
		STA  E101H
		CALL DELAY
		LDA  E101H
		CPI  01H
		JZ   LOOP1
		JMP  LOOP
		
LOOP1:	LDA  E100H
		OUT  30H
		RRC
		STA  E100H
		LDA  E101H
		OUT  31H
		RLC
		STA  E101H
		CALL DELAY
		LDA  E101H
		CPI  80H
		JZ   LOOP
		JMP  LOOP1


DELAY:	LXI  H, FFFFH
BACK:	DCX  H
		MOV  A, L
		ORA  H
		JNZ  BACK
		RET
