LOOP2:			MVI D, 0 		; Boolean flag, D=0    (0:Sorted 1:Not sorted)
			LXI H, E100		; Load starting address	
			MVI C, 0F  		; Loop counter for inner loop, C =16
LOOP:			MOV A, M 		; Load first number to compare
			INX H         		; Increment address and compare the two numbers
			CMP M 			; sets Cy = 1, if A<M
			JNC SKIP 		; if Cy = 0, i.e, A>M (A is the preceding number here)
;swapping-starts:			
			MOV B, M        	; store second number to temp  
			MOV M, A 		; store first number to second numbers address
			DCX H 			; decrement back to first numbers address
			MOV M, B 		; move temp to first numbers address
			INX H 			; increment address to go back to where we were 
			MVI D, 01		; D=01 = not sorted, as we had to swap
;swapping-ends

SKIP:			DCR C  			; decrement counter C
			JNZ LOOP  		; loop back if C!=0
			MOV A, D		; Move flag to A
			RRC				
			JC LOOP2		; loop back if D!=0 ,i.e D!=sorted 	
			RST 1



