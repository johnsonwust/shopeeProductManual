/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 闪烁LED灯	
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J1短路帽接上               
/******************************************************************************/
	  #include <iom16v.h>
	   void delayms(void)	 // 延时子程序       
          {						
	         unsigned int i,j;
			 for(i=0;i<255;i++)
			    for(j=0;j<3000;j++);
          }
       void main(void)
	      { 
			 DDRD=0xFF;    //PD口设成输出口
			 PORTD=0xFF; 
			 
	
			 while(1)
		     {	
		
	         PORTD=0x00;
     		 delayms();           //延时300ms
	  		 PORTD=0xff; 
     		 delayms();           //延时300ms                 
			}
		  }

