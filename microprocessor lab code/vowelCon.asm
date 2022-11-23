
.model small
.stack 100h
.data 
a db 0
b db 0

 
msg1 db 'Number of vowels:$'
msg2 db 'Number of consonents:$'
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
    inc b
    jmp l2
    
    
    l1:
    
    l3:
    pop dx 
    
    cmp dl,'A'
    jl l6  
    
    cmp dl,'z'
    jg l6
     
    cmp dl,'a'
    je l4
    
    cmp dl,'e'
    je l4
    
    
    cmp dl,'i'
    je l4
    
    cmp dl,'o'
    je l4  
    
    cmp dl,'u'
    je l4 
    
    
    cmp dl,'A'
    je l4
    
    cmp dl,'E'
    je l4
    
    
    cmp dl,'I'
    je l4
    
    cmp dl,'O'
    je l4  
    
    cmp dl,'U'
    je l4 
    
    jmp l5
    
    
    
  
   

    
    l4:
      inc a
      jmp l5 
      
    l6:
      dec b
      
    l5:
      
      
  
   loop l3 
   
   
   lea dx,msg2
   mov ah,9
   int 21h 
   
   mov bl,b
   sub bl,a
   add bl,30h
   mov dl,bl
   mov ah,2
   int 21h
   
   
   MOV AH,2
   MOV DL,0DH
   INT 21H                 ;NEWLINE
   MOV DL,0AH
   INT 21H
    
   lea dx,msg1
   mov ah,9
   int 21h 
   
   
   add a,30h
   mov dl,a
   mov ah,2
   int 21h
       
  
           

    
    mov ah,4ch
    int 21h
    
    main endp
end main