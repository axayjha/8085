# Count the number of negative numbers in a 16 byte data block starting from E100 and store the result in E200
		
		LXI H, E100H	# Loading the starting address of data block
		MVI C, 10H		# loop counter = 16
		MVI D, 00H		# result = 0
LOOP:	MOV A, M        # moving data from memory to accumulator
		RLC				# shifting left, so that MSB goes to Cy
		JNC SKIP 		# if Cy is 0, i.e, MSB was 0, means number is positive. So, skip incrementing result
						# could have also done just JP SKIP instead of RLC and JNC SKIP

		INR D 			# increment result value
SKIP:	INX H   		# increment memory address
		DCR C 			# decrement counter
		JNZ LOOP 		# if counter != 0, loop back
		MOV A, D  		# move result to A
		STA E200		# store result in E200		
