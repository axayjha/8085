; To display accumulators content in address field of display

; For ALS kit
; --------------

MVI A, 20H
STA FFF7H
MVI A, 17H
STA FFF8H
CALL UPDAD
HLT

; For DYNA kit
; ---------------

LXI H 2017H
CALL MODIAD
HLT

; OUTPUT = 2017