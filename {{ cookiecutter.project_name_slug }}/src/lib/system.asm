FIRMWARE

.GRA_SET_PEN        equ 0xBBDE
.GRA_GET_PEN        equ 0xBBE1
.GRA_TEST_ABSOLUTE  equ 0xBBF0
.GRA_PLOT_ABSOLUTE  equ 0xBBEA
.GRA_FROM_USER      equ 0xBD4F
.GRA_TEST           equ 0xbddf
.GRA_FILL           equ 0xBD52
.GRA_LINE_ABSOLUTE  equ 0xBBF6

.SCR_INK_ENCODE     equ 0xBC2C
.SCR_SET_MODE       equ 0xBC0E
.SCR_SET_INK        equ 0xBC32
.SCR_SET_BORDER     equ 0xbc38
.SCR_SET_FLASHING   equ 0xbc3e
.SCR_INK_DECODE     equ 0xBC2F
.SCR_GET_MODE       equ 0xBC11
.SCR_GET_INK        equ 0xBC35
.SCR_GET_BORDER     equ 0xBC3B
.SCR_GET_FLASHING   equ 0xBC41
.SCR_GET_LOCATION   equ 0xBC0B
.SCR_DOT_POSITION   equ 0xBC1D
.SCR_FILL_BOX       equ 0xbc44
.SCR_FLOOD_BOX      equ 0xbc17
.SCR_READ           equ 0xBDE5
.SCR_VERTICAL       equ 0xbc62
.SCR_HORIZONTAL     equ 0xbc5f

.TXT_WR_CHAR        equ 0xbb5d
.TXT_SET_CURSOR     equ 0xbb75

.kl_l_rom_enable    equ 0xb906
.kl_l_rom_disable   equ 0xb909
.kl_u_rom_disable   equ 0xb903

    macro KILL_SYSTEM   
        ld hl, 0xc9fb
        ld (0x38), hl
    endm
