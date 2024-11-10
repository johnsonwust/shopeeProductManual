NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0026 =     38. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       007A  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   007A   072E =   1838. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003D  __text_start
       003D  __start
       005D  _exit
       005E  _s_ms
       0067  _busy
       0094  _writecom
       00B2  _LcdInit
       00E7  _writedata
       0105  _readdata
       012D  _WriteCGRAM
       0148  _WriteMenu
       017C  _WriteNum
       0193  _WriteChar
       01C7  _ICEInit
       01CE  _main
       01F1  _CAPT_ISR
       0347  mod16s
       034B  div16s
       0365  mod16u
       0367  div16u
       0368  xdiv16u
       0381  pop_gset2
       0384  pop_gset3
       0387  push_gset5
       0389  push_gset4
       038B  push_gset3
       038D  push_gset2
       038F  push_gset1
       0392  pop_gset1
       0393  pop
       03A6  push_lset
       03BD  pop_lset
       03D4  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0026 =     38. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _ASCII
       0060  __data_start
       0070  _adc_0
       007B  _adc_1
       0086  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0086   0009 =      9. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0086  _data1
       0086  __bss_start
       0088  _data0
       008A  _oldFall
       008C  _newFall
       008E  _bitcnt
       008F  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0018 =     24. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
irr.o	[ irr.c ]
<library>	[ div16s.s, div16u.s, gpop2.s, gpop3.s, gpush.s, lpush.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

