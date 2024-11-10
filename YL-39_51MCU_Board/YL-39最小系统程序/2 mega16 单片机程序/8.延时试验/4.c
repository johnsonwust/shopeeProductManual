#include "iom16v.h"  
#include <macros.h>
//延时函数
//在16MHz时产生10us的延时
void s_10us(unsigned int ms)
{
    unsigned int aa;
	for(;ms>=1;ms--)
	{
	for(aa=0;aa<=17;aa++)
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
   s_ms(50);
   PORTD=0x00;
   s_ms(50);
   }
 }