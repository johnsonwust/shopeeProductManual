/******************************************************************************/
                                                  
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： LCD1602 电位器R20调节输入电压    内部2。56基准电压
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽接上  
/******************************************************************************/
#include<iom16v.h>
#include <macros.h>
#include"1602.h"
#define uchar unsigned char 
#define uint unsigned int 
#define N 64

uchar adc_0[]={"ADC_0: .    V"};
uchar k=0;
uint sum_adc[N]={0};
//ADC测试,使用1602显示ADC0和ADC1的值
//主函数
void main(void)//主函数
{
    unsigned int i,j;
    unsigned char disbuf[4]={0,0,0,0};
	 
	DDRA|=1<<0|1<<1|1<<2|0<<7;//设置PA0,PA1,PA2为输出,PA7为输入
	PORTA=0x00;

	DDRB|=0xFF;//数据口输出
	PORTB=0xFF;
	
	LcdInit();	//设置液晶显示器
    WriteChar(1,0,13,adc_0);//显示
	
	ADCSRA=0X00;    
    ADMUX =(1<<REFS0)|(1<<REFS1)|(0<<MUX0)|(0<<MUX1)|(0<<MUX2)|(0<<MUX3)|(0<<MUX4); //采用内部5参考电压，ADC7输入
    ADCSRA=(1<<ADEN)|(1<<ADSC)|(1<<ADIE)|(1<<ADPS2)|(1<<ADPS1) ;//ADC转换 64分频
	SEI();//开中断
    while(1);
		
} //ENDmain

uint ADC_Convert(void)
{   
	 uint temp1,temp2;
	 temp1=(uint)ADCL;
	 temp2=(uint)ADCH;
	 temp2=(temp2<<8)+temp1;//10位精度
	 return(temp2);
}


#pragma interrupt_handler adc_isr:iv_ADC 
void adc_isr(void)
{
    unsigned  long int i;
	unsigned char disbuf[5]={0,0,0,0,0};
	unsigned char f;
	unsigned long sum_aver_adc=0;
	
    ADMUX =(1<<REFS0)|(1<<REFS1)|(1<<MUX0)|(1<<MUX1)|(1<<MUX2)|(0<<MUX3)|(0<<MUX4);//内部2.56基准，PA7 AD输入
    ADCSRA|=(1<<ADSC);//启动AD转换
	
	sum_adc[k]=ADC_Convert();     
	k++;
	if(k>=N)
  {
	k=0;
	  for(f=0;f<N;f++)
	  {
      sum_aver_adc=sum_aver_adc+sum_adc[f];  //总的加起来
	  }
	  sum_aver_adc=(sum_aver_adc/N);         //除下，算平均
	  i=(26000* sum_aver_adc)/1023;          //算出电压
	  
	  disbuf[4]=i/10000;
      i=i%10000;
      disbuf[3]=i/1000;
      i=i%1000;
      disbuf[2]=i/100;
      i=i%100;
	  disbuf[1]=i/10;
	  i=i%10;
	  disbuf[0]=i;
	  
	  WriteNum(1,6,ASCII[disbuf[4]]);
	  WriteNum(1,8,ASCII[disbuf[3]]);
	  WriteNum(1,9,ASCII[disbuf[2]]);
	  WriteNum(1,10,ASCII[disbuf[1]]);
	  WriteNum(1,11,ASCII[disbuf[0]]);
	 
  }
	        
}//end void 
