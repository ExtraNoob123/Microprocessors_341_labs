.MODEL SMALL

.STACK 100H

.DATA 
s1 db "Number 1 : $"    
s2 db "Number 2 : $"    
r1 db "Result : $"

.CODE
MAIN PROC
    
;initialize DS

MOV AX,DATA
MOV DS,AX

;enter your code here  

LEA DX, s1
MOV AH, 09H
INT 21H

MOV AH, 1 ; 2
INT 21H
MOV BL,AL
MOV BH, 30H  
NEG BH
ADD BL, BH
MOV BH, 0H 

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H

LEA DX, s2
MOV AH, 09H
INT 21H

MOV AH, 1 ; 3
INT 21H  
MOV CL, AL
MOV CH, 30H  
NEG CH
ADD CL, CH
MOV CH, 0H

MOV AX, CX

MUL BL 

MOV BX, AX
ADD BX, 30H

 
MOV AH, 2
MOV DL, 0DH 
INT 21H
MOV DL, 0AH
INT 21H

LEA DX, r1
MOV AH, 09H
INT 21H

MOV AH, 2
MOV DL, BL
INT 21H





;exit to DOS

MAIN ENDP
    END MAIN


