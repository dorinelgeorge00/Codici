org 256
.data
    print1 db "Inserire il primo numero: $"
    print2 db "Inserire il secondo numero: $"
    print3 db "La somma dei due numeri e': $" 
    divisore dw 10
    risultato dw ?
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
    
    MOV AH,00h
    MOV AL,BH  
    MOV CX, 10          

    MOV BX, 10         
    MOV SI, 0          

converti_numero:
    MOV DX, 0           
    DIV divisore              

    ADD DL, '0'         
    MOV [SI], DL        
    INC SI              

    CMP AX, 0        
    JNZ converti_numero 


stampa_numero:
    DEC SI              

    MOV AH, 02h         
    MOV DL, [SI]        
    INT 21h             

    CMP SI, 0
    JG stampa_numero    

    MOV AH, 4Ch
    INT 21h
ends