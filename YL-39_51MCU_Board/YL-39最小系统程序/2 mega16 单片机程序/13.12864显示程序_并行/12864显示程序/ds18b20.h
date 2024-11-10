/*--------------------------------------------------*/
/*             AVR-ARM开发网论坛                    */
/*           http://www.avrarm.com                  */
/*            AVR生成代码测试程序                   */
/*--------------------------------------------------*/
/*     程序由AVR辅助开发工具V2.1.1自动生成          */
/*     AVR系统的处理器为：   ATMega128               */
/*     AVR系统的晶振频率：   8.0000 Mhz             */
/*--------------------------------------------------*/

#include "define.h"
#include "delay.h"


/**********************************************************************
functionName: unsigned char resetDS18B20(void)
description ：DS18B20初始化
**********************************************************************/
unsigned char resetDS18B20(void)
{
	unsigned char errTime=0;
	RLS_DS18B20;		//释放总线
	_NOP();
	HLD_DS18B20;		//Maga16控制总线
	CLR_DS18B20;		//强制拉低
	Delay_Us(480); 	//209.42us
	//以上延时大于480us
	RLS_DS18B20;		//释放总线,总线自动上拉
	_NOP();
	while(STU_DS18B20)
	{
	   Delay_Us(6);	//5.15us
	   errTime++;
	   if(errTime>20)
		  return(0x00); 	//如果等带大于约 5.15us*20就返回0x00，报告复位失败（实际上只要等待15-60us）
	}
	errTime=0;
	while(!(STU_DS18B20))
	{
	   Delay_Us(6);	//5.15us
	   errTime++;
	   if(errTime>50)
		  return(0x00); 	//如果等带大于约 5.15us*50就返回0x00，报告复位失败（实际上只要等待60-240us）
	}
	return(0xff);

}

/**********************************************************************
functionName: unsigned char readByteDS18B20(void)
description ：读DS18B20一个字节
**********************************************************************/
unsigned char readByteDS18B20(void)
{
	unsigned char i;
	unsigned char retVal=0;
	RLS_DS18B20;		//释放总线
	for(i=8;i>0;i--)
	{
	   retVal>>=1;
	   HLD_DS18B20; 	//Maga16控制总线
	   CLR_DS18B20; 	//强制拉低
	   Delay_Us(8);	//延时大于1us
	   SET_DS18B20; 	//释放总线,DS18B20会将总线强制拉低
	   //delay_nus(8);
	   RLS_DS18B20; 	 //释放总线
	   if(STU_DS18B20)
		  retVal|=0x80;
	   Delay_Us(32);		 //31us
	   HLD_DS18B20; 	 //释放总线
	   SET_DS18B20; 	//释放总线,DS18B20会将总线强制拉低
	   //delay_nus(30); 	 //30.38us
	}
	Delay_Us(5);		 //2.71us(大于1us就行了)
	return(retVal);

}

/**********************************************************************
functionName: unsigned char readByteDS18B20(void)
description ：写DS18B20一个字节
**********************************************************************/
void writeByteDS18B20(unsigned char wb)
{
	unsigned char i;
	unsigned char temp;
	RLS_DS18B20;			 //释放总线
	for(i=0;i<8;i++)
	{
	   HLD_DS18B20; 	 //Maga16控制总线
	   CLR_DS18B20; 	 //强制拉低
	   Delay_Us(4);	 //14.92us
	   //SET_DS18B20;		 //释放总线
	   //delay_nus(16); 	 //14.92us
	   temp=wb>>i;
	   temp&=0x01;
	   if(temp)
		  SET_DS18B20;		 //释放总线
	   else
		  CLR_DS18B20;		 //强制拉低
	   Delay_Us(50);		 //30.38us
	   //RLS_DS18B20;		 //释放总线
	   SET_DS18B20; 	 //释放总线
	   Delay_Us(4);	 //2.71us(大于1us就行了)

   }
}

/**********************************************************************
functionName: unsigned int readTempDS18B20(void)
description ：读DS18B20温度
**********************************************************************/
unsigned int readTempDS18B20(void)
{
	unsigned char tempL,tempH;
	unsigned int x;
	//resetDS18B20();
	//writeByteDS18B20(0xcc);	 //跳过ROM
	//writeByteDS18B20(0x44);	 //启动温度转换
	Delay_Ms(1);		   //等待1ms
	resetDS18B20();
	writeByteDS18B20(0xcc);  //跳过ROM
	writeByteDS18B20(0xbe);  //读数据
	tempL=readByteDS18B20();
	tempH=readByteDS18B20();
	x=(tempH<<8)|tempL;
	resetDS18B20();
	writeByteDS18B20(0xcc);  //跳过ROM
	writeByteDS18B20(0x44);  //启动温度转换
	return(x);
}






