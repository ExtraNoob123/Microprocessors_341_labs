.MODEL SMALL
 
.STACK 100H

.DATA
arr db 3,4,6,8,7
;b db 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
MOV CX, 2
MOV AH, 2  
MOV SI, 1

start:
ADD DL, arr[SI]

ADD SI, 2
LOOP START

INT 21H