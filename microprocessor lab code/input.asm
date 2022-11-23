
.model small
.stack 100h
.data 
a db 'Enter a char:$'

.code
Main proc
    mov ax,@data
    mov ds,ax  
    
    lea dx,a
    mov ah,9
    int 21h 
     
    mov ah,1
    int 21h
    
    mov dl,al
    mov ah,2
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main



