INIT:	XOR R0 R0 R0
	XOR R1 R1 R1
	ADDI R3 R0 0xA000	
	ADDI R4 R0 0xB000
LOOP:	LW R2 0(R3)
	SW R2 0(R4)
	ADDI R3 R3 4	
	ADDI R4 R4 4	
	ADDI R1 R1 1	
	SUBI R5 R1 10
	BNEZ R5 LOOP	
SORT:	XOR R1 R1 R1
	ADDI R4 R0 0xB000
OLOOP:	LW R3 0(R4)
	ADDI R2 R1 1
	ADDI R6 R4 4
ILOOP:	LW R5 0(R6)
	SUB R8 R3 R5
	BLEZ R8 END_IF
	SW R3 0(R6)
	SW R5 0(R4)
	ADD  R3 R0 R5 
END_IF:	ADDI R6 R6 4
	ADDI R2 R2 1
	SUBI R9 R2 10
	BNEZ R9 ILOOP
	ADDI R4 R4 4
	ADDI R1 R1 1
	SUBI R10 R1 9
	BNEZ R10 OLOOP
EOP	
