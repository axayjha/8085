; To read input from user

; For both kits
; --------------

MVI A, 0EH
SIM
CALL RDKBD
RST 1

