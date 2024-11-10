	.module uart.c
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\21.UART实验往PC收发数据\uart.c
	.dbfunc e port_init _port_init fV
	.even
_port_init::
	.dbline -1
	.dbline 31
; /******************************************************
;       	
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 用软件查询方式实现用串口调试软件发数据给avr，而avr则将数据回传给pc．
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽接上   		  
; 			  										   			  
; *******************************************************/
; 
; #include <iom8v.h>
; #include <macros.h>
; 
; /***********宏定义*************/
; #define  uchar unsigned char 
; #define  uint unsigned int
; #define fosc 8000000
; #define baud 9600
; /*******************************************
; 函数名称: IO口初始化函数
; 功    能: 实现IO初始化
; 参    数: 无
; 返 回 值: 无
; /********************************************/
; void port_init(void)
; {
	.dbline 32
;   DDRD = 0x02;
	ldi R24,2
	out 0x11,R24
	.dbline 33
;   PORTD = 0xFF;
	ldi R24,255
	out 0x12,R24
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e USART_Init _USART_Init fV
	.even
_USART_Init::
	.dbline -1
	.dbline 44
; 
; }
; 
; /***********************************************************************
; 函数名称: 串口初始化函数
; 功    能: 实现串口初始化
; 参    数: 无
; 返 回 值: 无
; /*********************************************************************/
; void USART_Init(void)
; {
	.dbline 45
;  UCSRB=(1<<RXEN)|(1<<TXEN)|(1<<RXCIE);//允许收发,打开接收中断
	ldi R24,152
	out 0xa,R24
	.dbline 46
;  UBRRL=(fosc/16/(baud+1))%256;//设置波特率寄存器
	ldi R24,52
	out 0x9,R24
	.dbline 47
;  UBRRH=(fosc/16/(baud+1))/256;
	clr R2
	out 0x20,R2
	.dbline 48
;  UCSRC=(1<<URSEL)|(1<<UCSZ1)|(1<<UCSZ0);//8位数据+1位STOP
	ldi R24,134
	out 0x20,R24
	.dbline -2
L2:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e USART_Transmit _USART_Transmit fV
;           data -> R16
	.even
_USART_Transmit::
	.dbline -1
	.dbline 58
; }
; 
; /*******************************************
; 函数名称: 串口发送一个字节函数
; 功    能: 实现串口发送一个字节
; 参    数: data--串口要发送的一个字节
; 返 回 值: 无
; /********************************************/
; void USART_Transmit(uchar data) //发送采用查询方式
; {
L4:
	.dbline 59
L5:
	.dbline 59
;   while(!(UCSRA&(1<<UDRE)));//上次发送有没有完成
	sbis 0xb,5
	rjmp L4
	.dbline 60
;  UDR=data;                       //发送数据
	out 0xc,R16
	.dbline -2
L3:
	.dbline 0 ; func end
	ret
	.dbsym r data 16 c
	.dbend
	.dbfunc e USART_Transmit_string _USART_Transmit_string fV
;            ptr -> R20,R21
	.even
_USART_Transmit_string::
	rcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 71
;  
; }
; 
; /*******************************************
; 函数名称: 串口发送数组函数
; 功    能: 实现串口发送一个数组
; 参    数: *ptr--串口要发送的数组的首地址
; 返 回 值: 无
; /********************************************/
; void USART_Transmit_string(uchar *ptr)
; {
	rjmp L9
L8:
	.dbline 73
	.dbline 74
	movw R30,R20
	ld R16,Z+
	movw R20,R30
	rcall _USART_Transmit
	.dbline 75
L9:
	.dbline 72
;  while (*ptr)
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L8
	.dbline 76
;   {
;     USART_Transmit(*ptr++);
;   }
;  USART_Transmit(0x0D);
	ldi R16,13
	rcall _USART_Transmit
	.dbline 77
;  USART_Transmit(0x0A);  //结尾发送回车换行
	ldi R16,10
	rcall _USART_Transmit
	.dbline -2
L7:
	rcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r ptr 20 pc
	.dbend
	.dbfunc e USART_Receive _USART_Receive fc
	.even
_USART_Receive::
	.dbline -1
	.dbline 88
; }
; 
; /*数据接收，查询方式*/
; /*******************************************
; 函数名称: 串口接收一个字节函数
; 功    能: 实现串口接收一个字节
; 参    数: 无
; 返 回 值: 无
; /********************************************/
; uchar USART_Receive(void) //接收采用查询方式
; {
L12:
	.dbline 89
	.dbline 89
	.dbline 89
L13:
	.dbline 89
;   while(!(UCSRA&(1<<RXC))){;}//有没有接收到数据
	sbis 0xb,7
	rjmp L12
	.dbline 90
;   return UDR;				      //获取并返回数据
	in R16,0xc
	.dbline -2
L11:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
;           temp -> R20
	.even
_main::
	.dbline -1
	.dbline 101
; }
; 
; 
; /********************************************
; 函数名称: 主函数
; 功    能: 实现函数主体功能。
; 参    数: 无
; 返 回 值: 无
; ********************************************/
; void main(void)
; {
	.dbline 103
;   uchar temp;
;   USART_Init();
	rcall _USART_Init
	rjmp L17
L16:
	.dbline 106
	.dbline 107
	rcall _USART_Receive
	mov R20,R16
	.dbline 108
	mov R2,R20
	com R2
	out 0x18,R2
	.dbline 109
	rcall _USART_Transmit
	.dbline 110
L17:
	.dbline 105
	rjmp L16
X0:
	.dbline -2
L15:
	.dbline 0 ; func end
	ret
	.dbsym r temp 20 c
	.dbend
