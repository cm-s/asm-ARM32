.text

.global _start

_start:
	MOV R1, #5 	@ 0101
	MOV R2, #9 	@ 1001
			@ COMPS BITS HORIZONTALLY
	AND R0, R1, R2 	@ RESULT: 0001 == #1

	ORR R0, R1, R2 	@ RESULT: 1101 == #13
end:
	MOV R7, #1
	SWI 0	
