#include "iom16v.h"  

//延时函数
//在16MHz时产生ms=2000时产生1ms的延时
void s_ms(unsigned int ms)
{
	for(;ms>1;ms--);
}	
 
main()
 {
 DDRD=0xff;
 //在端口d产生500Hz的信号
 while(1)
   {
   PORTD=0xff;
   s_ms(2000);
   PORTD=0x00;
   s_ms(2000);
   }
 }