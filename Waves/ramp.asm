;Create a sawtooth wave pattern

		MVI A,80
		OUT CSR
		MVI A,00H

LOOP: 	OUT PORT B
		INR A
		JMP LOOP
		
		HLT