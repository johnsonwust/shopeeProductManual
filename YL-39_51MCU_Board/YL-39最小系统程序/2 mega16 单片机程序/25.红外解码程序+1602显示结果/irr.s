	.module irr.c
	.area data(ram, con, rel)
_ASCII::
	.blkb 2
	.area idata
	.byte 48,49
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 50,51
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 52,53
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 54,55
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 56,57
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 'A,'B
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 'C,'D
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 'E,'F
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果/1602.h
	.dbsym e ASCII _ASCII A[16:16]c
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果/1602.h
	.dbfunc e s_ms _s_ms fV
;             ms -> R16,R17
	.even
_s_ms::
	.dbline -1
	.dbline 10
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 1602显示红外地址码与数据码
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
	.dbline 11
	xjmp L5
L2:
	.dbline 11
L3:
	.dbline 11
	subi R16,1
	sbci R17,0
L5:
	.dbline 11
; * 【硬件连接】： J2短路帽接上  
	ldi R24,1
	ldi R25,0
	cp R24,R16
	cpc R25,R17
	brlo L2
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r ms 16 i
	.dbend
	.dbfunc e busy _busy fV
;           temp -> R20
	.even
_busy::
	xcall push_gset1
	.dbline -1
	.dbline 16
; /******************************************************************************/
; 
; #include <iom16v.h>
; #include <macros.h>  
; #include "1602.h"
	.dbline 18
; #define uint  unsigned int
; #define uchar unsigned char
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 19
; #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
	cbi 0x1b,0
	.dbline 20
; #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 21
; #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
	sbi 0x1b,1
	.dbline 22
; #define Cpl_Bit(val, bitn)    (val^=(1<<(bitn)) )
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	xjmp L8
L7:
	.dbline 24
	.dbline 25
	sbi 0x1b,2
	.dbline 26
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 27
	clr R2
	out 0x17,R2
	.dbline 28
	ldi R24,255
	out 0x18,R24
	.dbline 29
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 30
	in R20,0x16
	andi R20,128
	.dbline 31
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 32
	ldi R24,255
	out 0x17,R24
	.dbline 33
	out 0x18,R24
	.dbline 34
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 35
	cbi 0x1b,2
	.dbline 36
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 37
L8:
	.dbline 23
; 
	tst R20
	brne L7
	.dbline -2
L6:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r temp 20 c
	.dbend
	.dbfunc e writecom _writecom fV
;            com -> R20
	.even
_writecom::
	xcall push_gset1
	mov R20,R16
	.dbline -1
	.dbline 42
;   uchar adc_0[]={"IRCodeADD:"};
;   uchar adc_1[]={"IRCodeDAT:"};
; 
; //*****************************************0
; //函数声明
;  void ICEInit(void);
;  uchar bitcnt;
;  uint newFall;
;  uint oldFall;
;  uint data0;
;  uint data1;
; 
; 
;  void ICEInit(void) //T/C1初始化
;  {
;     TIMSK=0X20; //使能捕获中断
;     TCCR1A=0X00;//T/C1时钟与系统相同，本文使用系统AVR内部自带8MHz振荡源.T/C1时钟周期为1μs
;     TCCR1B=0X82; //使能噪音抑制，下降沿触发中断
;  }
	.dbline 43
;  void main(void)
	xcall _busy
	.dbline 44
;  {   
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 45
;    DDRA = 0xff;      
	cbi 0x1b,0
	.dbline 46
;    PORTA = 0x00;      
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 47
;    DDRB = 0xFF;    
	cbi 0x1b,1
	.dbline 48
;    PORTB = 0xFF; 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 49
;    ICEInit();
	sbi 0x1b,2
	.dbline 50
;  
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 51
;    LcdInit();   
	out 0x18,R20
	.dbline 52
;    WriteChar(1,0,10,adc_0);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 53
;    WriteChar(2,0,10,adc_1);
	cbi 0x1b,2
	.dbline 54
;    SEI();
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L10:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r com 20 c
	.dbend
	.dbfunc e LcdInit _LcdInit fV
	.even
_LcdInit::
	.dbline -1
	.dbline 59
;   while(1);
;   } 
;   
;  
; #pragma interrupt_handler CAPT_ISR:iv_TIMER1_CAPT 
	.dbline 60
; 
	ldi R24,255
	out 0x17,R24
	.dbline 61
; void CAPT_ISR(void)
	clr R2
	out 0x18,R2
	.dbline 62
; {
	ldi R16,56
	xcall _writecom
	.dbline 63
;   uchar a;
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 64
;   uint temp;
	ldi R16,1
	xcall _writecom
	.dbline 65
;   newFall=ICR1;
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 66
;   temp=newFall-oldFall; //计算脉冲加间隔的时间
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 67
;   oldFall=newFall;
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 68
;    
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 69
;  if(temp>1024 && temp<1225) // "0"信号
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 70
;    {
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 71
;     temp=0;
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 72
;    }
	ldi R16,2
	xcall _writecom
	.dbline 73
; 
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 74
; else if(temp>2145 && temp<2345) //“1”信号
	ldi R16,6
	xcall _writecom
	.dbline 75
;    {
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 76
;     temp=1;
	ldi R16,12
	xcall _writecom
	.dbline 77
;    }
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 78
; 
	ldi R16,56
	xcall _writecom
	.dbline 79
; else if(temp>13400 && temp<13600) //header信号
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline -2
L11:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e writedata _writedata fV
;           data -> R20
	.even
_writedata::
	xcall push_gset1
	mov R20,R16
	.dbline -1
	.dbline 84
; 
;  {
;     bitcnt=0;
;     data0=0;
;     data1=0;
	.dbline 85
;  return; //返回，等待下次开始接收
	xcall _busy
	.dbline 86
;  }
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 87
; 
	sbi 0x1b,0
	.dbline 88
; else ///干扰信号
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 89
; {
	cbi 0x1b,1
	.dbline 90
;     return;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 91
; }
	sbi 0x1b,2
	.dbline 92
; 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 93
;   bitcnt++;
	out 0x18,R20
	.dbline 94
;     if(bitcnt<16) //开始接收前16位
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 95
;  {
	cbi 0x1b,2
	.dbline 96
;   data0=data0|(uint)temp;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L12:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r data 20 c
	.dbend
	.dbfunc e readdata _readdata fc
;           temp -> R20
	.even
_readdata::
	xcall push_gset1
	.dbline -1
	.dbline 102
;   data0=data0<<1;
;  }
; else if(bitcnt==16)
;  {
;  data0=data0|(uint)temp;
;  }
	.dbline 104
;  else if(bitcnt<32) //开始接收后16位
;  { 
	xcall _busy
	.dbline 105
;  data1=data1|(uint)temp;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 106
;  data1=data1<<1;
	sbi 0x1b,0
	.dbline 107
;  }
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 108
;  else if(bitcnt==32) //接收完最后一位
	sbi 0x1b,1
	.dbline 109
;  {
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 110
;  
	sbi 0x1b,2
	.dbline 111
;           data1=data1|(uint)temp;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 112
; 		  WriteNum(1,10,ASCII[(uchar)(data0>>8)/16]);
	clr R2
	out 0x17,R2
	.dbline 113
; 		  WriteNum(1,11,ASCII[(uchar)(data0>>8)%16]);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 114
; 		  WriteNum(1,12,ASCII[(uchar)data0/16]);
	in R20,0x16
	.dbline 115
; 		  WriteNum(1,13,ASCII[(uchar)data0%16]);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 116
; 		  WriteNum(2,10,ASCII[(uchar)(data1>>8)/16]);
	ldi R24,255
	out 0x17,R24
	.dbline 117
; 		  WriteNum(2,11,ASCII[(uchar)(data1>>8)%16]);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 118
; 		  WriteNum(2,12,ASCII[(uchar)data1/16]);
	cbi 0x1b,2
	.dbline 119
; 		  WriteNum(2,13,ASCII[(uchar)data1%16]);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 120
;  }
	mov R16,R20
	.dbline -2
L13:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r temp 20 c
	.dbend
	.dbfunc e WriteCGRAM _WriteCGRAM fV
;              t -> R20,R21
;              i -> R22,R23
;        pBuffer -> R10,R11
;            num -> R20,R21
	.even
_WriteCGRAM::
	xcall push_gset3
	movw R10,R18
	movw R20,R16
	.dbline -1
	.dbline 130
;  
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 132
; }
; }
	ldi R16,64
	xcall _writecom
	.dbline 133
; }
	sbi 0x1b,0
	.dbline 134
; }
	cbi 0x1b,1
	.dbline 135
; }
	movw R22,R20
	xjmp L18
L15:
	.dbline 136
	.dbline 137
	movw R30,R10
	lpm R20,Z+
	lpm R21,Z
	.dbline 138
	sbi 0x1b,2
	.dbline 139
	out 0x18,R20
	.dbline 140
	cbi 0x1b,2
	.dbline 141
	movw R24,R10
	adiw R24,2
	movw R10,R24
	.dbline 142
L16:
	.dbline 135
	subi R22,1
	sbci R23,0
L18:
	.dbline 135
	cpi R22,0
	cpc R22,R23
	brne L15
X0:
	.dbline -2
L14:
	xcall pop_gset3
	.dbline 0 ; func end
	ret
	.dbsym r t 20 i
	.dbsym r i 22 i
	.dbsym r pBuffer 10 pki
	.dbsym r num 20 i
	.dbend
	.dbfunc e WriteMenu _WriteMenu fV
;              t -> R20
;              i -> R22
;        pBuffer -> R10,R11
	.even
_WriteMenu::
	xcall push_gset3
	movw R10,R16
	.dbline -1
	.dbline 152
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 154
; }
; }
	ldi R16,128
	xcall _writecom
	.dbline 156
; }
; }
	sbi 0x1b,0
	.dbline 157
; }
	cbi 0x1b,1
	.dbline 158
; }
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 159
; }
	clr R22
	xjmp L23
L20:
	.dbline 160
	.dbline 161
	movw R30,R10
	lpm R20,Z
	.dbline 162
	out 0x18,R20
	.dbline 163
	sbi 0x1b,2
	.dbline 164
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 165
	cbi 0x1b,2
	.dbline 166
	movw R24,R10
	adiw R24,1
	movw R10,R24
	.dbline 167
L21:
	.dbline 159
	inc R22
L23:
	.dbline 159
	cpi R22,16
	brlo L20
	.dbline 168
; }
; }
; }
; }
; }
; }
; }
; }
; }
	ldi R16,192
	xcall _writecom
	.dbline 170
; }
; }
	sbi 0x1b,0
	.dbline 171
; }
	cbi 0x1b,1
	.dbline 172
; }
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 173
; }
	clr R22
	xjmp L27
L24:
	.dbline 174
	.dbline 175
	movw R30,R10
	lpm R20,Z
	.dbline 176
	out 0x18,R20
	.dbline 177
	sbi 0x1b,2
	.dbline 178
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 179
	cbi 0x1b,2
	.dbline 180
	movw R24,R10
	adiw R24,1
	movw R10,R24
	.dbline 181
L25:
	.dbline 173
	inc R22
L27:
	.dbline 173
	cpi R22,16
	brlo L24
	.dbline -2
L19:
	xcall pop_gset3
	.dbline 0 ; func end
	ret
	.dbsym r t 20 c
	.dbsym r i 22 c
	.dbsym r pBuffer 10 pkc
	.dbend
	.dbfunc e WriteNum _WriteNum fV
;            num -> y+4
;            col -> R22,R23
;            row -> R20,R21
	.even
_WriteNum::
	xcall push_gset2
	movw R22,R18
	movw R20,R16
	.dbline -1
	.dbline 191
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 192
; }
	cpi R20,1
	ldi R30,0
	cpc R21,R30
	brne L29
	.dbline 192
	movw R20,R22
	subi R20,128  ; offset = 128
	sbci R21,255
	xjmp L30
L29:
	.dbline 193
; }
	movw R20,R22
	subi R20,64  ; offset = 192
	sbci R21,255
L30:
	.dbline 194
; }
	mov R16,R20
	xcall _writecom
	.dbline 195
; }
	ldd R16,y+4
	ldd R17,y+5
	xcall _writedata
	.dbline -2
L28:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym l num 4 i
	.dbsym r col 22 i
	.dbsym r row 20 i
	.dbend
	.dbfunc e WriteChar _WriteChar fV
;              t -> R20
;              i -> R22
;        pBuffer -> R10,R11
;            num -> y+6
;            col -> R22
;            row -> R20
	.even
_WriteChar::
	xcall push_gset3
	mov R22,R18
	mov R20,R16
	ldd R10,y+8
	ldd R11,y+9
	.dbline -1
	.dbline 207
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 209
; }
; }
	cpi R20,1
	brne L32
	.dbline 209
	mov R20,R22
	subi R20,128    ; addi 128
	xjmp L33
L32:
	.dbline 210
; }
	mov R20,R22
	subi R20,64    ; addi 192
L33:
	.dbline 211
; }
	mov R16,R20
	xcall _writecom
	.dbline 215
; }
; }
; }
; }
	sbi 0x1b,0
	.dbline 216
; }
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 217
; }
	cbi 0x1b,1
	.dbline 218
; }
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 219
; }
	ldd R22,y+6
	ldd R23,y+7
	xjmp L37
L34:
	.dbline 220
	.dbline 221
	movw R30,R10
	ldd R20,z+0
	.dbline 222
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 223
	out 0x18,R20
	.dbline 224
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 225
	sbi 0x1b,2
	.dbline 226
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 227
	cbi 0x1b,2
	.dbline 228
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 229
	movw R24,R10
	adiw R24,1
	movw R10,R24
	.dbline 230
L35:
	.dbline 219
	dec R22
L37:
	.dbline 219
	tst R22
	brne L34
	.dbline -2
L31:
	xcall pop_gset3
	.dbline 0 ; func end
	ret
	.dbsym r t 20 c
	.dbsym r i 22 c
	.dbsym r pBuffer 10 pc
	.dbsym l num 6 i
	.dbsym r col 22 c
	.dbsym r row 20 c
	.dbend
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果/1602.h
_adc_0::
	.blkb 11
	.area idata
	.byte 'I,'R,'C,'o,'d,'e,'A,'D,'D,58,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果/1602.h
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果\irr.c
	.dbsym e adc_0 _adc_0 A[11:11]c
_adc_1::
	.blkb 11
	.area idata
	.byte 'I,'R,'C,'o,'d,'e,'D,'A,'T,58,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果\irr.c
	.dbsym e adc_1 _adc_1 A[11:11]c
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果\irr.c
	.dbfunc e ICEInit _ICEInit fV
	.even
_ICEInit::
	.dbline -1
	.dbline 38
	.dbline 39
	ldi R24,32
	out 0x39,R24
	.dbline 40
	clr R2
	out 0x2f,R2
	.dbline 41
	ldi R24,130
	out 0x2e,R24
	.dbline -2
L38:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	sbiw R28,4
	.dbline -1
	.dbline 44
	.dbline 45
	ldi R24,255
	out 0x1a,R24
	.dbline 46
	clr R2
	out 0x1b,R2
	.dbline 47
	out 0x17,R24
	.dbline 48
	out 0x18,R24
	.dbline 49
	xcall _ICEInit
	.dbline 51
	xcall _LcdInit
	.dbline 52
	ldi R24,<_adc_0
	ldi R25,>_adc_0
	std y+3,R25
	std y+2,R24
	ldi R24,10
	ldi R25,0
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,1
	xcall _WriteChar
	.dbline 53
	ldi R24,<_adc_1
	ldi R25,>_adc_1
	std y+3,R25
	std y+2,R24
	ldi R24,10
	ldi R25,0
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,2
	xcall _WriteChar
	.dbline 54
	sei
L40:
	.dbline 55
L41:
	.dbline 55
	xjmp L40
X1:
	.dbline -2
L39:
	adiw R28,4
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 20
	jmp _CAPT_ISR
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果\irr.c
	.dbfunc e CAPT_ISR _CAPT_ISR fV
;              a -> <dead>
;           temp -> R20,R21
	.even
_CAPT_ISR::
	xcall push_lset
	xcall push_gset1
	sbiw R28,2
	.dbline -1
	.dbline 62
	.dbline 65
	in R2,0x26
	in R3,0x27
	sts _newFall+1,R3
	sts _newFall,R2
	.dbline 66
	lds R2,_oldFall
	lds R3,_oldFall+1
	lds R20,_newFall
	lds R21,_newFall+1
	sub R20,R2
	sbc R21,R3
	.dbline 67
	lds R2,_newFall
	lds R3,_newFall+1
	sts _oldFall+1,R3
	sts _oldFall,R2
	.dbline 69
	ldi R24,1024
	ldi R25,4
	cp R24,R20
	cpc R25,R21
	brsh L44
	cpi R20,201
	ldi R30,4
	cpc R21,R30
	brsh L44
	.dbline 70
	.dbline 71
	clr R20
	clr R21
	.dbline 72
	xjmp L45
L44:
	.dbline 74
	ldi R24,2145
	ldi R25,8
	cp R24,R20
	cpc R25,R21
	brsh L46
	cpi R20,41
	ldi R30,9
	cpc R21,R30
	brsh L46
	.dbline 75
	.dbline 76
	ldi R20,1
	ldi R21,0
	.dbline 77
	xjmp L47
L46:
	.dbline 79
	ldi R24,13400
	ldi R25,52
	cp R24,R20
	cpc R25,R21
	brlo X3
	xjmp L43
X3:
	cpi R20,32
	ldi R30,53
	cpc R21,R30
	brlo X4
	xjmp L43
X4:
	.dbline 81
	.dbline 82
	clr R2
	sts _bitcnt,R2
	.dbline 83
	clr R3
	sts _data0+1,R3
	sts _data0,R2
	.dbline 84
	sts _data1+1,R3
	sts _data1,R2
	.dbline 85
	xjmp L43
X2:
	.dbline 89
	.dbline 90
L47:
L45:
	.dbline 93
	lds R24,_bitcnt
	subi R24,255    ; addi 1
	sts _bitcnt,R24
	.dbline 94
	cpi R24,16
	brsh L50
	.dbline 95
	.dbline 96
	lds R2,_data0
	lds R3,_data0+1
	or R2,R20
	or R3,R21
	sts _data0+1,R3
	sts _data0,R2
	.dbline 97
	lsl R2
	rol R3
	sts _data0+1,R3
	sts _data0,R2
	.dbline 98
	xjmp L51
L50:
	.dbline 99
	lds R24,_bitcnt
	cpi R24,16
	brne L52
	.dbline 100
	.dbline 101
	lds R2,_data0
	lds R3,_data0+1
	or R2,R20
	or R3,R21
	sts _data0+1,R3
	sts _data0,R2
	.dbline 102
	xjmp L53
L52:
	.dbline 103
	lds R24,_bitcnt
	cpi R24,32
	brsh L54
	.dbline 104
	.dbline 105
	lds R2,_data1
	lds R3,_data1+1
	or R2,R20
	or R3,R21
	sts _data1+1,R3
	sts _data1,R2
	.dbline 106
	lsl R2
	rol R3
	sts _data1+1,R3
	sts _data1,R2
	.dbline 107
	xjmp L55
L54:
	.dbline 108
	lds R24,_bitcnt
	cpi R24,32
	breq X5
	xjmp L56
X5:
	.dbline 109
	.dbline 111
	lds R2,_data1
	lds R3,_data1+1
	or R2,R20
	or R3,R21
	sts _data1+1,R3
	sts _data1,R2
	.dbline 112
	ldi R18,16
	ldi R19,0
	lds R16,_data0
	lds R17,_data0+1
	mov R16,R17
	clr R17
	clr R17
	xcall div16s
	movw R30,R16
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,10
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 113
	ldi R18,16
	ldi R19,0
	lds R16,_data0
	lds R17,_data0+1
	mov R16,R17
	clr R17
	clr R17
	xcall mod16s
	movw R30,R16
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,11
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 114
	ldi R18,16
	ldi R19,0
	lds R16,_data0
	clr R17
	xcall div16s
	movw R30,R16
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,12
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 115
	ldi R18,16
	ldi R19,0
	lds R16,_data0
	clr R17
	xcall mod16s
	movw R30,R16
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,13
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 116
	ldi R18,16
	ldi R19,0
	lds R16,_data1
	lds R17,_data1+1
	mov R16,R17
	clr R17
	clr R17
	xcall div16s
	movw R30,R16
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,10
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 117
	ldi R18,16
	ldi R19,0
	lds R16,_data1
	lds R17,_data1+1
	mov R16,R17
	clr R17
	clr R17
	xcall mod16s
	movw R30,R16
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,11
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 118
	ldi R18,16
	ldi R19,0
	lds R16,_data1
	clr R17
	xcall div16s
	movw R30,R16
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,12
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 119
	ldi R18,16
	ldi R19,0
	lds R16,_data1
	clr R17
	xcall mod16s
	movw R30,R16
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,13
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 120
L56:
L55:
L53:
L51:
	.dbline -2
L43:
	adiw R28,2
	xcall pop_gset1
	xcall pop_lset
	.dbline 0 ; func end
	reti
	.dbsym l a 3 c
	.dbsym r temp 20 i
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果\irr.c
_data1::
	.blkb 2
	.dbsym e data1 _data1 i
_data0::
	.blkb 2
	.dbsym e data0 _data0 i
_oldFall::
	.blkb 2
	.dbsym e oldFall _oldFall i
_newFall::
	.blkb 2
	.dbsym e newFall _newFall i
_bitcnt::
	.blkb 1
	.dbsym e bitcnt _bitcnt c
