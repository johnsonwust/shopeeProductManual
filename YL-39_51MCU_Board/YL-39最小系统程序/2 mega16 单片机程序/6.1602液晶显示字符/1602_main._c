/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 1602字符显示	
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽去掉 
/******************************************************************************/  
//1602液晶显示程序
#include<iom16v.h>
#include"1602.h"
#define uchar unsigned char 
#define uint unsigned int 

uchar wz[]={"mcustudio.com.cn"};
uchar gd[]={"Tel:15980845601"};

//主函数
void main()
{
    DDRA=0xff;    
    PORTA=0xff;
    DDRD=0xff;
    PORTD=0xff;
    s_ms(5000);      //延时
    LcdInit();     //1602初始化
    WriteChar(1,1,13,wz);    //显示第一行
    WriteChar(2,1,16,gd);    //显示第二行
}