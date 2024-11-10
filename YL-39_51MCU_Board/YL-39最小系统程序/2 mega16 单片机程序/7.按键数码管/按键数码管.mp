NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0014 =     20. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0068  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0068   023C =    572. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0034  __text_start
       0034  __start
       0054  _exit
       0055  _delay
       005F  _Display
       0082  _Process
       00B0  _Get_Key
       0100  _main
       0114  mod16u
       0116  div16u
       0117  xdiv16u
       0130  pop_gset2
       0133  push_gset5
       0135  push_gset4
       0137  push_gset3
       0139  push_gset2
       013B  push_gset1
       013E  pop_gset1
       013F  pop
       0152  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0014 =     20. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _disbuf
       0060  __data_start
       0064  _discode
       006E  _disbit
       0074  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0074   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0074  __bss_start
       0074  _Key_Down
       0075  _Key_Up
       0076  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
key.o	[ key.c ]
<library>	[ div16u.s, gpop2.s, gpush.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

