

.MODEL SMALL
 
.STACK 100H

.DATA
 
S1 DB "Please enter a number.$" 
S2 DB "The result is :$" 
S3 DB "The result FIRST AND SECOND NUMBER is EQUAL $" 
S4 DB "The result FIRST NUMBER is GREATER SECOND NUMBER IS LESSER $"
S5 DB "The result FIRST NUMBER is LESSER SECOND NUMBER IS GREATER$"
.CODE

MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX

;TASK 01  
; enter your code here
LEA DX, S1
MOV AH, 09H
INT 21H            
            
           

;char input
LEA DX, S1    ;PROMPT 1
MOV AH, 09H
INT 21H 
   
; PRINT NEW LINE
MOV DL, 0DH
MOV AH, 02H ; NEWLINE
INT 21H
       
MOV DL, 0AH ;CURSOR SHIFTING
MOV AH, 02H
INT 21H


        
       
MOV AH, 01H;INPUT 1
INT 21H
SUB AL, 30H 
MOV BL, AL
INT 21H    
 
; PRINT NEW LINE
MOV DL, 0DH
MOV AH, 02H ; NEWLINE
INT 21H
       
MOV DL, 0AH ;CURSOR SHIFTING
MOV AH, 02H
INT 21H

 


LEA DX, S1  ;PROMPT 2
MOV AH, 09H
INT 21H      

; PRINT NEW LINE
MOV DL, 0DH
MOV AH, 02H ; NEWLINE
INT 21H
       
MOV DL, 0AH ;CURSOR SHIFTING
MOV AH, 02H
INT 21H


      
      
MOV AH, 01H;INPUT  2
INT 21H
SUB AL, 30H 
MOV CL, AL
INT 21H

LEA DX, S2    ;PROMPT 3
MOV AH, 09H
INT 21H            
      
   
CMP BL, CL
JE IF
JG IFELSE
JL ELSE


IF:

LEA DX, S3    ;OUTPUT 1
MOV AH, 09H
INT 21H  
JMP EXIT
IFELSE:
LEA DX, S4    ;0UTPUT 2
MOV AH, 09H
INT 21H
JMP EXIT        
ELSE:
LEA DX, S5    ;OUTPUT 3
MOV AH, 09H
INT 21H
 JMP EXIT

;exit to DOS
 EXIT:              
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN









