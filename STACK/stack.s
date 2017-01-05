.text

.global _start

				@ sp == STACK POINTER
				@ ! == RESET REGISTER
_start:
	MOV R1, #1
	MOV R2, #2

	STR R1, [sp, #-4]! 	@ LOAD R1 (#1)
				@ POINT FOUR BITS DOWN 
	STR R2, [sp, #-4]! 	@ LOAD R2 (#2)
				@ POINT FOUR BITS DOWN

	LDR R0, [sp], #+4 	@ LOAD R2's VALUE (#2) 
				@ POINT FOUR BITS UP
	LDR R0, [sp], #+4 	@ LOAD R1's VALUE (#1)
				@ POINT FOUR BITS UP

end:
	MOV R7, #1
	SWI 0			@ `./stack.run ; echo $?` == 1
	
	
