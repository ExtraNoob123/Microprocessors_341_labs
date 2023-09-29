.MODEL SMALL
 
.STACK 100H

.DATA
arr dw 1,2,3,4,5,6,7,8,9,10
;b dw 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
MOV SI, 0
PUSH arr[SI]


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

