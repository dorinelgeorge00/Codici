org 256
.data
    print1 db "Inserire il primo numero: $"
    print2 db "Inserire il secondo numero: $"
    print3 db "La somma dei due numeri e': $" 
    divisore dw 10
.code
    lea dx,print1
    mov ah, 9
    int 21h
    
    
    mov AH,00h
    int 16h
    
    mov ch,AL
    SUB ch,30h
    
    mov AH,00h
    int 16h
    
    mov cl,AL
    SUB cl,30h
    
    
    MOV AL,ch
    MOV AH,0H 
    MOV BX,0ah
    MUL BX
    mov dh,al
    add dh,cl
    mov ch,00h
    mov bx, dx
    mov dh,00h
    
    mov ax,0003h
    int 10h
    
    lea dx,print2
    mov ah, 9
    int 21h
    
    
    mov AH,00h
    int 16h
    
    mov ch,AL
    SUB ch,30h
    
    mov AH,00h
    int 16h
    
    mov cl,AL
    SUB cl,30h
    
    
    MOV AL,CH
    MOV AH,0H 
    MOV dx, 0ah
    MUL dx
    mov dh,al
    add dh,cl
    mov ch,00h
    add bx,dx
    
    mov ax,0003h
    int 10h
              
    lea dx,print3
    mov ah,9
    int 21h
    
    mov ax,bx
    div 0ah

    mov ax,bx
    mov AH,0Eh
    int 21h
    
    
    
mov ax,4c00h
int 21h
ends