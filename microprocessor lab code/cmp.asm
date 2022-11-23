
.model small
.stack 100h
.data 
  
msg1 db 'odd no $'  
msg2 db 'even no $'

.code
Main proc
    mov ax,@data
    mov ds,ax  
  
    mov ah,1
    int 21h  
    
    cmp al,'1'
    je l1 
    
    cmp al,'2'
    je l2
    jmp l3
    
    l1:
    lea dx,msg1
    mov ah,9
    int 21h
    jmp l3  
    
    l2:
    lea dx,msg2
    mov ah,9
    int 21h
   
    
    l3:
    
    mov ah,4ch
    int 21h
    
    main endp
end main








