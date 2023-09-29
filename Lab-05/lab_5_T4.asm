.MODEL SMALL
 
.STACK 100H

.DATA
arr dw 3,4,6,8,7
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
MOV AX, arr[SI]
MOV BL, 3
DIV BL 
CMP AH, 0H

ADD DL, 30H 

ADD SI, 1
LOOP START
