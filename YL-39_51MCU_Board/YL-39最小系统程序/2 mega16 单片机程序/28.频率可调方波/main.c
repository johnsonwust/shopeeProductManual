     
	 
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
	      TCNT1H = 0x00;	   //设置 TC1 的 计数寄存器 高8位值
	      TCNT1L = 0x00;	   //设置 TC1 的 计数寄存器 低8位值
	      //OCR1AH = 0x1C;	   //设置 TC1 的 输出比较寄存器A 高8位值
	      //OCR1AL = 0x20;	   //设置 TC1 的 输出比较寄存器A 低8位值
	      //OCR1BH = 0x1C;	   //设置 TC1 的 输出比较寄存器B 高8位值
	      //OCR1BL = 0x20;	   //设置 TC1 的 输出比较寄存器B 低8位值
	      //ICR1H  = 0x1C;	   //设置 TC1 的 输入捕获寄存器 高8位值
	      //ICR1L  = 0x20;	   //设置 TC1 的 输入捕获寄存器 低8位值
	      //TCCR1A = 0x00;
	      TCCR1B = 0x0A;	   //设置TC1 为 CLK/1024分频，启动TC1
	      MCUCR = 0x00;		   //设置 MCU 的 控制寄存器
	      GICR  = 0x00;		   //设置 中断控制寄存器
	      TIMSK = TIMSK|0X10;  //设置 定时计数器 的 屏蔽寄存器
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
						