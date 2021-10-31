; Function that change background color
; Arguments for functions:
;
;   mov bh, [COLOR_CODE: for example: 1Fh - Blue]
;   call color_background_change
;

; ---------------------------
; Change background color
; ---------------------------
; 1Fh - Blue
; 2Fh - Green
; 3Fh - Aqua
; 4Fh - Red
; 5Fh - Violet
; 6Fh - Brown
; 7Fh - Grey
; 8Fh - Dark-Gray
; 9Fh - Light-Blue

color_background_change:
    mov dx, 184Fh
    xor cx, cx
    mov ax, 0600h    ; Set ax as a magic number
    int 10h          ; Interrupt bios to change backgrounds
    ret