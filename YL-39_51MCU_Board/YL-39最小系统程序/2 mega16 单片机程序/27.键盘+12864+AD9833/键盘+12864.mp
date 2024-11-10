NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0054   0020 =     32. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __func_lit_start
       0074  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0074   045A =   1114. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0074  _key_code
       0074  __lit_start
       0084  _ksp
       0088  _logo
       04CE  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   04CE   004C =     76. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       04CE  __idata_start
       051A  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   051A   1322 =   4898. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       028D  __start
       028D  __text_start
       02AD  _exit
       02AE  _Lcd_init
       02C5  _Write_char
       02E9  _Send_byte
       02FC  _Delaynms
       0312  _Disp_img
       0359  _Clr_Scr
       035D  _LCD_set_xy
       038D  _LCD_Write_string
       03A7  _LCD_Write_number
       03B9  _Lcd_Mark2
       03E1  _Lcd_write_number
       0405  _AD9833_Send_Word
       041C  _Wave_Generate
       0550  _Bcd_Div
       064B  _keypad_scan
       067E  _gotkey
       0697  _main
       0923  push_arg4
       0925  push_arg2
       0928  div32u
       092A  mod32u
       092E  div32s
       0930  mod32s
       095B  long_div_prolog
       096E  long_div_epilog
       097D  tst_R16_R19
       0982  tst_R24_R27
       0987  neg_R16_R19
       0990  neg_R24_R27
       0999  empy16s
       09A9  empy32u
       09A9  empy32s
       09D9  pop_gset2
       09DC  pop_gset3
       09DF  pop_gset4
       09E2  push_gset5
       09E4  push_gset4
       09E6  push_gset3
       09E8  push_gset2
       09EA  push_gset1
       09ED  pop_gset1
       09EE  pop
       0A01  neg32
       0A0A  long_prolog
       0A18  long_epilog
       0A23  tstzero1
       0A29  tstzero2
       0A2F  lpm32
       0A43  lsr32
       0A4F  fp2int
       0A58  nojump1
       0A5D  fp2long
       0A64  nojump2
       0A66  FTOI
       0A68  FTOL
       0A97  int2fp
       0A9D  long2fp
       0AA2  ITOF
       0AB6  itof2
       0AB8  itof3
       0AC7  save_floatregs
       0AD2  restore_floatregs
       0ADD  stk2arg1
       0AE2  stk2arg0
       0AE7  float_epilog
       0AEE  float_prolog
       0AF1  add32fs
       0AF4  add32f
       0AF9  sub32fs
       0AFC  sub32f
       0B01  fret2
       0B08  FSUB
       0B09  FADD
       0B4E  usub24
       0B52  cmp32f
       0B57  FLTCP
       0B83  empy32fs
       0B86  empy32f
       0B8F  eFMUL
       0BA7  eumul24
       0BD0  savfacc1
       0BD3  restorefacc1
       0BD6  unpackfacc1
       0BDF  negmant
       0BE5  maxres
       0BEC  minres
       0BF2  ac1toac2
       0BF8  swapacc
       0C04  unpack
       0C16  repack
       0C1E  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   004C =     76. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0060  _T_1
       0061  _T_2
       0062  _T_3
       0063  _T_4
       0064  _T_5
       0065  _T_6
       0066  _T_7
       0067  _num
       0076  _welcome
       0080  _input
       008A  _ouput
       0094  _sin
       009B  _sq1
       00A2  _angle
       00A9  _hz
       00AC  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
¼üÅÌ+12864.o	[ _ ]
<library>	[ asave.s, div32.s, emul16s.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpush.s, lneg.s, longutil.s, lpm32.s ]
[ lsr32.s, fp2int.s, fpint2fp.s, fputil.s, fpadd.s, fpcmp.s, fpemul.s, fputil2.s, fputil3.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

