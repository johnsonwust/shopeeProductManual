//ICC-AVR application builder : 2007-6-27 10:26:06
// Target : M8
// Crystal: 8.0000Mhz

/**************³õÊ¼»¯m8º¯Êý***************/
#ifndef Initrial_M16_H
#define Initrial_M16_H

void Init_Devices(void);
void Port_Init(void);  

 

//call this routine to initialize all peripherals
void Init_Devices(void)
{
	//stop errant interrupts until set up
	CLI(); //disable all interrupts
	MCUCR = 0x00;
 	GICR  = 0x00;
 	TIMSK = 0x00; //timer interrupt sources
	Port_Init(); 
	SEI(); //re-enable interrupts
	//all peripherals are now initialized
}

void Port_Init(void)
{
	PORTA = 0xFF;
	DDRA  = 0xFF;
	PORTB = 0xFF;
	DDRB  = 0xFF;
	PORTC = 0xFF; 
	DDRD  = 0xFF;
	PORTD = 0xFF;	
}
 

#endif




