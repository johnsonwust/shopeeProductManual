/****************************************************************************
* 【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
						
*****************************************************************************
程序功能：	该函数是一个功能性小函数，告诉大家对整数各位
			进行拆分的一种方法（函数中以一个四位数为例），还有对小数进行提取的方法。
****************************************************************************/
#include <reg51.h>
#include <math.h>

void main()
{
	unsigned int zhengshu=1234;
	unsigned char ge,shi,bai,qian;

	float xiaoshu=5.67;
	unsigned int xiaoshu1,xiaoshu2;

	ge=zhengshu%10;		   //%即为取余数运算符，如8%5=3
	shi=(zhengshu%100)/10;	 //单斜线/为取整运算符，如8、5=1
	bai=(zhengshu%1000)/100;
	qian=zhengshu/1000;

	xiaoshu2=(unsigned int)(xiaoshu*100)%10;
	//注意(unsigned int)(xiaoshu*100)该部分，它的含义为对(xiaoshu*100)进行强制
	//类型转换，因为虽然(xiaoshu*100)的运算结果表面上得到的是567，但实质上它在程序
	//中的表现形式是567.0，即仍为float型数据，此时如果无类型转换，进行%取余运算时会
	//导致错误出现。(unsigned int)(xiaoshu*100)即将float型强制转换为unsigned int型数据。
	xiaoshu1=(unsigned int)(xiaoshu*100)%100/10;

	P1=xiaoshu2;//xiaoshu2结果为7；二进制为00000111 ,故低三位会不亮，其余全亮
				//同学们可以用此方法，更改一下“P1=”后的变量，通过led的亮灭观察下每个变量的值是否正确。
	while(1);//死循环，程序会停止于此处，防止“跑飞”
}