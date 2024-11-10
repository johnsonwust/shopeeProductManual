     
	 
	  #define uchar unsigned char
      #define uint  unsigned int
      #include <iom16v.h>
	  #include <macros.h>
	  uchar disbuf[4]={1,0,0,0};
	  
      const  uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };
	  const  uchar  disbit[4]  ={ 0xEF, 0xDF,0xBF,0x7F};
	  
	  uchar Key1_Flag,Key2_Flag,Key3_Flag;                                      							
      void delay(void)
           {
		     uchar i;
             for(i=0;i<255;i++);
           }
	  void timer1_init(void)
         {
	      //TCCR1B = 0x00;	   //stop timer
	      TCNT1H = 0x00;	   //���� TC1 �� �����Ĵ��� ��8λֵ
	      TCNT1L = 0x00;	   //���� TC1 �� �����Ĵ��� ��8λֵ
	      //OCR1AH = 0x1C;	   //���� TC1 �� ����ȽϼĴ���A ��8λֵ
	      //OCR1AL = 0x20;	   //���� TC1 �� ����ȽϼĴ���A ��8λֵ
	      //OCR1BH = 0x1C;	   //���� TC1 �� ����ȽϼĴ���B ��8λֵ
	      //OCR1BL = 0x20;	   //���� TC1 �� ����ȽϼĴ���B ��8λֵ
	      //ICR1H  = 0x1C;	   //���� TC1 �� ���벶��Ĵ��� ��8λֵ
	      //ICR1L  = 0x20;	   //���� TC1 �� ���벶��Ĵ��� ��8λֵ
	      //TCCR1A = 0x00;
	      TCCR1B = 0x0A;	   //����TC1 Ϊ CLK/1024��Ƶ������TC1
	      MCUCR = 0x00;		   //���� MCU �� ���ƼĴ���
	      GICR  = 0x00;		   //���� �жϿ��ƼĴ���
	      TIMSK = TIMSK|0X10;  //���� ��ʱ������ �� ���μĴ���
	      //SEI();			   //enable interrupts
         }   
	  
	   void Set_Process(void) 
         { 
		   uint i,j;
		   i=disbuf[3]*1000+disbuf[2]*100+disbuf[1]*10+disbuf[0];
		   j=500/i;
		   OCR1AH=j&0xff00;
		   OCR1AL=j&0x00ff;
         }
		  void Display(void)
         {  uchar i;
            for(i=0;i<4;i++)
              {
		       PORTB=discode[disbuf[i]];
               PORTA=disbit[i];
               delay();
               PORTA=0xff;
			  }      
		  }  	
		    
      void Key_Process(void)
	     {
		  while((PINA&0x80)==0){Display();Key1_Flag=1;}
		  while((PINA&0x40)==0){Display();Key2_Flag=1;}
		  while((PINA&0x20)==0){Display();Key3_Flag=1;}
		  if(Key1_Flag==1)
		    {disbuf[2]++;
			Set_Process();
			 if(disbuf[2]==10) disbuf[2]=0;Key1_Flag=0;
			}
		  if(Key2_Flag==1)
		    {disbuf[1]++;
			Set_Process();
			 if(disbuf[1]==10) disbuf[1]=0;Key2_Flag=0;
			}
		  if(Key3_Flag==1)
		    {disbuf[0]++;
			Set_Process();
			 if(disbuf[0]==10) disbuf[0]=0;Key3_Flag=0;
			}
		  }
	 
    
     
     void PORT_INT(void)
	     {
		 
		  DDRA=0x00;            
          DDRB=0xFF;
          DDRD=0XFF; 
		  DDRC=0xFF;
		  PORTA=0x00;
          PORTB=0xFF;
		  PORTC=0xFF;
          PORTD=0xFF;
		 }	  
      
         void main (void)
             { 
			   PORT_INT();
			   timer1_init();		
			   SEI();
                  while(1)
                 {   
				    Key_Process();  
				    //Set_Process(); 
					Display();  
			     }
			 }
		  

#pragma interrupt_handler Compare:7                   
            void Compare(void)
			  {PORTC=~PORTC;}
						