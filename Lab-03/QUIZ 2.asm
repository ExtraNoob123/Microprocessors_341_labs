


 .MODEL SMALL
 
.STACK 100H

.DATA
;a db 1,2,3,4,5
;b db 5 dup(?) 
S1 DB "Please enter a HEX number betwen A to F.$" 
S2 DB "The result is :$"
.CODE

MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX

  
; enter your code here 
;FOR 2
LEA DX, S1
MOV AH, 09H
INT 21H            
            
           
 
MOV AH, 01H;INPUT
INT 21H
SUB AL, 30H 
MOV BL, AL
INT 21H
 

MOV DL, 0DH  ;NEWL
MOV AH, 02H 
INT 21H
       
MOV DL, 0AH ;CRET
MOV AH, 02H
INT 21H     

MOV CL, AL
SUB CL, 9H  
                   


LEA DX, S2;PROMPT3
MOV AH, 09H
INT 21H            
       

MOV DL, 01H  ; OUTPUT
ADD DL, 30H
MOV AH, 02H
INT 21H 

MOV DL, CL  ; OUTPUT
ADD DL, 30H
MOV AH, 02H
INT 21H 
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN







