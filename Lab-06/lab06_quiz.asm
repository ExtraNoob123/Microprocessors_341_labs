
.MODEL SMALL

.STACK 100H

.DATA

arr db ?
.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here

MOV AX, 12 
MOV BL, 0 
MOV CX, 3 
MOV SI, 0


START:

ADD BL, 1
MOV arr[SI], BL
DIV BL 
PUSH AX; 12, 6, 4
MOV AX, 12
ADD SI, 1
LOOP START

MOV CX, 3
NEW_START: 
MOV BL, arr[SI-1]
PUSH BX; 3, 2, 1  
SUB SI, 1
LOOP NEW_START




;exit to DOS


MAIN ENDP
    END MAIN


