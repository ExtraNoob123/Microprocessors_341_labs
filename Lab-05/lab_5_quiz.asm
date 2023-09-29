.MODEL SMALL
 
.STACK 100H

.DATA
arr db 1,2,1,3,4,5
;b db 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  
MOV CX,6

MOV SI, 0
start: 
ADD BH, arr[SI]
ADD SI,1
ADD BL, arr[SI] 
ADD SI, 1
LOOP start
  

MOV AH, 2
SUB BL, BH
MOV DL, BL
ADD DL, 30H
INT 21H 

MAIN ENDP
    END MAIN