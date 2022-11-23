INCLUDE 'EMU8086.INC' ;assembly library
.model small
.stack 100h
.data 

a db 10 dup(?) 
msg1 db 'Enter number of elements.$'
.code
Main proc 
    mov ax,@data
    mov ds,ax
    xor bx,bx
    xor cx,cx
  
   
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h
    ;mov cx,ax
    mov bx,ax
    
    
   ;MOV AH,2
   ;MOV DL,0DH
   ;INT 21H                 ;NEWLINE
   ;MOV DL,0AH
   ;INT 21H 
     
     lea si,a 
     mov cx,bx 
     
     
    
    l1:
    mov ah,1
    int 21h
    mov [si],al
    add si,1
   loop l1
     
   lea si,a 
   mov cx,bx
    
    l2:
    mov dl,[si]
    
    mov ah,2
    int 21h
    add si,1 
    
    mov dl,20h   
    mov ah,2      ;space
    int 21h
    loop l2
    
    
  
    
    mov ah,4ch
    int 21h
    
    main endp
end main