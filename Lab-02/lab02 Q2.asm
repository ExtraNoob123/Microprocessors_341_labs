.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AH, 1
INT 21H
MOV BL, AL

MOV AH, 1
INT 21H
MOV DL, AL  

;MOV AX, 5
;MOV BL, 2 
MOV AX, BX
MOV BL, DL
DIV BX  

MOV AH, 9 
;MOV ODH
INT 21H 
;MOV OAH 
 

  





 

;exit to DOS
               

MAIN ENDP
    END MAIN




