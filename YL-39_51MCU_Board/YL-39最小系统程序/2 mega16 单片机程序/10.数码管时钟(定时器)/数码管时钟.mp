NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0013 =     19. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0067  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0068   024E =    590. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0034  __text_start
       0034  __start
       0056  _exit
       0057  _delay
       005D  _timer1_init
       006A  _Display
       00C1  _Process
       00E6  _PORT_INT
       00EC  _main
       00F8  _timer1_ovf_isr
       013E  push_arg4
       0140  push_arg2
       0143  mod8u
       0145  div8u
       0146  xdiv8u
       015B  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0013 =     19. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _disbuf
       0060  __data_start
       0064  _discode
       006E  _cnt
       006F  _flag
       0070  _timer
       0073  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0024 =     36. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
 ±÷”.o	[ _ ]
<library>	[ asave.s, div8u.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

