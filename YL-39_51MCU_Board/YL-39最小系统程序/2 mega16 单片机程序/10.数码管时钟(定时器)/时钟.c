/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 数码管时钟显示
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽接上                                                 */
/******************************************************************************/  
	 
	 
	  #define uchar unsigned char
	  #define uint  unsigned int
      #include <iom16v.h>
	  #include <macros.h>
      uchar disbuf[4]={0,0,0,0};
      const  uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };  
      uchar  cnt=0;
	  uchar flag=0;
      uchar  timer[3]={00,00,00};                                                  							
      void delay(void)
           {uchar i;
             for(i=0;i<255;i++);
           }
	  void timer1_init(void)
         {
	      TCCR1B = 0x00;	   //stop timer
	      TCNT1H = 0xc7;	   //设置 TC1 的 计数寄存器 高8位值
	      TCNT1L = 0xc0;	   //设置 TC1 的 计数寄存器 低8位值
	      //OCR1AH = 0x1C;	   //设置 TC1 的 输出比较寄存器A 高8位值
	      //OCR1AL = 0x20;	   //设置 TC1 的 输出比较寄存器A 低8位值
	      //OCR1BH = 0x1C;	   //设置 TC1 的 输出比较寄存器B 高8位值
	      //OCR1BL = 0x20;	   //设置 TC1 的 输出比较寄存器B 低8位值
	      //ICR1H  = 0x1C;	   //设置 TC1 的 输入捕获寄存器 高8位值
	      //ICR1L  = 0x20;	   //设置 TC1 的 输入捕获寄存器 低8位值
	      TCCR1A = 0x00;
	      TCCR1B = 0x04;	  //设置TC1 为 CLK/1024分频，启动TC1
	      MCUCR = 0x00;		//设置 MCU 的 控制寄存器
	      GICR  = 0x00;		//设置 中断控制寄存器
	      TIMSK = 0x04;		//设置 定时计数器 的 屏蔽寄存器
	      //SEI();			//enable interrupts
        }   
	  void Display(void)
         {  
		         PORTB=discode[disbuf[0]];
                 PORTA=0xF7;
                 delay();
                 PORTA=0xff;
				 
				 PORTB=discode[disbuf[1]];
                 PORTA=0xFB;
                 delay();
                 PORTA=0xff;
				 switch(flag)
				{
				 case 0x00:
				 PORTB=((discode[disbuf[2]])&0x7f);  break;
				 case 0xff:
				 PORTB= (discode[disbuf[2]]);        break;
				 default:                            break;
				}
                 PORTA=0xFD;
                 delay();
                 PORTA=0xff;
				 PORTB=discode[disbuf[3]];
                 PORTA=0xFE;
                 delay();
                 PORTA=0xff;
		   }
			  
		
      void Process(uchar *p,uchar *disbuf) 
         { 
		   disbuf[3]=timer[1]/10;
		   disbuf[2]=timer[1]%10;
		   disbuf[1]=timer[0]/10;
		   disbuf[0]=timer[0]%10;
         } 
     
      void PORT_INT(void)
	     {
		  DDRA=0xFF;            
          DDRB=0xFF;
		  PORTA=0xFF;
          PORTB=0xFF;
		 }	  
      
      void main (void)
             { 
			   PORT_INT();
			   timer1_init();		
			   SEI();
                  while(1)
                 {     
				    Process(timer,disbuf);
					Display();  
			     }
			 }

#pragma interrupt_handler timer1_ovf_isr:9                    
           void timer1_ovf_isr(void) 
		       { TCNT1H = 0xc7;		//设置 TC1 的 计数寄存器 高8位值
	             TCNT1L = 0xc0;		//设置 TC1 的 计数寄存器 低8位值
				 flag=~flag;
				  switch(flag)
				    {case 0x00:
				          {timer[0]++;
				              if(timer[0]==60)
					            {timer[0]=0;
						            timer[1]++;
						              if(timer[1]==60)
							              {timer[1]=0;
										      timer[2]++;
											   if(timer[2]==24)
											       timer[2]=0;
										  }  
										    
					            }
				           }   
					            break;
					 case 0xff: break;
					 default:   break;
					 }
				 
				}
						
			               
                       
                            
               
                


