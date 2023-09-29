.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AX, 0
;NEG AX

CMP AX, 0H
JL newLable
JE newLable2         

MOV BX, 1 
MOV AH, 2 
ADD BL, 30H
MOV DL, BL
INT 21H 
JMP EXIT

newLable:  


MOV BX, 2DH
MOV AH, 2
MOV DL, BL
INT 21H
        
MOV BX, 1
;NEG BX 
MOV AH, 2 
ADD BL, 30H
MOV DL, BL
INT 21H
        
newLable2:  


MOV BX, 0 

MOV AH, 2 
ADD BL, 30H
MOV DL, BL
INT 21H
       
EXIT:
MOV AX, 4c00h
int 21h

;exit to DOS

MAIN ENDP
    END MAIN



