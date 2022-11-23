
.model small
.stack 100h
.data 
  msg1 db 'Enter a letter: $'  

.code  

Main proc 
    
    l:
    mov ax,@data
    mov ds,ax 
     
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h 
    
    cmp al,'A'
    jl l3
    
    cmp al,'z'
    jg l3 
    
    cmp al,'Z'
    je l1 
    jl l1 
    
    
    cmp al,'a'
    je l2
    jg l2
    jmp l4
    
    l1: 
    
    add al,20h 
    mov bl,al
    mov dl,bl
    mov ah,2
    int 21h
    jmp l4  
    
    l2:
    sub al,20h 
    mov bl,al
    mov dl,bl
    mov ah,2
    int 21h
    jmp l4
   
    
     
    
    l3:
    mov bl,al
    
    
    l4:
    
   MOV AH,2
   MOV DL,0DH
   INT 21H                 ;NEWLINE
   MOV DL,0AH
   INT 21H  
   

   
   cmp bl,'$'
   je exit
   jmp l
   
   
    exit: 
    mov ah,4ch
    int 21h
    
    main endp
end main








