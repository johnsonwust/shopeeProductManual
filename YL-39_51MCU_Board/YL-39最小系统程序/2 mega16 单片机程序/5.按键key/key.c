
/******************************************************************************/
/*����дʱ�䡿�� 2011.07.07
* ����    �ߡ��� �������
* ����    ������ V1.0
* ����    վ���� http://ylelectronic.taobao.com/ 
* ��Q      Q���� 348439350
* �����뻷������ ICCAVR  
* ���������ܡ��� ����K6������D5-D8 ��˸1�Σ�
 				 ����K5������D5-D8 ��˸2�Σ�
				 ����K4������D5-D8 ��˸3��
				 ����K3������D5-D8 ��˸4�Σ�
* ����    ��:  8M		
* ��о    Ƭ��:  ATMEGA16A	 
* ��Ӳ�����ӡ��� J1��·ñ����  
/******************************************************************************/  
   #define uchar unsigned char 
   #define uint unsigned int 
   #include<iom16v.h>
    #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
      #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
      #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
  void delayms(void)	 // ��ʱ�ӳ���       
          {						
	         unsigned int i,j;
			 for(i=0;i<255;i++)
			    for(j=0;j<1000;j++);
          }

  void main(void)
  {
     
    //�˿ڳ�ʼ��
     DDRD=0xf0;      //D�ڸ���λ��� ����λ����
     PORTD=0xff;
	 
	 
     DDRA=0x00;      //A��Ϊ����
     PORTA=0xff;
   
     while(1)
     {
        if(Get_Bit(PINA,5)==0)    //PA4 ����������        
	    {  
		  while(!(Get_Bit(PINA,5)))//�ȴ������ɿ�
           { 
				PORTD=0x0F;
				delayms();
				PORTD=0xff;
				
				
           }		   
		   	   
	   }
	   
	   if(Get_Bit(PINA,4)==0)    //PA4 ����������        
	    {  
		  while(!(Get_Bit(PINA,4)))//�ȴ������ɿ�
           { 
				PORTD=0x0F;
				delayms();
				PORTD=0xff;
				delayms();
				PORTD=0x0F;
				delayms();
				PORTD=0xff;	
				
           }
		 }	
		
		if(Get_Bit(PIND,3)==0)    //PA4 ����������        
	    {  
		  while(!(Get_Bit(PIND,3)))//�ȴ������ɿ�
           { 
				PORTD=0x0F;
				delayms();
				PORTD=0xff;
				delayms();
				PORTD=0x0F;
				delayms();
				PORTD=0xff;	
				delayms();
				PORTD=0x0F;	
				delayms();
				PORTD=0xff;	
           }
		 }	 
		
		if(Get_Bit(PIND,2)==0)    //PA4 ����������        
	    {  
		  while(!(Get_Bit(PIND,2)))//�ȴ������ɿ�
           { 
				PORTD=0x0F;
				delayms();
				PORTD=0xff;
				delayms();
				PORTD=0x0F;
				delayms();
				PORTD=0xff;	
				delayms();
				PORTD=0x0F;	
				delayms();
				PORTD=0xff;	
				delayms();
				PORTD=0x0F;	
				delayms();
				PORTD=0xff;	
           }
		 }	  
		 
		 
     }
  }