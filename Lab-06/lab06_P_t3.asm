.MODEL SMALL
 
.STACK 100H

.DATA
s1 dw "HELLO$"
;b dw 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
MOV CX, 5 

MOV SI, 0

START:

PUSH s1[SI]
ADD SI, 1 

LOOP START




;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

