#include "iom16v.h"  

//延时函数
//在1MHz时产生1mS的延时
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
 //在端口d产生100Hz的信号
 while(1)
   {
   PORTD=0xff;
   delay_ms(5);
   PORTD=0x00;
   delay_ms(5);
   }
 }