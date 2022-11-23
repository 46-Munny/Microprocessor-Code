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
          
        OUTPUT:
           MOV BL,ARR[SI]
           CMP BL,A
           JE L1
           JNE L2
            L1:
             INC C
            L2:
            
           INC SI

           LOOP OUTPUT
           
      ADD C,30H
      CMP C,'1'
      JE L3
      JNE L4
      
      L3:
        PRINT "ITEM FOUND "
        JMP L5
        
      L4:
        PRINT "ITEM NOT FOUND " 
        
      L5:
      
        
  MAIN ENDP
END MAIN