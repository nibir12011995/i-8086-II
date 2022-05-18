DSEG   SEGMENT 'DATA' 
        
        DOT_MATRIX  DB 032H, 049H, 049H, 049H, 026H,   07FH, 02H, 04H, 02H, 0FFH,   
                    DB 43H, 45H, 49H, 51H,  61H,  01H, 02H, 7CH, 02H, 01H, 
                    DB 7FH, 02H, 04H, 02H, 7FH,  43H, 45H, 49H, 51H,  61H,
                    DB 7FH,08H,08H,08H,7FH,  7EH,09H,09H,09H,7EH
                   
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
    
;=================A=================    
    
    MOV DX, 2000H
 	MOV AL, 01000000B
 	OUT DX,AL
 	
 	MOV DX, 2000H
 	MOV AL, 01100000B
 	OUT DX,AL
 	
 	MOV DX, 2000H
 	MOV AL, 01110000B
 	OUT DX,AL
 	
 	MOV DX, 2000H
 	MOV AL, 01111000B
 	OUT DX,AL 
 	
 	MOV DX, 2000H
 	MOV AL, 01111100B
 	OUT DX,AL
 	
 	MOV DX, 2000H
 	MOV AL, 01111110B
 	OUT DX,AL
    
    MOV DX, 2001H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2002H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2003H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
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
 	
 	MOV DX, 2004H
 	MOV AL, 01111110B
 	OUT DX,AL 
 	
 	MOV DX, 2001H
 	MOV AL, 00001001B
 	OUT DX,AL
 	
 	MOV DX, 2002H
 	MOV AL, 00001001B
 	OUT DX,AL
 	
 	MOV DX, 2003H
 	MOV AL, 00001001B  ; =========DM A
 	OUT DX,AL   
 	;============
 	MOV CX, 04FH
    L1: LOOP L1
    
;==================5================== 	  
 	
 	MOV DX,2030H
    MOV AL,00000001B  ; SS 0
    OUT DX,AL 
 	
 	MOV DX,2030H
    MOV AL,00100001B  ; SS 0
    OUT DX,AL  
    
    MOV DX,2030H
    MOV AL,01100001B  ; SS 0
    OUT DX,AL 
    
    MOV DX,2030H
    MOV AL,01100101B  ; SS 0
    OUT DX,AL 
   
    MOV DX,2030H
    MOV AL,01101101B  ; SS 0
    OUT DX,AL
    
    MOV CX, 04FH
    L01: LOOP L01
    
 ;=========================H====
    
    MOV DX,2005H
    MOV AL,00000111B
    OUT DX,AL
    
    MOV DX,2005H
    MOV AL,00001111B
    OUT DX,AL
    
    MOV DX,2005H
    MOV AL,00011111B
    OUT DX,AL
    
    MOV DX,2005H
    MOV AL,00111111B
    OUT DX,AL
            
    
    MOV DX,2005H
    MOV AL,01111111B
    OUT DX,AL
          
    MOV DX, 2006H
 	MOV AL, 00001000B
 	OUT DX,AL
 	
 	MOV DX, 2007H
 	MOV AL, 00001000B
 	OUT DX,AL
 	
 	MOV DX, 2008H
 	MOV AL, 00001000B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00000011B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00000111B
 	OUT DX,AL 
 	
 	MOV DX, 2009H
 	MOV AL, 00001111B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00011111B
 	OUT DX,AL
 	
 	MOV DX, 2009H
 	MOV AL, 00111111B
 	OUT DX,AL 
 	
 	MOV DX, 2009H
 	MOV AL, 01111111B   ;=========DM H
 	OUT DX,AL
 	;============
 	MOV CX, 04FH
    L2: LOOP L2 
 	
    
;==================4===================    
    
    MOV DX,2031H
    MOV AL,00100000B   ; SS 1
    OUT DX,AL  
    
    MOV DX,2031H
    MOV AL,01100000B   ; SS 1
    OUT DX,AL 
    
    MOV DX,2031H
    MOV AL,01100010B   ; SS 1
    OUT DX,AL
    
    MOV DX,2031H
    MOV AL,01100110B   ; SS 1
    OUT DX,AL
    ;==================            
    MOV CX, 04FH
    L02: LOOP L02             
    
    



;=======================57================
 
    MOV DX, 2070H	 
    MOV AL, 00000101B 
    OUT DX, AL 

;==========Z=============

    	MOV DX, 200AH  ; Print Z
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 200BH
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 200CH
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 200DH
 	MOV AL, 00000001B
 	OUT DX,AL 
 	
 	MOV DX, 200EH
 	MOV AL, 00000001B
 	OUT DX,AL
 	
 	MOV DX, 200EH
 	MOV AL, 00000011B
 	OUT DX,AL
    
    	MOV DX, 200DH
 	MOV AL, 00000101B
 	OUT DX,AL
 	
 	MOV DX, 200CH
 	MOV AL, 00001001B
 	OUT DX,AL
 	
 	MOV DX, 200BH
 	MOV AL, 00010001B
 	OUT DX,AL
 	
 	MOV DX, 200AH
 	MOV AL, 00100001B
 	OUT DX,AL
 	
 	MOV DX, 200AH
 	MOV AL, 01100001B
 	OUT DX,AL
 	
 	MOV DX, 200BH
 	MOV AL, 01010001B
 	OUT DX,AL
 	
 	MOV DX, 200CH
 	MOV AL, 01001001B
 	OUT DX,AL
 	
 	MOV DX, 200DH
 	MOV AL, 01000101B
 	OUT DX,AL
 	
 	MOV DX, 200EH
 	MOV AL, 01000011B
 	OUT DX,AL  
 	
 	MOV CX, 04FH
    L3: LOOP L3

;==========5=============


    MOV DX,2032H
    MOV AL,00000001B 
    OUT DX,AL

    MOV DX,2032H
    MOV AL,00100001B  
    OUT DX,AL

    MOV DX,2032H
    MOV AL,01100001B  
    OUT DX,AL 


    MOV DX,2032H
    MOV AL,01100101B  
    OUT DX,AL


    MOV DX,2032H
    MOV AL,01101101B 
    OUT DX,AL

    MOV CX, 04FH
    L03: LOOP L03


;==========M=============

    MOV DX,200FH ; print M
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
 	MOV AL, 00000010B
 	OUT DX,AL
 	
 	MOV DX, 2011H
 	MOV AL, 00000100B
 	OUT DX,AL
 	
 	MOV DX, 2012H
 	MOV AL, 00000010B
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
 	MOV AL, 01111111B  
 	OUT DX,AL

 	MOV CX, 04FH
    L4: LOOP L4

;==========7=============

    MOV DX,2033H
    MOV AL,00000001B  
    OUT DX,AL

    MOV DX,2033H
    MOV AL,00000011B   
    OUT DX,AL 

    MOV DX,2033H
    MOV AL,00000111B   
    OUT DX,AL 

    MOV CX, 04FH
    L04: LOOP L04



;=======================59=================

    MOV DX, 2070H	 
    MOV AL, 00000111B 
    OUT DX, AL 

;==========Y=============

    MOV DX,2014H       
	MOV AL,01H
	OUT DX,AL 
    
    MOV DX,2015H  
	MOV AL,02H
	OUT DX,AL 
	   
    MOV DX,2016H 
	MOV AL,04H
	OUT DX,AL
	   
	
	MOV DX,2017H  
	MOV AL,02H
	OUT DX,AL 	
	   
	
	MOV DX,2018H  
	MOV AL,01H
	OUT DX,AL
	  
	
	MOV DX,2016H  
	MOV AL,0CH
	OUT DX,AL 	
	 
                 
	MOV DX,2016H  
	MOV AL,1CH
	OUT DX,AL 
	   
	
    MOV DX,2016H  
	MOV AL,3CH
	OUT DX,AL 

	
	MOV DX,2016H  
	MOV AL,7CH
	OUT DX,AL
	  
    MOV CX, 04FH
    L5: LOOP L5

;==========5=============

    MOV DX,2034H
    MOV AL,00000001B 
    OUT DX,AL

    MOV DX,2034H
    MOV AL,00100001B  
    OUT DX,AL

    MOV DX,2034H
    MOV AL,01100001B  
    OUT DX,AL 


    MOV DX,2034H
    MOV AL,01100101B  
    OUT DX,AL


    MOV DX,2034H
    MOV AL,01101101B 
    OUT DX,AL

    MOV CX, 04FH
    L05: LOOP L05


;==========Z=============

    MOV DX,2019H            
	MOV AL,01H
	OUT DX,AL 
	
    MOV DX,201AH  
	MOV AL,01H
	OUT DX,AL
		    
    MOV DX,201BH  
	MOV AL,01H
	OUT DX,AL 
	       
    MOV DX,201CH  
	MOV AL,01H
	OUT DX,AL
	
    MOV DX,201DH  
	MOV AL,03H
	OUT DX,AL    
	
    MOV DX,201CH  
	MOV AL,05H
	OUT DX,AL
	
    MOV DX,201BH  
	MOV AL,09H
	OUT DX,AL    

    MOV DX,201AH  
	MOV AL,11H
	OUT DX,AL 
	
    MOV DX,2019H  
	MOV AL,21H
	OUT DX,AL    
	
	MOV DX,2019H  
	MOV AL,61H
	OUT DX,AL 
	
	MOV DX,201AH  
	MOV AL,51H
	OUT DX,AL    
	
	MOV DX,201BH  
	MOV AL,49H
	OUT DX,AL  
	 
	MOV DX,201CH  
	MOV AL,45H
	OUT DX,AL    
	
	MOV DX,201DH  
	MOV AL,43H
	OUT DX,AL

    MOV CX, 04FH
    L6: LOOP L6


;==========9=============

        MOV DX,2035H  
	    MOV AL,01000000B
	    OUT DX,AL

        MOV DX,2035H  
	    MOV AL,01100000B
	    OUT DX,AL 

        MOV DX,2035H  
	    MOV AL,01100001B
	    OUT DX,AL 
	    
    	MOV DX,2035H  
	    MOV AL,01100011B
	    OUT DX,AL 
	    
        MOV DX,2035H  
	    MOV AL,01100111B
	    OUT DX,AL
	     
	    MOV DX,2035H  
	    MOV AL,01101111B
	    OUT DX,AL 
	    
        MOV CX, 04FH
        L06: LOOP L06
            
    
    
            
;=======================75=================        

    MOV DX, 2070H	 
    MOV AL, 00000111B 
    OUT DX, AL 

;==========M=============

    MOV DX, 201EH
    MOV AL, 40H
	OUT DX, AL
		
    MOV DX, 201EH
    MOV AL, 60H
	OUT DX, AL

    MOV DX, 201EH
    MOV AL, 70H
	OUT DX, AL

    MOV DX, 201EH
    MOV AL, 78H
	OUT DX, AL

    MOV DX, 201EH
    MOV AL, 7CH
	OUT DX, AL
    
    MOV DX, 201EH
    MOV AL, 7EH
	OUT DX, AL      

    MOV DX, 201EH
    MOV AL, 7FH
	OUT DX, AL	  
	
    MOV DX, 201FH
    MOV AL, 02H
	OUT DX, AL	

    MOV DX, 2020H
    MOV AL, 04H
	OUT DX, AL	

    MOV DX, 2021H
    MOV AL, 02H
	OUT DX, AL	
	
    MOV DX, 2022H
    MOV AL, 01H
	OUT DX, AL	
	
    MOV DX, 2022H
    MOV AL, 03H
	OUT DX, AL		
											
    MOV DX, 2022H
    MOV AL, 07H
	OUT DX, AL
	
    MOV DX, 2022H
    MOV AL, 0FH
	OUT DX, AL
				
    MOV DX, 2022H
    MOV AL, 1FH
	OUT DX, AL													

    MOV DX, 2022H
    MOV AL, 3FH
	OUT DX, AL			

    MOV DX, 2022H
    MOV AL, 7FH  ;M in Dot Matrix
	OUT DX, AL	

    MOV CX,04FH  
    L7: LOOP L7

;==========7=============

    MOV DX,2036H
    MOV AL,00000001B  
    OUT DX,AL

    MOV DX,2036H
    MOV AL,00000011B   
    OUT DX,AL 

    MOV DX,2036H
    MOV AL,00000111B   
    OUT DX,AL 

    MOV CX, 04FH
    L07: LOOP L07
    
;==========S=============


    MOV DX, 2027H
    MOV AL, 02H
	OUT DX, AL
	
    MOV DX, 2026H
    MOV AL, 01H
	OUT DX, AL

    MOV DX, 2025H
    MOV AL, 01H
	OUT DX, AL

    MOV DX, 2024H
    MOV AL, 01H
	OUT DX, AL

    MOV DX, 2023H
    MOV AL, 02H
	OUT DX, AL
    
    MOV DX, 2023H
    MOV AL, 06H
	OUT DX, AL      

    MOV DX, 2024H
    MOV AL, 09H
	OUT DX, AL	  
	
    MOV DX, 2025H
    MOV AL, 09H
	OUT DX, AL	

    MOV DX, 2026H
    MOV AL, 09H
	OUT DX, AL	

    MOV DX, 2027H
    MOV AL, 12H
	OUT DX, AL	
	
    MOV DX, 2027H
    MOV AL, 32H
	OUT DX, AL

    MOV DX, 2026H
    MOV AL, 49H
	OUT DX, AL
								
    MOV DX, 2025H
    MOV AL, 49H
	OUT DX, AL

    MOV DX, 2024H
    MOV AL, 49H
	OUT DX, AL
				
    MOV DX, 2023H
    MOV AL, 26H  ;S in Dot Matrix
	OUT DX, AL													

    MOV CX,04FH
    L8: LOOP L8
    
;==========5=============

    MOV DX,2037H
    MOV AL,00000001B 
    OUT DX,AL

    MOV DX,2037H
    MOV AL,00100001B  
    OUT DX,AL

    MOV DX,2037H
    MOV AL,01100001B  
    OUT DX,AL 


    MOV DX,2037H
    MOV AL,01100101B  
    OUT DX,AL


    MOV DX,2037H
    MOV AL,01101101B 
    OUT DX,AL

    MOV CX, 04FH
    L08: LOOP L08

;=======================================            
    
    
                    
    MOV COUNTER, 0 
    MOV SI, 40            
    
 	
 	
CONTINUE:
    
    MOV DX, 2027H
    MOV CX, 41 
    DEC SI
    
    INC COUNTER
    CMP COUNTER, 41
    JAE CLEAR0 
        
SCROLL: 

          
    MOV AL, DOT_MATRIX[SI]
    OUT DX, AL   
    
    INC SI
    DEC DX 
    
    CMP DX, 1FFFH
    JBE CONTINUE
    
    CMP SI, 40
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
    CMP CX, 41
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
    
    MOV DX, 2033H
    MOV AL, 00000000B
    OUT DX, AL
    
    MOV DX, 2034H
    MOV AL, 00000000B
    OUT DX, AL
    
    MOV DX, 2035H
    MOV AL, 00000000B
    OUT DX, AL
    
    MOV DX, 2036H
    MOV AL, 00000000B
    OUT DX, AL 
    
    MOV DX, 2037H
    MOV AL, 00000000B
    OUT DX, AL
    
    MOV CX, 04FH
    L15: LOOP L15
    
    MOV CX,0
    INC DI
    CMP DI,5
    JL DISPLAY


	
START   ENDP

CSEG    ENDS 

END    START