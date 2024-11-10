/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 数码管每次上电加1 
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽接上      
/******************************************************************************/   
	  #define uchar unsigned char
	  #define uint  unsigned int
	  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
      #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
      #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
      #include <iom16v.h>
      uchar  disbuf[4]={0,0,0,0};  
      uchar  discode[]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0xff};  //段码表
      uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
/******************************************************************************/
//函数声明
/******************************************************************************/  		  
	  void delay(uchar k);
	  void Display(void); 
	  void Write_EEprom(uchar Data,uint address);//写入AVR单片机内部EERPOM函数
	  uchar Read_EEprom (uint address);          //读出AVR单片机内部EERPOM函数   
/******************************************************************************/
//延时函数
/******************************************************************************/  		                                            							
      void delayms(uchar K)
           {
		    uint j;
		    for(;K!=0;K--)
			 for(j=1000;j!=0;j--);  
           }
/******************************************************************************/
//显示函数
/******************************************************************************/  		      
	  void Display(void)
         {  
		    uchar i;
            for(i=0;i<4;i++)
                {
		         PORTB=discode[disbuf[i]];
                 PORTA=disbit[i];
                 delayms(1);
                 PORTA=0xff;
			    } 
		 }
/******************************************************************************/
//读内部EEPROM函数
/******************************************************************************/  				 
      uchar Read_EEprom(uint address)
	     {
		  uchar j;
		  if(EECR&0x01)delayms(32);
		  EEARH=address>>8;
		  EEARL=address&0x00ff;
		  EECR=EECR|0x01;
		  delayms(32);
		  j=EEDR;
		  return(j);
		  }
/******************************************************************************/
//写入EEPORM函数
/******************************************************************************/  				  
	 void Write_EEprom(uchar data,uint address)
	     {
		  if(EECR&0x20)delayms(32);
		  EEARH=address>>8;
		  EEARL=address&0x00ff; 
		  EEDR=data;
		  EECR=EECR|0x04;
		  EECR=EECR|0x02;
		  delayms(32);
		 }
/******************************************************************************/
//主函数
/******************************************************************************/  			 
         void main (void)
         { 
		   uchar i;
		   DDRA|=1<<0|1<<1|1<<2|1<<3|0<<4;//设置PA0,PA1,PA2为输出,PA4为输入
	       PORTA=0x00;
	
		   DDRB=0XFF;   //数码管段码输出口
		   PORTB=0xFF;
		   
			   i=Read_EEprom(1);//读出EEPROM存的数
			   i++;             //在原来基础上加1，每次开机数码管加1
			   if(i>=255)i=0;
			   Write_EEprom(i,1);
			   disbuf[1]=i/100;
			   disbuf[2]=i%100/10;
			   disbuf[3]=i%100%10;
			   disbuf[0]=10;
                  while(1)
                 {  
				 
				 
				      if(Get_Bit(PINA,4)==0)   //按键加一，并写入EEPROM ,断电重启后，数码管一直显示0123
					{
					    while(!Get_Bit(PINA,4))Display();   
			           { 
					     i++;
						 if(i>=255)i=0;
						 Write_EEprom(i,1);
						 disbuf[1]=i/100;
						 disbuf[2]=i%100/10;
						 disbuf[3]=i%100%10;
						 disbuf[0]=10;
				       }
					 }
					Display();    
			     }
			 }

						
			               
                       
                            
               
                


   
                      
                       
                            
               
                


