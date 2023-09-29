
.MODEL SMALL
 
.STACK 100H

.DATA

MAIN PROC

;iniitialize DS
MOV AX, 5
MOV BX, AX  ; task-01

MOV CX, 7
MOV BX, CX  
MOV CX, AX  ; task-02

ADD AX, CX  ; task-03

SUB BX, CX  ; task-04   

ADD BX, CX 
SUB CX, BX 
NEG CX
SUB BX, CX  ; task-05

INC AL
NEG AL ; task-06 part-2

INC CX
ADD BX, CX
MOV DX, BX ; task-06 part-3   

DEC BX
SUB CX, BX
MOV BX, CX ; task-06 part-4

MOV AL, 5
MOV BL, 6

MUL BL      ; task-07 part-1

MOV AX, 800
MOV BX, 500

MUL BX

MOV AX, 61
MOV BL, 6

DIV BL      ; task-07 part-2

MAIN ENDP
    END MAIN




