.MODEL SMALL

.STACK 100H

.DATA

.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here
MOV CX, 4
MOV DL, 30h
MOV AH, 2
START:

INT 21H
add dl, 3
LOOP START






;exit to DOS


MAIN ENDP
    END MAIN


