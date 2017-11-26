; To display accumulators content in data field of display

; For ALS kit
; Address for UPDDT is 06D6H
; --------------

MVI A, 05H
STA FFF9H
CALL UPDDT
HLT

; For DYNA kit
; Address for MODIDT is 036EH
; ---------------

MVI A, 05H
CALL MODIDT
HLT
