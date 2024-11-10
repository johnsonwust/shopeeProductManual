/*--------------------------------------------------*/
/*             AVR-ARM��������̳                    */
/*           http://www.avrarm.com                  */
/*            AVR���ɴ�����Գ���                   */
/*--------------------------------------------------*/
/*     ������AVR������������V2.1.1�Զ�����          */
/*     AVRϵͳ�Ĵ�����Ϊ��   ATMega128               */
/*     AVRϵͳ�ľ���Ƶ�ʣ�   8.0000 Mhz             */
/*--------------------------------------------------*/

#include "define.h"
#include "delay.h"


/**********************************************************************
functionName: unsigned char resetDS18B20(void)
description ��DS18B20��ʼ��
**********************************************************************/
unsigned char resetDS18B20(void)
{
	unsigned char errTime=0;
	RLS_DS18B20;		//�ͷ�����
	_NOP();
	HLD_DS18B20;		//Maga16��������
	CLR_DS18B20;		//ǿ������
	Delay_Us(480); 	//209.42us
	//������ʱ����480us
	RLS_DS18B20;		//�ͷ�����,�����Զ�����
	_NOP();
	while(STU_DS18B20)
	{
	   Delay_Us(6);	//5.15us
	   errTime++;
	   if(errTime>20)
		  return(0x00); 	//����ȴ�����Լ 5.15us*20�ͷ���0x00�����渴λʧ�ܣ�ʵ����ֻҪ�ȴ�15-60us��
	}
	errTime=0;
	while(!(STU_DS18B20))
	{
	   Delay_Us(6);	//5.15us
	   errTime++;
	   if(errTime>50)
		  return(0x00); 	//����ȴ�����Լ 5.15us*50�ͷ���0x00�����渴λʧ�ܣ�ʵ����ֻҪ�ȴ�60-240us��
	}
	return(0xff);

}

/**********************************************************************
functionName: unsigned char readByteDS18B20(void)
description ����DS18B20һ���ֽ�
**********************************************************************/
unsigned char readByteDS18B20(void)
{
	unsigned char i;
	unsigned char retVal=0;
	RLS_DS18B20;		//�ͷ�����
	for(i=8;i>0;i--)
	{
	   retVal>>=1;
	   HLD_DS18B20; 	//Maga16��������
	   CLR_DS18B20; 	//ǿ������
	   Delay_Us(8);	//��ʱ����1us
	   SET_DS18B20; 	//�ͷ�����,DS18B20�Ὣ����ǿ������
	   //delay_nus(8);
	   RLS_DS18B20; 	 //�ͷ�����
	   if(STU_DS18B20)
		  retVal|=0x80;
	   Delay_Us(32);		 //31us
	   HLD_DS18B20; 	 //�ͷ�����
	   SET_DS18B20; 	//�ͷ�����,DS18B20�Ὣ����ǿ������
	   //delay_nus(30); 	 //30.38us
	}
	Delay_Us(5);		 //2.71us(����1us������)
	return(retVal);

}

/**********************************************************************
functionName: unsigned char readByteDS18B20(void)
description ��дDS18B20һ���ֽ�
**********************************************************************/
void writeByteDS18B20(unsigned char wb)
{
	unsigned char i;
	unsigned char temp;
	RLS_DS18B20;			 //�ͷ�����
	for(i=0;i<8;i++)
	{
	   HLD_DS18B20; 	 //Maga16��������
	   CLR_DS18B20; 	 //ǿ������
	   Delay_Us(4);	 //14.92us
	   //SET_DS18B20;		 //�ͷ�����
	   //delay_nus(16); 	 //14.92us
	   temp=wb>>i;
	   temp&=0x01;
	   if(temp)
		  SET_DS18B20;		 //�ͷ�����
	   else
		  CLR_DS18B20;		 //ǿ������
	   Delay_Us(50);		 //30.38us
	   //RLS_DS18B20;		 //�ͷ�����
	   SET_DS18B20; 	 //�ͷ�����
	   Delay_Us(4);	 //2.71us(����1us������)

   }
}

/**********************************************************************
functionName: unsigned int readTempDS18B20(void)
description ����DS18B20�¶�
**********************************************************************/
unsigned int readTempDS18B20(void)
{
	unsigned char tempL,tempH;
	unsigned int x;
	//resetDS18B20();
	//writeByteDS18B20(0xcc);	 //����ROM
	//writeByteDS18B20(0x44);	 //�����¶�ת��
	Delay_Ms(1);		   //�ȴ�1ms
	resetDS18B20();
	writeByteDS18B20(0xcc);  //����ROM
	writeByteDS18B20(0xbe);  //������
	tempL=readByteDS18B20();
	tempH=readByteDS18B20();
	x=(tempH<<8)|tempL;
	resetDS18B20();
	writeByteDS18B20(0xcc);  //����ROM
	writeByteDS18B20(0x44);  //�����¶�ת��
	return(x);
}






