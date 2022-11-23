.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
        MOV CL, 0   
        
        L1:          
            MOV AH, 1
            INT 21H
            PUSH AX
            INC CL
            CMP CL, 25
            JL L1
    
    
        MOV CL, 0   
        MOV DL, 0AH  
        MOV AH, 2
        INT 21H    
        MOV DL, 0DH
        MOV AH, 2
        INT 21H
        
        L2:     
            POP DX
            MOV AH, 2
            INT 21H
            INC CL      
            CMP CL, 10
            JL L2
    
       
        MOV AH, 4CH
        INT 21H
        MAIN ENDP 
    
    
END MAIN