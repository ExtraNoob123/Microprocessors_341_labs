
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



MOV AX,06h
;NEG AX
MOV BL,0h

CMP AL,BL
JL newlabel
JE newlabel2

MOV BX,01h
JMP EXIT


newlabel:
MOV BX,01h
NEG BX
JMP EXIT

newlabel2:
MOV BX,0h
JMP EXIT



 
EXIT:
MOV AX, 4C00h
INT 21h

;exit to DOS

MAIN ENDP
    END MAIN





