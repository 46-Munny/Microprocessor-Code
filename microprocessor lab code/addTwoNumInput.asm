
.model small
.stack 100h
.data 
a db 'Enter num1:$' 
b db 'Enter num2:$'
c db ?
d db ?


.code
Main proc
    mov ax,@data
    mov ds,ax  
    
    lea dx,a
    mov ah,9
    int 21h 
     
    mov ah,1
    int 21h 
    sub al,30h
    mov c,al 
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H                 ;NEWLINE
    MOV DL,0AH
    INT 21H
    
    lea dx,b
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h 
    sub al,30h
    mov d,al 
    
     MOV AH,2
    MOV DL,0DH
    INT 21H                 ;NEWLINE
    MOV DL,0AH
    INT 21H
    
    mov bl,c
    add bl,d
    add bl,30h
    
    mov dl,bl
    mov ah,2
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main



