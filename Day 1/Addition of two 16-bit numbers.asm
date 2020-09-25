LHLD 8000h     ; loads first number directly from 8001-8000 into H-L reg. pair
MVI C 00h      ; initializes value of C reg. as 00h
MOV E L        ; value of L is moved to E
MOV D H        ; value of H is moved to D
LHLD 8002h     ; loads second number directly from 8003-8002 into H-L reg. pair
DAD D          ; H <- D+H and L <- E+L
JNC 9          ; jumps to line 9 if no carry is generated
INR C          ; increments value of C on carry
9: SHLD 9000h  ; stores addition result from H-L to 9001-9000
MOV A C        ; moves value of register C to Accumulator
STA 9002h      ; stores carry value of result from accumulator to 9002
HLT            ; end of program
