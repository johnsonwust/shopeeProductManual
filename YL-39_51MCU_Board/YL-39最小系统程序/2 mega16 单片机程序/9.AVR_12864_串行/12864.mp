NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   0430 =   1072. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  _logo
       0054  __lit_start
       0484  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0484   02C0 =    704. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0242  __start
       0242  __text_start
       0264  _exit
       0265  _Lcd_init
       027B  _Write_char
       029E  _Send_byte
       02B1  _Delaynms
       02C6  _Disp_img
       030C  _Clr_Scr
       030F  _LCD_set_xy
       033F  _LCD_Write_string
       0358  _main
       036A  push_xgsetF000
       036F  pop_xgsetF000
       0374  push_xgsetF00C
       037B  pop_xgsetF00C
       0382  push_xgset303C
       0389  pop_xgset303C
       0390  push_xgsetF03C
       0399  pop_xgsetF03C
       03A2  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
12864.o	[ _12864.c ]
<library>	[ gpushy.s, gpushz.s, gpusha.s, gpushb.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

