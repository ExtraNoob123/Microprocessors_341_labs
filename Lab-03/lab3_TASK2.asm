
.MODEL SMALL
 
.STACK 100H

.DATA
s1 db "Give a Number:$"

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here



MOV AL,06h
MOV BL,04h

CMP AL,BL
JL newlabel

MOV DL,BL
MOV AH, 2
INT 21h
JMP EXIT


newlabel:
MOV DL, AL
MOV AH,2
INT 21h


 
EXIT:
MOV AX, 4C00h
INT 21h

;exit to DOS

MAIN ENDP
    END MAIN





