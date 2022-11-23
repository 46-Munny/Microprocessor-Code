 INCLUDE 'EMU8086.INC'      
.MODEL SMALL
.STACK 100h
.DATA        
    ARR DB 50 DUP(?) ;
    A DB 0 
    C DB 0 
    

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        XOR BX,BX
        XOR CX,CX
        
        PRINT "Enter number of elements: "
        
        MOV AH,1
        INT 21H
        SUB AL,30H 
        
        MOV CL,AL
        MOV BL,AL
        LEA SI,ARR
        
        PRINTN
        PRINT "Enter values: "
        PRINTN
        INPUT:
           MOV AH,1
           INT 21H
           MOV ARR[SI],AL
           INC SI
           LOOP INPUT
        PRINTN
        PRINT "Enter searched value: " 
        MOV AH,1
        INT 21H
        MOV A,AL
        
        PRINTN
        
        MOV CX,BX
        LEA SI,ARR
          
       L1: 
       
          MOV DL,ARR[SI]
          MOV AL,ARR[SI+1]
           
          CMP DL,AL
          JG L2
        L2:

          MOV ARR[SI],AL 
          MOV ARR[SI+1],DL 
        
              
        INC SI
        DEC BX 
       LOOP L1
        
  MAIN ENDP
END MAIN