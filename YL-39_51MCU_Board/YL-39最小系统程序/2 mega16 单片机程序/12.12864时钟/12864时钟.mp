NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   043A =   1082. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __lit_start
       0054  _discode
       005E  _logo
       048E  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   048E   0021 =     33. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       048E  __idata_start
       04AF  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   04B0   054A =   1354. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0258  __start
       0258  __text_start
       027A  _exit
       027B  _Lcd_init
       0291  _Write_char
       02B4  _Send_byte
       02C7  _Delaynms
       02DC  _Disp_img
       0322  _Clr_Scr
       0325  _LCD_set_xy
       0355  _LCD_Write_string
       036E  _LCD_Write_number
       037E  _delay
       0388  _Lcd_Mark2
       039D  _timer1_init
       03AA  _main
       03FA  _timer1_ovf_isr
       04AD  mod8u
       04AF  div8u
       04B0  xdiv8u
       04C5  push_xgsetF000
       04CA  pop_xgsetF000
       04CF  push_xgsetF00C
       04D6  pop_xgsetF00C
       04DD  push_xgset303C
       04E4  pop_xgset303C
       04EB  push_xgsetF03C
       04F4  pop_xgsetF03C
       04FD  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0021 =     33. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0060  _Hour
       0061  _flag
       0062  _disbuf
       0068  _num
       0075  _welcome
       007B  _input
       0081  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0081   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0081  __bss_start
       0081  _Min
       0082  _Sec
       0083  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0024 =     36. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
12864 ±÷”.o	[ _12864 ]
<library>	[ div8u.s, gpushy.s, gpushz.s, gpusha.s, gpushb.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

