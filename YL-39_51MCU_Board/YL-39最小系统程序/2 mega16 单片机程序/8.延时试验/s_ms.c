#include "iom16v.h"  

//��ʱ����
//��1MHzʱ����1mS����ʱ
void delay_ms(unsigned int i) 
{
 unsigned char b; 
 while (i --)
 {  
 for (b = 1; b; b++) 
 {   ;   }  
 }
 }
 
main()
 {
 DDRD=0xff;
 //�ڶ˿�d����100Hz���ź�
 while(1)
   {
   PORTD=0xff;
   delay_ms(5);
   PORTD=0x00;
   delay_ms(5);
   }
 }