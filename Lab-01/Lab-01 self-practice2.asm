.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;MOV AX, 5
;MOV BL, 2

;MUL BL ; Byte Multiplication ; AX = result

;DIV BL  ; Byte Division ; AL = result, AH = remainder    

;MOV AX, 9
;MOV BX, 2

;MUL BX ; Word Multiplication ; DX:AX = upper:lower result ; TASK-07 P-1  

;DIV BX  ; Word Division ; AX = result, DX = remainder ; TASK-07 P-2  

;MOV AX, 8
;MOV CX, 2
;DIV CX 
;MOV BX, 3
;MUL BX ; TASK-07, P-3  

;MOV AX, 236D

;exit to DOS                
                     

MAIN ENDP
    END MAIN