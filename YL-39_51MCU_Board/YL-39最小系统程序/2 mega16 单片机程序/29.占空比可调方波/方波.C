        #define uchar unsigned char
        #define uint unsigned int
		#define ulong unsigned long
		#define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
		#define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
		#include <iom16v.h>
        #include <macros.h>
		uchar disbuf[4]={1,0,0,0};
        uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };  //段码表
        uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
	    uchar Key1_Flag,Key2_Flag,Key3_Flag;                                      							
        void delay(void)
           {uchar i;
             for(i=255;i>0;i--);
           }
	  void timer1_init(void)
         {
	      TCCR1A = 0xC3;
	      TCCR1B = 0x02;	   //设置TC1 为 CLK/1024分频，启动TC1
         }   
	  
	   void Set_Process(void) 
         { uint i,j;
		  
		   j=512;
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
		  while((PINA&0x10)==0){Display();Key1_Flag=1;}
		  while((PINA&0x08)==0){Display();Key2_Flag=1;}
		  while((PINA&0x20)==0){Display();Key3_Flag=1;}
		  if(Key1_Flag==1)
		    {
			disbuf[2]++;
			Set_Process();
			if(disbuf[2]==10) disbuf[2]=0;Key1_Flag=0;
			}
		  if(Key2_Flag==1)
		    {
			disbuf[1]++;
			Set_Process();
			if(disbuf[1]==10) disbuf[1]=0;Key2_Flag=0;
			}
		  if(Key3_Flag==1)
		    {
			disbuf[0]++;
			Set_Process();
			if(disbuf[0]==10) disbuf[0]=0;Key3_Flag=0;
			}
		  }
	 
    
     
     void PORT_INT(void)
	     {
		     DDRA|=1<<0|1<<1|1<<2|1<<3|0<<4|0<<5;//设置PA0,PA1,PA2为输出,PA4,PA5为输入
	         PORTA=0x00;            
             DDRB=0xFF;
             PORTB=0xFF;
			 DDRD=0XFF; 
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
					Display();  
			     }
			 }
		  

						 