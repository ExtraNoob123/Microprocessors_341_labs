.MODEL SMALL
 
.STACK 100H

.DATA
arr1 dw 1, 2, 3, 4, 5 
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

PUSH arr1[SI]
ADD SI, 2

LOOP START 

MOV CX, 5
NEW_START:
POP DX
ADD DX,30H
MOV AH, 2
INT 21H 
LOOP NEW_START



;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

