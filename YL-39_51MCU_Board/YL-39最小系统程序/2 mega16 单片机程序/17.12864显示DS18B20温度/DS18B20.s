	.module DS18B20.C
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\17.12864显示DS18B20温度\DS18B20.C
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\17.12864显示DS18B20温度\DS18B20.C
_num::
	.blkb 15
	.area idata
	.byte 48,49,50,51,52,53,54,55,56,57,95,58,46,'V,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\17.12864显示DS18B20温度\DS18B20.C
	.dbsym e num _num A[15:15]c
_welcome::
	.blkb 10
	.area idata
	.byte 187,183,190,179,206,194,182,200,58,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\17.12864显示DS18B20温度\DS18B20.C
	.dbsym e welcome _welcome A[10:10]c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\17.12864显示DS18B20温度\DS18B20.C
	.dbfunc e Lcd_init _Lcd_init fV
	.even
_Lcd_init::
	.dbline -1
	.dbline 38
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 12984显示DS18B20温度试验
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽拿掉   
; /******************************************************************************/
; 
;     #include <iom16v.h>  
; 	#include <macros.h> 
; 	#define uchar unsigned char 
; 	#define uint  unsigned int 
; 	#define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
;     #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
; 	#define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
; /******************************************************************/	
; 	void Write_char(unsigned char start, unsigned char ddata);
;     void Send_byte(unsigned char bbyte);
;     void Delaynms(unsigned int di);
;     void Lcd_init(void);
;     void Disp_img(unsigned char const *img);
; 	
;     void Init_1820();     //复位DS18B20
;     Write_1820(uchar x);  //写一个字节
;     uchar Read_1820();    //读一个字节
;     void delay(uint x);   //延时
; 	
;     
; 	unsigned char  num[]=    {"0123456789_:.V"};
; 	unsigned char  welcome[]={"环境温度:"};
; /******************************************************************************/
; void Lcd_init(void)	//初始化LCD 
; {
	.dbline 39
; 	Delaynms(10); //启动等待，等LCM讲入工作状态
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 40
; 	Set_Bit(PORTA,0);
	sbi 0x1b,0
	.dbline 41
;   	Write_char(0,0x00);  //8 位介面，基本指令集
	clr R18
	clr R16
	xcall _Write_char
	.dbline 42
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 43
;   	Write_char(0,0x0c);  //显示打开，光标关，反白关
	ldi R18,12
	clr R16
	xcall _Write_char
	.dbline 44
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 45
;   	Write_char(0,0x01);  //清屏，将DDRAM的地址计数器归零  
	ldi R18,1
	clr R16
	xcall _Write_char
	.dbline 46
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	.dbline -2
L1:
	.dbline 0 ; func end
	xjmp _Delaynms
	.dbend
	.dbfunc e Write_char _Write_char fV
;          Ldata -> R20
;          Hdata -> R22
;     start_data -> R10
;          ddata -> R20
;          start -> R10
	.even
_Write_char::
	xcall push_xgsetF00C
	mov R20,R18
	mov R10,R16
	.dbline -1
	.dbline 50
; }
; /******************************************************************************/
; void Write_char(unsigned char start, unsigned char ddata) //写指令或数据
; {
	.dbline 52
; 	unsigned char start_data,Hdata,Ldata;
;   	if(start==0) 
	tst R10
	brne L3
X0:
	.dbline 53
; 		start_data=0xf8;	 //写指令
	ldi R24,248
	mov R10,R24
	xjmp L4
L3:
	.dbline 55
;     else    
;     	start_data=0xfa;  //写数据
	ldi R24,250
	mov R10,R24
L4:
	.dbline 57
;   
;   	Hdata=ddata&0xf0;		  //取高四位
	mov R22,R20
	andi R22,240
	.dbline 58
;   	Ldata=(ddata<<4)&0xf0;  //取低四位
	mov R24,R20
	andi R24,#0x0F
	swap R24
	andi R24,240
	mov R20,R24
	.dbline 59
;   	Send_byte(start_data);	  //发送起始信号
	mov R16,R10
	xcall _Send_byte
	.dbline 60
;   	Delaynms(10); //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 61
;   	Send_byte(Hdata);	      //发送高四位
	mov R16,R22
	xcall _Send_byte
	.dbline 62
;   	Delaynms(10);  //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 63
;   	Send_byte(Ldata);		  //发送低四位
	mov R16,R20
	xcall _Send_byte
	.dbline 64
;   	Delaynms(10);  //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline -2
L2:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r Ldata 20 c
	.dbsym r Hdata 22 c
	.dbsym r start_data 10 c
	.dbsym r ddata 20 c
	.dbsym r start 10 c
	.dbend
	.dbfunc e Send_byte _Send_byte fV
;              j -> R22
;              i -> R20
;          bbyte -> R16
	.even
_Send_byte::
	st -y,R20
	st -y,R22
	.dbline -1
	.dbline 68
; }
; /******************************************************************************/
; void Send_byte(unsigned char bbyte) //发送一个字节
; {
	.dbline 70
; 	unsigned char i,j;
;  	for(i=0;i<8;i++)
	clr R20
	xjmp L9
L6:
	.dbline 71
;    	{    
	.dbline 73
; 	   
;    		j=bbyte&0x80; //取出最高位
	mov R22,R16
	andi R22,128
	.dbline 74
;  		if(j)
	breq L10
X1:
	.dbline 75
; 			Set_Bit(PORTA,1);
	sbi 0x1b,1
	xjmp L11
L10:
	.dbline 77
; 		else
; 			Clr_Bit(PORTA,1);
	cbi 0x1b,1
L11:
	.dbline 78
; 		Set_Bit(PORTA,2);
	sbi 0x1b,2
	.dbline 79
; 		Clr_Bit(PORTA,2);
	cbi 0x1b,2
	.dbline 80
;    		bbyte<<=1; //左移
	lsl R16
	.dbline 81
;    	}  
L7:
	.dbline 70
	inc R20
L9:
	.dbline 70
	cpi R20,8
	brlo L6
X2:
	.dbline -2
L5:
	.dbline 0 ; func end
	ld R22,y+
	ld R20,y+
	ret
	.dbsym r j 22 c
	.dbsym r i 20 c
	.dbsym r bbyte 16 c
	.dbend
	.dbfunc e Delaynms _Delaynms fV
;             da -> R20,R21
;             db -> R22,R23
;             di -> R16,R17
	.even
_Delaynms::
	xcall push_xgsetF000
	.dbline -1
	.dbline 85
; }
; /******************************************************************************/
; void Delaynms(unsigned int di) //延时
; {
	.dbline 87
; 	unsigned int da,db;
;  	for(da=0;da<di;da++)
	clr R20
	clr R21
	xjmp L16
L13:
	.dbline 88
;    		for(db=0;db<10;db++);
	clr R22
	clr R23
	xjmp L20
L17:
	.dbline 88
L18:
	.dbline 88
	subi R22,255  ; offset = 1
	sbci R23,255
L20:
	.dbline 88
	cpi R22,10
	ldi R30,0
	cpc R23,R30
	brlo L17
X3:
L14:
	.dbline 87
	subi R20,255  ; offset = 1
	sbci R21,255
L16:
	.dbline 87
	cp R20,R16
	cpc R21,R17
	brlo L13
X4:
	.dbline -2
L12:
	.dbline 0 ; func end
	xjmp pop_xgsetF000
	.dbsym r da 20 i
	.dbsym r db 22 i
	.dbsym r di 16 i
	.dbend
	.dbfunc e Disp_img _Disp_img fV
;              i -> R20
;              k -> R22,R23
;              j -> R12
;            img -> R10,R11
	.even
_Disp_img::
	xcall push_xgsetF03C
	movw R10,R16
	.dbline -1
	.dbline 92
; }
; /****************************************************************************/
; void Disp_img(unsigned char const *img )	//图形方式12864显示字模221 横向取膜
; { 
	.dbline 94
; 	unsigned char i,j;
; 	unsigned int k = 0;
	clr R22
	clr R23
	.dbline 95
;     Delaynms(100);//延时好重要!!!!!!AVR太快了
	ldi R16,100
	ldi R17,0
	xcall _Delaynms
	.dbline 96
; 	Write_char(0,0x36); //图形方式
	ldi R18,54
	clr R16
	xcall _Write_char
	.dbline 97
; 	Delaynms(100);//延时好重要!!!!!!AVR太快了
	ldi R16,100
	ldi R17,0
	xcall _Delaynms
	.dbline 98
; 	for(i=0;i<32;i++)
	clr R20
	xjmp L25
L22:
	.dbline 99
;   	{ 
	.dbline 100
; 		Write_char(0,0x80+i); //列
	mov R18,R20
	subi R18,128    ; addi 128
	clr R16
	xcall _Write_char
	.dbline 101
; 		Write_char(0,0x80);	  //行
	ldi R18,128
	clr R16
	xcall _Write_char
	.dbline 102
;     	for(j=0;j<16;j++) 
	clr R12
	xjmp L29
L26:
	.dbline 103
; 		{
	.dbline 104
; 			Write_char(1,img[k++]);	
	movw R2,R22
	subi R22,255  ; offset = 1
	sbci R23,255
	movw R30,R2
	add R30,R10
	adc R31,R11
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline 105
; 		}
L27:
	.dbline 102
	inc R12
L29:
	.dbline 102
	mov R24,R12
	cpi R24,16
	brlo L26
X5:
	.dbline 106
;   	}
L23:
	.dbline 98
	inc R20
L25:
	.dbline 98
	cpi R20,32
	brlo L22
X6:
	.dbline 107
;  	for(i=0;i<32;i++)
	clr R20
	xjmp L33
L30:
	.dbline 108
;   	{ 
	.dbline 109
; 		Write_char(0,0x80+i);
	mov R18,R20
	subi R18,128    ; addi 128
	clr R16
	xcall _Write_char
	.dbline 110
; 		Write_char(0,0x88);
	ldi R18,136
	clr R16
	xcall _Write_char
	.dbline 111
;     	for(j=0;j<16;j++) 
	clr R12
	xjmp L37
L34:
	.dbline 112
; 		{
	.dbline 113
; 			Write_char(1,img[k++]);
	movw R2,R22
	subi R22,255  ; offset = 1
	sbci R23,255
	movw R30,R2
	add R30,R10
	adc R31,R11
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline 114
;   		}
L35:
	.dbline 111
	inc R12
L37:
	.dbline 111
	mov R24,R12
	cpi R24,16
	brlo L34
X7:
	.dbline 115
; 	}
L31:
	.dbline 107
	inc R20
L33:
	.dbline 107
	cpi R20,32
	brlo L30
X8:
	.dbline -2
L21:
	.dbline 0 ; func end
	xjmp pop_xgsetF03C
	.dbsym r i 20 c
	.dbsym r k 22 i
	.dbsym r j 12 c
	.dbsym r img 10 pkc
	.dbend
	.dbfunc e Clr_Scr _Clr_Scr fV
	.even
_Clr_Scr::
	.dbline -1
	.dbline 119
; }
; /******************************************************************************/
; void Clr_Scr(void)//清屏函数
; {
	.dbline 120
; 	Write_char(0,0x01);
	ldi R18,1
	clr R16
	.dbline -2
L38:
	.dbline 0 ; func end
	xjmp _Write_char
	.dbend
	.dbfunc e LCD_set_xy _LCD_set_xy fV
;        address -> R20
;              y -> R22
;              x -> R10
	.even
_LCD_set_xy::
	xcall push_xgsetF00C
	mov R22,R18
	mov R10,R16
	.dbline -1
	.dbline 124
; }
; /******************************************************************************/
; void LCD_set_xy( unsigned char x, unsigned char y )
; {	//设置LCD显示的起始位置，X为行，Y为列
	.dbline 126
;     unsigned char address;
; 	switch(x)
	mov R20,R10
	clr R21
	cpi R20,0
	cpc R20,R21
	breq L43
X9:
	cpi R20,1
	ldi R30,0
	cpc R21,R30
	breq L44
X10:
	cpi R20,2
	ldi R30,0
	cpc R21,R30
	breq L45
X11:
	cpi R20,3
	ldi R30,0
	cpc R21,R30
	breq L46
X12:
	cpi R20,4
	ldi R30,0
	cpc R21,R30
	breq L47
X13:
	xjmp L40
L43:
	.dbline 128
; 	{
; 		case 0: address = 0x80 + y; break;    
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 128
	xjmp L41
L44:
	.dbline 129
;     	case 1: address = 0x80 + y; break; 
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 129
	xjmp L41
L45:
	.dbline 130
; 		case 2: address = 0x90 + y; break; 
	mov R20,R22
	subi R20,112    ; addi 144
	.dbline 130
	xjmp L41
L46:
	.dbline 131
;    	 	case 3: address = 0x88 + y; break;
	mov R20,R22
	subi R20,120    ; addi 136
	.dbline 131
	xjmp L41
L47:
	.dbline 132
; 		case 4: address = 0x98 + y; break; 
	mov R20,R22
	subi R20,104    ; addi 152
	.dbline 132
	xjmp L41
L40:
	.dbline 133
; 		default:address = 0x80 + y; break;
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 133
L41:
	.dbline 135
; 	}
;     Write_char(0, address);
	mov R18,R20
	clr R16
	xcall _Write_char
	.dbline -2
L39:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r address 20 c
	.dbsym r y 22 c
	.dbsym r x 10 c
	.dbend
	.dbfunc e LCD_Write_string _LCD_Write_string fV
;              s -> R20,R21
;              Y -> R12
;              X -> R10
	.even
_LCD_Write_string::
	xcall push_xgset303C
	mov R12,R18
	mov R10,R16
	ldd R20,y+6
	ldd R21,y+7
	.dbline -1
	.dbline 139
; }
; /******************************************************************************/
; void LCD_Write_string( unsigned char X, unsigned char Y, unsigned char *s)
; {	//	中英文字符串显示函数
	.dbline 140
; 	LCD_set_xy( X, Y );   
	mov R18,R12
	mov R16,R10
	xcall _LCD_set_xy
	xjmp L50
L49:
	.dbline 142
;     while (*s) 
;     {
	.dbline 143
; 		Write_char( 1, *s );
	movw R30,R20
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline 144
; 	    s ++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 145
; 		Delaynms(100);
	ldi R16,100
	ldi R17,0
	xcall _Delaynms
	.dbline 146
; 	}
L50:
	.dbline 141
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L49
X14:
	.dbline -2
L48:
	.dbline 0 ; func end
	xjmp pop_xgset303C
	.dbsym r s 20 pc
	.dbsym r Y 12 c
	.dbsym r X 10 c
	.dbend
	.dbfunc e LCD_Write_number _LCD_Write_number fV
;              s -> R10
	.even
_LCD_Write_number::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 150
; }
; /*******************************************************************************/
; void LCD_Write_number(unsigned char s)//	数字显示函数
; {	 
	.dbline 151
; 	Write_char(1,num[s]);
	ldi R24,<_num
	ldi R25,>_num
	mov R30,R10
	clr R31
	add R30,R24
	adc R31,R25
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline -2
L52:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r s 10 c
	.dbend
	.dbfunc e Lcd_Mark2 _Lcd_Mark2 fV
	.even
_Lcd_Mark2::
	sbiw R28,2
	.dbline -1
	.dbline 155
; }
; /******************************************************************************/
; void Lcd_Mark2(void)
; {
	.dbline 156
; 	Clr_Scr();//清屏
	xcall _Clr_Scr
	.dbline 157
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 158
; 	LCD_Write_string(1,0,welcome);//
	ldi R24,<_welcome
	ldi R25,>_welcome
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,1
	xcall _LCD_Write_string
	.dbline -2
L53:
	.dbline 0 ; func end
	adiw R28,2
	ret
	.dbend
	.dbfunc e ReadTemperature _ReadTemperature fi
;             tt -> y+0
;              b -> R14
;              a -> R12
;              t -> R10,R11
	.even
_ReadTemperature::
	xcall push_xgset00FC
	sbiw R28,4
	.dbline -1
	.dbline 165
; 	//LCD_Write_string(2,0,input);
; 	//LCD_Write_string(2,0,input);
; }
; /******************************************************************************/
; 
; uint ReadTemperature(void)//读取温度
; {
	.dbline 166
; 	unsigned char a=0;
	.dbline 167
; 	unsigned char b=0;
	.dbline 168
; 	unsigned int  t=0;
	.dbline 169
; 	float tt=0;
	ldi R16,<L55
	ldi R17,>L55
	xcall lpm32
	std y+0,R16
	std y+1,R17
	std y+2,R18
	std y+3,R19
	.dbline 171
; 
; 	Init_1820();        //复位18b20 
	xcall _Init_1820
	.dbline 172
; 	  Clr_Bit(PORTD, 0);
	cbi 0x12,0
	.dbline 173
; 	Write_1820(0xcc);   // 发出转换命令 
	ldi R16,204
	xcall _Write_1820
	.dbline 174
;     Write_1820(0x44); 
	ldi R16,68
	xcall _Write_1820
	.dbline 175
; 	Init_1820(); 
	xcall _Init_1820
	.dbline 176
; 	Write_1820(0xcc);  //发出读命令 
	ldi R16,204
	xcall _Write_1820
	.dbline 177
;     Write_1820(0xbe); 
	ldi R16,190
	xcall _Write_1820
	.dbline 179
; 
; 	a=Read_1820();    //读数据 低8位
	xcall _Read_1820
	mov R12,R16
	.dbline 180
;     b=Read_1820();    //       高8位
	xcall _Read_1820
	mov R14,R16
	.dbline 182
; 	
; 	t=b;
	mov R10,R14
	clr R11
	.dbline 183
; 	t<<=8;
	mov R11,R10
	clr R10
	.dbline 184
; 	t=t|a;
	mov R2,R12
	clr R3
	or R10,R2
	or R11,R3
	.dbline 185
; 	tt=t*0.0625;
	ldi R16,<L56
	ldi R17,>L56
	xcall lpm32
	movw R2,R16
	movw R4,R18
	movw R16,R10
	xcall uint2fp
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	movw R16,R2
	movw R18,R4
	xcall fpmule2
	std y+0,R16
	std y+1,R17
	std y+2,R18
	std y+3,R19
	.dbline 186
; 	t= tt*10+0.5; //放大10倍输出并四舍五入
	ldi R16,<L57
	ldi R17,>L57
	xcall lpm32
	movw R24,R28
	st -y,R25
	st -y,R24
	xcall fpmule1
	movw R2,R16
	movw R4,R18
	ldi R16,<L58
	ldi R17,>L58
	xcall lpm32
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	movw R16,R2
	movw R18,R4
	xcall fpadd2
	xcall fpint
	movw R10,R16
	.dbline 187
; 	return(t); 
	.dbline -2
L54:
	.dbline 0 ; func end
	adiw R28,4
	xjmp pop_xgset00FC
	.dbsym l tt 0 D
	.dbsym r b 14 c
	.dbsym r a 12 c
	.dbsym r t 10 i
	.dbend
	.dbfunc e main _main fV
;              i -> <dead>
;              j -> R10,R11
;           temp -> y+0
	.even
_main::
	sbiw R28,6
	.dbline -1
	.dbline 191
; }
; /******************************************************************************/  
; void main(void) //主函数 
; { 
	.dbline 197
;     uchar i;
; 	uchar temp[6];
; 	uint  j;
;     //DDRD =0XFF; 
;     //PORTD=0XFF; 
; 	DDRA|=1<<0|1<<1|1<<2;//设置PA2,PA3,PA4为输出
	in R24,0x1a
	ori R24,7
	out 0x1a,R24
	.dbline 198
; 	PORTA=0xFF;
	ldi R24,255
	out 0x1b,R24
	.dbline 200
; 	
; 	DDRC|=1<<0;//设置PC0为输出  串行模式
	sbi 0x14,0
	.dbline 201
; 	PORTC=0x00;
	clr R2
	out 0x15,R2
	.dbline 203
; 	
; 	DDRD|=1<<0;//设置PC0为输出  串行模式
	sbi 0x11,0
	.dbline 204
; 	PORTD=0x00;
	out 0x12,R2
	.dbline 207
; 	
; 	
; 	Set_Bit(PORTD, 0);
	sbi 0x12,0
	.dbline 209
; 	
; 	Delaynms(4000);//显示画面等待时间
	ldi R16,4000
	ldi R17,15
	xcall _Delaynms
	.dbline 210
; 	Lcd_init();//设置液晶显示器
	xcall _Lcd_init
	.dbline 212
; 	
; 	Lcd_Mark2();	
	xcall _Lcd_Mark2
	.dbline 213
; 	Delaynms(4000);//显示画面等待时间
	ldi R16,4000
	ldi R17,15
	xcall _Delaynms
	xjmp L61
L60:
	.dbline 219
; 	
; 	//LCD_set_xy(2,5);
; 	//LCD_Write_number(0);
;    
;   while(1)
;    { 
	.dbline 221
; 
;     j =ReadTemperature();
	xcall _ReadTemperature
	movw R10,R16
	.dbline 222
; 	Delaynms(4000);
	ldi R16,4000
	ldi R17,15
	xcall _Delaynms
	.dbline 223
; 	Delaynms(4000);
	ldi R16,4000
	ldi R17,15
	xcall _Delaynms
	.dbline 224
; 	Delaynms(4000);
	ldi R16,4000
	ldi R17,15
	xcall _Delaynms
	.dbline 226
; 	
; 	LCD_set_xy(2,5);
	ldi R18,5
	ldi R16,2
	xcall _LCD_set_xy
	.dbline 227
; 	temp[5]=j/100;
	ldi R18,100
	ldi R19,0
	movw R16,R10
	xcall div16u
	std y+5,R16
	.dbline 228
; 	LCD_Write_number(temp[5]);
	xcall _LCD_Write_number
	.dbline 230
; 
; 	temp[4]=j/10-temp[5]*10;
	ldd R2,y+5
	ldi R24,10
	mul R24,R2
	movw R2,R0
	ldi R18,10
	ldi R19,0
	movw R16,R10
	xcall div16u
	movw R4,R16
	sub R4,R2
	sbc R5,R3
	std y+4,R4
	.dbline 231
; 	LCD_Write_number(temp[4]);
	mov R16,R4
	xcall _LCD_Write_number
	.dbline 232
; 	temp[3]=j-temp[5]*100-temp[4]*10;
	ldd R2,y+5
	ldi R24,100
	mul R24,R2
	movw R2,R10
	sub R2,R0
	sbc R3,R1
	ldd R4,y+4
	ldi R24,10
	mul R24,R4
	sub R2,R0
	sbc R3,R1
	std y+3,R2
	.dbline 233
; 	LCD_Write_number(12);
	ldi R16,12
	xcall _LCD_Write_number
	.dbline 234
; 	LCD_Write_number(temp[3]); 	
	ldd R16,y+3
	xcall _LCD_Write_number
	.dbline 238
; 	//
; 	//Clr_Bit(PORTD, 0);
; 	 
;    } 
L61:
	.dbline 218
	xjmp L60
X15:
	.dbline -2
L59:
	.dbline 0 ; func end
	adiw R28,6
	ret
	.dbsym l i 1 c
	.dbsym r j 10 i
	.dbsym l temp 0 A[6:6]c
	.dbend
	.dbfunc e delay _delay fV
;              x -> R16,R17
	.even
_delay::
	.dbline -1
	.dbline 242
; } 
; /******************************************************************/
; void delay(uint x)  //1.5us左右 
; { 
	xjmp L74
L73:
	.dbline 244
;      while(x) 
;     { 
	.dbline 245
;        x--; 
	subi R16,1
	sbci R17,0
	.dbline 246
;     } 
L74:
	.dbline 243
	cpi R16,0
	cpc R16,R17
	brne L73
X16:
	.dbline -2
L72:
	.dbline 0 ; func end
	ret
	.dbsym r x 16 i
	.dbend
	.dbfunc e Init_1820 _Init_1820 fV
	.even
_Init_1820::
	.dbline -1
	.dbline 251
; } 
; /******************************************************************/
; /******************************************************************/
; void Init_1820() 
; { 
	.dbline 252
;     Set_Bit(DDRC, 1);
	sbi 0x14,1
	.dbline 253
; 	Set_Bit(PORTC, 1);
	sbi 0x15,1
	.dbline 254
; 	Clr_Bit(PORTC, 1);
	cbi 0x15,1
	.dbline 255
;     delay(3000);    //480us以上 
	ldi R16,3000
	ldi R17,11
	xcall _delay
	.dbline 256
; 	Set_Bit(PORTC, 1);
	sbi 0x15,1
	.dbline 257
; 	Clr_Bit(DDRC, 1);
	cbi 0x14,1
	.dbline 258
;     delay(50);     //15~60us 
	ldi R16,50
	ldi R17,0
	xcall _delay
L77:
	.dbline 260
; 	while(Get_Bit(PINC, 1))
;     {} 
	.dbline 260
L78:
	.dbline 259
	sbic 0x13,1
	rjmp L77
X17:
	.dbline 261
; 	Set_Bit(DDRC, 1);
	sbi 0x14,1
	.dbline 262
; 	Set_Bit(PORTC, 1);
	sbi 0x15,1
	.dbline 263
;     delay(150);   //60~240us 
	ldi R16,150
	ldi R17,0
	.dbline -2
L76:
	.dbline 0 ; func end
	xjmp _delay
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
	.dbline 267
; } 
; /******************************************************************/
; Write_1820(unsigned char x) 
; {    
	.dbline 269
;     unsigned char m; 
;     for(m=0;m<8;m++) 
	clr R20
	xjmp L84
L81:
	.dbline 270
;     { 
	.dbline 271
; 	   Clr_Bit(PORTC, 1);
	cbi 0x15,1
	.dbline 272
;        if(x&(1<<m))    //写数据，从低位开始 
	ldi R16,1
	mov R17,R20
	xcall lsl8
	mov R2,R10
	and R2,R16
	breq L85
X18:
	.dbline 273
; 	   Set_Bit(PORTC, 1);
	sbi 0x15,1
	xjmp L86
L85:
	.dbline 275
;        else 
; 	   Clr_Bit(PORTC, 1); 
	cbi 0x15,1
L86:
	.dbline 276
;        delay(40);   //15~60us 
	ldi R16,40
	ldi R17,0
	xcall _delay
	.dbline 277
; 	   Set_Bit(PORTC, 1);
	sbi 0x15,1
	.dbline 278
;     } 
L82:
	.dbline 269
	inc R20
L84:
	.dbline 269
	cpi R20,8
	brlo L81
X19:
	.dbline 279
; 	   Set_Bit(PORTC, 1);
	sbi 0x15,1
	.dbline -2
L80:
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
	.dbline 283
; } 
; /******************************************************************/
; unsigned char Read_1820() 
; {     
	.dbline 285
;     unsigned char temp,k,n; 
;        temp=0; 
	clr R10
	.dbline 286
;     for(n=0;n<8;n++) 
	clr R20
	xjmp L91
L88:
	.dbline 287
;        { 
	.dbline 288
; 	   Clr_Bit(PORTC, 1);
	cbi 0x15,1
	.dbline 289
; 	   Set_Bit(PORTC, 1); 
	sbi 0x15,1
	.dbline 290
; 	   Clr_Bit(DDRC, 1);
	cbi 0x14,1
	.dbline 291
;        k=(Get_Bit(PINC, 1));    //读数据,从低位开始 
	in R22,0x13
	andi R22,2
	.dbline 292
;        if(k) 
	breq L92
X20:
	.dbline 293
;        temp|=(1<<n); 
	ldi R16,1
	mov R17,R20
	xcall lsl8
	or R10,R16
	xjmp L93
L92:
	.dbline 295
;        else 
;        temp&=~(1<<n); 
	ldi R16,1
	mov R17,R20
	xcall lsl8
	mov R2,R16
	com R2
	and R10,R2
L93:
	.dbline 296
;        delay(50); //60~120us     
	ldi R16,50
	ldi R17,0
	xcall _delay
	.dbline 297
; 	   Set_Bit(DDRC, 1);
	sbi 0x14,1
	.dbline 298
;        } 
L89:
	.dbline 286
	inc R20
L91:
	.dbline 286
	cpi R20,8
	brlo L88
X21:
	.dbline 299
;    return (temp); 
	mov R16,R10
	.dbline -2
L87:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r temp 10 c
	.dbsym r k 22 c
	.dbsym r n 20 c
	.dbend
	.area lit(rom, con, rel)
L58:
	.word 0x0,0x3f00
L57:
	.word 0x0,0x4120
L56:
	.word 0x0,0x3d80
L55:
	.word 0x0,0x0
; }  
; /******************************************************************/
; 
; 
; 
