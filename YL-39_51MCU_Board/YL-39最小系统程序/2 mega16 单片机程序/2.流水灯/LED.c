/******************************************************************************/
/*����дʱ�䡿�� 2011.07.07
* ����    �ߡ��� �������
* ����    ������ V1.0
* ����    վ���� http://ylelectronic.taobao.com/ 
* ��Q      Q���� 348439350
* �����뻷������ ICCAVR  
* ���������ܡ��� ��ˮ��ʵ��
* ����    ��:  8M		
* ��о    Ƭ��:  ATMEGA16A	 
* ��Ӳ�����ӡ��� J1��·ñ����  
/******************************************************************************/  
       #define  uchar  unsigned char
	   #define  uint   unsigned int
       #include <iom16v.h>
       #include <macros.h>
	   
       void delayms(void)	 // ��ʱ�ӳ���       
        {						
	         unsigned int i,j;
			 for(i=0;i<100;i++)
			    for(j=0;j<3000;j++);
        } 
        void  main(void)
        {
		 uchar  i,j;            //�������
         PORTD=0xFF;			//��Ϊ�����
         DDRD=0xFF;				//PD����Ϊ����ߵ�ƽ������
         while(1)
            {
	        i=1;
	        for (j=0;j<8;j++)  //ѭ��8�Σ���PD0~~PF7��������  
		               { 
					     PORTD=~i;		//�������,�͵�ƽ��Ч
		                 delayms();
		                 i=i<<1;			//����һλ
	                   }
	       
	       }
        }
	  
	
	  
	