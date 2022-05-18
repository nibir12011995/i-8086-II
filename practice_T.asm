DSEG    SEGMENT 'DATA' 
  
      VALUE DB 
      VALUE1 DB
      
      PORTADD DW 
      PORTADD2 DW 
       
DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100h    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'

START   PROC    FAR
; Store return address to OS:
 	PUSH    DS
 	MOV     AX, 0
 	PUSH    AX
; set segment registers:
	MOV     AX, DSEG
 	MOV     DS, AX
 	MOV     ES, AX
 	       
     
     MAINLOOP:
     
        
        LOOP1:
            
            
       LOOP LOOP1 
       


       
       


RET
START ENDP
CSEG ENDS 
END START

 	