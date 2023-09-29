.MODEL SMALL

.STACK 100H

.DATA

.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here 
; explicit

MOV AH, 2
MOV DL, 30H ; 0

START:

CMP DL, 35H ; 5

JGE END
INT 21H
INC DL
JMP START

END:
MOV AX, 4C00H
INT 21H






;exit to DOS


MAIN ENDP
    END MAIN


