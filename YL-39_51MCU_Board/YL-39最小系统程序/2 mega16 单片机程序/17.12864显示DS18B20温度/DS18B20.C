/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 12984显示DS18B20温度试验
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J2短路帽拿掉   
/******************************************************************************/

    #include <iom16v.h>  
	#include <macros.h> 
	#define uchar unsigned char 
	#define uint  unsigned int 
	#define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
    #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
	#define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
/******************************************************************/	
	void Write_char(unsigned char start, unsigned char ddata);
    void Send_byte(unsigned char bbyte);
    void Delaynms(unsigned int di);
    void Lcd_init(void);
    void Disp_img(unsigned char const *img);
	
    void Init_1820();     //复位DS18B20
    Write_1820(uchar x);  //写一个字节
    uchar Read_1820();    //读一个字节
    void delay(uint x);   //延时
	
    
	unsigned char  num[]=    {"0123456789_:.V"};
	unsigned char  welcome[]={"环境温度:"};
/******************************************************************************/
void Lcd_init(void)	//初始化LCD 
{
	Delaynms(10); //启动等待，等LCM讲入工作状态
	Set_Bit(PORTA,0);
  	Write_char(0,0x00);  //8 位介面，基本指令集
	Delaynms(10);
  	Write_char(0,0x0c);  //显示打开，光标关，反白关
	Delaynms(10);
  	Write_char(0,0x01);  //清屏，将DDRAM的地址计数器归零  
	Delaynms(10);
}
/******************************************************************************/
void Write_char(unsigned char start, unsigned char ddata) //写指令或数据
{
	unsigned char start_data,Hdata,Ldata;
  	if(start==0) 
		start_data=0xf8;	 //写指令
    else    
    	start_data=0xfa;  //写数据
  
  	Hdata=ddata&0xf0;		  //取高四位
  	Ldata=(ddata<<4)&0xf0;  //取低四位
  	Send_byte(start_data);	  //发送起始信号
  	Delaynms(10); //延时是必须的
  	Send_byte(Hdata);	      //发送高四位
  	Delaynms(10);  //延时是必须的
  	Send_byte(Ldata);		  //发送低四位
  	Delaynms(10);  //延时是必须的
}
/******************************************************************************/
void Send_byte(unsigned char bbyte) //发送一个字节
{
	unsigned char i,j;
 	for(i=0;i<8;i++)
   	{    
	   
   		j=bbyte&0x80; //取出最高位
 		if(j)
			Set_Bit(PORTA,1);
		else
			Clr_Bit(PORTA,1);
		Set_Bit(PORTA,2);
		Clr_Bit(PORTA,2);
   		bbyte<<=1; //左移
   	}  
}
/******************************************************************************/
void Delaynms(unsigned int di) //延时
{
	unsigned int da,db;
 	for(da=0;da<di;da++)
   		for(db=0;db<10;db++);
}
/****************************************************************************/
void Disp_img(unsigned char const *img )	//图形方式12864显示字模221 横向取膜
{ 
	unsigned char i,j;
	unsigned int k = 0;
    Delaynms(100);//延时好重要!!!!!!AVR太快了
	Write_char(0,0x36); //图形方式
	Delaynms(100);//延时好重要!!!!!!AVR太快了
	for(i=0;i<32;i++)
  	{ 
		Write_char(0,0x80+i); //列
		Write_char(0,0x80);	  //行
    	for(j=0;j<16;j++) 
		{
			Write_char(1,img[k++]);	
		}
  	}
 	for(i=0;i<32;i++)
  	{ 
		Write_char(0,0x80+i);
		Write_char(0,0x88);
    	for(j=0;j<16;j++) 
		{
			Write_char(1,img[k++]);
  		}
	}
}
/******************************************************************************/
void Clr_Scr(void)//清屏函数
{
	Write_char(0,0x01);
}
/******************************************************************************/
void LCD_set_xy( unsigned char x, unsigned char y )
{	//设置LCD显示的起始位置，X为行，Y为列
    unsigned char address;
	switch(x)
	{
		case 0: address = 0x80 + y; break;    
    	case 1: address = 0x80 + y; break; 
		case 2: address = 0x90 + y; break; 
   	 	case 3: address = 0x88 + y; break;
		case 4: address = 0x98 + y; break; 
		default:address = 0x80 + y; break;
	}
    Write_char(0, address);
}
/******************************************************************************/
void LCD_Write_string( unsigned char X, unsigned char Y, unsigned char *s)
{	//	中英文字符串显示函数
	LCD_set_xy( X, Y );   
    while (*s) 
    {
		Write_char( 1, *s );
	    s ++;
		Delaynms(100);
	}
}
/*******************************************************************************/
void LCD_Write_number(unsigned char s)//	数字显示函数
{	 
	Write_char(1,num[s]);
}
/******************************************************************************/
void Lcd_Mark2(void)
{
	Clr_Scr();//清屏
	Delaynms(10);
	LCD_Write_string(1,0,welcome);//
	//LCD_Write_string(2,0,input);
	//LCD_Write_string(2,0,input);
}
/******************************************************************************/

uint ReadTemperature(void)//读取温度
{
	unsigned char a=0;
	unsigned char b=0;
	unsigned int  t=0;
	float tt=0;

	Init_1820();        //复位18b20 
	  Clr_Bit(PORTD, 0);
	Write_1820(0xcc);   // 发出转换命令 
    Write_1820(0x44); 
	Init_1820(); 
	Write_1820(0xcc);  //发出读命令 
    Write_1820(0xbe); 

	a=Read_1820();    //读数据 低8位
    b=Read_1820();    //       高8位
	
	t=b;
	t<<=8;
	t=t|a;
	tt=t*0.0625;
	t= tt*10+0.5; //放大10倍输出并四舍五入
	return(t); 
}
/******************************************************************************/  
void main(void) //主函数 
{ 
    uchar i;
	uchar temp[6];
	uint  j;
    //DDRD =0XFF; 
    //PORTD=0XFF; 
	DDRA|=1<<0|1<<1|1<<2;//设置PA2,PA3,PA4为输出
	PORTA=0xFF;
	
	DDRC|=1<<0;//设置PC0为输出  串行模式
	PORTC=0x00;
	
	DDRD|=1<<0;//设置PC0为输出  串行模式
	PORTD=0x00;
	
	
	Set_Bit(PORTD, 0);
	
	Delaynms(4000);//显示画面等待时间
	Lcd_init();//设置液晶显示器
	
	Lcd_Mark2();	
	Delaynms(4000);//显示画面等待时间
	
	//LCD_set_xy(2,5);
	//LCD_Write_number(0);
   
  while(1)
   { 

    j =ReadTemperature();
	Delaynms(4000);
	Delaynms(4000);
	Delaynms(4000);
	
	LCD_set_xy(2,5);
	temp[5]=j/100;
	LCD_Write_number(temp[5]);

	temp[4]=j/10-temp[5]*10;
	LCD_Write_number(temp[4]);
	temp[3]=j-temp[5]*100-temp[4]*10;
	LCD_Write_number(12);
	LCD_Write_number(temp[3]); 	
	//
	//Clr_Bit(PORTD, 0);
	 
   } 
} 
/******************************************************************/
void delay(uint x)  //1.5us左右 
{ 
     while(x) 
    { 
       x--; 
    } 
} 
/******************************************************************/
/******************************************************************/
void Init_1820() 
{ 
    Set_Bit(DDRC, 1);
	Set_Bit(PORTC, 1);
	Clr_Bit(PORTC, 1);
    delay(3000);    //480us以上 
	Set_Bit(PORTC, 1);
	Clr_Bit(DDRC, 1);
    delay(50);     //15~60us 
	while(Get_Bit(PINC, 1))
    {} 
	Set_Bit(DDRC, 1);
	Set_Bit(PORTC, 1);
    delay(150);   //60~240us 
} 
/******************************************************************/
Write_1820(unsigned char x) 
{    
    unsigned char m; 
    for(m=0;m<8;m++) 
    { 
	   Clr_Bit(PORTC, 1);
       if(x&(1<<m))    //写数据，从低位开始 
	   Set_Bit(PORTC, 1);
       else 
	   Clr_Bit(PORTC, 1); 
       delay(40);   //15~60us 
	   Set_Bit(PORTC, 1);
    } 
	   Set_Bit(PORTC, 1);
} 
/******************************************************************/
unsigned char Read_1820() 
{     
    unsigned char temp,k,n; 
       temp=0; 
    for(n=0;n<8;n++) 
       { 
	   Clr_Bit(PORTC, 1);
	   Set_Bit(PORTC, 1); 
	   Clr_Bit(DDRC, 1);
       k=(Get_Bit(PINC, 1));    //读数据,从低位开始 
       if(k) 
       temp|=(1<<n); 
       else 
       temp&=~(1<<n); 
       delay(50); //60~120us     
	   Set_Bit(DDRC, 1);
       } 
   return (temp); 
}  
/******************************************************************/



