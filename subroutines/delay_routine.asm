// Program of delay Routine in 8085 using 16bit register pair and one 8 bit register
// MAX Delay can be produced of 133 sec
// edit count1 and count2 values and you are good to go

DELAY:	  MVI D, count2
	

LOOP2:	   LXI B, count1
	   MOV A,C
	   ORA B

LOOP1:	   DCX B
	   MOV A,C
	   ORA B
	   JNZ LOOP1
	   DCR D
	   JNZ LOOP2
	   RET
