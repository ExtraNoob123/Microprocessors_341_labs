.MODEL SMALL

.STACK 100H

.DATA

.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here


REPEAT:

MOV AH, 1 

INT 21H 

MOV AH, 2

MOV DL, AL 

INT 21H 

CMP AL, ' '
JNE REPEAT  

JE EXIT
EXIT:
MOV AX, 4C00H
INT 21H





;exit to DOS


MAIN ENDP
    END MAIN


