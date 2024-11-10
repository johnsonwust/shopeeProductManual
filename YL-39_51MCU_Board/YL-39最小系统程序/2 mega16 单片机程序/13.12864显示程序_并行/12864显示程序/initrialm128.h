//ICC-AVR application builder : 2007-6-27 10:26:06
// Target : M8
// Crystal: 8.0000Mhz

/**************初始化m8函数***************/
#ifndef Initrial_M128_H
#define Initrial_M128_H

void Init_Devices(void);
void Port_Init(void);  

 

//call this routine to initialize all peripherals
void Init_Devices(void)
{
	//stop errant interrupts until set up
	CLI(); //disable all interrupts
	Port_Init(); 
	SEI(); //re-enable interrupts
	//all peripherals are now initialized
}

void Port_Init(void)
{
	PORTA = 0xff;
	DDRA  = 0xff;
	PORTB = 0xff;
	DDRB  = 0xff;
	PORTC = 0xff; //m103 output only
	DDRC  = 0xff;
	PORTD = 0xff;
	DDRD  = 0xff;
	PORTE = 0xFF;
	DDRE  = 0xff;
	PORTF = 0xff;
	DDRF  = 0xff;
	PORTG = 0xff;
	DDRG  = 0xff;

	//BELL_PORT &=~ BIT(BELL);//关掉蜂鸣器 
	
}
 

#endif




