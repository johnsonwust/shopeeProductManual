
/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 按下K6按键，D5-D8 闪烁1次；
 				 按下K5按键，D5-D8 闪烁2次；
				 按下K4按键，D5-D8 闪烁3次
				 按下K3按键，D5-D8 闪烁4次；
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J1短路帽接上  
/******************************************************************************/  
   #define uchar unsigned char 
   #define uint unsigned int 
   #include<iom16v.h>
    #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
      #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
      #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
  void delayms(void)	 // 延时子程序       
          {						
	         unsigned int i,j;
			 for(i=0;i<255;i++)
			    for(j=0;j<1000;j++);
          }

  void main(void)
  {
     
    //端口初始化
     DDRD=0xf0;      //D口高四位输出 低四位输入
     PORTD=0xff;
	 
	 
     DDRA=0x00;      //A口为输入
     PORTA=0xff;
   
     while(1)
     {
        if(Get_Bit(PINA,5)==0)    //PA4 按键处理函数        
	    {  
		  while(!(Get_Bit(PINA,5)))//等待按键松开
           { 
				PORTD=0x0F;
				delayms();
				PORTD=0xff;
				
				
           }		   
		   	   
	   }
	   
	   if(Get_Bit(PINA,4)==0)    //PA4 按键处理函数        
	    {  
		  while(!(Get_Bit(PINA,4)))//等待按键松开
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
		
		if(Get_Bit(PIND,3)==0)    //PA4 按键处理函数        
	    {  
		  while(!(Get_Bit(PIND,3)))//等待按键松开
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
		
		if(Get_Bit(PIND,2)==0)    //PA4 按键处理函数        
	    {  
		  while(!(Get_Bit(PIND,2)))//等待按键松开
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