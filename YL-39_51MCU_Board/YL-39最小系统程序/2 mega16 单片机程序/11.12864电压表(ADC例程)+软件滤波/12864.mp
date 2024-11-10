NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   0419 =   1049. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  _logo
       0054  __lit_start
       046D  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   046D   003C =     60. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       046D  __idata_start
       04A9  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   04AA   07CA =   1994. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0255  __text_start
       0255  __start
       0277  _exit
       0278  _Lcd_init
       028E  _Write_char
       02B1  _Send_byte
       02C4  _Delaynms
       02D9  _Disp_img
       031F  _Clr_Scr
       0322  _LCD_set_xy
       0352  _LCD_Write_string
       036B  _LCD_Write_number
       0378  _Lcd_Mark2
       0394  _main
       03BD  _ADC_Convert
       03C8  _adc_isr
       051D  div32u
       051F  mod32u
       0523  div32s
       0525  mod32s
       0551  long_div_prolog
       0564  long_div_epilog
       0574  tst_R16_R19
       0579  tst_R24_R27
       057E  neg_R24_R27
       0587  empy32s
       0587  empy32u
       05BB  push_xgsetF000
       05C0  pop_xgsetF000
       05C5  push_xgsetF00C
       05CC  pop_xgsetF00C
       05D3  push_xgset303C
       05DA  pop_xgset303C
       05E1  push_xgsetF03C
       05EA  pop_xgsetF03C
       05F3  neg32
       05FC  long_prolog
       060A  long_epilog
       0615  tstzero1
       061B  tstzero2
       0621  asgncblk
       063A  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   003C =     60. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _k
       0060  __data_start
       0061  _sum_adc
       007F  _num
       008E  _welcome
       0095  _input
       009C  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   009C   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       009C  _value
       009C  __bss_start
       009E  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   003C =     60. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
12864.o	[ _12864.c ]
<library>	[ div32.s, emul32.s, gpushy.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, longutil.s, pmstruct.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

