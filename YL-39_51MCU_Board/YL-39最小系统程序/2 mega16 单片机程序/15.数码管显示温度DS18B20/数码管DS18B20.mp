NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0017 =     23. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       006B  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   006C   0282 =    642. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0036  __start
       0036  __text_start
       0058  _exit
       0059  _delay_18B20
       0060  _Init_1820
       0072  _Write_1820
       008D  _Read_1820
       00AF  _delay
       00B5  _Display
       00E9  _ReadTemperature
       012A  _main
       0139  mod8u
       013B  div8u
       013C  xdiv8u
       0151  push_xgsetF00C
       0158  pop_xgsetF00C
       015F  push_xgsetF03C
       0168  pop_xgsetF03C
       0171  lsl8
       0177  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0017 =     23. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _tx
       0060  __data_start
       0067  _discode
       0073  _disbit
       0077  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
ÊýÂëÏÔÎÂ¶È.o	[ _ ]
<library>	[ div8u.s, gpushz.s, gpushb.s, lsl8.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

