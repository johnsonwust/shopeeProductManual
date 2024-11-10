/******************************************************************** 
 功            能：LCD1602液晶读写程序
 方            式：并口方式 ST7920驱动
 说            明：MCU:atmage16  8M
 设            计：   
 修            改：真红炎神   
 日            期：2008.09.06
********************************************************************/
#ifndef _LCD12864_H
#define _LCD12864_H

#include "delay.h"

unsigned char const IC_DAT[];
unsigned char const pic1[];
unsigned char const pic2[];
unsigned char const pic3[];

//Port Definitions
#define LCD12864_DATAPORT PORTB//数据输出端口
#define LCD12864_DATAPIN PINB//数据输入端口
#define LCD12864_DATADDR  DDRB//数据方向
#define LCD12864_CTRLPORT PORTA
	#define RS12864 PA0//数据命令选择
	#define RW12864 PA1//读写选择
	#define E12864  PA2//使能
	#define PSB12864  PC0//并串选择
	#define RST12864  PA7//复位

#define PSB12864_H LCD12864_CTRLPORT |= BIT(PSB12864)
#define PSB12864_L LCD12864_CTRLPORT &=~ BIT(PSB12864)

#define RST12864_H LCD12864_CTRLPORT |= BIT(RST12864)
#define RST12864_L LCD12864_CTRLPORT &=~ BIT(RST12864)

#define RS12864_H LCD12864_CTRLPORT |= BIT(RS12864)
#define RS12864_L LCD12864_CTRLPORT &=~ BIT(RS12864)

#define RW12864_H LCD12864_CTRLPORT |= BIT(RW12864)
#define RW12864_L LCD12864_CTRLPORT &=~ BIT(RW12864)

#define E12864_H LCD12864_CTRLPORT |= BIT(E12864)
#define E12864_L LCD12864_CTRLPORT &=~ BIT(E12864)

#define CMD12864 0 
#define DATA12864 1

void  TransferData(unsigned char data1,unsigned char di);
void  display(void);
void  display_grapic(void);
void  DisplayLine(unsigned char line1,unsigned char line2);
void  DisplayGraphic(unsigned char const *adder);
void  lcd_mesg(unsigned char const *adder1);
void   lcd12864_GB16X16(unsigned char y,unsigned char x,unsigned char *p);//16x16汉字显示程序


void  init12864_Hzk(void)           //LCD字库初始化程序
{
	Delay_Ms(50);	//大于40MS的延时程序              
	PSB12864_H;		//设置为8BIT并口工作模式
	Delay_Us(1);
	RST12864_L;
	Delay_Ms(50);	//大于40MS的延时程序               
	RST12864_H;		//复位置高
	Delay_Ms(50);
	TransferData(0x30,0);  //Extended Function Set :8BIT设置,RE=0: basic instruction set, G=0 :graphic display OFF
	Delay_Us(120);         //大于100uS的延时程序
	TransferData(0x30,0);  //Function Set
	Delay_Us(40);          //大于37uS的延时程序
	TransferData(0x08,0);  //Display on Control
	Delay_Us(120);         //大于100uS的延时程序
	TransferData(0x10,0);  //Cursor Display Control光标设置
	Delay_Us(120);         //大于100uS的延时程序
	TransferData(0x0C,0);  //Display Control,D=1,显示开
	Delay_Us(120);         //大于100uS的延时程序
	TransferData(0x01,0);  //Display Clear
	Delay_Ms(15);          //大于10mS的延时程序
	TransferData(0x06,0);  //Enry Mode Set,光标从右向左加1位移动
	Delay_Us(120);         //大于100uS的延时程序
}



void init12864_Bmp(void)        //LCD显示图片(扩展)初始化程序
{
	Delay_Ms(50);          //大于40MS的延时程序
	PSB12864_H;            //设置为8BIT并口工作模式
	Delay_Us(1);           //延时
	RST12864_L;            //复位
	Delay_Ms(50);          //延时
	RST12864_H;            //复位置高
	Delay_Ms(255);;
	TransferData(0x36,0);  //Extended Function Set RE=1: extended instruction
	Delay_Us(120);         //大于100uS的延时程序
	TransferData(0x36,0);  //Extended Function Set:RE=1: extended instruction set
	Delay_Us(40);          //大于37uS的延时程序
	TransferData(0x3E,0);  //EXFUNCTION(DL=8BITS,RE=1,G=1)
	Delay_Us(120);         //大于100uS的延时程序
	TransferData(0x01,0);  //CLEAR SCREEN
	Delay_Us(120);         //大于100uS的延时程序
}

void   lcd12864_GB16X16(unsigned char y,unsigned char x,unsigned char *p)//16x16汉字显示程序
{
	unsigned char i=0,num=0;
	while(*(p+num) != 0)//判断字符串长度
		num ++;
	if(y == 0)//第0行
	{
    	TransferData(0x80+x,0);  //Set Graphic Display RAM Address
	}
	if(y == 1)//第0行
	{
    	TransferData(0x90+x,0);  //Set Graphic Display RAM Address
	}
	if(y == 2)//第0行
	{
    	TransferData(0x88+x,0);  //Set Graphic Display RAM Address
	}
	if(y == 3)//第0行
	{
    	TransferData(0x98+x,0);  //Set Graphic Display RAM Address
	}
    Delay_Us(120);
	for(i=0;i<num;i++)
	{
  		TransferData(*(p+i),1);
	}
}

void  TransferData(unsigned char data1,unsigned char cmdordata)  //传送数据或者命令,当DI=0是,传送命令,当DI=1,传送数据.
{
	E12864_L;
	RW12864_L;
	Delay_Us(1);
	if(cmdordata == 0)
	{
		RS12864_L;
	}
	else
	{
		RS12864_H;
	}
	Delay_Us(1);
	LCD12864_DATAPORT = data1;
	E12864_H;
	Delay_Us(1);
	E12864_L;
	Delay_Us(1);
}


void DisplayGraphic(unsigned char const *adder)
{

   int i,j;
//*******显示上半屏内容设置
   for(i=0;i<32;i++)              //
   { 
      TransferData((0x80 + i),0); //SET  垂直地址 VERTICAL ADD
      TransferData(0x80,0);       //SET  水平地址 HORIZONTAL ADD
      for(j=0;j<16;j++)
       {
         TransferData(*adder,1);
         adder++;
       }
   }
//*******显示下半屏内容设置
   for(i=0;i<32;i++)              //
   {
      TransferData((0x80 + i),0); //SET 垂直地址 VERTICAL ADD
      TransferData(0x88,0);       //SET 水平地址 HORIZONTAL ADD
      for(j=0;j<16;j++)
      {
         TransferData(*adder,1);
         adder++;
      }
   }
}

/*
unsigned char const pic1[]=
{
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x82,0x00,0x02,0x61,0x08,0x24,0x00,0x80,0x20,0x40,0x00,0x00,0x42,0x40,0x86,0x01,
0x83,0x7F,0xC2,0x69,0x09,0xFF,0x00,0x80,0x34,0x64,0x3F,0xE0,0x42,0x50,0x84,0x01,
0x81,0x52,0x42,0x29,0x08,0x20,0x00,0x80,0x1F,0x98,0x20,0x20,0x4F,0xE0,0x9F,0xC1,
0x80,0x13,0x02,0x29,0x09,0xFE,0x00,0x80,0x01,0x20,0x3F,0xE1,0xF2,0x40,0x84,0xC1,
0x86,0x21,0x8F,0xA9,0x1F,0xA2,0x00,0x80,0x43,0x7C,0x20,0x20,0x4F,0xE3,0xE4,0xC1,
0x82,0x4C,0x02,0x29,0x09,0xFE,0x3F,0xFE,0x32,0x4C,0x3F,0xE0,0xCC,0x20,0x84,0xC1,
0x80,0x0C,0x02,0x69,0x09,0xA2,0x00,0x80,0x06,0xE8,0x00,0x00,0xEF,0xE0,0x84,0xC1,
0x80,0x7F,0xC2,0x69,0x09,0xFE,0x00,0x80,0x0E,0xE8,0x7D,0xF1,0xDF,0xE0,0xBF,0xE1,
0x81,0x1E,0x02,0x49,0x09,0xA4,0x00,0x80,0x33,0x58,0x45,0x11,0x41,0x00,0x86,0x01,
0x81,0x3F,0x0F,0x49,0x0B,0xFF,0x00,0x80,0x22,0x70,0x7D,0xF1,0x4F,0xF0,0xEF,0x01,
0x82,0x2D,0x88,0x49,0x08,0x04,0x00,0x80,0x22,0x30,0x45,0x10,0x41,0x83,0x89,0x01,
0x82,0xCC,0xC0,0xC9,0x08,0x44,0x00,0x80,0x22,0x78,0x7D,0xF0,0x42,0x40,0x10,0xC1,
0x86,0x0C,0x01,0x81,0x08,0x0C,0x1F,0xFC,0x63,0xCC,0x45,0x10,0x5C,0x30,0x60,0x61,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x10,0x00,0x60,0x08,0x00,0x00,0x80,0x01,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x10,0x00,0x20,0x06,0xFE,0x00,0x80,0x3F,0xFC,0x01,
0x81,0x01,0xC3,0xC1,0xC1,0x80,0x10,0x00,0x20,0x00,0x42,0x3F,0xFE,0x22,0x00,0x01,
0x83,0x02,0x24,0x22,0x21,0x83,0xFF,0x8F,0xFF,0x80,0x46,0x20,0x06,0x21,0x00,0x01,
0x87,0x04,0x24,0x24,0x02,0x82,0x10,0x81,0x0C,0x1C,0x44,0x2F,0xF6,0x2F,0xF8,0x01,
0x81,0x04,0x24,0x25,0xC2,0x82,0x10,0x81,0x08,0x04,0x44,0x00,0x30,0x22,0x00,0x01,
0x81,0x00,0x43,0xC6,0x24,0x82,0x10,0x81,0x88,0x00,0x6C,0x00,0x60,0x24,0xC0,0x01,
0x81,0x00,0x84,0x24,0x28,0x83,0xFF,0x80,0x98,0x00,0x28,0x00,0x80,0x27,0xF8,0x01,
0x81,0x01,0x04,0x24,0x2F,0xC2,0x10,0x80,0xD0,0x0C,0x38,0x3F,0xFE,0x20,0xC0,0x01,
0x81,0x02,0x04,0x24,0x20,0x80,0x10,0x00,0x70,0x08,0x30,0x00,0x80,0x20,0xC0,0x01,
0x81,0x04,0x04,0x22,0x20,0x80,0x10,0x00,0xF0,0x08,0x68,0x00,0x80,0x6F,0xFC,0x01,
0x81,0x07,0xE3,0xC1,0xC0,0x80,0x10,0x03,0x8E,0x19,0xC6,0x00,0x80,0x40,0xC0,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x10,0x0E,0x03,0x83,0x03,0x01,0x80,0x00,0xC0,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x87,0xC7,0xE4,0x00,0x01,0x07,0xE3,0xC1,0x03,0xC1,0xC1,0xC1,0x03,0xC7,0xE1,0x81,
0x81,0x04,0x04,0x00,0x03,0x04,0x04,0x23,0x04,0x22,0x22,0x23,0x04,0x20,0x21,0x81,
0x81,0x04,0x04,0x00,0x07,0x04,0x04,0x27,0x04,0x24,0x04,0x07,0x04,0x20,0x42,0x81,
0x81,0x04,0x04,0x01,0x01,0x07,0xC4,0x21,0x04,0x25,0xC5,0xC1,0x04,0x20,0x42,0x81,
0x81,0x07,0xC4,0x00,0x01,0x04,0x23,0xC1,0x03,0xC6,0x26,0x21,0x03,0xC0,0x44,0x81,
0x81,0x04,0x04,0x00,0x01,0x00,0x24,0x21,0x04,0x24,0x24,0x21,0x04,0x20,0x88,0x81,
0x81,0x04,0x04,0x00,0x01,0x00,0x24,0x21,0x04,0x24,0x24,0x21,0x04,0x20,0x8F,0xC1,
0x81,0x04,0x04,0x00,0x01,0x04,0x24,0x21,0x04,0x24,0x24,0x21,0x04,0x20,0x80,0x81,
0x81,0x04,0x04,0x00,0x01,0x04,0x24,0x21,0x04,0x22,0x22,0x21,0x04,0x21,0x00,0x81,
0x81,0x07,0xE7,0xE1,0x01,0x03,0xC3,0xC1,0x03,0xC1,0xC1,0xC1,0x03,0xC1,0x00,0x81,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x01,0x81,0x80,0x07,0xE3,0xC1,0x03,0x81,0x81,0x81,0x01,0xC0,0x00,0x01,
0x80,0x00,0x02,0x42,0x40,0x04,0x04,0x23,0x04,0x41,0x81,0x83,0x02,0x20,0x00,0x01,
0x80,0x00,0x04,0x24,0x20,0x04,0x04,0x27,0x04,0x22,0x82,0x87,0x04,0x00,0x00,0x01,
0x80,0x00,0x04,0x24,0x21,0x07,0xC0,0x21,0x04,0x22,0x82,0x81,0x05,0xC0,0x00,0x01,
0x80,0x00,0x04,0x24,0x20,0x04,0x20,0xC1,0x04,0x64,0x84,0x81,0x06,0x20,0x00,0x01,
0x80,0x00,0x04,0x24,0x20,0x00,0x20,0x21,0x03,0xA8,0x88,0x81,0x04,0x20,0x00,0x01,
0x80,0x00,0x04,0xA4,0xA0,0x00,0x20,0x21,0x00,0x2F,0xCF,0xC1,0x04,0x20,0x00,0x01,
0x80,0x00,0x04,0xA4,0xA0,0x04,0x24,0x21,0x04,0x20,0x80,0x81,0x04,0x20,0x00,0x01,
0x80,0x00,0x02,0x42,0x40,0x04,0x24,0x21,0x04,0x40,0x80,0x81,0x02,0x20,0x00,0x01,
0x80,0x00,0x01,0xA1,0xA1,0x03,0xC3,0xC1,0x03,0x80,0x80,0x81,0x01,0xC0,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
};

unsigned char const pic2[]=
{
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x1F,0xFF,0x81,0xFF,0xF0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x1F,0xFF,0x81,0xFF,0xF0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x18,0x01,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x20,0x08,0x00,0x00,0x00,0x03,
0xC0,0x1F,0xFF,0x80,0x00,0x00,0x04,0x07,0x81,0xE0,0x10,0x10,0x03,0xC0,0x30,0x03,
0xC0,0x1F,0xFF,0x80,0x00,0x00,0x0C,0x0C,0xC3,0x30,0x08,0x20,0x0C,0xE0,0x70,0x03,
0xC0,0x18,0x01,0x87,0xFF,0xFE,0x3C,0x18,0x66,0x18,0x04,0x40,0x0C,0x60,0x70,0x03,
0xC0,0x1F,0xFF,0x87,0xFF,0xFE,0x0C,0x18,0x66,0x18,0x02,0x80,0x18,0x00,0xB0,0x03,
0xC0,0x1F,0xFF,0x80,0x06,0x00,0x0C,0x18,0x66,0x18,0x01,0x00,0x1B,0x81,0x30,0x03,
0xC0,0x01,0x98,0x00,0x06,0x00,0x0C,0x00,0xE3,0x30,0x02,0x80,0x1C,0xC1,0x30,0x03,
0xC0,0x19,0x99,0x80,0x66,0x60,0x0C,0x00,0xC1,0xE0,0x04,0x40,0x18,0x62,0x30,0x03,
0xC0,0x19,0x99,0x80,0x66,0x30,0x0C,0x01,0x83,0x30,0x08,0x20,0x18,0x66,0x30,0x03,
0xC0,0x0D,0x9B,0x00,0xC6,0x38,0x0C,0x03,0x06,0x18,0x10,0x10,0x18,0x67,0xFC,0x03,
0xC0,0x0D,0x9B,0x01,0xC6,0x1C,0x0C,0x06,0x06,0x18,0x20,0x08,0x18,0x60,0x30,0x03,
0xC0,0x01,0x98,0x03,0x86,0x0C,0x0C,0x0C,0x06,0x18,0x00,0x00,0x08,0x60,0x30,0x03,
0xC0,0x7F,0xFF,0xE3,0x06,0x00,0x0C,0x18,0x03,0x30,0x00,0x00,0x0C,0xC0,0x30,0x03,
0xC0,0x7F,0xFF,0xE0,0x1E,0x00,0x0C,0x1F,0xE1,0xE0,0x00,0x00,0x07,0x80,0x30,0x03,
0xC0,0x00,0x00,0x00,0x1C,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x0C,0x00,0x00,0x18,0x00,0x00,0x00,0x06,0x0C,0x03,
0xC3,0xFF,0xFC,0x3F,0xF0,0x80,0x0C,0x00,0x3F,0x18,0x01,0xFF,0xFE,0x06,0x0C,0x03,
0xC3,0xFF,0xFC,0x3F,0xF1,0x80,0x0F,0xFC,0x3F,0x18,0x01,0xFF,0xFE,0x06,0x0C,0x03,
0xC3,0x0C,0x0C,0x0C,0xC3,0x00,0x0F,0xFC,0x33,0x7F,0xE1,0x86,0x06,0x06,0x0C,0x03,
0xC3,0x1F,0xCC,0x0C,0xC6,0x00,0x0C,0x00,0x33,0x7F,0xE1,0x8F,0xE6,0x06,0x0C,0x03,
0xC3,0x3F,0xCC,0x0C,0xCC,0x00,0x0C,0x00,0x36,0x30,0x01,0x9F,0xE6,0x07,0xFF,0xE3,
0xC3,0x79,0x8C,0x0C,0xC8,0x00,0xFF,0xF0,0x36,0x36,0x01,0xBC,0xC6,0x07,0xFF,0xE3,
0xC3,0x6F,0x0C,0x7F,0xF0,0xC0,0xFF,0xF0,0x36,0x66,0x01,0xB7,0x86,0x06,0x00,0x03,
0xC3,0x0F,0x0C,0x7F,0xF1,0x80,0xC0,0x30,0x36,0x7F,0xC1,0x87,0x86,0x06,0x00,0x03,
0xC3,0x79,0xEC,0x0C,0xC3,0x00,0xC0,0x30,0x33,0x7F,0xC1,0xBC,0xF6,0x06,0x00,0x03,
0xC3,0x76,0xEC,0x0C,0xC6,0x00,0xC0,0x30,0x33,0x06,0x01,0xBB,0x76,0x07,0xFF,0x03,
0xC3,0x07,0x0C,0x0C,0xCC,0x20,0xFF,0xF0,0x33,0x06,0x01,0x83,0x86,0x07,0xFF,0x03,
0xC3,0x03,0x0C,0x18,0xC8,0x60,0xFF,0xF0,0x3F,0x06,0x01,0x81,0x86,0x06,0x03,0x03,
0xC3,0x1C,0x0C,0x18,0xC0,0xC0,0x00,0x00,0x3E,0xFF,0xE1,0x8E,0x06,0x06,0x03,0x03,
0xC3,0x1F,0x0C,0x18,0xC1,0x81,0xB1,0x8C,0x30,0xFF,0xE1,0x8F,0x86,0x06,0x03,0x03,
0xC3,0x03,0x0C,0x30,0xC7,0x01,0xB1,0x8C,0x30,0x06,0x01,0x81,0x86,0x0C,0x03,0x03,
0xC3,0xFF,0xFC,0x70,0xDE,0x03,0x18,0xC6,0x30,0x06,0x01,0xFF,0xFE,0x0C,0x03,0x03,
0xC3,0xFF,0xFC,0x20,0x18,0x03,0x18,0xC6,0x30,0x06,0x01,0xFF,0xFE,0x18,0x03,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,

};
unsigned char const pic3[]=
{
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC3,0x02,0x0E,0x1C,0x08,0xF8,0x67,0xE3,0x87,0x0C,0x08,0x38,0x70,0x23,0xE1,0x83,
0xC4,0x8E,0x11,0x22,0x18,0x80,0x90,0x24,0x48,0x92,0x38,0x44,0x88,0x62,0x02,0x43,
0xC8,0x42,0x11,0x22,0x28,0x81,0x00,0x24,0x48,0xA1,0x08,0x44,0x88,0xA2,0x04,0x03,
0xC8,0x42,0x01,0x02,0x28,0xF1,0xE0,0x44,0x48,0xA1,0x08,0x04,0x08,0xA3,0xC7,0x83,
0xC8,0x42,0x02,0x0C,0x48,0x89,0x10,0x43,0x88,0xA1,0x08,0x08,0x31,0x22,0x24,0x43,
0xC8,0x42,0x04,0x02,0x88,0x09,0x10,0x44,0x47,0xA1,0x08,0x10,0x0A,0x20,0x24,0x43,
0xC8,0x42,0x08,0x22,0xFC,0x89,0x10,0x44,0x40,0xA1,0x08,0x20,0x8B,0xF2,0x24,0x43,
0xC4,0x82,0x10,0x22,0x08,0x89,0x10,0x84,0x49,0x12,0x08,0x40,0x88,0x22,0x24,0x43,
0xC3,0x02,0x1F,0x1C,0x08,0x70,0xE0,0x83,0x86,0x0C,0x08,0x7C,0x70,0x21,0xC3,0x83,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xCF,0xC7,0x0E,0x18,0x10,0x70,0xE0,0x47,0xC3,0x3F,0x1C,0x38,0x60,0x41,0xC3,0x83,
0xC0,0x48,0x91,0x24,0x70,0x89,0x10,0xC4,0x04,0x81,0x22,0x44,0x91,0xC2,0x24,0x43,
0xC0,0x48,0x91,0x42,0x10,0x89,0x11,0x44,0x08,0x01,0x22,0x45,0x08,0x42,0x24,0x43,
0xC0,0x88,0x91,0x42,0x10,0x08,0x11,0x47,0x8F,0x02,0x22,0x45,0x08,0x40,0x20,0x43,
0xC0,0x87,0x11,0x42,0x10,0x10,0x62,0x44,0x48,0x82,0x1C,0x45,0x08,0x40,0x41,0x83,
0xC0,0x88,0x8F,0x42,0x10,0x20,0x14,0x40,0x48,0x82,0x22,0x3D,0x08,0x40,0x80,0x43,
0xC0,0x88,0x81,0x42,0x10,0x41,0x17,0xE4,0x48,0x82,0x22,0x05,0x08,0x41,0x04,0x43,
0xC1,0x08,0x92,0x24,0x10,0x81,0x10,0x44,0x48,0x84,0x22,0x48,0x90,0x42,0x04,0x43,
0xC1,0x07,0x0C,0x18,0x10,0xF8,0xE0,0x43,0x87,0x04,0x1C,0x30,0x60,0x43,0xE3,0x83,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x8F,0x86,0x7E,0x38,0x70,0xC0,0x83,0x87,0x02,0x3E,0x19,0xF8,0xE1,0xC3,0x03,
0xC1,0x88,0x09,0x02,0x44,0x89,0x23,0x84,0x48,0x86,0x20,0x24,0x09,0x12,0x24,0x83,
0xC2,0x88,0x10,0x02,0x44,0x8A,0x10,0x84,0x48,0x8A,0x20,0x40,0x09,0x12,0x28,0x43,
0xC2,0x8F,0x1E,0x04,0x44,0x8A,0x10,0x80,0x40,0x8A,0x3C,0x78,0x11,0x12,0x28,0x43,
0xC4,0x88,0x91,0x04,0x38,0x8A,0x10,0x80,0x83,0x12,0x22,0x44,0x10,0xE2,0x28,0x43,
0xC8,0x80,0x91,0x04,0x44,0x7A,0x10,0x81,0x00,0xA2,0x02,0x44,0x11,0x11,0xE8,0x43,
0xCF,0xC8,0x91,0x04,0x44,0x0A,0x10,0x82,0x08,0xBF,0x22,0x44,0x11,0x10,0x28,0x43,
0xC0,0x88,0x91,0x08,0x44,0x91,0x20,0x84,0x08,0x82,0x22,0x44,0x21,0x12,0x44,0x83,
0xC0,0x87,0x0E,0x08,0x38,0x60,0xC0,0x87,0xC7,0x02,0x1C,0x38,0x20,0xE1,0x83,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC1,0x07,0x0E,0x04,0x7C,0x33,0xF1,0xC3,0x86,0x04,0x1C,0x38,0x11,0xF0,0xCF,0xC3,
0xC7,0x08,0x91,0x0C,0x40,0x48,0x12,0x24,0x49,0x1C,0x22,0x44,0x31,0x01,0x20,0x43,
0xC1,0x08,0x91,0x14,0x40,0x80,0x12,0x24,0x50,0x84,0x22,0x44,0x51,0x02,0x00,0x43,
0xC1,0x00,0x81,0x14,0x78,0xF0,0x22,0x24,0x50,0x84,0x02,0x04,0x51,0xE3,0xC0,0x83,
0xC1,0x01,0x06,0x24,0x44,0x88,0x21,0xC4,0x50,0x84,0x04,0x18,0x91,0x12,0x20,0x83,
0xC1,0x02,0x01,0x44,0x04,0x88,0x22,0x23,0xD0,0x84,0x08,0x05,0x10,0x12,0x20,0x83,
0xC1,0x04,0x11,0x7E,0x44,0x88,0x22,0x20,0x50,0x84,0x10,0x45,0xF9,0x12,0x20,0x83,
0xC1,0x08,0x11,0x04,0x44,0x88,0x42,0x24,0x89,0x04,0x20,0x44,0x11,0x12,0x21,0x03,
0xC1,0x0F,0x8E,0x04,0x38,0x70,0x41,0xC3,0x06,0x04,0x3E,0x38,0x10,0xE1,0xC1,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,

};
*/
#endif