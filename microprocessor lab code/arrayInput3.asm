INCLUDE 'EMU8086.INC'      
.MODEL SMALL
.STACK 100h
.DATA        
    ARR DB 50 DUP(?) ;  

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
        PRINT "OUTPUT: "
        PRINTN
        
        MOV CX,BX
        LEA SI,ARR
          
        OUTPUT:
            MOV AH,2
            MOV DL,ARR[SI]
            INT 21h
            INC SI
            
            MOV DL,20H      ;space
            MOV AH,2
            INT 21H
           

           LOOP OUTPUT
        
  MAIN ENDP
END MAIN