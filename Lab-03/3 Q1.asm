.MODEL SMALL
 
.STACK 100H

.DATA 
s1 db "Enter a number: $"  
s2 db " even$"
s3 db " odd$"

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

LEA DX, s1 
MOV AH, 9
INT 21H

MOV AH, 1 
INT 21H 

MOV BL, 2 
DIV BL
   
CMP AH, 0h
JE newLable 

MOV AH, 2
MOV DL, 0AH 
INT 21H
MOV DL, 0DH
INT 21H
LEA DX, s3
MOV AH, 9
INT 21H
JMP EXIT

newLable:
MOV AH, 2
MOV DL, 0AH 
INT 21H
MOV DL, 0DH
INT 21H
LEA DX, s2 
MOV AH, 9 
INT 21H





;exit to DOS 
EXIT:
MOV AX, 4C00H
INT 21H

MAIN ENDP
    END MAIN



