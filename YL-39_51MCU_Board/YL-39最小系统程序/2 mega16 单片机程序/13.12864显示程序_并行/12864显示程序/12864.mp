NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0047 =     71. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       009B  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   009C   0398 =    920. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004E  __text_start
       004E  __start
       0070  _exit
       0071  _Delay_1us
       0074  _Delay_Us
       0083  _Delay_1ms
       008D  _Delay_Ms
       00AB  _Delay10us
       00BF  _Init_Devices
       00C7  _Port_Init
       00D0  _init12864_Hzk
       0109  _init12864_Bmp
       0130  _lcd12864_GB16X16
       016A  _TransferData
       0187  _DisplayGraphic
       01CA  _main
       01EC  pop_xgsetF0FC
       01F7  push_xgsetF0FC
       01F9  push_xgset30FC
       01FB  push_xgset00FC
       01FD  push_xgset003C
       0202  push_xgsetF000
       0207  pop_xgsetF000
       020C  push_xgsetF00C
       0213  pop_xgsetF00C
       021A  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0047 =     71. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       00A7  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   00A7   003A =     58. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       00A7  _pic3
       00A7  __bss_start
       00A8  _pic2
       00A9  _pic1
       00AA  _IC_DAT
       00AB  _data_adc
       00AD  _disbuf
       00BD  _buf
       00CD  _data_1621
       00D1  _second
       00D2  _minute
       00D3  _hour
       00D4  _date
       00D5  _week
       00D6  _month
       00D7  _year
       00D8  _s_wtemp
       00DA  _u_btemp
       00DB  _u_wtemp
       00DD  _u_ltemp
       00E1  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
MAIN.o	[ MAIN.C ]
<library>	[ gpop5.s, gpush.s, gpushy.s, gpushz.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

