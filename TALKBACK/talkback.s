.text

.global _start

_start: 
	MOV R7, #4
	MOV R0, #1
	MOV R2, #10
	LDR R1, =TEXT @ LOAD TEXT TO R1 (address)
	SWI 0
	
	MOV R7, #3
	MOV R0, #0
	MOV R2, #12
	LDR R1, =MESSAGE
	SWI 0

_write:
	MOV R7, #4
	MOV R0, #1
	MOV R2, #12
	LDR R1, =MESSAGE
	SWI 0 
	
end:
	MOV R7, #1
	SWI 0

.data
	TEXT: .ascii "Talk to me" 
	MESSAGE: .ascii " "
