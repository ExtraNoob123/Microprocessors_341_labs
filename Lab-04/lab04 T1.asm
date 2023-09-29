.MODEL SMALL

.STACK 100H

.DATA

.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here
MOV CX, 80
MOV DL, '*'
MOV AH, 2
START:
INT 21H
LOOP START






;exit to DOS


MAIN ENDP
    END MAIN


