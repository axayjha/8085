	   MVI C,01
	   MVI E,01
	   LDA E100

LABEL: SUB C
	   JZ LABEL1
	   INR C
	   INR C
	   INR E
	   JMP LABEL

LABEL1:MOV A,E
	   STA E101
	   RST 1
