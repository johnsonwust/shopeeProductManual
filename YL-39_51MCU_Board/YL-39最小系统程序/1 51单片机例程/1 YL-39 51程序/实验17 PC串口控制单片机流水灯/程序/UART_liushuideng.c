/*********************************************************************************
* 【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【声    明】： 此程序仅用于学习与参考，引用请注明版权和作者信息！
* 【函数功能】： 串口中断程序实验——通过PC上位机软件控制流水灯实验			   			            			    
				 发送 01 ， D1 led灯亮；
				 发送 02 ， D2 led灯亮；
				 发送 03 ， D3 led灯亮；
				 发送 04 ， D4 led灯亮；
				 发送 05 ， D5 led灯亮；
				 发送 06 ， D6 led灯亮；
				 发送 07 ， D7 led灯亮；
				 发送 08 ， D8 led灯亮；
**********************************************************************************/


/*预处理命令*/
#include <reg52.h> 		  //包含单片机寄存器的头文件
#define uchar unsigned char
#define uint unsigned int
#define LED P1
uchar dat,num;
void main()
{	
	TMOD=0x20;		   //用定时器设置串口波特率
	TH1=0xfd;
	TL1=0xfd;
	TR1=1;
	REN=1;          //串口初始化
	SM0=0;
	SM1=1;
	EA=1;           //开启总中断
	ES=1;			//开启串口中断
	while(1)
	{	
		if(num==1)
		{
			switch(dat)    //判断串口接收的数据
			{
				case 1:LED=0xfe;break; //点亮第1个灯
				case 2:LED=0xfd;break;  //点亮第2个灯
				case 3:LED=0xfb;break;  //点亮第3个灯
				case 4:LED=0xf7;break;  //点亮第4个灯
				case 5:LED=0xef;break;  //点亮第5个灯
				case 6:LED=0xdf;break;  //点亮第6个灯
				case 7:LED=0xbf;break;  //点亮第7个灯
				case 8:LED=0x7f;break;  //点亮第8个灯
				case 0:LED=0xff;break;  //清空所有的灯
			//	default :break; 
			}
			ES=1;		 //打开串口中断	
			num=0;
		}
		
	}	
}
void ser() interrupt 4
{
	RI=0;
	dat=SBUF;				//接收数据SBUF，即将计算机的数据接收。
	ES=0;				    //关闭串口中断
	num=1;
}