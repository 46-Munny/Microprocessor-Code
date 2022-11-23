
include 'EMU8086.INC'     

.MODEL SMALL
.STACK 100h
.DATA   
   i DB 8        
   j DB 8
   k DB 16
   s DW ?

.CODE   
     MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        PRINT "Enter First Number:"
        
        XOR BX,BX                
        XOR CX,CX                 

        
        
        MOV AH,1            
        INT 21h
        
        NUM1:                  
            CMP AL,0DH         
            JE SECOND
            
            AND AL,0FH          
            SHL BL,1            
            OR  BL,AL            
            
            INT 21h
            JMP NUM1
      
      SECOND:        
      
      PRINTN
      PRINT "Enter Second Number:"
        
      NUM2:                    

            MOV AH,1
            INT 21h
            CMP AL,0DH
            JE SUM
            
            AND AL,0FH
            SHL CL,1
            OR  CL,AL
            
            JMP NUM2    
         
      SUM:         
      
      ADD s,BX    
      ADD s,CX    

       
      PRINTN
      PRINT "First Number:"
             
      NUMBER1:         
            CMP i,0
            JE OUTPUT1
            
            SHL BL,1     
            JC P1         
            JNC P0       

      P1:                 
         MOV DL,'1'
         MOV AH,2
         INT 21h
         SUB i,1
         JMP NUMBER1
      P0:                 
         MOV DL,'0'
         MOV AH,2
         INT 21h
         SUB i,1
         JMP NUMBER1
       
      OUTPUT1: 
      PRINTN
      PRINT "Second Number:"
         
      NUMBER2:      
            CMP j,0
            JE OUTPUT2
            
            SHL CL,1
            JC Q1
            JNC Q0
      Q1:               
         MOV DL,'1'
         MOV AH,2
         INT 21h
         SUB j,1
         JMP NUMBER2
      Q0:                    
         MOV DL,'0'
         MOV AH,2
         INT 21h
         SUB j,1
         JMP NUMBER2
    
     OUTPUT2:
     PRINTN
     PRINT "Their Sum:"
     SHOW:               
           CMP k,0
           JE EXIT
           
           SHL s,1
           JC R1
           JNC R0
      R1:              
         MOV DL,'1'
         MOV AH,2
         INT 21h
         SUB k,1
         JMP SHOW
      R0:               
         MOV DL,'0'
         MOV AH,2
         INT 21h
         SUB k,1
         JMP SHOW
     EXIT:          
         
         
       MAIN ENDP
  END MAIN