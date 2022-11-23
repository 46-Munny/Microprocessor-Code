
.model small
.stack 100h
.data 

a db 2,8,4,5,3,6
.code
Main proc 
    mov ax,@data
    mov ds,ax 
    
  
   
    lea si,a
    mov cx,6 
    
    l1:
    mov dl,[si]
    add dl,30h
    mov ah,2
    int 21h
    add si,1 
    
    mov dl,20h   
    mov ah,2      ;space
    int 21h
    loop l1
    
    
  
    
    mov ah,4ch
    int 21h
    
    main endp
end main