.MODEL SMALL
 
.STACK 100H

.DATA
s1  db "Please insert a character: $"
;s1 db "Hello$"
 
.CODE 
MAIN PROC

;iniitialize DS 

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  

;LEA DX, s1
;MOV AH, 09h
;INT 21H

;MOV DL, 04h
;MOV AH, 02h
;INT 21H
  
         
MOV AH, 1 
INT 21H
MOV BL, AL

MOV AH, 1  
MOV DL, 0DH   
;INT 21H    
;MOV DL, 0AH
;INT 21H  
;MOV DL, BL 
;INT 21H

;exit to DOS
              

MAIN ENDP
    END MAIN





