#include "iom16v.h"  
#include <macros.h>
//��ʱ����
//��16MHzʱ����10us����ʱ
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
 //�ڶ˿�d����500Hz���ź�
 while(1)
   {
   PORTD=0xff;
   s_ms(50);
   PORTD=0x00;
   s_ms(50);
   }
 }