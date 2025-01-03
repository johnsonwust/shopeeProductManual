/****************************************************************************
* 【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
						
*****************************************************************************
程序功能：	该函数通过while语句控制发光led闪烁次数来说明while语句的功能。
****************************************************************************/
#include <reg52.h>

sbit led=P1^0;

void delay(unsigned int i)		//一个延时程序。
{
	unsigned int j;
	char k;
	for(j=i;j>0;j--)
		for(k=200;k>0;k--);
}
void main()
{
	char cishu;
	while(cishu<10)	//执行循环体的条件是cishu<10，若变量不满足该表达式，则跳过。
	{
	            	  //每循环一次，led所代表的管脚电平都会取反。
		led=~led;	  //由于次数最大值为9，初值为0，故共取了十次反，故led会闪五次
		cishu++;
		delay(9000);
	}
	while(1);
}