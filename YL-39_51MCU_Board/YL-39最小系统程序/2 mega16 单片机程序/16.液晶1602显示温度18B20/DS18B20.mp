NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   001F =     31. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0073  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0074   061E =   1566. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003A  __start
       003A  __text_start
       005C  _exit
       005D  _delay_18B20
       0064  _Init_1820
       0076  _Write_1820
       0091  _Read_1820
       00B3  _s_ms
       00BC  _busy
       00E7  _writecom
       0103  _LcdInit
       0137  _writedata
       0153  _readdata
       0179  _WriteCGRAM
       0192  _WriteMenu
       01C3  _WriteNum
       01D9  _WriteChar
       020B  _s_1ms
       0221  _ReadTemperature
       0262  _main
       0301  mod8u
       0303  div8u
       0304  xdiv8u
       0319  push_xgsetF000
       031E  pop_xgsetF000
       0323  push_xgsetF00C
       032A  pop_xgsetF00C
       0331  push_xgsetF03C
       033A  pop_xgsetF03C
       0343  lsl8
       0349  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   001F =     31. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0060  _ASCII
       006F  _adc_0
       007C  _adc_1
       007E  _tx
       007F  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
DS18B20_main.o	[ DS18B20_main.c ]
<library>	[ div8u.s, gpushy.s, gpushz.s, gpushb.s, lsl8.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

