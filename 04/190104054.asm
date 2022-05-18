SSEG SEGMENT STACK 'STACK'
     DW 100 DUP(?)
SSEG ENDS

DSEG SEGMENT 'DATA' 
     COUNT DB 5
DSEG ENDS

CSEG SEGMENT 'CODE'
MAIN PROC FAR

    PUSH DS
    MOV AX, 0
    PUSH AX

    MOV AX, DSEG
    MOV DS, AX
    MOV ES, AX 
    

PRINT:
    MOV DX, 2004H
    MOV AL, 00000001b
	OUT DX, AL
	MOV DX, 2030H  
	MOV AL, 00100000b  
	OUT DX, AL
	
	MOV CX, 0010H
    L1:LOOP L1
    
    
    MOV DX, 2003H	
	MOV AL, 00000001b
	OUT DX, AL  
	MOV DX, 2030H  
	MOV AL, 00110000b  
	OUT DX, AL       
	
	MOV CX, 0010H
    L2:LOOP L2 
	   
	  
    MOV DX, 2002H
    MOV AL, 00000001b
    OUT DX, AL
    MOV DX, 2030H  
	MOV AL, 01110000b  
	OUT DX, AL
    
    MOV CX, 0010H
    L3:LOOP L3 
               
    MOV DX, 2001H
    MOV AL, 00000001b
    OUT DX, AL 
    MOV DX, 2030H  
	MOV AL, 01110010b  
	OUT DX, AL
    
    MOV CX, 0010H
    L4:LOOP L4            
               
    
    MOV DX, 2000H
    MOV AL, 00000001b
    OUT DX, AL  
    MOV DX, 2030H  
	MOV AL, 01110110b ; H 
	OUT DX, AL
	 
	MOV DX, 2070H 
    MOV AL, 00000010b  
    OUT DX, AL    ;LED Y
    
    MOV CX, 0050H
    L5:LOOP L5 
    
    MOV DX, 2000H
    MOV AL, 00000011b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00100000b  
	OUT DX, AL
    
    MOV CX, 0010H
    L6:LOOP L6 
    
    
    MOV DX, 2000H
    MOV AL, 00000111b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110000b  
	OUT DX, AL
    MOV CX, 0010H
    L7:LOOP L7   
    
    MOV DX, 2000H
    MOV AL, 00001111b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110001b  
	OUT DX, AL
    MOV CX, 0010H
    L8:LOOP L8  
   
    MOV DX, 2000H
    MOV AL, 00011111b
    OUT DX, AL  
    MOV DX, 2031H    
	MOV AL, 01110001b ; F  
	OUT DX, AL
	
    MOV DX, 2070H 
    MOV AL, 00000011b  
    OUT DX, AL    ;LED R1
    
    MOV CX, 0050H
    L9:LOOP L9   
   
    MOV DX, 2000H
    MOV AL, 00111111b
    OUT DX, AL  
    MOV CX, 0010H
    L10:LOOP L10  
   
    MOV DX, 2000H
    MOV AL, 01111111b
    OUT DX, AL  
    MOV CX, 0010H 
    L11:LOOP L11   
   
    MOV DX, 2001H
    MOV AL, 00100001b
    OUT DX, AL  
    MOV CX, 0010H
    L12:LOOP L12  
    
    MOV DX, 2002H
    MOV AL, 00010001b
    OUT DX, AL 
    MOV CX, 0010H
    L13:LOOP L13  
    
    MOV DX, 2003H
    MOV AL, 00001001b
    OUT DX, AL  
    MOV CX, 0010H
    L14:LOOP L14   
    
    MOV DX, 2003H
    MOV AL, 00001101b
    OUT DX, AL  
    MOV CX, 0010H
    L15:LOOP L15
    
    MOV DX, 2004H
    MOV AL, 00000101b
    OUT DX, AL 
    MOV CX, 0060H
    L16:LOOP L16
       
;============removal process======================== 
    
    
    MOV DX, 2004H
    MOV AL, 00000100b
	OUT DX, AL
	MOV DX, 2030H  
	MOV AL,01110010b 
	OUT DX, AL
	
	MOV CX, 0010H
    L01:LOOP L01
    
    
    MOV DX, 2003H	
	MOV AL, 00001100b
	OUT DX, AL  
	MOV DX, 2030H  
	MOV AL, 01110000b 
	OUT DX, AL
	
	MOV CX, 0010H
    L02:LOOP L02 
	   
	  
    MOV DX, 2002H
    MOV AL, 00010000b
    OUT DX, AL
    MOV DX, 2030H  
	MOV AL, 00110000b  
	OUT DX, AL
    
    MOV CX, 0010H
    L03:LOOP L03 
               
    MOV DX, 2001H
    MOV AL, 00100000b
    OUT DX, AL 
    MOV DX, 2030H  
	MOV AL, 00100000b  
	OUT DX, AL
    
    MOV CX, 0010H
    L04:LOOP L04            
               
    
    MOV DX, 2000H
    MOV AL, 01111110b
    OUT DX, AL  
    MOV DX, 2030H  
	MOV AL, 00000000b ; H Removed
	OUT DX, AL  
	
	MOV DX, 2070H 
    MOV AL, 00000001b  
    OUT DX, AL    ;LED Y OFF 
     
    MOV CX, 0060H
    L05:LOOP L05 
    
    MOV DX, 2000H
    MOV AL, 01111100b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110001b  
	OUT DX, AL
    
    MOV CX, 0010H
    L06:LOOP L06 
    
    
    MOV DX, 2000H
    MOV AL, 01111000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00110000b  
	OUT DX, AL
    MOV CX, 0010H
    L07:LOOP L07   
    
    MOV DX, 2000H
    MOV AL, 01110000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00100000b  
	OUT DX, AL
    MOV CX, 0010H
    L08:LOOP L08  
   
    MOV DX, 2000H
    MOV AL, 01100000b
    OUT DX, AL  
    MOV DX, 2031H  
	MOV AL, 00000000b ; F removed    
	OUT DX, AL  
	
    MOV DX, 2070H 
    MOV AL, 00000000b  
    OUT DX, AL    ;LED R1 OFF
    
    MOV CX, 0060H
    L09:LOOP L09   
   
    MOV DX, 2000H
    MOV AL, 01000000b
    OUT DX, AL
    MOV CX, 0010H
    L010:LOOP L010  
   
    MOV DX, 2000H
    MOV AL, 00000000b
    OUT DX, AL 
    MOV CX, 0010H 
    L011:LOOP L011  
    
    MOV DX, 2001H
    MOV AL, 00000000b
    OUT DX, AL 
    MOV CX, 0010H
    L012:LOOP L012  
    
    
    MOV DX, 2002H
    MOV AL, 00000000b 
    OUT DX, AL 
    MOV CX, 0010H
    L013:LOOP L013  
    
   
    MOV DX, 2003H
    MOV AL, 00000100b
    OUT DX, AL  

    MOV CX, 0010H
    L014:LOOP L014  
    
    
    MOV DX, 2003H
    MOV AL, 00000000b
    OUT DX, AL 
    MOV CX, 0010H
    L015:LOOP L015   
    
        
    MOV DX, 2004H
    MOV AL, 00000000b
    OUT DX, AL  
	  
    MOV CX, 0065H   
    L016:LOOP L016  
    
;=======================================
    

    DEC COUNT
    CMP COUNT, 0
    JG PRINT 


    RET
    
MAIN   ENDP

CSEG    ENDS 

END    MAIN   