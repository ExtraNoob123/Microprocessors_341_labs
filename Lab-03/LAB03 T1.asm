.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AX, 2
NEG AX

 CMP AX, 0H
JL newLable         


newLable:  

MOV AX, 5
MOV AH, 2
MOV BL, AL
MOV BH, 30H
ADD BL, BH
MOV DL, BL
INT 21H
       
EXIT:
MOV AX, 4c00h
int 21h

;exit to DOS

MAIN ENDP
    END MAIN