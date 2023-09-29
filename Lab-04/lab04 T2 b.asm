.MODEL SMALL

.STACK 100H

.DATA

.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here
MOV CX, 18
MOV DL, 1  
MOV BL, DL
START:

SUB DL, 5
sub BL, DL

LOOP START 



MOV AX, BX






;exit to DOS


MAIN ENDP
    END MAIN


