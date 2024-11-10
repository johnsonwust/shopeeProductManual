/******************************************************************************/
                                                  
/*����дʱ�䡿�� 2011.07.07
* ����    �ߡ��� �������
* ����    ������ V1.0
* ����    վ���� http://ylelectronic.taobao.com/ 
* ��Q      Q���� 348439350
* �����뻷������ ICCAVR  
* ���������ܡ��� LCD1602 ��λ��R20���������ѹ    �ڲ�2��56��׼��ѹ
* ����    ��:  8M		
* ��о    Ƭ��:  ATMEGA16A	 
* ��Ӳ�����ӡ��� J2��·ñ����  
/******************************************************************************/
#include<iom16v.h>
#include <macros.h>
#include"1602.h"
#define uchar unsigned char 
#define uint unsigned int 
#define N 64

uchar adc_0[]={"ADC_0: .    V"};
uchar k=0;
uint sum_adc[N]={0};
//ADC����,ʹ��1602��ʾADC0��ADC1��ֵ
//������
void main(void)//������
{
    unsigned int i,j;
    unsigned char disbuf[4]={0,0,0,0};
	 
	DDRA|=1<<0|1<<1|1<<2|0<<7;//����PA0,PA1,PA2Ϊ���,PA7Ϊ����
	PORTA=0x00;

	DDRB|=0xFF;//���ݿ����
	PORTB=0xFF;
	
	LcdInit();	//����Һ����ʾ��
    WriteChar(1,0,13,adc_0);//��ʾ
	
	ADCSRA=0X00;    
    ADMUX =(1<<REFS0)|(1<<REFS1)|(0<<MUX0)|(0<<MUX1)|(0<<MUX2)|(0<<MUX3)|(0<<MUX4); //�����ڲ�5�ο���ѹ��ADC7����
    ADCSRA=(1<<ADEN)|(1<<ADSC)|(1<<ADIE)|(1<<ADPS2)|(1<<ADPS1) ;//ADCת�� 64��Ƶ
	SEI();//���ж�
    while(1);
		
} //ENDmain

uint ADC_Convert(void)
{   
	 uint temp1,temp2;
	 temp1=(uint)ADCL;
	 temp2=(uint)ADCH;
	 temp2=(temp2<<8)+temp1;//10λ����
	 return(temp2);
}


#pragma interrupt_handler adc_isr:iv_ADC 
void adc_isr(void)
{
    unsigned  long int i;
	unsigned char disbuf[5]={0,0,0,0,0};
	unsigned char f;
	unsigned long sum_aver_adc=0;
	
    ADMUX =(1<<REFS0)|(1<<REFS1)|(1<<MUX0)|(1<<MUX1)|(1<<MUX2)|(0<<MUX3)|(0<<MUX4);//�ڲ�2.56��׼��PA7 AD����
    ADCSRA|=(1<<ADSC);//����ADת��
	
	sum_adc[k]=ADC_Convert();     
	k++;
	if(k>=N)
  {
	k=0;
	  for(f=0;f<N;f++)
	  {
      sum_aver_adc=sum_aver_adc+sum_adc[f];  //�ܵļ�����
	  }
	  sum_aver_adc=(sum_aver_adc/N);         //���£���ƽ��
	  i=(26000* sum_aver_adc)/1023;          //�����ѹ
	  
	  disbuf[4]=i/10000;
      i=i%10000;
      disbuf[3]=i/1000;
      i=i%1000;
      disbuf[2]=i/100;
      i=i%100;
	  disbuf[1]=i/10;
	  i=i%10;
	  disbuf[0]=i;
	  
	  WriteNum(1,6,ASCII[disbuf[4]]);
	  WriteNum(1,8,ASCII[disbuf[3]]);
	  WriteNum(1,9,ASCII[disbuf[2]]);
	  WriteNum(1,10,ASCII[disbuf[1]]);
	  WriteNum(1,11,ASCII[disbuf[0]]);
	 
  }
	        
}//end void 
