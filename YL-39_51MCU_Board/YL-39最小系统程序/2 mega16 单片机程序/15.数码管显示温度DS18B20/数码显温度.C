/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 数码管显示ds18b20温度试验
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽接上   
/******************************************************************************/  
      #define uchar unsigned char
	  #define uint  unsigned int
	  #include <iom16v.h>
	  #include "DS18B20.h"
	  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
      #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
      #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
      uchar  tx[7]={0};
      uchar  discode[12]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0xff };  //段码表
      uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
/******************************************************************************/
//延时函数
/******************************************************************************/  	                                             							
      void delay(void)   
           {uchar i;
             for(i=0;i<255;i++);
           }
/******************************************************************************/
//显示函数
/******************************************************************************/  
	  void Display(void)
         {  
		    uchar i;
            for(i=0;i<4;i++)
                {
				 if(i==1)
		         PORTB=(discode[tx[i]])&0x7f;//显示数码管的点
				 else 
				 PORTB=discode[tx[i]];
                 PORTA=disbit[i];
                 delay();
                 PORTA=0xff;
			    } 
		 }
/******************************************************************************/
//读出温度程序
/******************************************************************************/  		 
void ReadTemperature(void)
{
	unsigned char a=0;
	unsigned char b=0;
	unsigned char Data_L=0;
	unsigned char num=0;

	Init_1820();        //复位18b20 
	Write_1820(0xcc);   // 发出转换命令 
    Write_1820(0x44); 
	Init_1820(); 
	Write_1820(0xcc);  //发出读命令 
    Write_1820(0xbe); 
	a=Read_1820();    //读数据 低8位
    b=Read_1820();    //       高8位
	tx[0] = (a/16+b*16)/10;      //整数部分
	tx[1] = (a/16+b*16)%10; 

    Data_L=a&0X0F;
     for(num=2;num<6;num++)		 //小数部分
   {
      Data_L=Data_L*10;				 //10	   //100		//40		 //80
      tx[num]=Data_L/16;			 //0	  //6			//2			 //5
      Data_L=Data_L%16;				 //10	   //4			//8
	}
}
/******************************************************************************/
//主函数不断扫描数码管
/******************************************************************************/  
	  void main (void)
             { 
			 
			      unsigned char n;
				  unsigned int  j;
                  DDRA=0xFF;       //设为输出口     
                  DDRB=0xFF;       //设为输出口 
		          PORTA=0xFF;      
                  PORTB=0xFF;
  
                  while(1)
                 {  
				   ReadTemperature();
				   for(n=0;n<30;n++)  //显示30次读出一次温度，当作延时
				   Display();
			      }
			 }
				 	

                      
                      
                       
                            
               
