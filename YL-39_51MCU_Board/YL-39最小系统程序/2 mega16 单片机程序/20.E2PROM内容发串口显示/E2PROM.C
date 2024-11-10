/******************************************************************************/

/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 把EEPROM 512个字节读到PC串口调试助手显示 
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】：    
/******************************************************************************/
#include <iom16v.h>
//#include <stdio.h>   
#include <eeprom.h>  
#define fosc 8000000 //晶振8MHZ
#define baud 19200	 //波特率
#define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
#define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
#define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
#define Cpl_Bit(val, bitn)    (val^=(1<<(bitn)) )

void putchar(unsigned char c)
	{	 
     while (!(UCSRA&(1<<UDRE)));
	 UDR=c;    
	}
/*  		字符输入函数 		 */	
unsigned char getchar(void)
  	{
	 while(!(UCSRA& (1<<RXC)));
     return UDR;
	}

/*			UART初始化				*/	
void uart_init(void)
{
 UCSRB=(1<<RXEN)|(1<<TXEN);//允许发送和接收
 UBRRL=(fosc/16/(baud+1))%256;
 UBRRH=(fosc/16/(baud+1))/256;
 UCSRC=(1<<URSEL)|(1<<UCSZ1)|(1<<UCSZ0);//8位数据+1位STOP位
}
/*			RS232通信main函数		*/


void main(void)
{
 unsigned char i;
 unsigned int  j;

 uart_init();
 
 for(j=0;j<512;j++)
   {
   putchar(EEPROMread(i));
   }
 while(1)
    {
	 i=getchar();
	 if (i!=0)//按PC键盘开始测试
	   {
	    
		for(j=0;j<512;j++)
		  {
		  EEPROMwrite(j,i);
		  }
	   }	 
	}
}