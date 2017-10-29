# Count the numbers of 1s in a byte of data

        LDA E100H		# Load number
        MVI C, 08H		# loop counter = 8
        MVI D, 00H		# Result = 0

LOOP:   RAL				# Shift left through carry
        JNC SKIP		# Jump on not carry (jump if bit is 0)
        INR D 			# increment result  if bit == 1
SKIP:   DCR C 			# decrement loop counter
        JNZ LOOP		# if counter != 0 : loop back
        MOV A, D  		# move result to A
        STA E200H		# store result
        RST 1                