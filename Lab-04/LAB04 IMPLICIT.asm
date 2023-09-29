.MODEL SMALL

.STACK 100H

.DATA

.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here
MOV CX, 5; the bound will be in cx. (the number of times the loop will run)
MOV DL, 30H
MOV AH, 2
START:
INT 21H 
INC DL
LOOP START





;exit to DOS


MAIN ENDP
    END MAIN


