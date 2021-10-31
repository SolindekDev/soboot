; ==================================================================
;
;   KnoxOS - The Knox Operating System
;   Copyright (C) 20021 - 2022 SolindekDev
;
; ==================================================================

[org 0x7C00]

%DEFINE KNOXOS_VERSION '1.0'
%DEFINE KNOXOS_AUTHOR 'SolindekDev'
%DEFINE KNOXOS_PREFIX 'knoxos'

; ------------------------------------------------------------------
; MAIN FUNCTION

jmp main

main:
    call clear_screen
    int 10h
    mov bx, WELCOME
    call print
    call input
    


; ------------------------------------------------------------------
; STRINGS AND VARIABLES

WELCOME:
    db "KnoxOS ", KNOXOS_VERSION ," - Copyright (C) 2021 - 2022", 0xA, 0xD, 0xA, 0xD, KNOXOS_PREFIX,"@root/>", 0

; ------------------------------------------------------------------
; INCLUDE FILES

%include "functions/print.asm"
%include "functions/clear.asm"
%include "functions/input-keyboard.asm"
%include "functions/background-color.asm"
%include "functions/draw.asm"

; ------------------------------------------------------------------
; END OF BOOT SECTOR AND BUFFER START

times 510-($-$$) db 0
dw 0xaa55

; ------------------------------------------------------------------
