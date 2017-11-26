START: MVI C, 09H
	   LXI H, E100	

LOOP:  MOV A,M
	   INX H
	   MOV B,M
	   INX H
	   ADD B
	   DAA
	   MOV M,A
	   DCX H
	   DCR C
	   JNZ LOOP
	   RST 1