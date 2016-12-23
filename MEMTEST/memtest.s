.text

.global _start

_start:
			@ R0 & R7 RESERVED
	MOV R1, #1
	MOV R2, #1
	MOV R3, #1
	MOV R4, #1
	MOV R5, #1
	MOV R6, #1
	MOV R7, #1
	MOV R8, #1
	MOV R9, #1
	MOV R10, #1
	MOV R11, #1
	MOV R12, #1
			@ R13 NAMED 

	MOV R7, #1
	SWI 0
