.data

.balign 4			@ ALIGN 4 BYTES
	question: .asciz "What is your favorite number?"
				@ asciz: ascii with zero bit at end
.balign 4			@ ALIGN 4 BYTES
	message: .asciz "%d is a great number\n"
				@ %d representing decimal data
.balign 4			@ ALIGN 4 BYTES
	pattern: .asciz "%d"
				@ DEFINE PATTERN %d
.balign 4			@ ALIGN 4 BYTES
	number: .word 0
				@ NUMBER BEING STORED AT %d
.balign 4			@ ALIGN 4 BYTES
	lr_bu: .word 0	
				@ DEFINE LINK REGISTER
.text

.global main 			@ DEFINE _start AS MAIN FOR LIBC
.func main			@ DEFINE MAIN AS FUNCTION FOR LIBC

main:				@ BEGIN PROGRAM
	LDR R1, addr_lr_bu	@ LOAD LINK REGISTER
	STR lr, [R1]		@ 

	LDR R0, addr_question
	BL printf

	LDR R0, addr_pattern
	LDR R1, addr_number
	BL scanf

	LDR R0, addr_message
	LDR R1, addr_number
	LDR R1, [R1]
	BL printf

	LDR lr, addr_lr_bu
	LDR lr, [lr]
	BX lr

				@ DEFINING ADDRESSES FOR ALL .data
addr_question: .word question
addr_message: .word message
addr_pattern: .word pattern
addr_number: .word number
addr_lr_bu: .word lr_bu
				@ DEFINING LIBC FUNCTIONS
.global printf
.global scanf 
