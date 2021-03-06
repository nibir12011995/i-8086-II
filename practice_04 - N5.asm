DSEG    SEGMENT 'DATA' 
  
      VALUE DB 01000000B,01100000B,01110000B,01111000B,01111100B,011111110B,01111111B,00000010B, 00000100B,00001100B,00011100B, 00100000B,  01000000B,01100000B,01110000B,01111000B,01111100B,011111110B,01111111B
      VALUE1 DB 00000001B,00000001B,00000001B,00000001B,     00000001B,00000011B,00000111B,00001111B,    00001001B,00001001B,00001001B,    00010001B,00110001B,     01001001B,01001001B,01001001B,    00101111B,
      
      PORTADD DW 2000H,2000H,2000H,2000H,2000H,2000H,2000H,  2001H,2002H,2002H,2002H,2003H,   2004H,2004H, 2004H, 2004H, 2004H, 2004H, 2004H 
      PORTADD2 DW 2009H,2008H,2007H,2006H,    2005H,2005H,2005H,2005H,   2006H,2007H,2008H,   2009H,2009H,   2008H,2007H,2006H,   2005H 
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
     
        MOV CX,36D
        XOR SI, SI
        XOR DI, DI
        
        LOOP1:
            MOV DX,PORTADD[SI]
            MOV AL,VALUE[DI]
            OUT DX,AL
            
            ADD SI,2
            INC DI
            
            MOV DX,CX
            MOV CX,0AH
            L01:LOOP L01
            MOV CX,DX
            
       LOOP LOOP1 
       
       
    MOV CX,10D
    MOV DX,2000H
    MOV AL,00000000B
       
CLEAR:
    OUT DX,AL
    INC DX
    LOOP CLEAR

       
RET
START ENDP
CSEG ENDS 
END START

 	