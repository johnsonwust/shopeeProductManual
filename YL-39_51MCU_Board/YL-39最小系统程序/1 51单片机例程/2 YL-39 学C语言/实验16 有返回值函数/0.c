/****************************************************************************
* 【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
*****************************************************************************
程序功能：	演示有返回值函数的使用方法。
****************************************************************************/
#include <reg52.h>

//该函数为带有两个参数m，n且带有返回值的求和函数，返回值的类型为unsigned char
unsigned char jia(unsigned char m,unsigned char n)
{
	unsigned char he;
	he=m+n;
	return he; //此即为返回的数据，执行此函数后，便会把此值返回给调用该子函数的位置处。
}

void main()
{
	unsigned i;
	i=jia(2,3);//此处调用的求和子函数，其中定义了参数值分别为2和3，
			   //调用完求和函数后，i的值即为返回来的5。
	P1=i; 	   //将5送给P1口，二进制码为00000101，通过led亮灭显示出来
	while(1);
}

