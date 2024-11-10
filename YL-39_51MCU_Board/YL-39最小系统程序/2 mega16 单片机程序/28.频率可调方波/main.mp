NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   000E =     14. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __lit_start
       0054  _discode
       005E  _disbit
       0062  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0062   0004 =      4. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0062  __idata_start
       0066  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0066   0274 =    628. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0033  __text_start
       0033  __start
       0053  _exit
       0054  _delay
       005A  _timer1_init
       0065  _Set_Process
       0090  _Display
       00B3  _Key_Process
       0105  _PORT_INT
       0110  _main
       0118  _Compare
       0122  mod16u
       0124  div16u
       0125  xdiv16u
       013E  empy16s
       014E  push_gset5
       0150  push_gset4
       0152  push_gset3
       0154  push_gset2
       0156  push_gset1
       0159  pop_gset1
       015A  pop
       016D  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _disbuf
       0060  __data_start
       0064  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0064   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0064  __bss_start
       0064  _Key3_Flag
       0065  _Key2_Flag
       0066  _Key1_Flag
       0067  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   001C =     28. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
main.o	[ main.c ]
<library>	[ div16u.s, emul16s.s, gpush.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

