NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   0009 =      9. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __lit_start
       005D  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   005D   009E =    158. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       005D  __idata_start
       00FB  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00FC   08F6 =   2294. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       007E  __start
       007E  __text_start
       009E  _exit
       009F  _s_ms
       00A8  _busy
       00D5  _writecom
       00F3  _LcdInit
       0128  _writedata
       0146  _readdata
       016E  _WriteCGRAM
       0189  _WriteMenu
       01BD  _WriteNum
       01D4  _WriteChar
       0208  _main
       0235  _ADC_Convert
       0240  _adc_isr
       03BB  div32u
       03BD  mod32u
       03C1  div32s
       03C3  mod32s
       03EE  long_div_prolog
       0401  long_div_epilog
       0410  tst_R16_R19
       0415  tst_R24_R27
       041A  neg_R16_R19
       0423  neg_R24_R27
       042C  empy32s
       042C  empy32u
       045C  pop_gset2
       045F  pop_gset3
       0462  push_gset5
       0464  push_gset4
       0466  push_gset3
       0468  push_gset2
       046A  push_gset1
       046D  pop_gset1
       046E  pop
       0481  long_prolog
       048F  long_epilog
       049A  tstzero1
       04A0  tstzero2
       04A6  push_lset
       04BD  pop_lset
       04D4  lsr32
       04E0  asgncblk
       04F9  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   009E =    158. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0060  _ASCII
       006F  _adc_0
       007D  _k
       007E  _sum_adc
       00FE  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   003C =     60. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
ADC-1602.o	[ ADC ]
<library>	[ div32.s, emul32.s, gpop2.s, gpop3.s, gpush.s, longutil.s, lpush.s, lsr32.s, pmstruct.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

