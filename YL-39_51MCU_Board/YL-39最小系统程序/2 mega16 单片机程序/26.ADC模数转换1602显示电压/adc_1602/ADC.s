	.module ADC.c
	.area text(rom, con, rel)
	.dbfile D:\实验程序\模数转换\adc_1602\ADC.c
	.dbfile D:\实验程序\模数转换\adc_1602\1602.h
	.dbfunc e s_ms _s_ms fV
;             ms -> R16,R17
	.even
_s_ms::
	.dbline -1
	.dbline 9
; #define uchar unsigned char 
; #define uint unsigned int 
; 
; #define RS 5
; #define RW 6
; #define EN 7
; 
; void s_ms(uint ms)
; {
	.dbline 10
; 	for(;ms>1;ms--);
	xjmp L5
L2:
	.dbline 10
L3:
	.dbline 10
	subi R16,1
	sbci R17,0
L5:
	.dbline 10
	ldi R24,1
	ldi R25,0
	cp R24,R16
	cpc R25,R17
	brlo L2
X0:
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
	st -y,R20
	.dbline -1
	.dbline 15
; }	
; 
; //查忙
; void busy(void)
; {
	.dbline 17
;     uchar temp;
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 18
; 	PORTA&=~(1<<RS);    //RS=0
	cbi 0x1b,5
	.dbline 19
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 20
; 	PORTA|=(1<<RW);     //RW=1
	sbi 0x1b,6
	.dbline 21
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	xjmp L8
L7:
	.dbline 23
; 	while(temp)
; 	{
	.dbline 24
; 		PORTA|=(1<<EN); //EN=1
	sbi 0x1b,7
	.dbline 25
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 26
; 		DDRD=0x00;      //A口变输入
	clr R2
	out 0x11,R2
	.dbline 27
; 		PORTD=0xff;     //上拉使能
	ldi R24,255
	out 0x12,R24
	.dbline 28
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 29
; 		temp = PIND&0x80;    //读取A口
	in R20,0x10
	andi R20,128
	.dbline 30
; 		s_ms(500);      
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 31
; 		DDRD=0xff;      
	ldi R24,255
	out 0x11,R24
	.dbline 32
; 		PORTD=0xff;        //A口变输出
	out 0x12,R24
	.dbline 33
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 34
; 		PORTA&=~(1<<EN);   //EN=0
	cbi 0x1b,7
	.dbline 35
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 36
; 	}
L8:
	.dbline 22
	tst R20
	brne L7
X1:
	.dbline -2
L6:
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
	.dbline 41
; }
; 
; //写指令
; void writecom(uchar	com)
; {
	.dbline 42
; 	busy();
	xcall _busy
	.dbline 43
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 44
; 	PORTA&=~(1<<RS);   //RS=0
	cbi 0x1b,5
	.dbline 45
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 46
; 	PORTA&=~(1<<RW);   //RW=0
	cbi 0x1b,6
	.dbline 47
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 48
; 	PORTA|=(1<<EN);    //EN=1
	sbi 0x1b,7
	.dbline 49
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 50
; 	PORTD = com;       //输出指令
	out 0x12,R10
	.dbline 51
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 52
; 	PORTA&=~(1<<EN);   //EN=0
	cbi 0x1b,7
	.dbline 53
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L10:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r com 10 c
	.dbend
	.dbfunc e LcdInit _LcdInit fV
	.even
_LcdInit::
	.dbline -1
	.dbline 58
; }
; 
; //1602初始化
; void	LcdInit(void)
; {
	.dbline 59
; 	writecom(0x38);
	ldi R16,56
	xcall _writecom
	.dbline 60
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 61
; 	writecom(0x01);
	ldi R16,1
	xcall _writecom
	.dbline 62
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 63
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 64
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
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
; 	writecom(0x02);
	ldi R16,2
	xcall _writecom
	.dbline 70
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 71
; 	writecom(0x06);
	ldi R16,6
	xcall _writecom
	.dbline 72
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 73
; 	writecom(0x0c);
	ldi R16,12
	xcall _writecom
	.dbline 74
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 75
; 	writecom(0x38);	
	ldi R16,56
	xcall _writecom
	.dbline 76
; 	s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline -2
L11:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e writedata _writedata fV
;           data -> R10
	.even
_writedata::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 81
; }	
; 
; //写数据
; void	writedata(uchar data)
; {
	.dbline 82
; 	busy();
	xcall _busy
	.dbline 83
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 84
; 	PORTA|=(1<<RS);   //RS=1
	sbi 0x1b,5
	.dbline 85
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 86
; 	PORTA&=~(1<<RW);   //RW=0
	cbi 0x1b,6
	.dbline 87
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 88
; 	PORTA|=(1<<EN);    //EN=1
	sbi 0x1b,7
	.dbline 89
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 90
; 	PORTD = data;      //输出数据
	out 0x12,R10
	.dbline 91
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 92
; 	PORTA&=~(1<<EN);   //EN=0
	cbi 0x1b,7
	.dbline 93
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L12:
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
	.dbline 99
; }
; 
; 
; //读数据
; uchar	readdata(void)
; {
	.dbline 101
; 	uchar temp;
; 	busy();
	xcall _busy
	.dbline 102
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 103
; 	PORTA|=(1<<RS);  //RS=1
	sbi 0x1b,5
	.dbline 104
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 105
; 	PORTA|=(1<<RW);  //RW=1
	sbi 0x1b,6
	.dbline 106
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 107
; 	PORTA|=(1<<EN);  //EN=1
	sbi 0x1b,7
	.dbline 108
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 109
; 	DDRD=0x00;       //A端口变输入
	clr R2
	out 0x11,R2
	.dbline 110
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 111
; 	temp = PIND;     //读A端口
	in R10,0x10
	.dbline 112
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 113
; 	DDRD=0xff;       //A端口变输出
	ldi R24,255
	out 0x11,R24
	.dbline 114
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 115
; 	PORTA&=~(1<<EN); //EN=0
	cbi 0x1b,7
	.dbline 116
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 117
; 	return temp;	
	mov R16,R10
	.dbline -2
L13:
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
	.dbline 127
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
	.dbline 129
; 	uint	i,t;
; 	writecom(0x40);
	ldi R16,64
	xcall _writecom
	.dbline 130
; 	PORTA|=(1<<RS);
	sbi 0x1b,5
	.dbline 131
; 	PORTA&=~(1<<RW);
	cbi 0x1b,6
	.dbline 132
; 	for(i=num;i!=0;i--)
	movw R20,R10
	xjmp L18
L15:
	.dbline 133
; 	{
	.dbline 134
; 		t = *pBuffer;
	movw R30,R22
	elpm R10,Z+
	elpm R11,Z
	.dbline 135
; 		PORTA|=(1<<EN);
	sbi 0x1b,7
	.dbline 136
; 		PORTD = t;
	out 0x12,R10
	.dbline 137
; 		PORTA&=~(1<<EN);				
	cbi 0x1b,7
	.dbline 138
; 		pBuffer++;
	subi R22,254  ; offset = 2
	sbci R23,255
	.dbline 139
; 	}
L16:
	.dbline 132
	subi R20,1
	sbci R21,0
L18:
	.dbline 132
	cpi R20,0
	cpc R20,R21
	brne L15
X2:
	.dbline -2
L14:
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
	.dbline 149
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
	.dbline 151
; 	uchar	i,t;
; 	writecom(0x80);   //数据地址
	ldi R16,128
	xcall _writecom
	.dbline 153
; 	
; 	PORTA|=(1<<RS);
	sbi 0x1b,5
	.dbline 154
; 	PORTA&=~(1<<RW);
	cbi 0x1b,6
	.dbline 155
; 	s_ms(50);
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 156
; 	for(i=0;i<16;i++)
	clr R22
	xjmp L23
L20:
	.dbline 157
; 	{
	.dbline 158
; 		t = *pBuffer;
	movw R30,R20
	elpm R10,Z
	.dbline 159
; 		PORTD = t;
	out 0x12,R10
	.dbline 160
; 		PORTA|=(1<<EN);
	sbi 0x1b,7
	.dbline 161
; 		s_ms(50);
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 162
; 		PORTA&=~(1<<EN);				
	cbi 0x1b,7
	.dbline 163
; 		pBuffer++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 164
; 	}
L21:
	.dbline 156
	inc R22
L23:
	.dbline 156
	cpi R22,16
	brlo L20
X3:
	.dbline 165
; 	writecom(0xC0);
	ldi R16,192
	xcall _writecom
	.dbline 167
; 
; 	PORTA|=(1<<RS);
	sbi 0x1b,5
	.dbline 168
; 	PORTA&=~(1<<RW);
	cbi 0x1b,6
	.dbline 169
; 	s_ms(50);	
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 170
; 	for(i=0;i<16;i++)
	clr R22
	xjmp L27
L24:
	.dbline 171
; 	{
	.dbline 172
; 		t = *pBuffer;
	movw R30,R20
	elpm R10,Z
	.dbline 173
; 		PORTD = t;
	out 0x12,R10
	.dbline 174
; 		PORTA|=(1<<EN);
	sbi 0x1b,7
	.dbline 175
; 		s_ms(50);
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 176
; 		PORTA&=~(1<<EN);				
	cbi 0x1b,7
	.dbline 177
; 		pBuffer++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 178
; 	}
L25:
	.dbline 170
	inc R22
L27:
	.dbline 170
	cpi R22,16
	brlo L24
X4:
	.dbline -2
L19:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r t 10 c
	.dbsym r i 22 c
	.dbsym r pBuffer 20 pkc
	.dbend
	.dbfunc e WriteNum _WriteNum fV
;            num -> R20,R21
;            col -> R10,R11
;            row -> R22,R23
	.even
_WriteNum::
	xcall push_xgsetF00C
	movw R10,R18
	movw R22,R16
	ldd R20,y+6
	ldd R21,y+7
	.dbline -1
	.dbline 188
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
	.dbline 189
; 	if (row == 1)	row = 0x80 + col;
	cpi R22,1
	ldi R30,0
	cpc R23,R30
	brne L29
X5:
	.dbline 189
	movw R22,R10
	subi R22,128  ; offset = 128
	sbci R23,255
	xjmp L30
L29:
	.dbline 190
; 	else	row = 0xC0 + col;
	movw R22,R10
	subi R22,64  ; offset = 192
	sbci R23,255
L30:
	.dbline 191
; 	writecom(row);
	mov R16,R22
	xcall _writecom
	.dbline 192
; 	if (num<=0 | num>9)	num =0x30;
	cpi R20,0
	cpc R20,R21
	brne L33
X6:
	ldi R24,1
	ldi R25,0
	movw R10,R24
	xjmp L34
L33:
	clr R10
	clr R11
L34:
	ldi R24,9
	ldi R25,0
	cp R24,R20
	cpc R25,R21
	brsh L35
X7:
	ldi R22,1
	ldi R23,0
	xjmp L36
L35:
	clr R22
	clr R23
L36:
	movw R2,R10
	or R2,R22
	or R3,R23
	tst R2
	brne X8
	tst R3
	breq L31
X8:
	.dbline 192
	ldi R20,48
	ldi R21,0
	xjmp L32
L31:
	.dbline 193
; 	else	num = 0x30 + num;
	subi R20,208  ; offset = 48
	sbci R21,255
L32:
	.dbline 195
; 
; 	PORTA|=(1<<RS);
	sbi 0x1b,5
	.dbline 196
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 197
; 	PORTA&=~(1<<RW);
	cbi 0x1b,6
	.dbline 198
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 199
; 	PORTD = num;
	out 0x12,R20
	.dbline 200
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 201
; 	PORTA|=(1<<EN);
	sbi 0x1b,7
	.dbline 202
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 203
; 	PORTA&=~(1<<EN);	
	cbi 0x1b,7
	.dbline 204
; 	s_ms(500);			
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L28:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r num 20 i
	.dbsym r col 10 i
	.dbsym r row 22 i
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
	.dbline 214
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
	.dbline 216
; 	uchar i,t;
; 	if (row == 1)	row = 0x80 + col;
	cpi R22,1
	brne L38
X9:
	.dbline 216
	mov R22,R10
	subi R22,128    ; addi 128
	xjmp L39
L38:
	.dbline 217
; 	else	row = 0xC0 + col;
	mov R22,R10
	subi R22,64    ; addi 192
L39:
	.dbline 218
; 	writecom(row);
	mov R16,R22
	xcall _writecom
	.dbline 222
; 	//if (num<=0 | num>9)	num =0x30;
; 	//else	num = 0x30 + num;
; 
; 	PORTA|=(1<<RS);
	sbi 0x1b,5
	.dbline 223
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 224
; 	PORTA&=~(1<<RW);
	cbi 0x1b,6
	.dbline 225
; 	s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 226
; 	for(i=num;i!=0;i--)
	ldd R10,y+8
	xjmp L43
L40:
	.dbline 227
; 	{
	.dbline 228
; 		t = *pBuffer;
	movw R30,R20
	ldd R12,z+0
	.dbline 229
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 230
; 		PORTD = t;
	out 0x12,R12
	.dbline 231
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 232
; 		PORTA|=(1<<EN);
	sbi 0x1b,7
	.dbline 233
; 		s_ms(500);
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 234
; 		PORTA&=~(1<<EN);		
	cbi 0x1b,7
	.dbline 235
; 		s_ms(500);		
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 236
; 		pBuffer++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 237
; 	}
L41:
	.dbline 226
	dec R10
L43:
	.dbline 226
	tst R10
	brne L40
X10:
	.dbline -2
L37:
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
	.dbfile D:\实验程序\模数转换\adc_1602\1602.h
_adc_0::
	.blkb 12
	.area idata
	.byte 'A,'D,'C,95,48,58,32,46,32,32,'V,0
	.area data(ram, con, rel)
	.dbfile D:\实验程序\模数转换\adc_1602\1602.h
	.dbfile D:\实验程序\模数转换\adc_1602\ADC.c
	.dbsym e adc_0 _adc_0 A[12:12]c
_adc_1::
	.blkb 12
	.area idata
	.byte 'A,'D,'C,95,49,58,32,46,32,32,'V,0
	.area data(ram, con, rel)
	.dbfile D:\实验程序\模数转换\adc_1602\ADC.c
	.dbsym e adc_1 _adc_1 A[12:12]c
	.area text(rom, con, rel)
	.dbfile D:\实验程序\模数转换\adc_1602\ADC.c
	.dbfunc e main _main fI
;         adc_h1 -> <dead>
;         adc_l1 -> <dead>
;          ten_4 -> <dead>
;         adc_h0 -> R12,R13
;         adc_l0 -> R10,R11
;      adc_data1 -> R20,R21
;          ten_1 -> R10
;          ten_2 -> R12
;      adc_data0 -> R22,R23
;          ten_3 -> R14
;              i -> R20
	.even
_main::
	sbiw R28,4
	.dbline -1
	.dbline 13
; #include<iom16v.h>
; #include <macros.h>
; #include"1602.h"
; #define uchar unsigned char 
; #define uint unsigned int 
; 
; uchar adc_0[]={"ADC_0: .  V"};
; uchar adc_1[]={"ADC_1: .  V"};
; 
; //ADC测试,使用1602显示ADC0和ADC1的值
; //主函数
; main()
; {
	.dbline 18
; uchar ten_1,ten_2,ten_3,ten_4,i;
; uint adc_data0,adc_l0,adc_h0,adc_data1,adc_l1,adc_h1;
; 
; //初始化端口
; DDRA=0xf0;
	ldi R24,240
	out 0x1a,R24
	.dbline 19
; PORTA=0x00;
	clr R2
	out 0x1b,R2
	.dbline 20
; DDRB=0x00;
	out 0x17,R2
	.dbline 21
; DDRD=0xff;
	ldi R24,255
	out 0x11,R24
	.dbline 22
; PORTD=0x00;
	out 0x12,R2
	.dbline 24
; //1602初始化
; LcdInit();   
	xcall _LcdInit
	.dbline 25
; WriteChar(1,2,11,adc_0);
	ldi R24,<_adc_0
	ldi R25,>_adc_0
	std y+3,R25
	std y+2,R24
	ldi R24,11
	ldi R25,0
	std y+1,R25
	std y+0,R24
	ldi R18,2
	ldi R16,1
	xcall _WriteChar
	.dbline 26
; WriteChar(2,2,11,adc_1);
	ldi R24,<_adc_1
	ldi R25,>_adc_1
	std y+3,R25
	std y+2,R24
	ldi R24,11
	ldi R25,0
	std y+1,R25
	std y+0,R24
	ldi R18,2
	ldi R16,2
	xcall _WriteChar
	xjmp L46
L45:
	.dbline 29
; 
; while(1)
;      {
	.dbline 31
; 	  //取ADC_0
;       ADCSR=0x00;
	clr R2
	out 0x6,R2
	.dbline 32
;       ADMUX=0x40;
	ldi R24,64
	out 0x7,R24
	.dbline 33
;       ADCSR=(1<<ADEN)|(1<<ADSC)|(1<<ADFR)|0x07;   //128分频，连续转换
	ldi R24,231
	out 0x6,R24
	.dbline 34
;       s_ms(500);                                   //延时很重要，给出转换的时间
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 35
;       adc_l0=ADCL;
	in R10,0x4
	clr R11
	.dbline 36
;       adc_h0=ADCH;
	in R12,0x5
	clr R13
	.dbline 37
;       adc_data0=adc_h0<<8|adc_l0;                  
	movw R22,R12
	mov R23,R22
	clr R22
	or R22,R10
	or R23,R11
	.dbline 38
;       adc_data0=adc_data0>>1;               //放弃一位的精度
	lsr R23
	ror R22
	.dbline 39
;       adc_data0-=35;                        //修正
	subi R22,35
	sbci R23,0
	.dbline 51
; 	  
; 	  //取ADC_1
;       //ADCSR=0x00;
;       //ADMUX=0x41;
;       //ADCSR=(1<<ADEN)|(1<<ADSC)|(1<<ADFR)|0x07;   
;       //s_ms(500);                           
;       //adc_l1=ADCL;
;       //adc_h1=ADCH;
;       //adc_data1=adc_h1<<8|adc_l1;  
;       //adc_data1=adc_data1>>1;
;       //adc_data1-=35;                       
; 	  adc_data1=500;
	ldi R20,500
	ldi R21,1
	.dbline 54
; 	  
; 	  //显示ADC0
; 	  ten_3=(adc_data0)/100;
	ldi R18,100
	ldi R19,0
	movw R16,R22
	xcall div16u
	mov R14,R16
	.dbline 55
; 	  ten_2=(adc_data0-(ten_3*100))/10;
	ldi R24,100
	mul R24,R14
	movw R16,R22
	sub R16,R0
	sbc R17,R1
	ldi R18,10
	ldi R19,0
	xcall div16u
	mov R12,R16
	.dbline 56
; 	  ten_1=adc_data0-(ten_3*100)-ten_2*10;
	ldi R24,100
	mul R24,R14
	mov R10,R22
	sub R10,R0
	sbc R11,R1
	ldi R24,10
	mul R24,R12
	sub R10,R0
	sbc R11,R1
	.dbline 57
; 	  WriteNum(1,8,(ten_3));
	mov R2,R14
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,8
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 58
; 	  WriteNum(1,10,(ten_2));
	mov R2,R12
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,10
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 59
; 	  WriteNum(1,11,(ten_1));
	mov R2,R10
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,11
	ldi R19,0
	ldi R16,1
	ldi R17,0
	xcall _WriteNum
	.dbline 62
; 	  
; 	  //显示ADC1
; 	  ten_3=(adc_data1)/100;
	ldi R18,100
	ldi R19,0
	movw R16,R20
	xcall div16u
	mov R14,R16
	.dbline 63
; 	  ten_2=(adc_data1-(ten_3*100))/10;
	ldi R24,100
	mul R24,R14
	movw R16,R20
	sub R16,R0
	sbc R17,R1
	ldi R18,10
	ldi R19,0
	xcall div16u
	mov R12,R16
	.dbline 64
; 	  ten_1=adc_data1-(ten_3*100)-ten_2*10;
	ldi R24,100
	mul R24,R14
	mov R10,R20
	sub R10,R0
	sbc R11,R1
	ldi R24,10
	mul R24,R12
	sub R10,R0
	sbc R11,R1
	.dbline 65
; 	  WriteNum(2,8,(ten_3));
	mov R2,R14
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,8
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 66
; 	  WriteNum(2,10,(ten_2));
	mov R2,R12
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,10
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 67
; 	  WriteNum(2,11,(ten_1));
	mov R2,R10
	clr R3
	std y+1,R3
	std y+0,R2
	ldi R18,11
	ldi R19,0
	ldi R16,2
	ldi R17,0
	xcall _WriteNum
	.dbline 69
; 	  
; 	  for(i=0;i<18;i++)
	clr R20
	xjmp L51
L48:
	.dbline 70
; 	     {
	.dbline 71
; 	      s_ms(60000);
	ldi R16,60000
	ldi R17,234
	xcall _s_ms
	.dbline 72
; 	     }	
L49:
	.dbline 69
	inc R20
L51:
	.dbline 69
	cpi R20,18
	brlo L48
X11:
	.dbline 73
; 	 }
L46:
	.dbline 28
	xjmp L45
X12:
	.dbline -2
L44:
	.dbline 0 ; func end
	adiw R28,4
	ret
	.dbsym l adc_h1 5 i
	.dbsym l adc_l1 5 i
	.dbsym l ten_4 5 c
	.dbsym r adc_h0 12 i
	.dbsym r adc_l0 10 i
	.dbsym r adc_data1 20 i
	.dbsym r ten_1 10 c
	.dbsym r ten_2 12 c
	.dbsym r adc_data0 22 i
	.dbsym r ten_3 14 c
	.dbsym r i 20 c
	.dbend
; }
; 
; 
