
.MODEL SMALL
 
.STACK 100H

.DATA
s1 db "Enter a number:$"
s2 db "Even$"
s3 db "Odd$"

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

LEA DX, s1
MOV AH,09h
INT 21h

MOV AH,1
INT 21h 



MOV BL,0h
MOV CL,2
DIV CL

CMP AH,BL
JE newlabel

MOV DL,0Ah
MOV AH,2
INT 21h

MOV DL,0Dh
MOV AH,2
INT 21h
LEA DX, s3
MOV AH,09h
INT 21h
JMP EXIT


newlabel:
MOV DL,0Ah
MOV AH,2
INT 21h

MOV DL,0Dh
MOV AH,2
INT 21h
LEA DX, s2
MOV AH,09h
INT 21h









 
EXIT:
MOV AX, 4C00h
INT 21h

;exit to DOS

MAIN ENDP
    END MAIN





