
.MODEL SMALL
 
.STACK 100H

.DATA


.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AX,5
MOV BX,2

CMP AX,BX
JL newlabel

MOV DL,39h
MOV AH, 2
INT 21h
JMP EXIT


newlabel:
MOV DL, 36h
MOV AH,2
INT 21h


 
EXIT:
MOV AX, 4C00h
INT 21h

;exit to DOS

MAIN ENDP
    END MAIN





