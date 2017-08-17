; Display the roll numbers of all three group members on
; the display using both address and data field

; For ALS kit
; --------------

MVI A, 01H
STA FFF7H
MVI A, 02H
STA FFF8H
MVI A, 03H
STA FFF9H
CALL UPDAD
CALL UPDDT
HLT

; For DYNA kit
; ---------------

LXI H 0102
CALL MODIAD
MVI A, 03
CALL MODIDT
HLT

; OUTPUT = 010203