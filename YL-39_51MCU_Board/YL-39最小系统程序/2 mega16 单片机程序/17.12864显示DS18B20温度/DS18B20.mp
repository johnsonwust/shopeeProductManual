NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   0010 =     16. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __lit_start
       0064  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0064   0019 =     25. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0064  __idata_start
       007D  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   007E   08B8 =   2232. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003F  __start
       003F  __text_start
       0061  _exit
       0062  _Lcd_init
       0078  _Write_char
       009B  _Send_byte
       00AE  _Delaynms
       00C3  _Disp_img
       0109  _Clr_Scr
       010C  _LCD_set_xy
       013C  _LCD_Write_string
       0155  _LCD_Write_number
       0162  _Lcd_Mark2
       0170  _ReadTemperature
       01C4  _main
       0210  _delay
       0217  _Init_1820
       0229  _Write_1820
       0244  _Read_1820
       0266  mod16u
       0268  div16u
       0269  xdiv16u
       0282  pop_xgset00FC
       0289  push_xgsetF0FC
       028B  push_xgset30FC
       028D  push_xgset00FC
       028F  push_xgset003C
       0294  push_xgsetF000
       0299  pop_xgsetF000
       029E  push_xgsetF00C
       02A5  pop_xgsetF00C
       02AC  push_xgset303C
       02B3  pop_xgset303C
       02BA  push_xgsetF03C
       02C3  pop_xgsetF03C
       02CC  neg32
       02D5  lpm32
       02E9  lsl8
       02EF  fpsub
       02F1  fpadd
       02F2  fpadd_alt
       0357  fpadd2
       0362  fpint
       038E  uint2fp
       0390  int2fp
       0399  ulong2fp
       039B  long2fp
       03AE  unpacks
       03B6  tstR16_R19
       03BE  unpacku
       03D3  normalize_and_pack
       0401  pack
       040B  fpneg
       0412  fpneg2
       0418  saveR8toR25
       0427  restoreR8toR25
       0436  fpmule
       0486  fpmule1
       0490  fpmule2
       049B  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0019 =     25. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0060  _num
       006F  _welcome
       0079  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
DS18B20.o	[ DS18B20.C ]
<library>	[ div16u.s, gpop3.s, gpush.s, gpushy.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, lpm32.s, lsl8.s, fpadd.s ]
[ fpadd2.s, fpint.s, int2fp.s, fputil.s, fpmule.s, fpmule1.s, fpmule2.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

