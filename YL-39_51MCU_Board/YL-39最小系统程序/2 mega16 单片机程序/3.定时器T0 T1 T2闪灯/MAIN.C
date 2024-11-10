/******************************************************************************/
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 定时闪烁LED灯 	
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J1短路帽接上  
/******************************************************************************/  

#define  uchar  unsigned char
#define  uint   unsigned int
#include <iom16v.h>
#include <macros.h>

unsigned char t0_ovfnum;//t0软件定时计数器
unsigned char t1_ovfnum;//t1软件定时计数器
unsigned char t2_ovfnum;//t1软件定时计数器

void timer0_init(void);//10ms
void timer1_init(void);//10ms
void timer2_init(void);//10ms


void main(void)
{
	unsigned char n;
	DDRD= 0xFF;
	PORTD=0xFF;
	timer0_init();//初始化定时器0
	timer1_init();//初始化定时器1
	timer2_init();//初始化定时器2
	SEI();	      //开总中断
	while(1)
	{	
	}
}

//TIMER0 initialize - prescale:1024
// WGM: Normal
// desired value: 10mSec
// actual value:  9.984mSec (0.2%)
void timer0_init(void)//10ms
{
	TCCR0 = 0x00; //stop
	TCNT0 = 0xB2; //set count
	OCR0  = 0x4E;  //set compare
	TCCR0 = 0x05; //start timer
  	TIMSK |= 0x01; //timer interrupt sources
}

#pragma interrupt_handler timer0_ovf_isr:iv_TIM0_OVF
void timer0_ovf_isr(void)
{
	TCNT0 = 0xB2; //reload counter value
	t0_ovfnum ++;
	if(t0_ovfnum == 50)//500ms
	{
		t0_ovfnum = 0;
		PORTD^=BIT(0);//LED电平取反
		//LED_PORT ^= BIT(LED1);
	}
}


//TIMER1 initialize - prescale:64
// WGM: 0) Normal, TOP=0xFFFF
// desired value: 10mSec
// actual value: 10.000mSec (0.0%)
void timer1_init(void)
{
	TCCR1B = 0x00; //stop
	TCNT1H = 0xFB; //setup
	TCNT1L = 0x1E;
	OCR1AH = 0x04;
	OCR1AL = 0xE2;
	OCR1BH = 0x04;
	OCR1BL = 0xE2;
	ICR1H  = 0x04;
	ICR1L  = 0xE2;
	TCCR1A = 0x00;
	TCCR1B = 0x03; //start Timer
	TIMSK |= 0x04; //timer interrupt sources
}

#pragma interrupt_handler timer1_ovf_isr:iv_TIM1_OVF
void timer1_ovf_isr(void)
{
	//TIMER1 has overflowed
	TCNT1H = 0xFB; //reload counter high value
	TCNT1L = 0x1E; //reload counter low value
	t1_ovfnum ++;
	if(t1_ovfnum == 100)//500ms
	{
		t1_ovfnum = 0;
	    PORTD^=BIT(1);//LED电平取反
		//LED_PORT ^= BIT(LED3);
	}
}

//TIMER2 initialize - prescale:1024
// WGM: Normal
// desired value: 10mSec
// actual value:  9.984mSec (0.2%)
void timer2_init(void)
{
	TCCR2 = 0x00; //stop
	ASSR  = 0x00; //set async mode
	TCNT2 = 0xB2; //setup
	OCR2  = 0x4E;
	TCCR2 = 0x07; //start
	TIMSK |= 0x40; //timer interrupt sources
}

#pragma interrupt_handler timer2_ovf_isr:iv_TIM2_OVF
void timer2_ovf_isr(void)
{
	TCNT2 = 0xB2; //reload counter value
	t2_ovfnum ++;
	if(t2_ovfnum == 200)//500ms
	{
		t2_ovfnum = 0;
		PORTD^=BIT(2);//LED电平取反
		
	}
}





