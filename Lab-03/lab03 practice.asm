.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AX, 5
MOV BX, 2

JMP newLable

MOV DL, 39H
MOV AH, 2
INT 21H 

newLable:  

MOV DL, 36H
MOV AH, 2
INT 21H

CMP AX, BX
JL newLable2          

MOV DL, 39H
MOV AH, 2
INT 21H 
JMP EXIT

newLable2:  

MOV DL, 36H
MOV AH, 2
INT 21H
       
EXIT:
MOV AX, 4c00h
int 21h

;exit to DOS

MAIN ENDP
    END MAIN


