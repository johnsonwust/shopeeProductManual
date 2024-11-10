
/******************************************************************************/
/*在端口PD4,PD5（led5,led6）输出PWM脉冲，由于占空比不同，显示亮度不同         */
/*【编写时间】： 2011.07.07
* 【作    者】： 雁翎电子
* 【版    本】： V1.0
* 【网    站】： http://ylelectronic.taobao.com/ 
* 【Q      Q】： 348439350
* 【编译环境】： ICCAVR  
* 【函数功能】： 在端口PD4,PD5（led5,led6）输出PWM脉冲，由于占空比不同，显示亮度不同 
* 【晶    振】:  8M		
* 【芯    片】:  ATMEGA16A	 
* 【硬件连接】： J1短路帽接上    
/******************************************************************************/

#include <iom16v.h>
#include <macros.h>

void port_init(void)
{
  PORTD = 0xff;
  DDRD  = 0xff;
}

//TIMER1 initialize - prescale:64
// WGM: 10) PWM phz correct, TOP= ICRn
// desired value: 1000Hz
// actual value: 1000.000Hz (0.0%)
void timer1_init(void)
{
 TCCR1B = 0x00; //stop
 TCNT1H = 0xFF; //setup
 TCNT1L = 0x83;
 OCR1AH = 0x00;
 OCR1AL = 0x65; //占空比
 OCR1BH = 0x00;
 OCR1BL = 0x10; //占空比
 ICR1H  = 0x00;
 ICR1L  = 0x7D;
 TCCR1A = 0xA2;
 TCCR1B = 0x13; //start Timer
}

//call this routine to initialize all peripherals
void init_devices(void)
{
 //stop errant interrupts until set up
 CLI(); //disable all interrupts
 port_init();
 timer1_init();

 MCUCR = 0x00;
 GICR  = 0x00;
 TIMSK = 0x00; //timer interrupt sources
 SEI(); //re-enable interrupts
 //all peripherals are now initialized
}

main() 
{
init_devices();
}