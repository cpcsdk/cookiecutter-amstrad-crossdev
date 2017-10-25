;;
; Krusty/Benediction
; June 2016
; tons of utility macros


  ;;
  ; Dummy code to kill the system
  macro KILL_SYSTEM
    di
    ld hl, 0xc9fb
    ld (0x38), hl
  endm
