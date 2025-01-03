/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 按键K5 K6 实现数码管加减1  初始值 8888
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽接上                                                     */   
/******************************************************************************/
      #define uchar unsigned char
	  #define uint  unsigned int
	  #include <iom16v.h>
	  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
      #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
      #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
	  
      uchar disbuf[4]={0,0,0,0};
      uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };  //段码表
      uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
      uchar  Key_Up;
      uchar  Key_Down; 
	  static uint k=8888;  
/******************************************************************************/
//延时函数
/******************************************************************************/  	                                                  							
      void delay(void)
           {uint i;
             for(i=0;i<500;i++);
           }
/******************************************************************************/

/******************************************************************************/

//显示函数
/******************************************************************************/  		   
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
/******************************************************************************/
//显示数据处理
/******************************************************************************/  		
      void Process(uint i,uchar *disbuf) 
         { disbuf[0]=i/1000;
		   i=i%1000;
		   disbuf[1]=i/100;
		   i=i%100;
		   disbuf[2]=i/10;
		   i=i%10;
		   disbuf[3]=i; 
          } 
/******************************************************************************/
//按键处理子程序
/******************************************************************************/  	  
      void Get_Key(void)
	     { 
	    	 if(Get_Bit(PINA,4)==0)    //PA4 按键处理函数        
			{ 
			   Display();
			   Display();
			   Display(); 
			   Display();
			  while(!(Get_Bit(PINA,4)))//等待按键松开
                  { 
				  Display(); 
                  }
				  k++; 
                  if(k>9999)k=0; 
                  Process(k,disbuf);    
			}
			
		      if(Get_Bit(PINA,5)==0)   //PA5 按键处理函数
                {  
				  Display();
				  Display();
				  Display();
				  Display(); 
			      Display();
				
				 while(!Get_Bit(PINA,5))  //等待按键松开
                  { 
				  Display(); 
				  Display();
                  }  
                  k--;   
				     if(k==65535)k=9999;
                      Process(k,disbuf);     
			    }
         }
         void main (void)
             { 
			 
			   DDRA|=1<<0|1<<1|1<<2|1<<3|0<<4|0<<5;//设置PA0,PA1,PA2为输出,PA4,PA5为输入
	           PORTA=0x00;
			              
               DDRB=0xFF;
               PORTB=0xFF;
         		
               Process(k,disbuf); 
                  while(1)
                 {    
                    Get_Key();
				    Display();  
			      }
			 }
				 
                      
                      
                       
                            
               
                


