/******************************************************************************/
/*����дʱ�䡿�� 2011.07.07
* ����    �ߡ��� �������
* ����    ������ V1.0
* ����    վ���� http://ylelectronic.taobao.com/ 
* ��Q      Q���� 348439350
* �����뻷������ ICCAVR  
* ���������ܡ��� �����ÿ���ϵ��1 
* ����    ��:  8M		
* ��о    Ƭ��:  ATMEGA16A	 
* ��Ӳ�����ӡ��� J2��·ñ����      
/******************************************************************************/   
	  #define uchar unsigned char
	  #define uint  unsigned int
	  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
      #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
      #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
      #include <iom16v.h>
      uchar  disbuf[4]={0,0,0,0};  
      uchar  discode[]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0xff};  //�����
      uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //ѡֵͨ   
/******************************************************************************/
//��������
/******************************************************************************/  		  
	  void delay(uchar k);
	  void Display(void); 
	  void Write_EEprom(uchar Data,uint address);//д��AVR��Ƭ���ڲ�EERPOM����
	  uchar Read_EEprom (uint address);          //����AVR��Ƭ���ڲ�EERPOM����   
/******************************************************************************/
//��ʱ����
/******************************************************************************/  		                                            							
      void delayms(uchar K)
           {
		    uint j;
		    for(;K!=0;K--)
			 for(j=1000;j!=0;j--);  
           }
/******************************************************************************/
//��ʾ����
/******************************************************************************/  		      
	  void Display(void)
         {  
		    uchar i;
            for(i=0;i<4;i++)
                {
		         PORTB=discode[disbuf[i]];
                 PORTA=disbit[i];
                 delayms(1);
                 PORTA=0xff;
			    } 
		 }
/******************************************************************************/
//���ڲ�EEPROM����
/******************************************************************************/  				 
      uchar Read_EEprom(uint address)
	     {
		  uchar j;
		  if(EECR&0x01)delayms(32);
		  EEARH=address>>8;
		  EEARL=address&0x00ff;
		  EECR=EECR|0x01;
		  delayms(32);
		  j=EEDR;
		  return(j);
		  }
/******************************************************************************/
//д��EEPORM����
/******************************************************************************/  				  
	 void Write_EEprom(uchar data,uint address)
	     {
		  if(EECR&0x20)delayms(32);
		  EEARH=address>>8;
		  EEARL=address&0x00ff; 
		  EEDR=data;
		  EECR=EECR|0x04;
		  EECR=EECR|0x02;
		  delayms(32);
		 }
/******************************************************************************/
//������
/******************************************************************************/  			 
         void main (void)
         { 
		   uchar i;
		   DDRA|=1<<0|1<<1|1<<2|1<<3|0<<4;//����PA0,PA1,PA2Ϊ���,PA4Ϊ����
	       PORTA=0x00;
	
		   DDRB=0XFF;   //����ܶ��������
		   PORTB=0xFF;
		   
			   i=Read_EEprom(1);//����EEPROM�����
			   i++;             //��ԭ�������ϼ�1��ÿ�ο�������ܼ�1
			   if(i>=255)i=0;
			   Write_EEprom(i,1);
			   disbuf[1]=i/100;
			   disbuf[2]=i%100/10;
			   disbuf[3]=i%100%10;
			   disbuf[0]=10;
                  while(1)
                 {  
				 
				 
				      if(Get_Bit(PINA,4)==0)   //������һ����д��EEPROM ,�ϵ������������һֱ��ʾ0123
					{
					    while(!Get_Bit(PINA,4))Display();   
			           { 
					     i++;
						 if(i>=255)i=0;
						 Write_EEprom(i,1);
						 disbuf[1]=i/100;
						 disbuf[2]=i%100/10;
						 disbuf[3]=i%100%10;
						 disbuf[0]=10;
				       }
					 }
					Display();    
			     }
			 }

						
			               
                       
                            
               
                


   
                      
                       
                            
               
                


