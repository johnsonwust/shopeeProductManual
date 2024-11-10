/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 步进电机试验
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】：               
/******************************************************************************/

 #define uchar unsigned char
 #define uint unsigned int
 #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
 #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn)))
 #include <iom16v.h>
 #include <macros.h> 	
uchar TAB[4]={0x04,0x01,0x08,0x02};
void delay(void)
 {
	uchar i,j;
	for(i=0;i<20;i++)
	for(j=0;j<255;j++);
}

void main(void)
{
	uchar a,b;
	DDRB=0XFF;
	PORTB=0XFF;	    
    for(b=0;b<50;b++)
		    {
		       for(a=0;a<4;a++)
			   {
		        PORTB=TAB[a];
		        delay();
			   }
	   	    }
			PORTB=0xff;
			 while(1);
		}
		   
	
		
	