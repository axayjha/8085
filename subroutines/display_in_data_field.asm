; To display accumulators content in data field of display

; For ALS kit
; --------------

MVI A, 05H
STA FFF9H
CALL UPDDT
HLT

; For DYNA kit
; ---------------

MVI A, 05H
CALL MODIDT
HLT
