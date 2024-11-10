NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0012 =     18. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0066  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0066   00E4 =    228. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0033  __start
       0033  __text_start
       0053  _exit
       0054  _delay
       005A  _Display
       007D  _main
       0086  push_gset5
       0088  push_gset4
       008A  push_gset3
       008C  push_gset2
       008E  push_gset1
       0091  pop_gset1
       0092  pop
       00A5  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0012 =     18. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _disbuf
       0060  __data_start
       0064  _discode
       006E  _disbit
       0072  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

D:\°²×°Èí¼þ\ICC-AVR\icc\lib\crtatmega.o	[ crtatmega.s ]
led_8.o	[ led_8.c ]
<library>	[ gpush.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

