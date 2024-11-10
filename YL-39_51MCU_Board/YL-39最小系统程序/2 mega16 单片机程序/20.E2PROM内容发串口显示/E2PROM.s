	.module E2PROM.C
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\20.E2PROM内容发串口显示\E2PROM.C
	.dbfunc e putchar _putchar fV
;              c -> R16
	.even
_putchar::
	.dbline -1
	.dbline 25
; /******************************************************************************/
; 
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 把EEPROM 512个字节读到PC串口调试助手显示 
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】：    
; /******************************************************************************/
; #include <iom16v.h>
; //#include <stdio.h>   
; #include <eeprom.h>  
; #define fosc 8000000 //晶振8MHZ
; #define baud 19200	 //波特率
; #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
; #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
; #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
; #define Cpl_Bit(val, bitn)    (val^=(1<<(bitn)) )
; 
; void putchar(unsigned char c)
; 	{	 
L2:
	.dbline 26
;      while (!(UCSRA&(1<<UDRE)));
L3:
	.dbline 26
	sbis 0xb,5
	rjmp L2
X0:
	.dbline 27
; 	 UDR=c;    
	out 0xc,R16
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r c 16 c
	.dbend
	.dbfunc e getchar _getchar fc
	.even
_getchar::
	.dbline -1
	.dbline 31
; 	}
; /*  		字符输入函数 		 */	
; unsigned char getchar(void)
;   	{
L6:
	.dbline 32
; 	 while(!(UCSRA& (1<<RXC)));
L7:
	.dbline 32
	sbis 0xb,7
	rjmp L6
X1:
	.dbline 33
;      return UDR;
	in R16,0xc
	.dbline -2
L5:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e uart_init _uart_init fV
	.even
_uart_init::
	.dbline -1
	.dbline 38
; 	}
; 
; /*			UART初始化				*/	
; void uart_init(void)
; {
	.dbline 39
;  UCSRB=(1<<RXEN)|(1<<TXEN);//允许发送和接收
	ldi R24,24
	out 0xa,R24
	.dbline 40
;  UBRRL=(fosc/16/(baud+1))%256;
	ldi R24,26
	out 0x9,R24
	.dbline 41
;  UBRRH=(fosc/16/(baud+1))/256;
	clr R2
	out 0x20,R2
	.dbline 42
;  UCSRC=(1<<URSEL)|(1<<UCSZ1)|(1<<UCSZ0);//8位数据+1位STOP位
	ldi R24,134
	out 0x20,R24
	.dbline -2
L9:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
;              i -> R10
;              j -> R20,R21
	.even
_main::
	.dbline -1
	.dbline 48
; }
; /*			RS232通信main函数		*/
; 
; 
; void main(void)
; {
	.dbline 52
;  unsigned char i;
;  unsigned int  j;
; 
;  uart_init();
	xcall _uart_init
	.dbline 54
;  
;  for(j=0;j<512;j++)
	clr R20
	clr R21
	xjmp L14
L11:
	.dbline 55
;    {
	.dbline 56
;    putchar(EEPROMread(i));
	mov R16,R10
	clr R17
	xcall _EEPROMread
	xcall _putchar
	.dbline 57
;    }
L12:
	.dbline 54
	subi R20,255  ; offset = 1
	sbci R21,255
L14:
	.dbline 54
	cpi R20,0
	ldi R30,2
	cpc R21,R30
	brlo L11
X2:
	xjmp L16
L15:
	.dbline 59
;  while(1)
;     {
	.dbline 60
; 	 i=getchar();
	xcall _getchar
	mov R10,R16
	.dbline 61
; 	 if (i!=0)//按PC键盘开始测试
	tst R16
	breq L18
X3:
	.dbline 62
; 	   {
	.dbline 64
; 	    
; 		for(j=0;j<512;j++)
	clr R20
	clr R21
	xjmp L23
L20:
	.dbline 65
; 		  {
	.dbline 66
; 		  EEPROMwrite(j,i);
	mov R18,R10
	movw R16,R20
	xcall _EEPROMwrite
	.dbline 67
; 		  }
L21:
	.dbline 64
	subi R20,255  ; offset = 1
	sbci R21,255
L23:
	.dbline 64
	cpi R20,0
	ldi R30,2
	cpc R21,R30
	brlo L20
X4:
	.dbline 68
; 	   }	 
L18:
	.dbline 69
; 	}
L16:
	.dbline 58
	xjmp L15
X5:
	.dbline -2
L10:
	.dbline 0 ; func end
	ret
	.dbsym r i 10 c
	.dbsym r j 20 i
	.dbend
; }
