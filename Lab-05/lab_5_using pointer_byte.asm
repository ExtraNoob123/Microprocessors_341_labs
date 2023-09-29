.MODEL SMALL
 
.STACK 100H

.DATA
arr db 1,2,3,4,5
;b db 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
MOV CX, 5
MOV AH, 2  
LEA SI, arr

start:
MOV DL, [SI]
ADD DL, 30H
INT 21H
ADD SI, 1
LOOP START




 

;exit to DOS
               
MOV AX,4C00H
;INT 21H

MAIN ENDP
    END MAIN
