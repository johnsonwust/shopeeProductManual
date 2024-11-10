/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 1602液晶显示DS18B20温度
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽拿掉   
/******************************************************************************/
//温度传感器DS18B20试验
//间隔2s采集一次温度值
//使用1602的液晶作为显示
  #include <iom16v.h>     
  #include <macros.h>
  #include "DS18B20.H"
  #include "1602.h"
  uchar adc_0[]={"Temperature:"};
  uchar adc_1[]={0xdf,0x43};
  uchar tx[]={0};
/******************************************************************************/
//读出温度程序
/******************************************************************************/  	
//延时函数在16M时延时1ms
  void s_1ms(unsigned int ms)
  {
    unsigned int aa;
	for(;ms>=1;ms--)
	{
	for(aa=0;aa<=2000;aa++)
	{;}
	}
  }	
/******************************************************************************/
//读出温度程序
/******************************************************************************/  		 
  void ReadTemperature(void)
 {
	unsigned char a=0;
	unsigned char b=0;
	unsigned char Data_L=0;
	unsigned char num=0;

	Init_1820();        //复位18b20 
	Write_1820(0xcc);   // 发出转换命令 
    Write_1820(0x44); 
	Init_1820(); 
	Write_1820(0xcc);  //发出读命令 
    Write_1820(0xbe); 
	a=Read_1820();    //读数据 低8位
    b=Read_1820();    //       高8位
	tx[0] = (a/16+b*16)/10;      //整数部分
	tx[1] = (a/16+b*16)%10; 

    Data_L=a&0X0F;
     for(num=2;num<6;num++)		 //小数部分
   {
      Data_L=Data_L*10;				 //10	   //100		//40		 //80
      tx[num]=Data_L/16;			 //0	  //6			//2			 //5
      Data_L=Data_L%16;				 //10	   //4			//8
	}
} 
/******************************************************************************/
//读出温度程序
/******************************************************************************/  	
   void main(void)
{ 
   uint i,tem3,tem2,tem1;
   //端口初始化
   DDRA = 0xff;      
   PORTA = 0x00;      
   DDRB = 0xFF;    
   PORTB = 0xF0;       
   //延时200ms
   s_1ms(200); 
   //1602 初始化
   LcdInit();   
   WriteChar(1,0,12,adc_0);
   WriteChar(1,14,2,adc_1);
   WriteChar(2,11,2,adc_1);
   
   while (1) 
  {
  ReadTemperature();   
  s_1ms(50); 
  WriteNum(2, 4,   ASCII[tx[0]]); 
  WriteNum(2, 5,   ASCII[tx[1]]); 
  WriteNum(2, 6,   ASCII[10]);  
  WriteNum(2, 7,   ASCII[tx[2]]);  
  WriteNum(2, 8,   ASCII[tx[3]]);   
  WriteNum(2, 9,   ASCII[tx[4]]);     
  WriteNum(2, 10,  ASCII[tx[5]]);     
  } 
}