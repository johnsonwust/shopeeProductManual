#include "iom16v.h"  

//延时函数
//在16MHz时产生1ms的延时
void s_ms(unsigned int ms)
{
    unsigned int aa;
	for(;ms>=1;ms--)
	{
	for(aa=0;aa<=2000;aa++)
	{;}
	}
}	
 
main()
 {
 DDRD=0xff;
 //在端口d产生500Hz的信号
 while(1)
   {
   PORTD=0xff;
   s_ms(5);
   PORTD=0x00;
   s_ms(5);
   }
 }