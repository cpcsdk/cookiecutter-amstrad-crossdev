    org 0x4000



    macro INFINITE_LOOP
        jp $
    endm


    ld hl, message

.loop
        ld a, (hl)
        or a
        jp z, .end
        push hl
            call PRINT_CHAR
        pop hl
        inc hl
        jr .loop

.end
    ld a, 7
    call PRINT_CHAR

    INFINITE_LOOP


message 
    defb "Hello {{cookiecutter.group_name}} !"
    db 0

PRINT_CHAR equ 0xBB5A
