

#ifndef	_DEFINE_H
#define	_DEFINE_H

//declare
typedef	unsigned char	Byte;
typedef	unsigned int	Word;
typedef	unsigned long	Long;


unsigned long u_ltemp;//��ʱ����long��
unsigned int u_wtemp;//��ʱ����word��
unsigned char u_btemp;//��ʱ����byte��
int	s_wtemp;//�з�����ʱ����word��

//ds1302��ʾ����
unsigned char year;//��
unsigned char month;//��
unsigned char week;
unsigned char date;//��
unsigned char hour;//ʱ
unsigned char minute;//��
unsigned char second;//��

//HT1621��ʾ��ر����Ͷ˿ڶ���
// HT1621�˿ڶ��� 
#define CS_PORT	PORTC
#define CS1621  PC4
#define DT_PORT	PORTC
#define WR_PORT	PORTC
#define DT1621  PC7
#define WR1621  PC6

unsigned long data_1621;//1621��ʾ����
unsigned char buf[16];//1621����ǰ��ʾ������32*4=16�ֽ�
unsigned char disbuf[16];//1621�������ʾ������32*4=16�ֽ�

//LED�ƶ˿ڶ���
#define LED_PORT PORTB
	#define LED1 PB0
	#define LED2 PB1
	#define LED3 PB2
	#define LED4 PB3
	#define LED5 PB4
	#define LED6 PB5
	#define LED7 PB6
	#define LED8 PB7

//�̵����˿ڶ���
#define JRC_PORT PORTD
	#define JRC PD5


	
//����������
#define BELL_PORT PORTD
	#define BELL PD6
	#define BELL_ON() BELL_PORT |= BIT(BELL)
	#define BELL_OFF() BELL_PORT &=~ BIT(BELL)

//ds1302�˿ڶ���
#define DS1302_PORT PORTD
#define DS1302_INPORT PIND
#define	DS1302_DDR	DDRD
#define DS1302_RST  PD4
#define DS1302_IO   PD3
#define DS1302_SCLK PD2
	//ds1302��ؼĴ�������
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


//ADC��ѹ�ɼ�
unsigned int data_adc;//adc���ݱ���
#define ADC_PORT PORTA
#define ADC_DDR	DDRA
	#define ADC_RP	PA0//��ѹ�ɼ�ADC0

/*
//smg12232����Һ��������ض���
//֧�ִ��кͲ��з�ʽ
#define 	LCD_PORT 	PORTC
	#define 	LCD_SCLK 	PC2//ʱ��
	#define 	LCD_STD 	PC1//����
	#define 	LCD_CS		PC0//Ƭѡ
	#define 	LCD_PSB 	PC3//����ѡ��

#define	LCD_CS_H 	LCD_PORT |= BIT(LCD_CS)
#define 	LCD_CS_L	LCD_PORT &=~ BIT(LCD_CS)
#define 	LCD_STD_H 	LCD_PORT |= BIT(LCD_STD)
#define 	LCD_STD_L 	LCD_PORT &=~ BIT(LCD_STD)
#define 	LCD_SCLK_H LCD_PORT |= BIT(LCD_SCLK)
#define 	LCD_SCLK_L LCD_PORT &=~ BIT(LCD_SCLK)

#define 	LCD_P 	LCD_PORT |= BIT(LCD_PSB)//���з�ʽ
#define 	LCD_S 	LCD_PORT &=~ BIT(LCD_PSB) //���з�ʽ



//ds18b20��ض���
#define 	DS18B20_PORT 	PORTG
#define 	DS18B20_PIN 	PING
#define 	DS18B20_DDR 	DDRG
	#define	DS18B20_IO	PG4
*/
//DS18B20�������� 
/*
#define	BIT_SET(a,b)    a|=BIT(b) 
#define	BIT_CLR(a,b)    a&=~ BIT(b)
#define	BIT_INV(a,b)    a^=BIT(b) 
#define	BIT_STATUS(a,b) a&BIT(b)
#define	CLR_DS18B20	BIT_CLR(DS18B20_O,DS18B20_L)     	//������ǿ������
#define	SET_DS18B20	BIT_SET(DS18B20_O,DS18B20_L)    	//������ǿ�����ߣ�����
#define	HLD_DS18B20	BIT_SET(DS18B20_C,DS18B20_L)     	//Mega16��������
#define	RLS_DS18B20	BIT_CLR(DS18B20_C,DS18B20_L)     	//�ͷ�����
#define	STU_DS18B20	BIT_STATUS(DS18B20_I,DS18B20_L)  //�����ߵ�״̬
*/
/*

#define 	CLR_DS18B20  	DS18B20_PORT &=~ BIT(DS18B20_IO) //������ǿ������
#define 	SET_DS18B20  	DS18B20_PORT |= BIT(DS18B20_IO)	 //������ǿ������
#define 	HLD_DS18B20 	DS18B20_DDR |= BIT(DS18B20_IO)	 //����������Ϊ���
#define	RLS_DS18B20	DS18B20_DDR &=~ BIT(DS18B20_IO)  //�ͷ�������Ϊ����
#define	STU_DS18B20	DS18B20_PIN & BIT(DS18B20_IO) 	//�����ߵ�״̬

//unsigned int temperture;//�¶�
float temperture;


//8������ض���
unsigned char key;//��ֵ
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

//�������ݱ���

unsigned char com0_data;
unsigned char com1_data;

*/
#endif

