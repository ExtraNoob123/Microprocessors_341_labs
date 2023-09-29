.MODEL SMALL

.STACK 100H

.DATA 
;s DB "a$" 
;s1 DB "hello$"

.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here


MOV AH, 2 
MOV DL, '?'
INT 21H 

MOV AH, 1
INT 21H 

MOV BL, AL

MOV AH, 2
MOV DL, 0DH
INT 21H


MOV DL, 0AH
INT 21H

MOV DL, BL
INT 21H

;exit to DOS



MAIN ENDP
    END MAIN


