.MODEL SMALL
 
.STACK 100H

.DATA
arr db 7,6,5,4,3
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
MOV DL, arr[SI]
ADD DL, 30H
INT 21H
ADD SI, 2
LOOP START
