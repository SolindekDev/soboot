 ; Function that will get inputs from users keyboard
; Function arguments:
;
;   mov bx, SAVE_INPUT
;   call input
;

; More about 0x16h interrupt
; --------------------------------------------------------
;
; al - Ascii
; ah - BIOS scan code
;
; --------------------------------------------------------
;
;     BIOS scan codes
; https://www.fountainware.com/EXPL/bios_key_codes.htm
; https://flint.cs.yale.edu/cs422/doc/art-of-asm/pdf/APNDXC.PDF <-- Better
;
; --------------------------------------------------------

input:
    mov ah, 00h ; Set ah value to 00h to interrupt bios at 16h
    int 16h ; Interrupt to bios
    cmp ah, 0x1C ; If statement is ah equal to 1C (Enter bios scan code)
    je input_enter ; If it's true go to input_enter function
    call input_other_char ; If it's false go to input_other_char function

input_other_char:
    mov al, 'S'
    mov ah, 0x0e
    int 10h
    jmp input
    ret

input_enter:
    ; If this function is called that mean that keyboard has
    ; clicked the enter button at 0x1C bios scan code!
    inc dxjaki

