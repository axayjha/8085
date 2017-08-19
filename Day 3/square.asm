; WAP to fine the square of a number using table look-up method.
; Table is stored from E100 onwards. Take user input from keypad
; and display result in data field; 
; Assume table is like: E000 = 00, E001= 01, E002 = 04, E003 = 09, E004 = 16 .....

MVI A, 0EH
SIM
CALL RDKBD
MVI H, E1H
MOV L, A 
MOV A, M 
CALL MODIDT 
HLT
