
.model small
.stack 100h
.data 

a db 0
.code
Main proc 
    mov ax,@data
    mov ds,ax 
    
    mov cx,0 
    
    l2:
    
    mov ah,1
    int 21h 
    
    cmp al,0dh
    je l1
    
    push ax
    inc cx
    inc a
    jmp l2
    
    
    l1:
     
     mov dl,a
     mov ah,2
     int 21h 
     
   MOV AH,2
   MOV DL,0DH
   INT 21H                 ;NEWLINE
   MOV DL,0AH
   INT 21H 
    
    l3:
    pop dx
    mov ah,2
    int 21h 
    loop l3
    
    mov ah,4ch
    int 21h
    
    main endp
end main