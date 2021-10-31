; Function that print out a string
; Arguments for functions:
;
;   mov bx, SOME_TEXT ; Set to bx text to print
;   call print ; Call function
;
print:
    mov bp, 0x7c00 ; Set bp as magic value
    mov sp, bp ; Set sp as bp
    mov ah, 0x0e
    .Loop:
    cmp [bx], byte 0 
    je .Exit
        mov al, [bx]
        int 10h
        inc bx
        jmp .Loop
    .Exit:
    ret