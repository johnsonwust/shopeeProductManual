/****************************************************************************
* 【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350				
*****************************************************************************
程序功能：		将运算结果的十进制数送给单片机P1口，观察现象。
****************************************************************************/
#include <reg51.h>

void main()
{
	unsigned char p=10,q=100,plus;
	plus=p+q;
	P1=plus;//将运算结果110赋给P1寄存器，那么在P1各个管脚上，就会
			//以二进制的形式显示十进制数110，即0110 1110
			//也即第一、第四和第八个LED被点亮（由电路图可知，低电平会使led点亮）。
}
