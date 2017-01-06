.text

.global _start

_start:
	MOV R4, #1
	MOV R5, #2

	STMDB SP!, {R4, R5} 	@ STORE MULTIPLE & DECREMENT BEFORE (STMDB)
				@ R4 & R5 ARE STORED & RESET TO #0
	MOV R4, #3		
	MOV R5, #4
	ADD R0, R4, #0		@ 3 + 0 = 3
	ADD R0, R0, R5		@ 3 + 4 = 7 = R0

	LDMIA SP!, {R4, R5}	@ LOAD MULTIPLE & INCREMENT AFTER
				@ R4 = #1 & R5 = #2 (SEE ABOVE)
	ADD R0, R0, R4  	@ 7 + 1 = 8
	ADD R0, R0, R5		@ 8 + 2 = 10

end:
	MOV R7, #1
	SWI 0 
