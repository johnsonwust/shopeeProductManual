	.module ADC-1602.c
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
	.byte 46,45
	.area data(ram, con, rel)
	.blkb 1
	.area idata
	.byte 'M
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602/1602.h
	.dbsym e ASCII _ASCII A[15:15]c
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602/1602.h
	.dbfunc e s_ms _s_ms fV
;             ms -> R16,R17
	.even
_s_ms::
	.dbline -1
	.dbline 10
; /******************************************************************************/
;                                                   
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： LCD1602 电位器R20调节输入电压    内部2。56基准电压
; * 【晶    振】:  8M		
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
; * 【芯    片】:  ATMEGA16A	 
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
; * 【硬件连接】： J2短路帽接上  
; /******************************************************************************/
; #include<iom16v.h>
; #include <macros.h>
; #include"1602.h"
	.dbline 18
; #define uchar unsigned char 
; #define uint unsigned int 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 19
; #define N 64
	cbi 0x1b,0
	.dbline 20
; 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 21
; uchar adc_0[]={"ADC_0: .    V"};
	sbi 0x1b,1
	.dbline 22
; uchar k=0;
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
; uint sum_adc[N]={0};
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
; //ADC测试,使用1602显示ADC0和ADC1的值
; //主函数
; void main(void)//主函数
; {
;     unsigned int i,j;
;     unsigned char disbuf[4]={0,0,0,0};
; 	 
; 	DDRA|=1<<0|1<<1|1<<2|0<<7;//设置PA0,PA1,PA2为输出,PA7为输入
; 	PORTA=0x00;
; 
; 	DDRB|=0xFF;//数据口输出
; 	PORTB=0xFF;
; 	
; 	LcdInit();	//设置液晶显示器
;     WriteChar(1,0,13,adc_0);//显示
; 	
; 	ADCSRA=0X00;    
;     ADMUX =(1<<REFS0)|(1<<REFS1)|(0<<MUX0)|(0<<MUX1)|(0<<MUX2)|(0<<MUX3)|(0<<MUX4); //采用内部5参考电压，ADC7输入
;     ADCSRA=(1<<ADEN)|(1<<ADSC)|(1<<ADIE)|(1<<ADPS2)|(1<<ADPS1) ;//ADC转换 64分频
	.dbline 43
; 	SEI();//开中断
	xcall _busy
	.dbline 44
;     while(1);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 45
; 		
	cbi 0x1b,0
	.dbline 46
; } //ENDmain
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 47
; 
	cbi 0x1b,1
	.dbline 48
; uint ADC_Convert(void)
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 49
; {   
	sbi 0x1b,2
	.dbline 50
; 	 uint temp1,temp2;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 51
; 	 temp1=(uint)ADCL;
	out 0x18,R20
	.dbline 52
; 	 temp2=(uint)ADCH;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 53
; 	 temp2=(temp2<<8)+temp1;//10位精度
	cbi 0x1b,2
	.dbline 54
; 	 return(temp2);
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
; }
; 
; 
; #pragma interrupt_handler adc_isr:iv_ADC 
; void adc_isr(void)
	.dbline 60
; {
	ldi R24,255
	out 0x17,R24
	.dbline 61
;     unsigned  long int i;
	clr R2
	out 0x18,R2
	.dbline 62
; 	unsigned char disbuf[5]={0,0,0,0,0};
	ldi R16,56
	xcall _writecom
	.dbline 63
; 	unsigned char f;
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 64
; 	unsigned long sum_aver_adc=0;
	ldi R16,1
	xcall _writecom
	.dbline 65
; 	
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 66
;     ADMUX =(1<<REFS0)|(1<<REFS1)|(1<<MUX0)|(1<<MUX1)|(1<<MUX2)|(0<<MUX3)|(0<<MUX4);//内部2.56基准，PA7 AD输入
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 67
;     ADCSRA|=(1<<ADSC);//启动AD转换
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 68
; 	
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 69
; 	sum_adc[k]=ADC_Convert();     
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 70
; 	k++;
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 71
; 	if(k>=N)
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 72
;   {
	ldi R16,2
	xcall _writecom
	.dbline 73
; 	k=0;
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 74
; 	  for(f=0;f<N;f++)
	ldi R16,6
	xcall _writecom
	.dbline 75
; 	  {
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 76
;       sum_aver_adc=sum_aver_adc+sum_adc[f];  //总的加起来
	ldi R16,12
	xcall _writecom
	.dbline 77
; 	  }
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 78
; 	  sum_aver_adc=(sum_aver_adc/N);         //除下，算平均
	ldi R16,56
	xcall _writecom
	.dbline 79
; 	  i=(26000* sum_aver_adc)/1023;          //算出电压
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
; 	  disbuf[4]=i/10000;
;       i=i%10000;
;       disbuf[3]=i/1000;
;       i=i%1000;
	.dbline 85
;       disbuf[2]=i/100;
	xcall _busy
	.dbline 86
;       i=i%100;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 87
; 	  disbuf[1]=i/10;
	sbi 0x1b,0
	.dbline 88
; 	  i=i%10;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 89
; 	  disbuf[0]=i;
	cbi 0x1b,1
	.dbline 90
; 	  
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 91
; 	  WriteNum(1,6,ASCII[disbuf[4]]);
	sbi 0x1b,2
	.dbline 92
; 	  WriteNum(1,8,ASCII[disbuf[3]]);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 93
; 	  WriteNum(1,9,ASCII[disbuf[2]]);
	out 0x18,R20
	.dbline 94
; 	  WriteNum(1,10,ASCII[disbuf[1]]);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 95
; 	  WriteNum(1,11,ASCII[disbuf[0]]);
	cbi 0x1b,2
	.dbline 96
; 	 
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
;   }
; 	        
; }//end void 
; }//end void 
; }//end void 
; }//end void 
	.dbline 104
; }//end void 
; }//end void 
	xcall _busy
	.dbline 105
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 106
; }//end void 
	sbi 0x1b,0
	.dbline 107
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 108
; }//end void 
	sbi 0x1b,1
	.dbline 109
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 110
; }//end void 
	sbi 0x1b,2
	.dbline 111
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 112
; }//end void 
	clr R2
	out 0x17,R2
	.dbline 113
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 114
; }//end void 
	in R20,0x16
	.dbline 115
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 116
; }//end void 
	ldi R24,255
	out 0x17,R24
	.dbline 117
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 118
; }//end void 
	cbi 0x1b,2
	.dbline 119
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 120
; }//end void 
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
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
	.dbline 132
; }//end void 
; }//end void 
	ldi R16,64
	xcall _writecom
	.dbline 133
; }//end void 
	sbi 0x1b,0
	.dbline 134
; }//end void 
	cbi 0x1b,1
	.dbline 135
; }//end void 
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
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
	.dbline 154
; }//end void 
; }//end void 
	ldi R16,128
	xcall _writecom
	.dbline 156
; }//end void 
; }//end void 
	sbi 0x1b,0
	.dbline 157
; }//end void 
	cbi 0x1b,1
	.dbline 158
; }//end void 
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 159
; }//end void 
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
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
	ldi R16,192
	xcall _writecom
	.dbline 170
; }//end void 
; }//end void 
	sbi 0x1b,0
	.dbline 171
; }//end void 
	cbi 0x1b,1
	.dbline 172
; }//end void 
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 173
; }//end void 
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
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
	.dbline 192
; }//end void 
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
; }//end void 
	movw R20,R22
	subi R20,64  ; offset = 192
	sbci R21,255
L30:
	.dbline 194
; }//end void 
	mov R16,R20
	xcall _writecom
	.dbline 195
; }//end void 
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
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
; }//end void 
	.dbline 209
; }//end void 
; }//end void 
	cpi R20,1
	brne L32
	.dbline 209
	mov R20,R22
	subi R20,128    ; addi 128
	xjmp L33
L32:
	.dbline 210
; }//end void 
	mov R20,R22
	subi R20,64    ; addi 192
L33:
	.dbline 211
; }//end void 
	mov R16,R20
	xcall _writecom
	.dbline 215
; }//end void 
; }//end void 
; }//end void 
; }//end void 
	sbi 0x1b,0
	.dbline 216
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 217
; }//end void 
	cbi 0x1b,1
	.dbline 218
; }//end void 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 219
; }//end void 
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
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602/1602.h
_adc_0::
	.blkb 14
	.area idata
	.byte 'A,'D,'C,95,48,58,32,46,32,32,32,32,'V,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602/1602.h
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602\ADC-1602.c
	.dbsym e adc_0 _adc_0 A[14:14]c
_k::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602\ADC-1602.c
	.dbsym e k _k c
_sum_adc::
	.blkb 2
	.area idata
	.word 0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602\ADC-1602.c
	.blkb 126
	.area idata
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602\ADC-1602.c
	.dbsym e sum_adc _sum_adc A[128:64]i
	.area lit(rom, con, rel)
L39:
	.byte 0,0
	.byte 0,0
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602\ADC-1602.c
	.dbfunc e main _main fV
;              j -> <dead>
;              i -> <dead>
;         disbuf -> y+4
	.even
_main::
	sbiw R28,8
	.dbline -1
	.dbline 27
	.dbline 29
	ldi R24,<L39
	ldi R25,>L39
	movw R30,R28
	adiw R30,4
	ldi R16,4
	ldi R17,0
	st -y,R31
	st -y,R30
	st -y,R25
	st -y,R24
	xcall asgncblk
	.dbline 31
	in R24,0x1a
	ori R24,7
	out 0x1a,R24
	.dbline 32
	clr R2
	out 0x1b,R2
	.dbline 34
	in R24,0x17
	ori R24,255
	out 0x17,R24
	.dbline 35
	ldi R24,255
	out 0x18,R24
	.dbline 37
	xcall _LcdInit
	.dbline 38
	ldi R24,<_adc_0
	ldi R25,>_adc_0
	std y+3,R25
	std y+2,R24
	ldi R24,13
	ldi R25,0
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,1
	xcall _WriteChar
	.dbline 40
	clr R2
	out 0x6,R2
	.dbline 41
	ldi R24,192
	out 0x7,R24
	.dbline 42
	ldi R24,206
	out 0x6,R24
	.dbline 43
	sei
L40:
	.dbline 44
L41:
	.dbline 44
	xjmp L40
X1:
	.dbline -2
L38:
	adiw R28,8
	.dbline 0 ; func end
	ret
	.dbsym l j 5 i
	.dbsym l i 5 i
	.dbsym l disbuf 4 A[4:4]c
	.dbend
	.dbfunc e ADC_Convert _ADC_Convert fi
;          temp1 -> R18,R19
;          temp2 -> R16,R17
	.even
_ADC_Convert::
	.dbline -1
	.dbline 49
	.dbline 51
	in R18,0x4
	clr R19
	.dbline 52
	in R16,0x5
	clr R17
	.dbline 53
	movw R2,R16
	mov R3,R2
	clr R2
	add R2,R18
	adc R3,R19
	movw R16,R2
	.dbline 54
	.dbline -2
L43:
	.dbline 0 ; func end
	ret
	.dbsym r temp1 18 i
	.dbsym r temp2 16 i
	.dbend
	.area vector(rom, abs)
	.org 56
	jmp _adc_isr
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602\ADC-1602.c
	.area lit(rom, con, rel)
L45:
	.byte 0,0
	.byte 0,0
	.byte 0
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\26.ADC模数转换1602显示电压\adc_1602\ADC-1602.c
	.dbfunc e adc_isr _adc_isr fV
;         disbuf -> y+10
;              i -> y+6
;   sum_aver_adc -> y+2
;              f -> R10
	.even
_adc_isr::
	xcall push_lset
	xcall push_gset3
	sbiw R28,15
	.dbline -1
	.dbline 60
	.dbline 62
	ldi R24,<L45
	ldi R25,>L45
	movw R30,R28
	adiw R30,10
	ldi R16,5
	ldi R17,0
	st -y,R31
	st -y,R30
	st -y,R25
	st -y,R24
	xcall asgncblk
	.dbline 64
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+2,R20
	std z+3,R21
	std z+4,R22
	std z+5,R23
	.dbline 66
	ldi R24,199
	out 0x7,R24
	.dbline 67
	sbi 0x6,6
	.dbline 69
	xcall _ADC_Convert
	lds R2,_k
	ldi R24,2
	mul R24,R2
	movw R30,R0
	ldi R24,<_sum_adc
	ldi R25,>_sum_adc
	add R30,R24
	adc R31,R25
	std z+1,R17
	std z+0,R16
	.dbline 70
	lds R24,_k
	subi R24,255    ; addi 1
	sts _k,R24
	.dbline 71
	cpi R24,64
	brsh X2
	xjmp L46
X2:
	.dbline 72
	.dbline 73
	clr R2
	sts _k,R2
	.dbline 74
	clr R10
	xjmp L51
L48:
	.dbline 75
	.dbline 76
	ldi R24,2
	mul R24,R10
	movw R30,R0
	ldi R24,<_sum_adc
	ldi R25,>_sum_adc
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	ldd R3,z+1
	clr R4
	clr R5
	movw R30,R28
	ldd R6,z+2
	ldd R7,z+3
	ldd R8,z+4
	ldd R9,z+5
	add R6,R2
	adc R7,R3
	adc R8,R4
	adc R9,R5
	movw R30,R28
	std z+2,R6
	std z+3,R7
	std z+4,R8
	std z+5,R9
	.dbline 77
L49:
	.dbline 74
	inc R10
L51:
	.dbline 74
	mov R24,R10
	cpi R24,64
	brlo L48
	.dbline 78
	ldi R24,6
	ldi R25,0
	movw R30,R28
	ldd R2,z+2
	ldd R3,z+3
	ldd R4,z+4
	ldd R5,z+5
	st -y,R24
	movw R16,R2
	movw R18,R4
	xcall lsr32
	movw R30,R28
	std z+2,R16
	std z+3,R17
	std z+4,R18
	std z+5,R19
	.dbline 79
	movw R30,R28
	ldd R2,z+2
	ldd R3,z+3
	ldd R4,z+4
	ldd R5,z+5
	ldi R20,144
	ldi R21,101
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	ldi R20,255
	ldi R21,3
	ldi R22,0
	ldi R23,0
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall div32u
	movw R30,R28
	std z+6,R16
	std z+7,R17
	std z+8,R18
	std z+9,R19
	.dbline 81
	ldi R20,16
	ldi R21,39
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	std y+14,R16
	.dbline 82
	ldi R20,16
	ldi R21,39
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+6,R16
	std z+7,R17
	std z+8,R18
	std z+9,R19
	.dbline 83
	ldi R20,232
	ldi R21,3
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	std y+13,R16
	.dbline 84
	ldi R20,232
	ldi R21,3
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+6,R16
	std z+7,R17
	std z+8,R18
	std z+9,R19
	.dbline 85
	ldi R20,100
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	std y+12,R16
	.dbline 86
	ldi R20,100
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+6,R16
	std z+7,R17
	std z+8,R18
	std z+9,R19
	.dbline 87
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	std y+11,R16
	.dbline 88
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+6,R16
	std z+7,R17
	std z+8,R18
	std z+9,R19
	.dbline 89
	movw R30,R28
	ldd R2,z+6
	ldd R3,z+7
	ldd R4,z+8
	ldd R5,z+9
	std y+10,R2
	.dbline 91
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	ldd R30,y+14
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,6
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 92
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	ldd R30,y+13
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,8
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 93
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	ldd R30,y+12
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,9
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 94
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	ldd R30,y+11
	clr R31
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
	.dbline 95
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	ldd R30,y+10
	clr R31
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
	.dbline 97
L46:
	.dbline -2
L44:
	adiw R28,15
	xcall pop_gset3
	xcall pop_lset
	.dbline 0 ; func end
	reti
	.dbsym l disbuf 10 A[5:5]c
	.dbsym l i 6 l
	.dbsym l sum_aver_adc 2 l
	.dbsym r f 10 c
	.dbend
