/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 12864
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽拿掉
/******************************************************************************/
#include <iom16v.h>
#include <macros.h> 
#include "define.h"
#include "delay.h"
#include "initrialm16.h"
//#include "ds18b20.h"
#include "lcd12864.h"



void main(void)
{
	unsigned char i,n;
	
	Init_Devices();
	init12864_Hzk();   		 //调用LCD字库初始化程序
	//init12864_Bmp();         //调用LCD显示图片(扩展)初始化程序
	
	lcd12864_GB16X16(0,0,"mcustudio.com.cn ");
	lcd12864_GB16X16(1,0,"    厦门智控    ");
	lcd12864_GB16X16(2,0,"中文12864 字库   ");
	lcd12864_GB16X16(3,0,"驱动IC:ST7920    ");
	while(1)
	{
		;
	}	

}

