.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AL, 03H
MOV BL, 04H

CMP AL, BL
JL newLable         

MOV DL, BL
MOV AH, 2
INT 21H 
JMP EXIT

newLable:  


MOV DL, AL
MOV AH, 2
INT 21H
       
EXIT:
MOV AX, 4c00h
int 21h

;exit to DOS

MAIN ENDP
    END MAIN