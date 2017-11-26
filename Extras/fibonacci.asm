; credits: Rishabh Shairy
; save 0 and 1 first in E100H and E101H respectively

START: MVI C, 09H		; counter (to get 9 fib terms)
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
