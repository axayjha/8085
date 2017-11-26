START:	   MVI C,09	// Counter
	   LXI H,E100	// Memory Pointer

LOOP:	 MOV A,M
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
// To run the Program simply load at memory location E100=01,E101=01
