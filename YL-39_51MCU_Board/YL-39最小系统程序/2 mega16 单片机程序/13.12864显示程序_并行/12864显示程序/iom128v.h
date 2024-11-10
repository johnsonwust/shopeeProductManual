#ifndef __iom128v_h
#define __iom128v_h

/* ATmega128 header file for
 * ImageCraft ICCAVR compiler
 */

/* i/o register addresses
 * >= 0x60 are memory mapped only
 */

/* not strictly sorted by address no more
 */

/* interrupt vector number definitions added
 */

/* last changed 2004/12/19
 */

/* Port G */
#define PING	(*(volatile unsigned char *)0x63) /* m/m */
#define DDRG	(*(volatile unsigned char *)0x64) /* m/m */
#define PORTG	(*(volatile unsigned char *)0x65) /* m/m */

/* Port F */
#define PINF	(*(volatile unsigned char *)0x20)
#define DDRF	(*(volatile unsigned char *)0x61) /* m/m */
#define PORTF	(*(volatile unsigned char *)0x62) /* m/m */

/* Port E */
#define PINE	(*(volatile unsigned char *)0x21)
#define DDRE	(*(volatile unsigned char *)0x22)
#define PORTE	(*(volatile unsigned char *)0x23)

/* Port D */
#define PIND	(*(volatile unsigned char *)0x30)
#define DDRD	(*(volatile unsigned char *)0x31)
#define PORTD	(*(volatile unsigned char *)0x32)

/* Port C */
#define PINC	(*(volatile unsigned char *)0x33)
#define DDRC	(*(volatile unsigned char *)0x34)
#define PORTC	(*(volatile unsigned char *)0x35)

/* Port B */
#define PINB	(*(volatile unsigned char *)0x36)
#define DDRB	(*(volatile unsigned char *)0x37)
#define PORTB	(*(volatile unsigned char *)0x38)

/* Port A */
#define PINA	(*(volatile unsigned char *)0x39)
#define DDRA	(*(volatile unsigned char *)0x3A)
#define PORTA	(*(volatile unsigned char *)0x3B)

/* ADC */
#define ADC 	(*(volatile unsigned int *)0x24)
#define ADCL	(*(volatile unsigned char *)0x24)
#define ADCH	(*(volatile unsigned char *)0x25)
#define ADCSRA	(*(volatile unsigned char *)0x26)
#define  ADEN     7
#define  ADSC     6
#define  ADFR     5
#define  ADATE    5
#define  ADIF     4
#define  ADIE     3
#define  ADPS2    2
#define  ADPS1    1
#define  ADPS0    0
#define ADMUX	(*(volatile unsigned char *)0x27)
#define  REFS1    7
#define  REFS0    6
#define  ADLAR    5
#define  MUX4     4
#define  MUX3     3
#define  MUX2     2
#define  MUX1     1
#define  MUX0     0

/* Analog Comparator Control and Status Register */
#define ACSR	(*(volatile unsigned char *)0x28)
#define  ACD      7
#define  ACBG     6
#define  ACO      5
#define  ACI      4
#define  ACIE     3
#define  ACIC     2
#define  ACIS1    1
#define  ACIS0    0

/* USART0 */
#define UBRR0H	(*(volatile unsigned char *)0x90) /* m/m */
#define UBRR0L	(*(volatile unsigned char *)0x29)
#define UCSR0C	(*(volatile unsigned char *)0x95) /* m/m */
#define  UMSEL0   6
#define  UPM01    5
#define  UPM00    4
#define  USBS0    3
#define  UCSZ01   2
#define  UCSZ00   1
#define  UCPOL0   0
#define UCSR0B	(*(volatile unsigned char *)0x2A)
#define  RXCIE0   7
#define  TXCIE0   6
#define  UDRIE0   5
#define  RXEN0    4
#define  TXEN0    3
#define  UCSZ02   2
#define  RXB80    1
#define  TXB80    0
#define UCSR0A	(*(volatile unsigned char *)0x2B)
#define  RXC0     7
#define  TXC0     6
#define  UDRE0    5
#define  FE0      4
#define  DOR0     3
#define  UPE0     2
#define  U2X0     1
#define  MPCM0    0
#define UDR0	(*(volatile unsigned char *)0x2C)

/* USART1 */
#define UBRR1H	(*(volatile unsigned char *)0x98) /* m/m */
#define UBRR1L	(*(volatile unsigned char *)0x99) /* m/m */
#define UCSR1C	(*(volatile unsigned char *)0x9D) /* m/m */
#define  UMSEL1   6
#define  UPM11    5
#define  UPM10    4
#define  USBS1    3
#define  UCSZ11   2
#define  UCSZ10   1
#define  UCPOL1   0
#define UCSR1B	(*(volatile unsigned char *)0x9A) /* m/m */
#define  RXCIE1   7
#define  TXCIE1   6
#define  UDRIE1   5
#define  RXEN1    4
#define  TXEN1    3
#define  UCSZ12   2
#define  RXB81    1
#define  TXB81    0
#define UCSR1A	(*(volatile unsigned char *)0x9B) /* m/m */
#define  RXC1     7
#define  TXC1     6
#define  UDRE1    5
#define  FE1      4
#define  DOR1     3
#define  UPE1     2
#define  U2X1     1
#define  MPCM1    0
#define UDR1	(*(volatile unsigned char *)0x9C) /* m/m */

/* 2-wire SI */
#define TWBR	(*(volatile unsigned char *)0x70) /* m/m */
#define TWSR	(*(volatile unsigned char *)0x71) /* m/m */
#define  TWPS1    1
#define  TWPS0    0
#define TWAR	(*(volatile unsigned char *)0x72) /* m/m */
#define  TWGCE    0
#define TWDR	(*(volatile unsigned char *)0x73) /* m/m */
#define TWCR	(*(volatile unsigned char *)0x74) /* m/m */
#define  TWINT    7
#define  TWEA     6
#define  TWSTA    5
#define  TWSTO    4
#define  TWWC     3
#define  TWEN     2
#define  TWIE     0

/* SPI */
#define SPCR	(*(volatile unsigned char *)0x2D)
#define  SPIE     7
#define  SPE      6
#define  DORD     5
#define  MSTR     4
#define  CPOL     3
#define  CPHA     2
#define  SPR1     1
#define  SPR0     0
#define SPSR	(*(volatile unsigned char *)0x2E)
#define  SPIF     7
#define  WCOL     6
#define  SPI2X    0
#define SPDR	(*(volatile unsigned char *)0x2F)

/* EEPROM */
#define EECR	(*(volatile unsigned char *)0x3C)
#define  EERIE    3
#define  EEMWE    2
#define  EEWE     1
#define  EERE     0
#define EEDR	(*(volatile unsigned char *)0x3D)
#define EEAR	(*(volatile unsigned int *)0x3E)
#define EEARL	(*(volatile unsigned char *)0x3E)
#define EEARH	(*(volatile unsigned char *)0x3F)

/* Special Function IO Register */
#define SFIOR	(*(volatile unsigned char *)0x40)
#define  TSM      7
#define  ADHSM    4
#define  ACME     3
#define  PUD      2
#define  PSR0     1
#define  PSR321   0

/* Watchdog Timer Control Register */
#define WDTCR	(*(volatile unsigned char *)0x41)
#define  WDCE     4
#define  WDE      3
#define  WDP2     2
#define  WDP1     1
#define  WDP0     0

/* OCDR */
#define OCDR	(*(volatile unsigned char *)0x42)
#define  IDRD     7

/* Timer/Counter3 */
#define ICR3	(*(volatile unsigned int *)0x80) /* m/m */
#define ICR3L	(*(volatile unsigned char *)0x80) /* m/m */
#define ICR3H	(*(volatile unsigned char *)0x81) /* m/m */
#define OCR3C	(*(volatile unsigned int *)0x82) /* m/m */
#define OCR3CL	(*(volatile unsigned char *)0x82) /* m/m */
#define OCR3CH	(*(volatile unsigned char *)0x83) /* m/m */
#define OCR3B	(*(volatile unsigned int *)0x84) /* m/m */
#define OCR3BL	(*(volatile unsigned char *)0x84) /* m/m */
#define OCR3BH	(*(volatile unsigned char *)0x85) /* m/m */
#define OCR3A	(*(volatile unsigned int *)0x86) /* m/m */
#define OCR3AL	(*(volatile unsigned char *)0x86) /* m/m */
#define OCR3AH	(*(volatile unsigned char *)0x87) /* m/m */
#define TCNT3	(*(volatile unsigned int *)0x88) /* m/m */
#define TCNT3L	(*(volatile unsigned char *)0x88) /* m/m */
#define TCNT3H	(*(volatile unsigned char *)0x89) /* m/m */
#define TCCR3C	(*(volatile unsigned char *)0x8C) /* m/m */
#define  FOC3A    7
#define  FOC3B    6
#define  FOC3C    5
#define TCCR3B	(*(volatile unsigned char *)0x8A) /* m/m */
#define  ICNC3    7
#define  ICES3    6
#define  WGM33    4
#define  WGM32    3
#define  CS32     2
#define  CS31     1
#define  CS30     0
#define TCCR3A	(*(volatile unsigned char *)0x8B) /* m/m */
#define  COM3A1   7
#define  COM3A0   6
#define  COM3B1   5
#define  COM3B0   4
#define  COM3C1   3
#define  COM3C0   2
#define  WGM31    1
#define  WGM30    0

/* Timer/Counter2 */
#define OCR2	(*(volatile unsigned char *)0x43)
#define TCNT2	(*(volatile unsigned char *)0x44)
#define TCCR2	(*(volatile unsigned char *)0x45)
#define  FOC2     7
#define  WGM20    6
#define  COM21    5
#define  COM20    4
#define  WGM21    3
#define  CS22     2
#define  CS21     1
#define  CS20     0

/* Timer/Counter1 */
#define ICR1	(*(volatile unsigned int *)0x46)
#define ICR1L	(*(volatile unsigned char *)0x46)
#define ICR1H	(*(volatile unsigned char *)0x47)
#define OCR1C	(*(volatile unsigned int *)0x78) /* m/m */
#define OCR1CL	(*(volatile unsigned char *)0x78) /* m/m */
#define OCR1CH	(*(volatile unsigned char *)0x79) /* m/m */
#define OCR1B	(*(volatile unsigned int *)0x48)
#define OCR1BL	(*(volatile unsigned char *)0x48)
#define OCR1BH	(*(volatile unsigned char *)0x49)
#define OCR1A	(*(volatile unsigned int *)0x4A)
#define OCR1AL	(*(volatile unsigned char *)0x4A)
#define OCR1AH	(*(volatile unsigned char *)0x4B)
#define TCNT1	(*(volatile unsigned int *)0x4C)
#define TCNT1L	(*(volatile unsigned char *)0x4C)
#define TCNT1H	(*(volatile unsigned char *)0x4D)
#define TCCR1C	(*(volatile unsigned char *)0x7A) /* m/m */
#define  FOC1A    7
#define  FOC1B    6
#define  FOC1C    5
#define TCCR1B	(*(volatile unsigned char *)0x4E)
#define  ICNC1    7
#define  ICES1    6
#define  WGM13    4
#define  WGM12    3
#define  CS12     2
#define  CS11     1
#define  CS10     0
#define TCCR1A	(*(volatile unsigned char *)0x4F)
#define  COM1A1   7
#define  COM1A0   6
#define  COM1B1   5
#define  COM1B0   4
#define  COM1C1   3
#define  COM1C0   2
#define  WGM11    1
#define  WGM10    0

/* Timer/Counter 0 */
#define ASSR	(*(volatile unsigned char *)0x50)
#define  AS0      3
#define  TCN0UB   2
#define  OCR0UB   1
#define  TCR0UB   0
#define OCR0	(*(volatile unsigned char *)0x51)
#define TCNT0	(*(volatile unsigned char *)0x52)
#define TCCR0	(*(volatile unsigned char *)0x53)
#define  FOC0     7
#define  WGM00    6
#define  COM01    5
#define  COM00    4
#define  WGM01    3
#define  CS02     2
#define  CS01     1
#define  CS00     0

/* Oscillator Calibration Register */
#define OSCCAL	(*(volatile unsigned char *)0x6F) /* m/m */

/* MCU */
#define MCUSR	(*(volatile unsigned char *)0x54)
#define MCUCSR	(*(volatile unsigned char *)0x54)
#define  JTD      7
#define  JTRF     4
#define  WDRF     3
#define  BORF     2
#define  EXTRF    1
#define  PORF     0
#define MCUCR	(*(volatile unsigned char *)0x55)
#define  SRE      7
#define  SRW10    6
#define  SE       5
#define  SM1      4
#define  SM0      3
#define  SM2      2
#define  IVSEL    1
#define  IVCE     0

/* SPM Control and Status Register */
#define SPMCSR	(*(volatile unsigned char *)0x68) /* m/m */
#define  SPMIE    7
#define  RWWSB    6
#define  RWWSRE   4
#define  BLBSET   3
#define  PGWRT    2
#define  PGERS    1
#define  SPMEN    0

/* Timer/Counter Interrupts */
#define TIFR	(*(volatile unsigned char *)0x56)
#define  OCF2     7
#define  TOV2     6
#define  ICF1     5
#define  OCF1A    4
#define  OCF1B    3
#define  TOV1     2
#define  OCF0     1
#define  TOV0     0
#define TIMSK	(*(volatile unsigned char *)0x57)
#define  OCIE2    7
#define  TOIE2    6
#define  TICIE1   5
#define  OCIE1A   4
#define  OCIE1B   3
#define  TOIE1    2
#define  OCIE0    1
#define  TOIE0    0
#define ETIFR	(*(volatile unsigned char *)0x7C) /* m/m */
#define  ICF3     5
#define  OCF3A    4
#define  OCF3B    3
#define  TOV3     2
#define  OCF3C    1
#define  OCF1C    0
#define ETIMSK	(*(volatile unsigned char *)0x7D) /* m/m */
#define  TICIE3   5
#define  OCIE3A   4
#define  OCIE3B   3
#define  TOIE3    2
#define  OCIE3C   1
#define  OCIE1C   0

/* Èxternal Interrupts */
#define EIFR	(*(volatile unsigned char *)0x58)
#define  INTF7    7
#define  INTF6    6
#define  INTF5    5
#define  INTF4    4
#define  INTF3    3
#define  INTF2    2
#define  INTF1    1
#define  INTF0    0
#define EIMSK	(*(volatile unsigned char *)0x59)
#define  INT7     7
#define  INT6     6
#define  INT5     5
#define  INT4     4
#define  INT3     3
#define  INT2     2
#define  INT1     1
#define  INT0     0
#define EICRB	(*(volatile unsigned char *)0x5A)
#define  ISC71    7
#define  ISC70    6
#define  ISC61    5
#define  ISC60    4
#define  ISC51    3
#define  ISC50    2
#define  ISC41    1
#define  ISC40    0
#define EICRA	(*(volatile unsigned char *)0x6A) /* m/m */
#define  ISC31    7
#define  ISC30    6
#define  ISC21    5
#define  ISC20    4
#define  ISC11    3
#define  ISC10    2
#define  ISC01    1
#define  ISC00    0

/* RAM page Z-pointer */
#define RAMPZ	(*(volatile unsigned char *)0x5B)

/* XDIV Divide control register */
#define XDIV	(*(volatile unsigned char *)0x5C)
#define  XDIVEN   7

/* Stack Pointer */
#define SP  	(*(volatile unsigned int *)0x5D)
#define SPL 	(*(volatile unsigned char *)0x5D)
#define SPH 	(*(volatile unsigned char *)0x5E)

/* Status REGister */
#define SREG	(*(volatile unsigned char *)0x5F)

/* eXternal Memory Control Register */
#define XMCRB	(*(volatile unsigned char *)0x6C) /* m/m */
#define  XMBK     7
#define  XMM2     2
#define  XMM1     1
#define  XMM0     0
#define XMCRA	(*(volatile unsigned char *)0x6D) /* m/m */
#define  SRL2     6
#define  SRL1     5
#define  SRL0     4
#define  SRW01    3
#define  SRW00    2
#define  SRW11    1


/* Port A bits */
#define  PORTA7   7
#define  PORTA6   6
#define  PORTA5   5
#define  PORTA4   4
#define  PORTA3   3
#define  PORTA2   2
#define  PORTA1   1
#define  PORTA0   0
#define  PA7      7
#define  PA6      6
#define  PA5      5
#define  PA4      4
#define  PA3      3
#define  PA2      2
#define  PA1      1
#define  PA0      0

#define  DDA7     7
#define  DDA6     6
#define  DDA5     5
#define  DDA4     4
#define  DDA3     3
#define  DDA2     2
#define  DDA1     1
#define  DDA0     0

#define  PINA7    7
#define  PINA6    6
#define  PINA5    5
#define  PINA4    4
#define  PINA3    3
#define  PINA2    2
#define  PINA1    1
#define  PINA0    0

/* Port B bits */
#define  PORTB7   7
#define  PORTB6   6
#define  PORTB5   5
#define  PORTB4   4
#define  PORTB3   3
#define  PORTB2   2
#define  PORTB1   1
#define  PORTB0   0
#define  PB7      7
#define  PB6      6
#define  PB5      5
#define  PB4      4
#define  PB3      3
#define  PB2      2
#define  PB1      1
#define  PB0      0

#define  DDB7     7
#define  DDB6     6
#define  DDB5     5
#define  DDB4     4
#define  DDB3     3
#define  DDB2     2
#define  DDB1     1
#define  DDB0     0

#define  PINB7    7
#define  PINB6    6
#define  PINB5    5
#define  PINB4    4
#define  PINB3    3
#define  PINB2    2
#define  PINB1    1
#define  PINB0    0

/* Port C bits */
#define  PORTC7   7
#define  PORTC6   6
#define  PORTC5   5
#define  PORTC4   4
#define  PORTC3   3
#define  PORTC2   2
#define  PORTC1   1
#define  PORTC0   0
#define  PC7      7
#define  PC6      6
#define  PC5      5
#define  PC4      4
#define  PC3      3
#define  PC2      2
#define  PC1      1
#define  PC0      0

#define  DDC7     7
#define  DDC6     6
#define  DDC5     5
#define  DDC4     4
#define  DDC3     3
#define  DDC2     2
#define  DDC1     1
#define  DDC0     0

#define  PINC7    7
#define  PINC6    6
#define  PINC5    5
#define  PINC4    4
#define  PINC3    3
#define  PINC2    2
#define  PINC1    1
#define  PINC0    0

/* Port D bits */
#define  PORTD7   7
#define  PORTD6   6
#define  PORTD5   5
#define  PORTD4   4
#define  PORTD3   3
#define  PORTD2   2
#define  PORTD1   1
#define  PORTD0   0
#define  PD7      7
#define  PD6      6
#define  PD5      5
#define  PD4      4
#define  PD3      3
#define  PD2      2
#define  PD1      1
#define  PD0      0

#define  DDD7     7
#define  DDD6     6
#define  DDD5     5
#define  DDD4     4
#define  DDD3     3
#define  DDD2     2
#define  DDD1     1
#define  DDD0     0

#define  PIND7    7
#define  PIND6    6
#define  PIND5    5
#define  PIND4    4
#define  PIND3    3
#define  PIND2    2
#define  PIND1    1
#define  PIND0    0

/* Port E bits */
#define  PORTE7   7
#define  PORTE6   6
#define  PORTE5   5
#define  PORTE4   4
#define  PORTE3   3
#define  PORTE2   2
#define  PORTE1   1
#define  PORTE0   0
#define  PE7      7
#define  PE6      6
#define  PE5      5
#define  PE4      4
#define  PE3      3
#define  PE2      2
#define  PE1      1
#define  PE0      0

#define  DDE7     7
#define  DDE6     6
#define  DDE5     5
#define  DDE4     4
#define  DDE3     3
#define  DDE2     2
#define  DDE1     1
#define  DDE0     0

#define  PINE7    7
#define  PINE6    6
#define  PINE5    5
#define  PINE4    4
#define  PINE3    3
#define  PINE2    2
#define  PINE1    1
#define  PINE0    0

/* Port F bits */
#define  PORTF7   7
#define  PORTF6   6
#define  PORTF5   5
#define  PORTF4   4
#define  PORTF3   3
#define  PORTF2   2
#define  PORTF1   1
#define  PORTF0   0
#define  PF7      7
#define  PF6      6
#define  PF5      5
#define  PF4      4
#define  PF3      3
#define  PF2      2
#define  PF1      1
#define  PF0      0

#define  DDF7     7
#define  DDF6     6
#define  DDF5     5
#define  DDF4     4
#define  DDF3     3
#define  DDF2     2
#define  DDF1     1
#define  DDF0     0

#define  PINF7    7
#define  PINF6    6
#define  PINF5    5
#define  PINF4    4
#define  PINF3    3
#define  PINF2    2
#define  PINF1    1
#define  PINF0    0

/* Port G bits */
#define  PORTG4   4
#define  PORTG3   3
#define  PORTG2   2
#define  PORTG1   1
#define  PORTG0   0
#define  PG4      4
#define  PG3      3
#define  PG2      2
#define  PG1      1
#define  PG0      0

#define  DDG4     4
#define  DDG3     3
#define  DDG2     2
#define  DDG1     1
#define  DDG0     0

#define  PING4    4
#define  PING3    3
#define  PING2    2
#define  PING1    1
#define  PING0    0


/* Lock and Fuse Bits with LPM/SPM instructions */

/* lock bits */
#define  BLB12    5
#define  BLB11    4
#define  BLB02    3
#define  BLB01    2
#define  LB2      1
#define  LB1      0

/* fuses low bits */
#define  BODLEVEL 7
#define  BODEN    6
#define  SUT1     5
#define  SUT0     4
#define  CKSEL3   3
#define  CKSEL2   2
#define  CKSEL1   1
#define  CKSEL0   0

/* fuses high bits */
#define  OCDEN    7
#define  JTAGEN   6
#define  SPIEN    5
#define  CKOPT    4
#define  EESAVE   3
#define  BOOTSZ1  2
#define  BOOTSZ0  1
#define  BOOTRST  0

/* extended fuses */
#define  M103C    1
#define  WDTON    0


/* Interrupt Vector Numbers */

#define iv_RESET        1
#define iv_INT0         2
#define iv_EXT_INT0     2
#define iv_INT1         3
#define iv_EXT_INT1     3
#define iv_INT2         4
#define iv_EXT_INT2     4
#define iv_INT3         5
#define iv_EXT_INT3     5
#define iv_INT4         6
#define iv_EXT_INT4     6
#define iv_INT5         7
#define iv_EXT_INT5     7
#define iv_INT6         8
#define iv_EXT_INT6     8
#define iv_INT7         9
#define iv_EXT_INT7     9
#define iv_TIMER2_COMPA 10
#define iv_TIMER2_COMP  10
#define iv_TIM2_COMP    10
#define iv_TIMER2_OVF   11
#define iv_TIM2_OVF     11
#define iv_TIMER1_CAPT  12
#define iv_TIM1_CAPT    12
#define iv_TIMER1_COMPA 13
#define iv_TIM1_COMPA   13
#define iv_TIMER1_COMPB 14
#define iv_TIM1_COMPB   14
#define iv_TIMER1_OVF   15
#define iv_TIM1_OVF     15
#define iv_TIMER0_COMPA 16
#define iv_TIMER0_COMP  16
#define iv_TIM0_COMP    16
#define iv_TIMER0_OVF   17
#define iv_TIM0_OVF     17
#define iv_SPI_STC      18
#define iv_USART0_RX    19
#define iv_USART0_RXC   19
#define iv_USART0_DRE   20
#define iv_USART0_UDRE  20
#define iv_USART0_TX    21
#define iv_USART0_TXC   21
#define iv_ADC          22
#define iv_EE_RDY       23
#define iv_EE_READY     23
#define iv_ANA_COMP     24
#define iv_ANALOG_COMP  24
#define iv_TIMER1_COMPC 25
#define iv_TIM1_COMPC   25
#define iv_TIMER3_CAPT  26
#define iv_TIM3_CAPT    26
#define iv_TIMER3_COMPA 27
#define iv_TIM3_COMPA   27
#define iv_TIMER3_COMPB 28
#define iv_TIM3_COMPB   28
#define iv_TIMER3_COMPC 29
#define iv_TIM3_COMPC   29
#define iv_TIMER3_OVF   30
#define iv_TIM3_OVF     30
#define iv_USART1_RX    31
#define iv_USART1_RXC   31
#define iv_USART1_DRE   32
#define iv_USART1_UDRE  32
#define iv_USART1_TX    33
#define iv_USART1_TXC   33
#define iv_TWI          34
#define iv_TWSI         34
#define iv_SPM_RDY      35
#define iv_SPM_READY    35

/* */

#endif
