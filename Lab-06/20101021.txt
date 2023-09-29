.MODEL SMALL
 
.STACK 100H

.DATA

;b dw 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
MOV AX, 12
;MOV CX, AX
PUSH AX; 12
MOV BL, 2
DIV BL 
PUSH AX; 6
MOV DL, 3
MOV AX, 12 
DIV DL
PUSH AX; 4 
PUSH DX; 3
PUSH BX; 2
SUB BL,1
PUSH BX; 1




;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
