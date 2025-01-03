/********************************************************************
* 文件名  ： 定时器的使用.c
* 描述    :  
* 创建人  ： 东流，2009年4月8日
* 版本号  ： 2.0
***********************************************************************/
#include <reg52.h>
#include <string.h>

#define uchar unsigned char
#define uint  unsigned int

uchar code IC_DAT[];
uchar code pic1[];
uchar code pic2[];
uchar code pic3[]; 

sbit RS  = P0^7;
sbit WRD = P0^6;
sbit E   = P0^5;
sbit PSB = P0^4;
sbit RES = P0^3;

void TransferData(char data1,bit DI);
void display(void);
void display_grapic(void);
void delayms(uint n);
void DisplayLine(uchar line1,uchar line2);
void DisplayGraphic(uchar code *adder);
void delay(uint m);
void lcd_mesg(uchar code *adder1);

uchar code IC_DAT[]={
"     HOT-51     "  
"                "
"  单片机开发板  "
"    雁凌电子    "
};

uchar code IC_DAT2[]={
"  白日依山尽，  "			//0x80
"  欲穷千里目，  "			//0x90
"  黄河入海流。  "			//0x88
"  更上一层楼。  "			//0x98
};

/********************************************************************
* 名称 : Convert(uchar In_Date)
* 功能 : 因为电路设计时，P0.0--P0.7接法刚好了资料中的相反，所以设计该函数。
* 输入 : 1602资料上的值
* 输出 : 送到1602的值
***********************************************************************/
unsigned char Convert(unsigned char In_Date)
{
    unsigned char i, Out_Date = 0, temp = 0;
    for(i=0; i<8; i++)
    {
        //temp = (In_Date >> i) & 0x01;
        //Out_Date |= (temp << (7 - i));
		Out_Date=  In_Date;

    }
    return Out_Date;
}

void initinal(void)           //LCD字库初始化程序
{
           delay(40);             //大于40MS的延时程序
           PSB=1;                 //设置为8BIT并口工作模式
           delay(1);              //延时
           RES=0;                 //复位
           delay(1);              //延时
           RES=1;                 //复位置高
           delay(10);
           TransferData(0x30,0);  //Extended Function Set :8BIT设置,RE=0: basic instruction set, G=0 :graphic display OFF
           delay(100);            //大于100uS的延时程序
           TransferData(0x30,0);  //Function Set
           delay(37);             ////大于37uS的延时程序
           TransferData(0x08,0);  //Display on Control
           delay(100);            //大于100uS的延时程序
           TransferData(0x10,0);  //Cursor Display Control光标设置
           delay(100);            //大于100uS的延时程序
           TransferData(0x0C,0);  //Display Control,D=1,显示开
           delay(100);            //大于100uS的延时程序
           TransferData(0x01,0);  //Display Clear
           delay(10);             //大于10mS的延时程序
           TransferData(0x06,0);  //Enry Mode Set,光标从右向左加1位移动
           delay(100);            //大于100uS的延时程序
          }

/********************************************************************
* 名称 : Main()
* 功能 : 主函数
* 输入 : 无
* 输出 : 无
***********************************************************************/
void     initina2(void)           //LCD显示图片(扩展)初始化程序
          {
           delay(40);             //大于40MS的延时程序
           PSB=1;                 //设置为8BIT并口工作模式
           delay(1);              //延时
           RES=0;                 //复位
           delay(1);              //延时
           RES=1;                 //复位置高
           delay(10);

           TransferData(0x36,0);  //Extended Function Set RE=1: extended instruction
           delay(100);            //大于100uS的延时程序
           TransferData(0x36,0);  //Extended Function Set:RE=1: extended instruction set
           delay(37);             ////大于37uS的延时程序
           TransferData(0x3E,0);  //EXFUNCTION(DL=8BITS,RE=1,G=1)
           delay(100);            //大于100uS的延时程序
           TransferData(0x01,0);  //CLEAR SCREEN
           delay(100);            //大于100uS的延时程序
          }

/********************************************************************
* 名称 : Main()
* 功能 : 主函数
* 输入 : 无
* 输出 : 无
***********************************************************************/
void    main(void)
     {
         while(1)
	    {
		  initina2();            //调用LCD显示图片(扩展)初始化程序
  
          DisplayGraphic(pic2);  //显示图片2
          delayms(200);			  

          initinal();   		 //调用LCD字库初始化程序
          delay(100);            //大于100uS的延时程序
          lcd_mesg(IC_DAT);      //显示中文汉字1
          delayms(240);
          delayms(240);
 	  
          initinal();   		 //调用LCD字库初始化程序
          delay(100);            //大于100uS的延时程序 
          lcd_mesg(IC_DAT2);     //显示中文汉字2
          delayms(240);
		  delayms(240);
		  initinal();  
        }
      }

/********************************************************************
* 名称 : Main()
* 功能 : 主函数
* 输入 : 无
* 输出 : 无
***********************************************************************/
void   lcd_mesg(unsigned char code *adder1)
{
	unsigned char i;
        TransferData(0x80,0);  //Set Graphic Display RAM Address
        delay(100);
	for(i=0;i<32;i++)
		{
	  		TransferData(*adder1,1);
	   		adder1++;
		}

        TransferData(0x90,0);  //Set Graphic Display RAM Address
        delay(100);
	for(i=32;i<64;i++)
		{
	  		TransferData(*adder1,1);
	   		adder1++;
		}
}

/********************************************************************
* 名称 : Main()
* 功能 : 主函数
* 输入 : 无
* 输出 : 无
***********************************************************************/
void    TransferData(char data1,bit DI)  //传送数据或者命令,当DI=0是,传送命令,当DI=1,传送数据.
          {
            WRD=0;
            RS=DI;
            delay(1);
            P2=Convert(data1);
            E=1;
            delay(1);
            E=0;
           }

/********************************************************************
* 名称 : Main()
* 功能 : 主函数
* 输入 : 无
* 输出 : 无
***********************************************************************/
void    delayms(unsigned int n)            //延时10×n毫秒程序
                   {
                      unsigned int i,j;
                      for(i=0;i<n;i++)
                         for(j=0;j<2000;j++);
                   }

/********************************************************************
* 名称 : Main()
* 功能 : 主函数
* 输入 : 无
* 输出 : 无
***********************************************************************/
void    delay(unsigned int m)            //延时程序
                   {
                      unsigned int i,j;
                      for(i=0;i<m;i++)
                         for(j=0;j<10;j++);
                   }

/********************************************************************
* 名称 : Main()
* 功能 : 主函数
* 输入 : 无
* 输出 : 无
***********************************************************************/
void DisplayGraphic(unsigned char code *adder)
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



unsigned char code pic2[]=
{
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0F,0x78,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3C,0x1E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xF0,0x07,0x80,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x03,0xC0,0x01,0xE0,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x0F,0x00,0x00,0x78,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x3C,0x00,0x00,0x1E,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0xF0,0x00,0x00,0x07,0x80,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x03,0xC0,0x00,0x00,0x01,0xC0,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x0F,0x00,0x00,0x00,0x00,0x70,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x3C,0x00,0x00,0x00,0x00,0x1C,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0xF0,0x00,0x00,0x00,0x00,0x1E,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x03,0xC0,0x00,0x00,0x00,0x00,0x7E,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x0F,0x00,0x00,0x00,0x00,0x01,0xE6,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x3C,0x00,0x00,0x00,0x00,0x07,0x82,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0xF0,0x00,0x00,0x00,0x00,0x1E,0x02,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x01,0xE0,0x00,0x00,0x00,0x00,0x78,0x03,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x01,0xE0,0x00,0x00,0x00,0x01,0xE0,0x03,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x01,0x78,0x00,0x00,0x00,0x07,0x80,0x01,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x03,0x1E,0x00,0x00,0x00,0x1E,0x00,0x07,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x03,0x07,0x80,0x00,0x00,0x78,0x00,0x1F,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x02,0x01,0xE0,0x00,0x01,0xE0,0x00,0x3F,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x06,0x00,0x78,0x1F,0x07,0x80,0x01,0xF1,0x80,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0E,0x00,0x1E,0x3F,0x9E,0x00,0x03,0xF9,0x80,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0E,0x00,0x07,0xB3,0x78,0x00,0x0F,0xF9,0x80,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0F,0x80,0x01,0xFF,0xE0,0x00,0x79,0x98,0x80,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0F,0xE0,0x00,0x7F,0x80,0x00,0xE0,0xD8,0x80,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0F,0xF8,0x00,0x0C,0x00,0x07,0xE0,0xF8,0x80,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0E,0x7E,0x00,0x0C,0x00,0x1F,0xF0,0xF8,0x80,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0E,0x1F,0x80,0x0C,0x00,0x7E,0x70,0xDC,0x80,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0F,0x07,0xE0,0x0C,0x01,0xE3,0x70,0x5C,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0F,0x81,0xF8,0x0C,0x07,0x83,0x70,0x5F,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0D,0xE0,0x7E,0x0C,0x1F,0xC1,0xF0,0x5F,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0F,0x78,0x3F,0x8C,0x7F,0xC1,0xB8,0x47,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0F,0x1E,0x0F,0xED,0xEC,0xE1,0xB8,0xC7,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1F,0x07,0x83,0xFF,0xC6,0xE1,0xB9,0xC7,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1F,0x07,0xE0,0xFF,0xE7,0xE1,0xBF,0x07,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1F,0x07,0xF8,0x3F,0xE7,0xE1,0xBF,0x07,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1F,0x07,0x9E,0x0C,0xE6,0xE1,0x8F,0x07,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1F,0x07,0x87,0x8C,0xE6,0xE3,0x8F,0x83,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1F,0x0F,0x81,0xED,0xE6,0xE7,0x0F,0x83,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1F,0x07,0x00,0x7F,0xE6,0xFE,0x0F,0x83,0x40,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1F,0x00,0x00,0x1E,0x76,0xFE,0x0F,0x83,0x40,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1E,0x00,0x00,0x00,0x72,0x1E,0x0F,0x83,0x40,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1E,0x00,0x00,0x00,0x7E,0x1A,0x0F,0x83,0x40,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1E,0x00,0x00,0x00,0x7C,0x1A,0x0F,0x83,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0C,0x00,0x00,0x00,0x78,0x1A,0x0F,0x83,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x78,0x1A,0x07,0x83,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7C,0x1E,0x07,0x80,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7C,0x1F,0x07,0x80,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7C,0x1F,0x07,0x80,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7C,0x1F,0x07,0x80,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7C,0x1F,0x07,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7C,0x1F,0x00,0x00,0x00,0x00,0x08,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7C,0x1F,0x00,0x00,0x00,0x00,0x10,0x00,0x40,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3C,0x1F,0x00,0x00,0x00,0x00,0xFF,0x08,0x20,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3C,0x1F,0x00,0x00,0x00,0x00,0x28,0x05,0xFC,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x34,0x0C,0x00,0x00,0x00,0x00,0x48,0x00,0x40,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x34,0x00,0x00,0x00,0x00,0x00,0xFF,0x08,0x88,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x34,0x00,0x00,0x00,0x00,0x00,0x08,0x05,0xFC,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3C,0x00,0x00,0x00,0x00,0x00,0x4A,0x00,0xA8,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3C,0x00,0x00,0x00,0x00,0x00,0x89,0x04,0xA8,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x10,0x00,0x00,0x00,0x00,0x01,0x08,0x88,0xA8,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x38,0x10,0xAA,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x01,0x2E,

};
