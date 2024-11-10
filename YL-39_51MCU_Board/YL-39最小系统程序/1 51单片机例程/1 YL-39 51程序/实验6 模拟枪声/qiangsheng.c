/*********************************************************************************
* ����дʱ�䡿�� 2011.07.07
* ����    �ߡ��� �������
* ����    ������ V1.0
* ����    վ���� http://ylelectronic.taobao.com/ 
* ��Q      Q���� 348439350
* ����    ������ �˳��������ѧϰ��ο���������ע����Ȩ��������Ϣ��
* ���������ܡ��� ������ģ��ǹ��			   			            			    
* ��ʹ��˵������ ���¶�������k6������������ģ��ǹ��
**********************************************************************************/

#include <reg51.h>
#include <intrins.h>

#define uchar unsigned char
#define uint  unsigned int

sbit  BEEP= P3^6;
sbit  K1  = P3^2;

uchar  H_count,L_count;

/*********************************************************/
void  main()
{	
 	P0=0;
	BEEP=1;
    TMOD=0x01; 
    TH0=0xff; 
    TL0=0xa0;
    H_count=0xff;
    L_count=0xa0;      
    EA=1;
    ET0=1; 
    
    while(1)
    {
       while(K1);
       TR0=1;
    }
}

/*********************************************************
  Time0�жϺ���
**********************************************************/
void Time0(void) interrupt 1 using 0
{
	BEEP=~BEEP;
	if( L_count!=0x00 )
	{
	   L_count--;
	   TH0=H_count; 
       TL0=L_count;
       return;
     }else  H_count--;
		
	if( H_count!=0xfc )
	{
	   L_count--;
	   TH0=H_count; 
       TL0=L_count;
       return;
	}
	else
     {
        H_count=0xff;
        L_count=0xa0;
        TH0=H_count;
        TL0=L_count;
        BEEP=1;
        TR0=0;
     }   
}
   
/*********************************************************/

