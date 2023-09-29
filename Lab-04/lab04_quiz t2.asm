.MODEL SMALL

.STACK 100H

.DATA
s1 db "Sample Input: $"
s2 db "Sample Output: $"

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here



MOV CX, 10 
MOV AX, CX
MOV BL, 2
DIV BL

CMP AH,0H
JE NEWlABLE
MOV DL,"-"
MOV AH, 2
INT 21H

JMP EXIT
NEWLABLE:
DEC AX
MOV DL,"+"
MOV AH, 2
INT 21H
LOOP NEWLABLE 
 


EXIT:
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN


