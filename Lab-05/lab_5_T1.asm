.MODEL SMALL
 
.STACK 100H

.DATA
arr db 1,3,5
;b db 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
MOV CX, 3
MOV AH, 2  
MOV SI, 0

start:
ADD DL, arr[SI]

ADD SI, 1
LOOP START
ADD DL, 30H
INT 21H