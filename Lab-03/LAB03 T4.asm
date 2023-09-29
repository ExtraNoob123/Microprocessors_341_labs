.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AX, 1

CMP AX, 1 | 3





EXIT:
MOV AX, 4c00h
int 21h

;exit to DOS

MAIN ENDP
    END MAIN


