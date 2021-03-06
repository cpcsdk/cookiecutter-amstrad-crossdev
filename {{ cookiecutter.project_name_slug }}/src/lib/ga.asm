;;
; Constant file for the GA
; Krusty/Benediction
; 01/2013
; Source http://www.grimware.org/doku.php/documentations/devices/gatearray

    ifndef GA_COL_00
; List of GA colors
GA_COL_00 = 0x54
GA_COL_01 = 0x44
GA_COL_02 = 0x55
GA_COL_03 = 0x5c
GA_COL_04 = 0x58
GA_COL_05 = 0x5d
GA_COL_06 = 0x4c
GA_COL_07 = 0x45
GA_COL_08 = 0x4d
GA_COL_09 = 0x56
GA_COL_10 = 0x46
GA_COL_11 = 0x57
GA_COL_12 = 0x5e
GA_COL_13 = 0x40
GA_COL_14 = 0x5f
GA_COL_15 = 0x4e
GA_COL_16 = 0x47
GA_COL_17 = 0x4f
GA_COL_18 = 0x52
GA_COL_19 = 0x42
GA_COL_20 = 0x53
GA_COL_21 = 0x5a
GA_COL_22 = 0x59
GA_COL_23 = 0x5b
GA_COL_24 = 0x4a
GA_COL_25 = 0x43
GA_COL_26 = 0x4b

GA_COL_27 = GA_COL_13
GA_COL_28 = GA_COL_07
GA_COL_29 = GA_COL_25
GA_COL_30 = GA_COL_01
GA_COL_31 = GA_COL_19

GA_COL_0 = GA_COL_00
GA_COL_1 = GA_COL_01
GA_COL_2 = GA_COL_02
GA_COL_3 = GA_COL_03
GA_COL_4 = GA_COL_04
GA_COL_5 = GA_COL_05
GA_COL_6 = GA_COL_06
GA_COL_7 = GA_COL_07
GA_COL_8 = GA_COL_08
GA_COL_9 = GA_COL_09


GA_BLACK    set GA_COL_00 
GA_BLUE set GA_COL_01 
GA_BRIGHT_BLUE  set GA_COL_02 
GA_RED  set GA_COL_03 
GA_MAGENTA  set GA_COL_04 
GA_MAUVE    set GA_COL_05 
GA_BRIGHT_RED   set GA_COL_06 
GA_PURPLE   set GA_COL_07 
GA_BRIGHT_MAGENTA   set GA_COL_08 
GA_GREEN    set GA_COL_09 
GA_CYAN set GA_COL_10 
GA_SKY_BLUE set GA_COL_11 
GA_YELLOW   set GA_COL_12 
GA_WHITE    set GA_COL_13 
GA_PASTEL_BLUE  set GA_COL_14 
GA_ORANGE   set GA_COL_15 
GA_PINK set GA_COL_16 
GA_PASTEL_MAGENTA   set GA_COL_17 
GA_BRIGHT_GREEN set GA_COL_18 
GA_SEA_GREEN    set GA_COL_19 
GA_BRIGHT_CYAN  set GA_COL_20 
GA_LIME set GA_COL_21 
GA_PASTEL_GREEN set GA_COL_22 
GA_PASTEL_CYAN  set GA_COL_23 
GA_BRIGHT_YELLOW    set GA_COL_24 
GA_PASTEL_YELLOW    set GA_COL_25 
GA_BRIGHT_WHITE set GA_COL_26 





  macro SET_MODE_0
    ld bc, 0x7f8c
    out (c), c
  endm


  macro SET_MODE_1
    ld bc, 0x7f8d
    out (c), c
  endm

  macro SET_MODE_2
    ld bc, 0x7f8e
    out (c), c
  endm  
  
  
  endif
