; WAP to fine the square of a number using table look-up method.
; Table is stored from E100 onwards. Take user input from keypad
; and display result in data field; 
; Assume table is like: E110 = 00, E111= 01, E112 = 04, E113 = 09, E114 = 16 .....
      
      MVI A, 0EH
LOOP: CALL RDKBD
      LXI H, E110H
      ORA L
      MOV L, A
      MOV A, M
      CALL MODIDT
      JMP LOOP
