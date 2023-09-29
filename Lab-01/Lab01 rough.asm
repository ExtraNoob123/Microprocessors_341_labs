.MODEL SMALL
 
.STACK 100H

.DATA
.CODE
MAIN PROC

;iniitialize DS

MOV AL, 9
MOV BH, 5
MOV CL, 9
MOV DL, 5

ADD BH, CL
SUB AL, DL  

INC AL
DEC AL
NEG AX
 
; enter your code here  





 



MAIN ENDP
    END MAIN



