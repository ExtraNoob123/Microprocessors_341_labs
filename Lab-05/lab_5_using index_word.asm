.MODEL SMALL
 
.STACK 100H

.DATA
arr dw 1,2,3,4,5
;b db 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
MOV CX, 5
MOV AH, 2  
MOV SI, 0

start:
MOV DX, arr[SI]
ADD DX, 30H
INT 21H
ADD SI, 2
LOOP START




 

;exit to DOS
               
MOV AX,4C00H
;INT 21H

MAIN ENDP
    END MAIN
