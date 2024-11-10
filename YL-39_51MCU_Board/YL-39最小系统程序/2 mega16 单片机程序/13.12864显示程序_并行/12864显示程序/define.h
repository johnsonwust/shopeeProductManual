

#ifndef	_DEFINE_H
#define	_DEFINE_H

//declare
typedef	unsigned char	Byte;
typedef	unsigned int	Word;
typedef	unsigned long	Long;


unsigned long u_ltemp;//临时变量long型
unsigned int u_wtemp;//临时变量word型
unsigned char u_btemp;//临时变量byte型
int	s_wtemp;//有符号临时变量word型

//ds1302显示变量
unsigned char year;//年
unsigned char month;//月
unsigned char week;
unsigned char date;//日
unsigned char hour;//时
unsigned char minute;//分
unsigned char second;//秒

//HT1621显示相关变量和端口定义
// HT1621端口定义 
#define CS_PORT	PORTC
#define CS1621  PC4
#define DT_PORT	PORTC
#define WR_PORT	PORTC
#define DT1621  PC7
#define WR1621  PC6

unsigned long data_1621;//1621显示变量
unsigned char buf[16];//1621译码前显示缓冲区32*4=16字节
unsigned char disbuf[16];//1621译码后显示缓冲区32*4=16字节

//LED灯端口定义
#define LED_PORT PORTB
	#define LED1 PB0
	#define LED2 PB1
	#define LED3 PB2
	#define LED4 PB3
	#define LED5 PB4
	#define LED6 PB5
	#define LED7 PB6
	#define LED8 PB7

//继电器端口定义
#define JRC_PORT PORTD
	#define JRC PD5


	
//蜂鸣器定义
#define BELL_PORT PORTD
	#define BELL PD6
	#define BELL_ON() BELL_PORT |= BIT(BELL)
	#define BELL_OFF() BELL_PORT &=~ BIT(BELL)

//ds1302端口定义
#define DS1302_PORT PORTD
#define DS1302_INPORT PIND
#define	DS1302_DDR	DDRD
#define DS1302_RST  PD4
#define DS1302_IO   PD3
#define DS1302_SCLK PD2
	//ds1302相关寄存器定义
#define Set_ds1302_rst_ddr()  DS1302_DDR |=BIT(DS1302_RST)
#define Set_ds1302_rst()      DS1302_PORT|=BIT(DS1302_RST) 
#define Clr_ds1302_rst()      DS1302_PORT &=~ BIT(DS1302_RST)
		
#define Set_ds1302_io_ddr()   DS1302_DDR|=BIT(DS1302_IO) 
#define Clr_ds1302_io_ddr()   DS1302_DDR&=~ BIT(DS1302_IO) 
#define Set_ds1302_io()       DS1302_PORT|=BIT(DS1302_IO) 
#define Clr_ds1302_io()       DS1302_PORT&=~ BIT(DS1302_IO) 
#define In_ds1302_io()        DS1302_INPORT&=~ BIT(DS1302_IO) 
		
#define Set_ds1302_sclk_ddr() DS1302_DDR |=BIT(DS1302_SCLK)
#define Set_ds1302_sclk()     DS1302_PORT|=BIT(DS1302_SCLK) 
#define Clr_ds1302_sclk()     DS1302_PORT&=~ BIT(DS1302_SCLK) 
		
#define 	ds1302_second_reg     	0x80 
#define 	ds1302_minute_reg     	0x82 
#define 	ds1302_hour_reg     		0x84
#define 	ds1302_date_reg     		0x86 
#define 	ds1302_month_reg   		0x88 
#define 	ds1302_week_reg     		0x8a 
#define 	ds1302_year_reg    		0x8c 
#define 	ds1302_control_reg  		0x8e 
#define 	ds1302_charger_reg  		0x90 
#define 	ds1302_clkburst_reg 		0xbe 


//ADC电压采集
unsigned int data_adc;//adc数据变量
#define ADC_PORT PORTA
#define ADC_DDR	DDRA
	#define ADC_RP	PA0//电压采集ADC0

/*
//smg12232点阵液晶驱动相关定义
//支持串行和并行方式
#define 	LCD_PORT 	PORTC
	#define 	LCD_SCLK 	PC2//时钟
	#define 	LCD_STD 	PC1//数据
	#define 	LCD_CS		PC0//片选
	#define 	LCD_PSB 	PC3//串并选择

#define	LCD_CS_H 	LCD_PORT |= BIT(LCD_CS)
#define 	LCD_CS_L	LCD_PORT &=~ BIT(LCD_CS)
#define 	LCD_STD_H 	LCD_PORT |= BIT(LCD_STD)
#define 	LCD_STD_L 	LCD_PORT &=~ BIT(LCD_STD)
#define 	LCD_SCLK_H LCD_PORT |= BIT(LCD_SCLK)
#define 	LCD_SCLK_L LCD_PORT &=~ BIT(LCD_SCLK)

#define 	LCD_P 	LCD_PORT |= BIT(LCD_PSB)//并行方式
#define 	LCD_S 	LCD_PORT &=~ BIT(LCD_PSB) //串行方式



//ds18b20相关定义
#define 	DS18B20_PORT 	PORTG
#define 	DS18B20_PIN 	PING
#define 	DS18B20_DDR 	DDRG
	#define	DS18B20_IO	PG4
*/
//DS18B20操作定义 
/*
#define	BIT_SET(a,b)    a|=BIT(b) 
#define	BIT_CLR(a,b)    a&=~ BIT(b)
#define	BIT_INV(a,b)    a^=BIT(b) 
#define	BIT_STATUS(a,b) a&BIT(b)
#define	CLR_DS18B20	BIT_CLR(DS18B20_O,DS18B20_L)     	//数据线强制拉低
#define	SET_DS18B20	BIT_SET(DS18B20_O,DS18B20_L)    	//数据线强制拉高，上拉
#define	HLD_DS18B20	BIT_SET(DS18B20_C,DS18B20_L)     	//Mega16控制总线
#define	RLS_DS18B20	BIT_CLR(DS18B20_C,DS18B20_L)     	//释放总线
#define	STU_DS18B20	BIT_STATUS(DS18B20_I,DS18B20_L)  //数据线的状态
*/
/*

#define 	CLR_DS18B20  	DS18B20_PORT &=~ BIT(DS18B20_IO) //数据线强制拉低
#define 	SET_DS18B20  	DS18B20_PORT |= BIT(DS18B20_IO)	 //数据线强制拉高
#define 	HLD_DS18B20 	DS18B20_DDR |= BIT(DS18B20_IO)	 //控制总线设为输出
#define	RLS_DS18B20	DS18B20_DDR &=~ BIT(DS18B20_IO)  //释放总线设为输入
#define	STU_DS18B20	DS18B20_PIN & BIT(DS18B20_IO) 	//数据线的状态

//unsigned int temperture;//温度
float temperture;


//8按键相关定义
unsigned char key;//键值
#define KEY_PORT PORTB
#define KEY_PIN PINB
#define KEY_DDR DDRB
	#define KEY1 254
	#define KEY2 253
	#define KEY3 251
	#define KEY4 247
	#define KEY5 239
	#define KEY6 223
	#define KEY7 191
	#define KEY8 127

//串口数据变量

unsigned char com0_data;
unsigned char com1_data;

*/
#endif

