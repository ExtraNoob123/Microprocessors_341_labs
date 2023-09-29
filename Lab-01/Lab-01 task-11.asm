.MODEL SMALL
 
.STACK 100H

.DATA

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV BH, 1
MOV BL, 2
MOV CH, 3 
MOV CL, 5

;ADD BL, BH 
;SUB CH, BH  

;SUB AX, AX
;ADD AL, CH

;DIV CL 



;exit to DOS                
                     

MAIN ENDP
    END MAIN
