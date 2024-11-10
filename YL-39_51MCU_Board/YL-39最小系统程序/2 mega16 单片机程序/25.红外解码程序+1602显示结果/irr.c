/******************************************************************************/
/*����дʱ�䡿�� 2011.07.07
* ����    �ߡ��� �������
* ����    ������ V1.0
* ����    վ���� http://ylelectronic.taobao.com/ 
* ��Q      Q���� 348439350
* �����뻷������ ICCAVR  
* ���������ܡ��� 1602��ʾ�����ַ����������
* ����    ��:  8M		
* ��о    Ƭ��:  ATMEGA16A	 
* ��Ӳ�����ӡ��� J2��·ñ����  
/******************************************************************************/

#include <iom16v.h>
#include <macros.h>  
#include "1602.h"
#define uint  unsigned int
#define uchar unsigned char
#define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
#define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
#define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
#define Cpl_Bit(val, bitn)    (val^=(1<<(bitn)) )

  uchar adc_0[]={"IRCodeADD:"};
  uchar adc_1[]={"IRCodeDAT:"};

//*****************************************0
//��������
 void ICEInit(void);
 uchar bitcnt;
 uint newFall;
 uint oldFall;
 uint data0;
 uint data1;


 void ICEInit(void) //T/C1��ʼ��
 {
    TIMSK=0X20; //ʹ�ܲ����ж�
    TCCR1A=0X00;//T/C1ʱ����ϵͳ��ͬ������ʹ��ϵͳAVR�ڲ��Դ�8MHz��Դ.T/C1ʱ������Ϊ1��s
    TCCR1B=0X82; //ʹ���������ƣ��½��ش����ж�
 }
 void main(void)
 {   
   DDRA = 0xff;      
   PORTA = 0x00;      
   DDRB = 0xFF;    
   PORTB = 0xFF; 
   ICEInit();
 
   LcdInit();   
   WriteChar(1,0,10,adc_0);
   WriteChar(2,0,10,adc_1);
   SEI();
  while(1);
  } 
  
 
#pragma interrupt_handler CAPT_ISR:iv_TIMER1_CAPT 

void CAPT_ISR(void)
{
  uchar a;
  uint temp;
  newFall=ICR1;
  temp=newFall-oldFall; //��������Ӽ����ʱ��
  oldFall=newFall;
   
 if(temp>1024 && temp<1225) // "0"�ź�
   {
    temp=0;
   }

else if(temp>2145 && temp<2345) //��1���ź�
   {
    temp=1;
   }

else if(temp>13400 && temp<13600) //header�ź�

 {
    bitcnt=0;
    data0=0;
    data1=0;
 return; //���أ��ȴ��´ο�ʼ����
 }

else ///�����ź�
{
    return;
}

  bitcnt++;
    if(bitcnt<16) //��ʼ����ǰ16λ
 {
  data0=data0|(uint)temp;
  data0=data0<<1;
 }
else if(bitcnt==16)
 {
 data0=data0|(uint)temp;
 }
 else if(bitcnt<32) //��ʼ���պ�16λ
 { 
 data1=data1|(uint)temp;
 data1=data1<<1;
 }
 else if(bitcnt==32) //���������һλ
 {
 
          data1=data1|(uint)temp;
		  WriteNum(1,10,ASCII[(uchar)(data0>>8)/16]);
		  WriteNum(1,11,ASCII[(uchar)(data0>>8)%16]);
		  WriteNum(1,12,ASCII[(uchar)data0/16]);
		  WriteNum(1,13,ASCII[(uchar)data0%16]);
		  WriteNum(2,10,ASCII[(uchar)(data1>>8)/16]);
		  WriteNum(2,11,ASCII[(uchar)(data1>>8)%16]);
		  WriteNum(2,12,ASCII[(uchar)data1/16]);
		  WriteNum(2,13,ASCII[(uchar)data1%16]);
 }
 
}