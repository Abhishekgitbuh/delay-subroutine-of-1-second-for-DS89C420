//XTAL=22MHZ
//DS89C420
ORG 00H
MOV A, #55H
AGAIN: MOV P1, A
ACALL DELAY
CPL A
SJMP AGAIN
;_________delay subroutine
           ORG 30H
	   DELAY:
	   MOV R2, #86
	   HERE1: MOV R1, #255
	   HERE2: MOV R0, #255
	   HERE3: DJNZ R0, HERE3
	   DJNZ R1, HERE2
	   DJNZ R2, HERE1
	   RET
	   END
