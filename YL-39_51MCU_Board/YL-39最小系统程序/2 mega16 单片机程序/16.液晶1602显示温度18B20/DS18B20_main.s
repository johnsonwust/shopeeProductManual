	.module DS18B20_main.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20_main.c
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.dbfunc e delay_18B20 _delay_18B20 fV
;              x -> R16,R17
	.even
_delay_18B20::
	.dbline -1
	.dbline 20
; 
; /******************************************************************/
; //DS18B20连接在端口C的第7引脚
; /******************************************************************/
; //设置成输入
; #define DQ_INPUT DDRC &= ~(1 << PC1)   
; //设置成输出
; #define DQ_OUT DDRC |= (1 << PC1)    
; //设置成低电平
; #define DQ_LO PORTC &= ~(1 << PC1)  
; //设置成高电平
; #define DQ_HI PORTC |= (1 << PC1)   
; //读出
; #define DQ_R PINC & (1 << PC1) 
; 
; /******************************************************************/
; //DS18B20专用延时程序
; /******************************************************************/
; void delay_18B20(unsigned int x)  //1.5us左右 
; { 
	xjmp L3
L2:
	.dbline 22
;      while(x) 
;     { 
	.dbline 23
;        x--; 
	subi R16,1
	sbci R17,0
	.dbline 24
;     } 
L3:
	.dbline 21
	cpi R16,0
	cpc R16,R17
	brne L2
X0:
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r x 16 i
	.dbend
	.dbfunc e Init_1820 _Init_1820 fV
	.even
_Init_1820::
	.dbline -1
	.dbline 31
; } 
; 
; /******************************************************************/
; //初始化DS18B20
; /******************************************************************/
; void Init_1820() 
; { 
	.dbline 32
;     DQ_OUT;
	sbi 0x14,1
	.dbline 33
; 	DQ_HI;
	sbi 0x15,1
	.dbline 34
; 	DQ_LO;
	cbi 0x15,1
	.dbline 35
;     delay_18B20(3000);    //480us以上 
	ldi R16,3000
	ldi R17,11
	xcall _delay_18B20
	.dbline 36
; 	DQ_HI;
	sbi 0x15,1
	.dbline 37
; 	DQ_INPUT;
	cbi 0x14,1
	.dbline 38
;     delay_18B20(50);     //15~60us 
	ldi R16,50
	ldi R17,0
	xcall _delay_18B20
L6:
	.dbline 39
; 	while(DQ_R);
L7:
	.dbline 39
	sbic 0x13,1
	rjmp L6
X1:
	.dbline 40
; 	DQ_OUT;
	sbi 0x14,1
	.dbline 41
; 	DQ_HI;
	sbi 0x15,1
	.dbline 42
;     delay_18B20(150);   //60~240us 
	ldi R16,150
	ldi R17,0
	.dbline -2
L5:
	.dbline 0 ; func end
	xjmp _delay_18B20
	.dbend
	.dbfunc e Write_1820 _Write_1820 fI
;              m -> R20
;              x -> R10
	.even
_Write_1820::
	st -y,R10
	st -y,R20
	mov R10,R16
	.dbline -1
	.dbline 48
; } 
; /******************************************************************/
; //写入一个字节入DS18B20
; /******************************************************************/
; Write_1820(unsigned char x) 
; {    
	.dbline 50
;     unsigned char m; 
;     for(m=0;m<8;m++) 
	clr R20
	xjmp L13
L10:
	.dbline 51
;     { 
	.dbline 52
; 	   DQ_LO;
	cbi 0x15,1
	.dbline 53
;        if(x&(1<<m))    //写数据，从低位开始 
	ldi R16,1
	mov R17,R20
	xcall lsl8
	mov R2,R10
	and R2,R16
	breq L14
X2:
	.dbline 54
; 	   DQ_HI;
	sbi 0x15,1
	xjmp L15
L14:
	.dbline 56
;        else 
; 	   DQ_LO;
	cbi 0x15,1
L15:
	.dbline 57
;        delay_18B20(40);   //15~60us 
	ldi R16,40
	ldi R17,0
	xcall _delay_18B20
	.dbline 58
; 	   DQ_HI;
	sbi 0x15,1
	.dbline 59
;     } 
L11:
	.dbline 50
	inc R20
L13:
	.dbline 50
	cpi R20,8
	brlo L10
X3:
	.dbline 60
; 	   DQ_HI;
	sbi 0x15,1
	.dbline -2
L9:
	.dbline 0 ; func end
	ld R20,y+
	ld R10,y+
	ret
	.dbsym r m 20 c
	.dbsym r x 10 c
	.dbend
	.dbfunc e Read_1820 _Read_1820 fc
;           temp -> R10
;              k -> R22
;              n -> R20
	.even
_Read_1820::
	xcall push_xgsetF00C
	.dbline -1
	.dbline 66
; } 
; /******************************************************************/
; //读出一个字节入DS18B20
; /******************************************************************/
; unsigned char Read_1820() 
; {     
	.dbline 68
;     unsigned char temp,k,n; 
;        temp=0; 
	clr R10
	.dbline 69
;     for(n=0;n<8;n++) 
	clr R20
	xjmp L20
L17:
	.dbline 70
;        { 
	.dbline 71
; 	   DQ_LO;
	cbi 0x15,1
	.dbline 72
; 	   DQ_HI;
	sbi 0x15,1
	.dbline 73
; 	   DQ_INPUT;
	cbi 0x14,1
	.dbline 74
;        k=(DQ_R);    //读数据,从低位开始 
	in R22,0x13
	andi R22,2
	.dbline 75
;        if(k) 
	breq L21
X4:
	.dbline 76
;        temp|=(1<<n); 
	ldi R16,1
	mov R17,R20
	xcall lsl8
	or R10,R16
	xjmp L22
L21:
	.dbline 78
;        else
;        temp&=~(1<<n); 
	ldi R16,1
	mov R17,R20
	xcall lsl8
	mov R2,R16
	com R2
	and R10,R2
L22:
	.dbline 79
;        delay_18B20(50); //60~120us     
	ldi R16,50
	ldi R17,0
	xcall _delay_18B20
	.dbline 80
; 	   DQ_OUT;
	sbi 0x14,1
	.dbline 81
;        } 
L18:
	.dbline 69
	inc R20
L20:
	.dbline 69
	cpi R20,8
	brlo L17
X5:
	.dbline 82
;    return (temp); 
	mov R16,R10
	.dbline -2
L16:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r temp 10 c
	.dbsym r k 22 c
	.dbsym r n 20 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
_ASCII::
	.blkb 2
	.area idata
	.byte 48,49
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.blkb 2
	.area idata
	.byte 50,51
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.blkb 2
	.area idata
	.byte 52,53
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.blkb 2
	.area idata
	.byte 54,55
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.blkb 2
	.area idata
	.byte 56,57
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.blkb 2
	.area idata
	.byte 46,45
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.blkb 1
	.area idata
	.byte 'M
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\1602.h
	.dbsym e ASCII _ASCII A[15:15]c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\1602.h
	.dbfunc e s_ms _s_ms fV
;             ms -> R16,R17
	.even
_s_ms::
	.dbline -1
	.dbline 10
; #define uchar unsigned char 
; #define uint unsigned int 
; 
; #define RS 0
; #define RW 1
; #define EN 2
; uchar ASCII[15] =    {'0','1','2','3','4','5','6','7','8','9','.','-','M'};
; 
; void s_ms(uint ms)
; {
	.dbline 11
; 	for(;ms>1;ms--);
	xjmp L27
L24:
	.dbline 11
L25:
	.dbline 11
	subi R16,1
	sbci R17,0
L27:
	.dbline 11
	ldi R24,1
	ldi R25,0
	cp R24,R16
	cpc R25,R17
	brlo L24
X6:
	.dbline -2
L23:
	.dbline 0 ; func end
	ret
	.dbsym r ms 16 i
	.dbend
	.dbfunc e busy _busy fV
;           temp -> R20
	.even
_busy::
	st -y,R20
	.dbline -1
	.dbline 16
; }	
; 
; //查忙
; void busy(void)
; {
	.dbline 18
;     uchar temp;
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 19
; 	PORTA&=~(1<<RS);    //RS=0
	cbi 0x1b,0
	.dbline 20
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 21
; 	PORTA|=(1<<RW);     //RW=1
	sbi 0x1b,1
	.dbline 22
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	xjmp L30
L29:
	.dbline 24
; 	while(temp)
; 	{
	.dbline 25
; 		PORTA|=(1<<EN); //EN=1
	sbi 0x1b,2
	.dbline 26
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 27
; 		DDRB=0x00;      //A口变输入
	clr R2
	out 0x17,R2
	.dbline 28
; 		PORTB=0xff;     //上拉使能
	ldi R24,255
	out 0x18,R24
	.dbline 29
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 30
; 		temp = PINB&0x80;    //读取A口
	in R20,0x16
	andi R20,128
	.dbline 31
; 		s_ms(500);      
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 32
; 		DDRB=0xff;      
	ldi R24,255
	out 0x17,R24
	.dbline 33
; 		PORTB=0xff;        //A口变输出
	out 0x18,R24
	.dbline 34
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 35
; 		PORTA&=~(1<<EN);   //EN=0
	cbi 0x1b,2
	.dbline 36
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 37
; 	}
L30:
	.dbline 23
	tst R20
	brne L29
X7:
	.dbline -2
L28:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r temp 20 c
	.dbend
	.dbfunc e writecom _writecom fV
;            com -> R10
	.even
_writecom::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 42
; }
; 
; //写指令
; void writecom(uchar	com)
; {
	.dbline 43
; 	busy();
	xcall _busy
	.dbline 44
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 45
; 	PORTA&=~(1<<RS);   //RS=0
	cbi 0x1b,0
	.dbline 46
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 47
; 	PORTA&=~(1<<RW);   //RW=0
	cbi 0x1b,1
	.dbline 48
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 49
; 	PORTA|=(1<<EN);    //EN=1
	sbi 0x1b,2
	.dbline 50
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 51
; 	PORTB = com;       //输出指令
	out 0x18,R10
	.dbline 52
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 53
; 	PORTA&=~(1<<EN);   //EN=0
	cbi 0x1b,2
	.dbline 54
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L32:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r com 10 c
	.dbend
	.dbfunc e LcdInit _LcdInit fV
	.even
_LcdInit::
	.dbline -1
	.dbline 59
; }
; 
; //1602初始化
; void	LcdInit(void)
; {
	.dbline 60
;     DDRB = 0xff; 
	ldi R24,255
	out 0x17,R24
	.dbline 61
;     PORTB = 0x00; 
	clr R2
	out 0x18,R2
	.dbline 62
; 	writecom(0x38);
	ldi R16,56
	xcall _writecom
	.dbline 63
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 64
; 	writecom(0x01);
	ldi R16,1
	xcall _writecom
	.dbline 65
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 66
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 67
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 68
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 69
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 70
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 71
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 72
; 	writecom(0x02);
	ldi R16,2
	xcall _writecom
	.dbline 73
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 74
; 	writecom(0x06);
	ldi R16,6
	xcall _writecom
	.dbline 75
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 76
; 	writecom(0x0c);
	ldi R16,12
	xcall _writecom
	.dbline 77
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 78
; 	writecom(0x38);	
	ldi R16,56
	xcall _writecom
	.dbline 79
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	.dbline -2
L33:
	.dbline 0 ; func end
	xjmp _s_ms
	.dbend
	.dbfunc e writedata _writedata fV
;           data -> R10
	.even
_writedata::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 84
; }	
; 
; //写数据
; void	writedata(uchar data)
; {
	.dbline 85
; 	busy();
	xcall _busy
	.dbline 86
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 87
; 	PORTA|=(1<<RS);   //RS=1
	sbi 0x1b,0
	.dbline 88
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 89
; 	PORTA&=~(1<<RW);   //RW=0
	cbi 0x1b,1
	.dbline 90
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 91
; 	PORTA|=(1<<EN);    //EN=1
	sbi 0x1b,2
	.dbline 92
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 93
; 	PORTB = data;      //输出数据
	out 0x18,R10
	.dbline 94
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 95
; 	PORTA&=~(1<<EN);   //EN=0
	cbi 0x1b,2
	.dbline 96
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L34:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r data 10 c
	.dbend
	.dbfunc e readdata _readdata fc
;           temp -> R10
	.even
_readdata::
	st -y,R10
	.dbline -1
	.dbline 102
; }
; 
; 
; //读数据
; uchar	readdata(void)
; {
	.dbline 104
; 	uchar temp;
; 	busy();
	xcall _busy
	.dbline 105
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 106
; 	PORTA|=(1<<RS);  //RS=1
	sbi 0x1b,0
	.dbline 107
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 108
; 	PORTA|=(1<<RW);  //RW=1
	sbi 0x1b,1
	.dbline 109
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 110
; 	PORTA|=(1<<EN);  //EN=1
	sbi 0x1b,2
	.dbline 111
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 112
; 	DDRB=0x00;       //A端口变输入
	clr R2
	out 0x17,R2
	.dbline 113
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 114
; 	temp = PINB;     //读A端口
	in R10,0x16
	.dbline 115
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 116
; 	DDRB=0xff;       //A端口变输出
	ldi R24,255
	out 0x17,R24
	.dbline 117
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 118
; 	PORTA&=~(1<<EN); //EN=0
	cbi 0x1b,2
	.dbline 119
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 120
; 	return temp;	
	mov R16,R10
	.dbline -2
L35:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r temp 10 c
	.dbend
	.dbfunc e WriteCGRAM _WriteCGRAM fV
;              t -> R10,R11
;              i -> R20,R21
;        pBuffer -> R22,R23
;            num -> R10,R11
	.even
_WriteCGRAM::
	xcall push_xgsetF00C
	movw R22,R18
	movw R10,R16
	.dbline -1
	.dbline 130
; }
; 
; //=================================================
; // 描述： 写LCD内部CGRAM函数
; // 入口： ‘num’要写的数据个数
; //        ‘pbuffer’要写的数据的首地址
; // 出口： 无
; //================================================
; void	WriteCGRAM(uint	num, const uint	*pBuffer)
; {
	.dbline 132
; 	uint	i,t;
; 	writecom(0x40);
	ldi R16,64
	xcall _writecom
	.dbline 133
; 	PORTA|=(1<<RS);
	sbi 0x1b,0
	.dbline 134
; 	PORTA&=~(1<<RW);
	cbi 0x1b,1
	.dbline 135
; 	for(i=num;i!=0;i--)
	movw R20,R10
	xjmp L40
L37:
	.dbline 136
; 	{
	.dbline 137
; 		t = *pBuffer;
	movw R30,R22
	lpm R10,Z+
	lpm R11,Z
	.dbline 138
; 		PORTA|=(1<<EN);
	sbi 0x1b,2
	.dbline 139
; 		PORTB = t;
	out 0x18,R10
	.dbline 140
; 		PORTA&=~(1<<EN);				
	cbi 0x1b,2
	.dbline 141
; 		pBuffer++;
	subi R22,254  ; offset = 2
	sbci R23,255
	.dbline 142
; 	}
L38:
	.dbline 135
	subi R20,1
	sbci R21,0
L40:
	.dbline 135
	cpi R20,0
	cpc R20,R21
	brne L37
X8:
	.dbline -2
L36:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r t 10 i
	.dbsym r i 20 i
	.dbsym r pBuffer 22 pki
	.dbsym r num 10 i
	.dbend
	.dbfunc e WriteMenu _WriteMenu fV
;              t -> R10
;              i -> R22
;        pBuffer -> R20,R21
	.even
_WriteMenu::
	xcall push_xgsetF00C
	movw R20,R16
	.dbline -1
	.dbline 152
; 	
; }
; 
; //=================================================
; //描述：写菜单函数，本程序使用的LCD规格为 16 * 2
; //入口：菜单数组首地址
; //出口：无
; //=================================================
; void	WriteMenu(const uchar *pBuffer)
; {
	.dbline 154
; 	uchar	i,t;
; 	writecom(0x80);   //数据地址
	ldi R16,128
	xcall _writecom
	.dbline 156
; 	
; 	PORTA|=(1<<RS);
	sbi 0x1b,0
	.dbline 157
; 	PORTA&=~(1<<RW);
	cbi 0x1b,1
	.dbline 158
; 	s_ms(50);
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 159
; 	for(i=0;i<16;i++)
	clr R22
	xjmp L45
L42:
	.dbline 160
; 	{
	.dbline 161
; 		t = *pBuffer;
	movw R30,R20
	lpm R10,Z
	.dbline 162
; 		PORTB = t;
	out 0x18,R10
	.dbline 163
; 		PORTA|=(1<<EN);
	sbi 0x1b,2
	.dbline 164
; 		s_ms(50);
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 165
; 		PORTA&=~(1<<EN);				
	cbi 0x1b,2
	.dbline 166
; 		pBuffer++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 167
; 	}
L43:
	.dbline 159
	inc R22
L45:
	.dbline 159
	cpi R22,16
	brlo L42
X9:
	.dbline 168
; 	writecom(0xC0);
	ldi R16,192
	xcall _writecom
	.dbline 170
; 
; 	PORTA|=(1<<RS);
	sbi 0x1b,0
	.dbline 171
; 	PORTA&=~(1<<RW);
	cbi 0x1b,1
	.dbline 172
; 	s_ms(50);	
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 173
; 	for(i=0;i<16;i++)
	clr R22
	xjmp L49
L46:
	.dbline 174
; 	{
	.dbline 175
; 		t = *pBuffer;
	movw R30,R20
	lpm R10,Z
	.dbline 176
; 		PORTB = t;
	out 0x18,R10
	.dbline 177
; 		PORTA|=(1<<EN);
	sbi 0x1b,2
	.dbline 178
; 		s_ms(50);
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 179
; 		PORTA&=~(1<<EN);				
	cbi 0x1b,2
	.dbline 180
; 		pBuffer++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 181
; 	}
L47:
	.dbline 173
	inc R22
L49:
	.dbline 173
	cpi R22,16
	brlo L46
X10:
	.dbline -2
L41:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r t 10 c
	.dbsym r i 22 c
	.dbsym r pBuffer 20 pkc
	.dbend
	.dbfunc e WriteNum _WriteNum fV
;            num -> y+4
;            col -> R22,R23
;            row -> R20,R21
	.even
_WriteNum::
	xcall push_xgsetF000
	movw R22,R18
	movw R20,R16
	.dbline -1
	.dbline 191
; }
; //====================================================
; // 描述：在任意位置写数字函数
; // 入口：’row‘表示要写数字所在的行地址，只能为1或2
; //       ’col‘表示要写数字所在的列地址，只能为0--15
; //		 ‘num’表示要写的数字，只能为0--9
; // 出口：无
; //===================================================
; void	WriteNum(uint	row,uint	col,uint	 num)
; {
	.dbline 192
; 	if (row == 1)	row = 0x80 + col;
	cpi R20,1
	ldi R30,0
	cpc R21,R30
	brne L51
X11:
	.dbline 192
	movw R20,R22
	subi R20,128  ; offset = 128
	sbci R21,255
	xjmp L52
L51:
	.dbline 193
; 	else	row = 0xC0 + col;
	movw R20,R22
	subi R20,64  ; offset = 192
	sbci R21,255
L52:
	.dbline 194
; 	writecom(row);
	mov R16,R20
	xcall _writecom
	.dbline 195
; 	writedata(num);
	ldd R16,y+4
	ldd R17,y+5
	xcall _writedata
	.dbline -2
L50:
	.dbline 0 ; func end
	xjmp pop_xgsetF000
	.dbsym l num 4 i
	.dbsym r col 22 i
	.dbsym r row 20 i
	.dbend
	.dbfunc e WriteChar _WriteChar fV
;              t -> R12
;              i -> R10
;        pBuffer -> R20,R21
;            num -> y+8
;            col -> R10
;            row -> R22
	.even
_WriteChar::
	xcall push_xgsetF03C
	mov R10,R18
	mov R22,R16
	ldd R20,y+10
	ldd R21,y+11
	.dbline -1
	.dbline 207
; 
; 	
; }
; //================================================================
; // 描述：在任意位置写任意多个字符
; // 入口：’row‘要写的字符所在的行，只能为1或2；
; //       ‘col’要写的字符所在的列，只能为0---15
; //       ‘num’要写字符的个数
; //       ‘pbuffer’要写字符的首地址
; //================================================================== 
; void	WriteChar(uchar row,uchar col,uint num,uchar *pBuffer)
; {
	.dbline 209
; 	uchar i,t;
; 	if (row == 1)	row = 0x80 + col;
	cpi R22,1
	brne L54
X12:
	.dbline 209
	mov R22,R10
	subi R22,128    ; addi 128
	xjmp L55
L54:
	.dbline 210
; 	else	row = 0xC0 + col;
	mov R22,R10
	subi R22,64    ; addi 192
L55:
	.dbline 211
; 	writecom(row);
	mov R16,R22
	xcall _writecom
	.dbline 215
; 	//if (num<=0 | num>9)	num =0x30;
; 	//else	num = 0x30 + num;
; 
; 	PORTA|=(1<<RS);
	sbi 0x1b,0
	.dbline 216
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 217
; 	PORTA&=~(1<<RW);
	cbi 0x1b,1
	.dbline 218
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 219
; 	for(i=num;i!=0;i--)
	ldd R10,y+8
	ldd R11,y+9
	xjmp L59
L56:
	.dbline 220
; 	{
	.dbline 221
; 		t = *pBuffer;
	movw R30,R20
	ldd R12,z+0
	.dbline 222
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 223
; 		PORTB = t;
	out 0x18,R12
	.dbline 224
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 225
; 		PORTA|=(1<<EN);
	sbi 0x1b,2
	.dbline 226
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 227
; 		PORTA&=~(1<<EN);		
	cbi 0x1b,2
	.dbline 228
; 		s_ms(500);		
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 229
; 		pBuffer++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 230
; 	}
L57:
	.dbline 219
	dec R10
L59:
	.dbline 219
	tst R10
	brne L56
X13:
	.dbline -2
L53:
	.dbline 0 ; func end
	xjmp pop_xgsetF03C
	.dbsym r t 12 c
	.dbsym r i 10 c
	.dbsym r pBuffer 20 pc
	.dbsym l num 8 i
	.dbsym r col 10 c
	.dbsym r row 22 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\1602.h
_adc_0::
	.blkb 13
	.area idata
	.byte 'T,'e,'m,'p,'e,'r,'a,'t,'u,'r,'e,58,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\1602.h
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20_main.c
	.dbsym e adc_0 _adc_0 A[13:13]c
_adc_1::
	.blkb 2
	.area idata
	.byte 223,'C
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20_main.c
	.dbsym e adc_1 _adc_1 A[2:2]c
_tx::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20_main.c
	.dbsym e tx _tx A[1:1]c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20_main.c
	.dbfunc e s_1ms _s_1ms fV
;             aa -> R20,R21
;             ms -> R16,R17
	.even
_s_1ms::
	st -y,R20
	st -y,R21
	.dbline -1
	.dbline 28
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 1602液晶显示DS18B20温度
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽拿掉   
; /******************************************************************************/
; //温度传感器DS18B20试验
; //间隔2s采集一次温度值
; //使用1602的液晶作为显示
;   #include <iom16v.h>     
;   #include <macros.h>
;   #include "DS18B20.H"
;   #include "1602.h"
;   uchar adc_0[]={"Temperature:"};
;   uchar adc_1[]={0xdf,0x43};
;   uchar tx[]={0};
; /******************************************************************************/
; //读出温度程序
; /******************************************************************************/  	
; //延时函数在16M时延时1ms
;   void s_1ms(unsigned int ms)
;   {
	.dbline 30
;     unsigned int aa;
; 	for(;ms>=1;ms--)
	xjmp L64
L61:
	.dbline 31
; 	{
	.dbline 32
; 	for(aa=0;aa<=2000;aa++)
	clr R20
	clr R21
	xjmp L68
L65:
	.dbline 33
; 	{;}
	.dbline 33
	.dbline 33
L66:
	.dbline 32
	subi R20,255  ; offset = 1
	sbci R21,255
L68:
	.dbline 32
	ldi R24,2000
	ldi R25,7
	cp R24,R20
	cpc R25,R21
	brsh L65
X14:
	.dbline 34
; 	}
L62:
	.dbline 30
	subi R16,1
	sbci R17,0
L64:
	.dbline 30
	cpi R16,1
	ldi R30,0
	cpc R17,R30
	brsh L61
X15:
	.dbline -2
L60:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	ret
	.dbsym r aa 20 i
	.dbsym r ms 16 i
	.dbend
	.dbfunc e ReadTemperature _ReadTemperature fV
;              b -> R12
;              a -> R10
;            num -> R22
;         Data_L -> R20
	.even
_ReadTemperature::
	xcall push_xgsetF03C
	.dbline -1
	.dbline 40
;   }	
; /******************************************************************************/
; //读出温度程序
; /******************************************************************************/  		 
;   void ReadTemperature(void)
;  {
	.dbline 41
; 	unsigned char a=0;
	.dbline 42
; 	unsigned char b=0;
	.dbline 43
; 	unsigned char Data_L=0;
	.dbline 44
; 	unsigned char num=0;
	.dbline 46
; 
; 	Init_1820();        //复位18b20 
	xcall _Init_1820
	.dbline 47
; 	Write_1820(0xcc);   // 发出转换命令 
	ldi R16,204
	xcall _Write_1820
	.dbline 48
;     Write_1820(0x44); 
	ldi R16,68
	xcall _Write_1820
	.dbline 49
; 	Init_1820(); 
	xcall _Init_1820
	.dbline 50
; 	Write_1820(0xcc);  //发出读命令 
	ldi R16,204
	xcall _Write_1820
	.dbline 51
;     Write_1820(0xbe); 
	ldi R16,190
	xcall _Write_1820
	.dbline 52
; 	a=Read_1820();    //读数据 低8位
	xcall _Read_1820
	mov R10,R16
	.dbline 53
;     b=Read_1820();    //       高8位
	xcall _Read_1820
	mov R12,R16
	.dbline 54
; 	tx[0] = (a/16+b*16)/10;      //整数部分
	ldi R24,16
	mul R24,R12
	mov R16,R10
	swap R16
	andi R16,#0x0F
	add R16,R0
	ldi R17,10
	xcall div8u
	sts _tx,R16
	.dbline 55
; 	tx[1] = (a/16+b*16)%10; 
	ldi R24,16
	mul R24,R12
	mov R16,R10
	swap R16
	andi R16,#0x0F
	add R16,R0
	ldi R17,10
	xcall mod8u
	sts _tx+1,R16
	.dbline 57
; 
;     Data_L=a&0X0F;
	mov R20,R10
	andi R20,15
	.dbline 58
;      for(num=2;num<6;num++)		 //小数部分
	ldi R22,2
	xjmp L74
L71:
	.dbline 59
;    {
	.dbline 60
;       Data_L=Data_L*10;				 //10	   //100		//40		 //80
	ldi R24,10
	mul R24,R20
	movw R20,R0
	.dbline 61
;       tx[num]=Data_L/16;			 //0	  //6			//2			 //5
	ldi R24,<_tx
	ldi R25,>_tx
	mov R30,R22
	clr R31
	add R30,R24
	adc R31,R25
	mov R24,R20
	swap R24
	andi R24,#0x0F
	std z+0,R24
	.dbline 62
;       Data_L=Data_L%16;				 //10	   //4			//8
	ldi R17,16
	mov R16,R20
	xcall mod8u
	mov R20,R16
	.dbline 63
; 	}
L72:
	.dbline 58
	inc R22
L74:
	.dbline 58
	cpi R22,6
	brlo L71
X16:
	.dbline -2
L69:
	.dbline 0 ; func end
	xjmp pop_xgsetF03C
	.dbsym r b 12 c
	.dbsym r a 10 c
	.dbsym r num 22 c
	.dbsym r Data_L 20 c
	.dbend
	.dbfunc e main _main fV
;           tem1 -> <dead>
;           tem2 -> <dead>
;           tem3 -> <dead>
;              i -> <dead>
	.even
_main::
	sbiw R28,4
	.dbline -1
	.dbline 69
; } 
; /******************************************************************************/
; //读出温度程序
; /******************************************************************************/  	
;    void main(void)
; { 
	.dbline 72
;    uint i,tem3,tem2,tem1;
;    //端口初始化
;    DDRA = 0xff;      
	ldi R24,255
	out 0x1a,R24
	.dbline 73
;    PORTA = 0x00;      
	clr R2
	out 0x1b,R2
	.dbline 74
;    DDRB = 0xFF;    
	out 0x17,R24
	.dbline 75
;    PORTB = 0xF0;       
	ldi R24,240
	out 0x18,R24
	.dbline 77
;    //延时200ms
;    s_1ms(200); 
	ldi R16,200
	ldi R17,0
	xcall _s_1ms
	.dbline 79
;    //1602 初始化
;    LcdInit();   
	xcall _LcdInit
	.dbline 80
;    WriteChar(1,0,12,adc_0);
	ldi R24,<_adc_0
	ldi R25,>_adc_0
	std y+3,R25
	std y+2,R24
	ldi R24,12
	ldi R25,0
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,1
	xcall _WriteChar
	.dbline 81
;    WriteChar(1,14,2,adc_1);
	ldi R24,<_adc_1
	ldi R25,>_adc_1
	std y+3,R25
	std y+2,R24
	ldi R24,2
	ldi R25,0
	std y+1,R25
	std y+0,R24
	ldi R18,14
	ldi R16,1
	xcall _WriteChar
	.dbline 82
;    WriteChar(2,11,2,adc_1);
	ldi R24,<_adc_1
	ldi R25,>_adc_1
	std y+3,R25
	std y+2,R24
	ldi R24,2
	ldi R25,0
	std y+1,R25
	std y+0,R24
	ldi R18,11
	ldi R16,2
	xcall _WriteChar
	xjmp L77
L76:
	.dbline 85
;    
;    while (1) 
;   {
	.dbline 86
;   ReadTemperature();   
	xcall _ReadTemperature
	.dbline 87
;   s_1ms(50); 
	ldi R16,50
	ldi R17,0
	xcall _s_1ms
	.dbline 88
;   WriteNum(2, 4,   ASCII[tx[0]]); 
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	lds R30,_tx
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,4
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 89
;   WriteNum(2, 5,   ASCII[tx[1]]); 
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	lds R30,_tx+1
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,5
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 90
;   WriteNum(2, 6,   ASCII[10]);  
	lds R2,_ASCII+10
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,6
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 91
;   WriteNum(2, 7,   ASCII[tx[2]]);  
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	lds R30,_tx+2
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,7
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 92
;   WriteNum(2, 8,   ASCII[tx[3]]);   
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	lds R30,_tx+3
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,8
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 93
;   WriteNum(2, 9,   ASCII[tx[4]]);     
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	lds R30,_tx+4
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,9
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 94
;   WriteNum(2, 10,  ASCII[tx[5]]);     
	ldi R24,<_ASCII
	ldi R25,>_ASCII
	lds R30,_tx+5
	clr R31
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
	.dbline 95
;   } 
L77:
	.dbline 84
	xjmp L76
X17:
	.dbline -2
L75:
	.dbline 0 ; func end
	adiw R28,4
	ret
	.dbsym l tem1 5 i
	.dbsym l tem2 5 i
	.dbsym l tem3 5 i
	.dbsym l i 5 i
	.dbend
; }
