/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 1602显示红外地址码与数据码
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽接上  
/******************************************************************************/

#include <iom16v.h>
#include <macros.h>  
#include "1602.h"
#define uint  unsigned int
#define uchar unsigned char
#define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
#define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
#define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
#define Cpl_Bit(val, bitn)    (val^=(1<<(bitn)) )

  uchar adc_0[]={"IRCodeADD:"};
  uchar adc_1[]={"IRCodeDAT:"};

//*****************************************0
//函数声明
 void ICEInit(void);
 uchar bitcnt;
 uint newFall;
 uint oldFall;
 uint data0;
 uint data1;


 void ICEInit(void) //T/C1初始化
 {
    TIMSK=0X20; //使能捕获中断
    TCCR1A=0X00;//T/C1时钟与系统相同，本文使用系统AVR内部自带8MHz振荡源.T/C1时钟周期为1μs
    TCCR1B=0X82; //使能噪音抑制，下降沿触发中断
 }
 void main(void)
 {   
   DDRA = 0xff;      
   PORTA = 0x00;      
   DDRB = 0xFF;    
   PORTB = 0xFF; 
   ICEInit();
 
   LcdInit();   
   WriteChar(1,0,10,adc_0);
   WriteChar(2,0,10,adc_1);
   SEI();
  while(1);
  } 
  
 
#pragma interrupt_handler CAPT_ISR:iv_TIMER1_CAPT 

void CAPT_ISR(void)
{
  uchar a;
  uint temp;
  newFall=ICR1;
  temp=newFall-oldFall; //计算脉冲加间隔的时间
  oldFall=newFall;
   
 if(temp>1024 && temp<1225) // "0"信号
   {
    temp=0;
   }

else if(temp>2145 && temp<2345) //“1”信号
   {
    temp=1;
   }

else if(temp>13400 && temp<13600) //header信号

 {
    bitcnt=0;
    data0=0;
    data1=0;
 return; //返回，等待下次开始接收
 }

else ///干扰信号
{
    return;
}

  bitcnt++;
    if(bitcnt<16) //开始接收前16位
 {
  data0=data0|(uint)temp;
  data0=data0<<1;
 }
else if(bitcnt==16)
 {
 data0=data0|(uint)temp;
 }
 else if(bitcnt<32) //开始接收后16位
 { 
 data1=data1|(uint)temp;
 data1=data1<<1;
 }
 else if(bitcnt==32) //接收完最后一位
 {
 
          data1=data1|(uint)temp;
		  WriteNum(1,10,ASCII[(uchar)(data0>>8)/16]);
		  WriteNum(1,11,ASCII[(uchar)(data0>>8)%16]);
		  WriteNum(1,12,ASCII[(uchar)data0/16]);
		  WriteNum(1,13,ASCII[(uchar)data0%16]);
		  WriteNum(2,10,ASCII[(uchar)(data1>>8)/16]);
		  WriteNum(2,11,ASCII[(uchar)(data1>>8)%16]);
		  WriteNum(2,12,ASCII[(uchar)data1/16]);
		  WriteNum(2,13,ASCII[(uchar)data1%16]);
 }
 
}