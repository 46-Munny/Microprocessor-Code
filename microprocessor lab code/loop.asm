
.model small
.stack 100h
.data 


.code
Main proc
      
  
    mov cx,5
    
    l1:
    mov dl,'k'
    mov ah,2
    int 21h
    loop l1  
    

    
    mov ah,4ch
    int 21h
    
    main endp
end main








