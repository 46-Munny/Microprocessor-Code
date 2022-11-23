INCLUDE 'EMU8086.INC'            
.model small
.data
nums  db 10 dup(?)
a dw 1                    

.code
main proc
    
    mov ax,@data
    mov ds,ax 
    
        
        
        print "Enter number of elements: "
        
        mov ah,1
        int 21h
        sub al,30h 
        
        mov cl,al
        mov bl,al
        lea si,nums
        
        printn
       print "Enter values: "
       printn
        input:
           mov ah,1
           int 21h
           mov [si],al
           inc si
           loop input

    add a,bx
    mov dx,bx
    oloop:
        mov cx, bx
        lea si, nums

        iloop:
            mov al, [si]                
            cmp al, [si+1]
            jl common                      
            xchg al, [si+1]
            mov [si], al                    

            common:
                inc si
                loop iloop
        
        dec dx
        cmp dx,0
        jnz oloop 
        

  
  lea si,nums
  mov cx,a
  
  output:
   mov dl,[si]
   mov ah,2
   int 21h
   inc si
  loop output

    main endp
end main