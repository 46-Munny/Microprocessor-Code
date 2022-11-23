
.model small
.stack 100h
.data 

c db 3 
d db 5

.code
Main proc
    mov ax,@data
    mov ds,ax  
    
    mov al,c
    add al,d
    add al,30h 
   
    mov dl,al
    mov ah,2
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main



