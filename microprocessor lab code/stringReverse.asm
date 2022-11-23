
.model small
.stack 100h
.data 
.code
Main proc 
    
    mov cx,0 
    
    l2:
    
    mov ah,1
    int 21h 
    
    cmp al,0dh
    je l1
    
    push ax
    inc cx
    jmp l2
    
    
    l1:
    
    l3:
    pop dx
    mov ah,2
    int 21h 
    loop l3
    
    mov ah,4ch
    int 21h
    
    main endp
end main