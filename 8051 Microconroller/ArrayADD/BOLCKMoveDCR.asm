;ORG 0O00H
MOV DPTR,#0305H
MOV R1,#30H
MOV R2,#05
LOOP :CLR A
	  MOVC A,@A+DPTR
      MOV @R1,A
	  DEC DPTR
	  DEC R1
	  DJNZ R2,LOOP
	  ORG 0305H
	  DB 5,2,7,3,8
END	 
	  