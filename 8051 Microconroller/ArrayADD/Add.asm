ORG 300H
DB 1,4,5,6,7
ORG 0000H       
MOV DPTR, #0300H
MOV R7, #05H  
MOV A, #00H
MOV R0, #00H    
MOV R6,#00H      

LOOP:
MOV A, R0       
MOVC A,@A+DPTR  
ADD A, R6       
MOV R6,A        
INC R0
MOV P3,R6
DJNZ R7, LOOP


END