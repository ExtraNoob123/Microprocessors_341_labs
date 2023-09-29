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
MOV BX, 3

MUL BX



 

;exit to DOS
               

MAIN ENDP
    END MAIN




