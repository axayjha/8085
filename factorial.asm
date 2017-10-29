	   LXI H,E200
	   MOV C,M
	   MOV E,M
	   DCR E

LOOP1:	   INX H
	   DCR C
	   MOV M,C
	   JNZ LOOP1
	   LXI H,E200

LOOP2:	   MOV A,M
	   INX H
	   MOV B,M
	   MOV C,A
	   MVI A,00

LOOP:	   ADD B
	   DCR C
	   JNZ LOOP
	   MOV M,A
	   DCR E
	   JNZ LOOP2
	   STA E300
	   HLT
