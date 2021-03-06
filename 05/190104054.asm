DSEG   SEGMENT 'DATA' 
        
        DOT_MATRIX DB  10H,7FH,12H,14H,18H,7FH,08H,08H,08H,7FH,31H,49H,49H,49H,2FH,7EH,09H,09H,09H,7EH,3EH,41H,41H,41H,3EH
        COUNTER DB 0
        
DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100H    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'

START   PROC    FAR
    
 	PUSH DS  
 	
 	MOV AX,DSEG
 	MOV DS,AX
 	MOV ES,AX
 	
 	MOV CX, 0
 	MOV DI, 0 
 	
 	
DISPLAY:
    
    MOV DX, 2070H	 
    MOV AL, 00000001B 
    OUT DX, AL
    
    MOV DX, 2001H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2002H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2003H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX,2030H
    MOV AL,00000001B  ; SS 0
    OUT DX,AL
    
    MOV CX, 04FH
    L0: LOOP L0 
    
    MOV DX, 2004H
 	MOV AL, 00000010B
 	OUT DX,AL
 	
 	MOV DX, 2004H
 	MOV AL, 00000110B
 	OUT DX,AL
 	
 	MOV DX, 2004H
 	MOV AL, 00001110B
 	OUT DX,AL
 	
 	MOV DX, 2004H
 	MOV AL, 00011110B
 	OUT DX,AL
 	
 	MOV DX, 2004H
 	MOV AL, 00111110B
 	OUT DX,AL
 	
 	MOV DX,2030H
    MOV AL,00000011B   ;  SS 0
    OUT DX,AL
    
 	MOV DX,2030H
    MOV AL,00000111B   ;  SS 0
    OUT DX,AL
    
    MOV CX, 04FH
    L1: LOOP L1 
    
    MOV DX, 2003H
 	MOV AL, 01000001B
 	OUT DX,AL
 	
 	MOV DX, 2002H
 	MOV AL, 01000001B
 	OUT DX,AL
 	
 	MOV DX, 2001H
 	MOV AL, 01000001B
 	OUT DX,AL
 	
 	MOV DX,2030H
    MOV AL,00001111B    ; SS 0
    OUT DX,AL
    
    MOV CX, 04FH
    L2: LOOP L2
    
    MOV DX, 2000H
 	MOV AL, 00100000B
 	OUT DX,AL
 	
 	MOV DX, 2000H
 	MOV AL, 00110000B
 	OUT DX,AL
 	
 	MOV DX, 2000H
 	MOV AL, 00111000B
 	OUT DX,AL
 	
 	MOV DX, 2000H
 	MOV AL, 00111100B
 	OUT DX,AL
 	
 	MOV DX, 2000H
 	MOV AL, 00111110B  ;========== DM 0
 	OUT DX,AL 
 	
 	MOV DX,2030H
    MOV AL,00011111B   ;  SS 0
    OUT DX,AL 
    
 	MOV DX,2030H
    MOV AL,00111111B   ;  SS 0
    OUT DX,AL
    
    MOV CX, 04FH
    L3: LOOP L3
    
    MOV DX, 2005H
 	MOV AL, 01000000B
 	OUT DX,AL
 	
 	MOV DX, 2005H
 	MOV AL, 01100000B
 	OUT DX,AL
 	
 	MOV DX, 2005H
 	MOV AL, 01110000B
 	OUT DX,AL
 	
 	MOV DX, 2005H
 	MOV AL, 01111000B
 	OUT DX,AL 
 	
 	MOV DX, 2005H
 	MOV AL, 01111100B
 	OUT DX,AL
 	
 	MOV DX, 2005H
 	MOV AL, 01111110B
 	OUT DX,AL
    
    MOV DX, 2006H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2007H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2008H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00000010B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00000110B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00001110B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00011110B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00111110B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 01111110B
 	OUT DX,AL 
 	
 	MOV DX, 2006H
 	MOV AL, 00001001B
 	OUT DX,AL
 	
 	MOV DX, 2007H
 	MOV AL, 00001001B
 	OUT DX,AL
 	
 	MOV DX, 2008H
 	MOV AL, 00001001B  ; =========DM A
 	OUT DX,AL   
 	;============
 	MOV CX, 04FH
    L03: LOOP L03
    
    MOV DX, 200EH
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 200DH
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 200CH
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 200BH
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 200AH
 	MOV AL, 00000001B
 	OUT DX,AL
 	  
 	
 	MOV DX,2031H
    MOV AL,00000001B  ; SS 1
    OUT DX,AL 
    
    ;=============
    MOV CX, 04FH
    L4: LOOP L4

 	MOV DX, 200AH
 	MOV AL, 00000011B
 	OUT DX,AL
 	
 	MOV DX, 200AH
 	MOV AL, 00000111B
 	OUT DX,AL  
 	
 	MOV DX, 200AH
 	MOV AL, 00001111B
 	OUT DX,AL
 	
 	MOV DX,2031H
    MOV AL,00100001B  ; SS 1
    OUT DX,AL  
    
    ;================
    MOV CX, 04FH
    L5: LOOP L5
    
 	MOV DX, 200BH
 	MOV AL, 00001001B
 	OUT DX,AL
 	
 	MOV DX, 200CH
 	MOV AL, 00001001B
 	OUT DX,AL
 	
 	MOV DX,200DH
    MOV AL,00001001B
    OUT DX,AL
 
    MOV DX,2031H
    MOV AL,01100001B  ; SS 1
    OUT DX,AL 
    
    ;=========
    MOV CX, 04FH
    L6: LOOP L6  
    
    MOV DX,200EH
    MOV AL,00010001B
    OUT DX,AL
    
    MOV DX, 200EH
 	MOV AL, 00110001B
 	OUT DX,AL
    
    MOV DX,2031H
    MOV AL,01100101B  ; SS 1
    OUT DX,AL 
    
    ;===========
    MOV CX, 04FH
    L7: LOOP L7
    
    MOV DX, 200DH
 	MOV AL, 01001001B
 	OUT DX,AL
 	
 	MOV DX,200CH
    MOV AL,01001001B
    OUT DX,AL
 
    MOV DX,200BH
    MOV AL,01001001B
    OUT DX,AL
    
    MOV DX,200AH
    MOV AL,00101111B  ;=========DM 5
    OUT DX,AL
    
    MOV DX,2031H
    MOV AL,01101101B  ; SS 1
    OUT DX,AL
    
    MOV CX, 04FH
    L8: LOOP L8
    
    
    MOV DX,200FH
    MOV AL,00000111B
    OUT DX,AL
    
    MOV DX,200FH
    MOV AL,00001111B
    OUT DX,AL
    
    MOV DX,200FH
    MOV AL,00011111B
    OUT DX,AL
    
    MOV DX,200FH
    MOV AL,00111111B
    OUT DX,AL
            
    
    MOV DX,200FH
    MOV AL,01111111B
    OUT DX,AL
          
    MOV DX, 2010H
 	MOV AL, 00001000B
 	OUT DX,AL
 	
 	MOV DX, 2011H
 	MOV AL, 00001000B
 	OUT DX,AL
 	
 	MOV DX, 2012H
 	MOV AL, 00001000B
 	OUT DX,AL
 	
 	MOV DX, 2013H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2013H
 	MOV AL, 00000011B
 	OUT DX,AL
 	
 	MOV DX, 2013H
 	MOV AL, 00000111B
 	OUT DX,AL 
 	
 	MOV DX, 2013H
 	MOV AL, 00001111B
 	OUT DX,AL
 	
 	MOV DX, 2013H
 	MOV AL, 00011111B
 	OUT DX,AL
 	
 	MOV DX, 2013H
 	MOV AL, 00111111B
 	OUT DX,AL 
 	
 	MOV DX, 2013H
 	MOV AL, 01111111B   ;=========DM H
 	OUT DX,AL
 	;============
 	MOV CX, 04FH
    L04: LOOP L04 
 	
 	MOV DX, 2017H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2016H
 	MOV AL, 00000010B
 	OUT DX,AL 
    
    MOV DX,2015H
    MOV AL,00000100B
    OUT DX,AL
    
    MOV DX,2014H
    MOV AL,00001000B
    OUT DX,AL 
    
    MOV DX,2032H
    MOV AL,00100000B   ; SS 2
    OUT DX,AL  
    ;==============
    MOV CX, 04FH
    L9: LOOP L9 
    
    MOV DX,2014H
    MOV AL,00011000B
    OUT DX,AL 
    
    MOV DX,2015H
    MOV AL,00010100B
    OUT DX,AL
              
    MOV DX,2016H
    MOV AL,00010010B
    OUT DX,AL
    
    MOV DX,2017H
    MOV AL,00010001B
    OUT DX,AL  
    
    MOV DX,2018H
    MOV AL,00010000B
    OUT DX,AL
     
    MOV DX,2032H
    MOV AL,01100000B   ; SS 2
    OUT DX,AL 
    ;===========
    MOV CX, 04FH
    L10: LOOP L10 
    
    MOV DX,2017H
    MOV AL,00010011B
    OUT DX,AL  
    MOV DX,2017H
    MOV AL,00010111B
    OUT DX,AL  
    MOV DX,2017H
    MOV AL,00011111B
    OUT DX,AL
    
    MOV DX,2032H
    MOV AL,01100010B   ; SS 2
    OUT DX,AL
    ;================= 
    MOV CX, 04FH
    L11: LOOP L11  
    
    MOV DX,2017H
    MOV AL,00111111B
    OUT DX,AL
    
    MOV DX,2017H
    MOV AL,01111111B   ;========DM 4
    OUT DX,AL           
    
    MOV DX,2032H
    MOV AL,01100110B   ; SS 2
    OUT DX,AL
    ;==================            
    
    MOV CX, 04FH
    L12: LOOP L12             
    
    
    
    
                    
    MOV COUNTER, 0 
    MOV SI, 25            
    
 	
 	
CONTINUE:
    
    MOV DX, 2018H
    MOV CX, 26 
    DEC SI
    
    INC COUNTER
    CMP COUNTER, 26
    JAE CLEAR0 
        
SCROLL: 

          
    MOV AL, DOT_MATRIX[SI]
    OUT DX, AL   
    
    INC SI
    DEC DX 
    
    CMP DX, 1FFFH
    JBE CONTINUE
    
    CMP SI, 25
    JAE NEXT 
    LOOP SCROLL      
          
NEXT:
    MOV SI, 0
    LOOP SCROLL 


CLEAR0:
    
    MOV CX, 04FH
    L13: LOOP L13
    
    MOV DX, 2070H	 
    MOV AL, 00000000B 
    OUT DX, AL
     
    MOV DX,2000H 
        
CLEAR1:
    MOV AL,00000000B
    OUT DX,AL
    INC CX
    INC DX
    CMP CX, 26
    JLE CLEAR1
    
    MOV CX, 04FH
    L14: LOOP L14
    
    MOV DX, 2030H
    MOV AL, 00000000B
    OUT DX, AL
    
    MOV DX, 2031H
    MOV AL, 00000000B
    OUT DX, AL
    
    MOV DX, 2032H
    MOV AL, 00000000B
    OUT DX, AL
    
    MOV CX,0
    INC DI
    CMP DI,5
    JL DISPLAY


	
START   ENDP

CSEG    ENDS 

END    START