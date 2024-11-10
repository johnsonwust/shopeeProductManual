/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 流水灯实验
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J1短路帽接上  
/******************************************************************************/  
       #define  uchar  unsigned char
	   #define  uint   unsigned int
       #include <iom16v.h>
       #include <macros.h>
	   
       void delayms(void)	 // 延时子程序       
        {						
	         unsigned int i,j;
			 for(i=0;i<100;i++)
			    for(j=0;j<3000;j++);
        } 
        void  main(void)
        {
		 uchar  i,j;            //定义变量
         PORTD=0xFF;			//设为输出口
         DDRD=0xFF;				//PD口设为输出高电平，灯灭
         while(1)
            {
	        i=1;
	        for (j=0;j<8;j++)  //循环8次，即PD0~~PF7轮流闪亮  
		               { 
					     PORTD=~i;		//反相输出,低电平有效
		                 delayms();
		                 i=i<<1;			//左移一位
	                   }
	       
	       }
        }
	  
	
	  
	