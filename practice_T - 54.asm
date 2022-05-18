DSEG    SEGMENT 'DATA' 
  
      VALUE DB 00000001B,00100001B,01100001B,01100101B,01101101B
      VALUE1 DB 00100000B,01100000B,01100010B,01100110B
      
      PORTADD DW 2030H,2030H,2030H,2030H,2030H
      PORTADD2 DW 2031H,2031H,2031H,2031H
       
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
 	       
MOV BX, 0      
     MAINLOOP:
       MOV CX, 9D
       XOR SI, SI
       XOR DI, DI
        
       LOOP1:
            MOV DX, PORTADD[SI]
            MOV AL, VALUE[DI]
            OUT DX, AL
            
            ADD SI,2
            INC DI
            
            MOV DX, CX
            MOV CX, 0AH
            L2: LOOP L2
            MOV CX, DX 
      
       LOOP LOOP1 


MOV DX, 2030H       
MOV CX, 2D 
MOV AL, 00000000B
CLEAR: 
    OUT DX, AL
    INC DX
    LOOP CLEAR    
       

INC BX
CMP BX, 5
JB MAINLOOP       


RET
START ENDP
CSEG ENDS 
END START

 	