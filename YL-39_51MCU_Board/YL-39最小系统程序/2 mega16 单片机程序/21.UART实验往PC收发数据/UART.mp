NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0026   00E0 =    224. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0013  __text_start
       0013  __start
       0032  _exit
       0033  _port_init
       0038  _USART_Init
       0041  _USART_Transmit
       0045  _USART_Transmit_string
       0056  _USART_Receive
       005A  _main
       0064  push_gset5
       0066  push_gset4
       0068  push_gset3
       006A  push_gset2
       006C  push_gset1
       006F  pop_gset1
       0070  pop
       0083  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0002 =      2. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtAVR.o	[ crtavr.s ]
uart.o	[ uart.c ]
<library>	[ gpush.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x26
data = 0x60
eeprom:1.512

