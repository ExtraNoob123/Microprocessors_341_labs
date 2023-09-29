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
;MOV BX, AX ; TASK-01

;MOV CX, 9 ; SWAP BX & CX, AX IS TEMP
;MOV BX, CX
;MOV CX, AX ; TASK-02

;ADD AX, CX ; 5+5=10 -> 0A TASK-03

;SUB BX, CX ; 09-05 = 04

;SUB CX, BX ; 5-09 = -4    

;ADD BX, CX
;SUB CX, BX
;NEG CX
;SUB BX, CX ; TASK-05

;MOV AX, 9
;MOV BX, 5
;SUB BX, AX
;MOV AX, BX ; TASK-06 P-1

;MOV AX, 5
;INC AX  
;NEG AX ; TASK-06 P-2
 
;MOV AX, 5
;MOV BX, 4
;INC BX
;ADD AX, BX 
;MOV DX,AX ; TASK-06 P-3 

;MOV AX, 5
;MOV BX, 6
;DEC AX
;SUB BX, AX 
;SUB AX, AX  
;ADD AX, BX ; TASK-06 P-4

;exit to DOS
               

MAIN ENDP
    END MAIN
