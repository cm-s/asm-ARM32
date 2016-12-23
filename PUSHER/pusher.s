.text

.global _start

_start:
	MOV R4, #1
	MOV R5, #2

	STMDB SP!, {R4, R5} 	@ PUSHING & RESETTING
	MOV R4, #3 		@ MOVING 3 INTO EMPTY R4
	MOV R5, #4 		@ MOVING 4 INTO EMPTY R5
	ADD R0, R4, #0
	ADD R0, R0, R5 		@ R0 == 7

	LDMIA SP!, {R4, R5} 	@ UNOADING INTO R4 & R5
	ADD R0, R0, R4
	ADD R0, R0, R5 		@ R0 == 10

end:
	MOV R7, #1
	SWI 0
