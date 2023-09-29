.MODEL SMALL
 
.STACK 100H

.DATA
s1 dw "120"
;b dw 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
MOV AH, 9
INT 21H



;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
