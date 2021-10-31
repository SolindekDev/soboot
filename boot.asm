[org 0x7C00]

call clear_screen
jmp input

jmp $

%include "disk.asm"
%include "functions/print.asm"
%include "functions/clear.asm"
%include "functions/input-keyboard.asm"
%include "functions/background-color.asm"

SOME_TEXT:
    db 'Siema', 0

times 510-($-$$) db 0
dw 0xaa55