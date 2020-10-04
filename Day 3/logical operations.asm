MVI A,9EH /*Moves data 9E in hexadecimal (9EH) to the accumulator*/
ANI 05H /*Perform logical operation AND with immediate data and the data loaded in accumulator*/
STA 2500H /*Stores the result of the logical operation(stored in accumulator)to the memory location whose address is 2500H*/
MVI A,9EH /*Moves data 9E in hexadecimal (9EH) to the accumulator*/
ORI 07H /*Perform logical operation OR with immediate data and the data loaded in accumulator*/
STA 2501H /*Stores the result of the logical operation(stored in accumulator)to the memory location whose address is 25001H*/
MVI A,9EH /*Moves data 9E in hexadecimal (9EH) to the accumulator*/
XRI 09H /*Perform logical operation EX-OR with immediate data and the data loaded in accumulator*/
STA 2502H /*Stores the result of the logical operation(stored in accumulator)to the memory location whose address is 2502H*/
MVI A,9EH /*Moves data 9E in hexadecimal (9EH) to the accumulator*/
CMA /*Perform logical operation NOT(Complement) with immediate data and the data loaded in accumulator*/
STA 2503H /*Stores the result of the logical operation(stored in accumulator)to the memory location whose address is 2503H*/
HLT /*End*/
