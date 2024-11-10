/*此程序可以实现，数码管显示0123的状态，用户可以自己根据前边的试验程序，自行编写按下某个按键时，数码管显示某个数字*/

#include <reg52.h>
#define uchar unsigned char 
sbit P2_0 = P2^0;
sbit P2_1 = P2^1;
sbit P2_2 = P2^2;
sbit P2_3 = P2^3;

uchar code table[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,
                        0xf8,0x80,0x90};
void delay(uchar i)
{
  uchar j,k; 
  for(j=i;j>0;j--)
    for(k=125;k>0;k--);
}

void display()
{
  
   P0=table[0];
   P2_0 = 0;
   delay(5);
   P2_0 = 1;

   P0=table[1];
   P2_1 = 0;
   delay(5);
   P2_1 = 1;

   P0=table[2];
   P2_2 = 0;
   delay(5);
   P2_2 = 1;

    P0=table[3];
   P2_3 = 0;
   delay(5);
   P2_3 = 1;
   
}

/*演示主程序*/
void main(void)
{
    unsigned int  a;
   
 while(1)
 {
 
   for(a=100;a>0;a--)
   {
     display();
   }
 
 }
}