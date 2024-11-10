/****************************************************************************
* 【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
						
*****************************************************************************
程序功能：	 通过程序说明while与do...while间区别：
			 前者是先比较判断后执行，后者是先执行再比较判断。
			 故后者的循环体至少会执行一次，而前者有可能一次也不执行。
****************************************************************************/
#include <reg52.h>

sbit k1=P3^2;

void main()
{
	char m=3;
	P1=0xff;
	while(1)
	{
		if(k1)	 //k1未被按下时，将执行下面大括弧中的程序，但是，由于在刚开始进行的是判别
				 //操作，而3>4肯定为假，故不会执行P1=0xaa;操作。
				 //所以，此时，P1口相连的led不亮，P1各管脚的值还是刚开始赋的0xff。
		{
			while(m>4)
				P1=0xaa;
		}
		else   //当k1被按下后，执行该段程序，此时，虽然3>4仍然是假的，但是do...while
			  //是先执行一次，然后再判断，故在比较判断之前，已经执行了P1=0xaa；故此时
			  //P1口各led会被交替点亮。
		{
			do
			{
				P1=0x55;
			}
			while(m>4);
		}
    }
}