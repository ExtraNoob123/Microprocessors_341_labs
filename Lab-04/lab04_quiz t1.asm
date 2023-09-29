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

LEA DX, s1
MOV AH, 9
INT 21H

MOV CX, 3 
START:
MOV AH, 1
INT 21H
SUB AL, 30H
ADD DL, AL 
LOOP START 

ADD DL, 30H
MOV BL, DL


MOV AH, 2
MOV DL, 0DH
INT 21H 
MOV DL, 0AH
INT 21H
LEA DX, s2
MOV AH, 9
INT 21H 

MOV DL, BL
MOV AH, 2
INT 21H


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
