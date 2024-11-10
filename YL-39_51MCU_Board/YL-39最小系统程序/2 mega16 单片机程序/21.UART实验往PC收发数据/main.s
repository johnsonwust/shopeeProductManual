	.module main.c
	.area text(rom, con, rel)
	.dbfile G:\发货盘\宛峰电子AVR_MEGA8_48_88_168\实验例程\实验11~1\ICC代码\1查询方式\main.c
	.dbfunc e port_init _port_init fV
	.even
_port_init::
	.dbline -1
	.dbline 11
; //ICC-AVR application builder : 2009-2-27 下午 12:37:39
; // Target : M48
; // Crystal: 8.0000Mhz
; 
; #include <iom48v.h>
; #include <macros.h>
; #define  LED_ON()   PORTD  |= BIT(PD3)
; #define  LED_OFF()   PORTD ^= BIT(PD3)
; 
; void port_init(void)
; {
	.dbline 12
;  PORTB = 0x00;
	clr R2
	out 0x5,R2
	.dbline 13
;  DDRB  = 0x00;
	out 0x4,R2
	.dbline 14
;  PORTC = 0x68; //m103 output only
	ldi R24,104
	out 0x8,R24
	.dbline 15
;  DDRC  = 0x68;
	out 0x7,R24
	.dbline 16
;  PORTD = 0x68;
	out 0xb,R24
	.dbline 17
;  DDRD  = 0xE8;
	ldi R24,232
	out 0xa,R24
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e delay_ms _delay_ms fV
;              i -> R20,R21
;              j -> R22,R23
;              n -> R16,R17
	.even
_delay_ms::
	rcall push_gset2
	.dbline -1
	.dbline 20
; }
; void delay_ms(unsigned int n)
; {
	.dbline 21
;  unsigned int i=0,j=1;
	clr R20
	clr R21
	.dbline 21
	ldi R22,1
	ldi R23,0
	rjmp L4
L3:
	.dbline 23
;  while(i<n)
;  {
	.dbline 24
	clr R22
	clr R23
	rjmp L9
L6:
	.dbline 24
L7:
	.dbline 24
	subi R22,255  ; offset = 1
	sbci R23,255
L9:
	.dbline 24
	cpi R22,232
	ldi R30,3
	cpc R23,R30
	brlo L6
	.dbline 25
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 26
L4:
	.dbline 22
	cp R20,R16
	cpc R21,R17
	brlo L3
	.dbline -2
L2:
	rcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r j 22 i
	.dbsym r n 16 i
	.dbend
	.dbfunc e uart0_init _uart0_init fV
;           temp -> R10,R11
;            bps -> R10,R11
	.even
_uart0_init::
	rcall push_gset3
	movw R10,R16
	.dbline -1
	.dbline 42
;   for (j=0;j<(unsigned int)(1000);j++) ;
;   i++;
;  }
; }
; 
; ///-----------------------UART-------------------------------///
; #define    Bps_Uart0       9600 
; #define    Fosc            8000000
; /////////////////////////////////////////////
; //UART0 初始化
; // Target : M48
; // Crystal: 8.0Mhz
; //UART0 initialize
; // desired baud rate: 9600
; // actual: baud rate:9615 (0.2%)
; // char size: 8 bit
; // parity: Disabled
; void uart0_init(int bps)
; {
	.dbline 44
;  int  temp;
;  temp=Fosc/bps/8-1;
	movw R2,R10
	clr R4
	sbrc R3,7
	com R4
	clr R5
	sbrc R4,7
	com R5
	ldi R20,0
	ldi R21,18
	ldi R22,122
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	rcall div32s
	ldi R20,8
	ldi R21,0
	ldi R22,0
	ldi R23,0
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	rcall div32s
	movw R2,R16
	movw R4,R18
	ldi R20,1
	ldi R21,0
	ldi R22,0
	ldi R23,0
	sub R2,R20
	sbc R3,R21
	sbc R4,R22
	sbc R5,R23
	movw R10,R2
	.dbline 46
; 
;  UCSR0B = 0x00; //disable while setting baud rate
	clr R2
	sts 193,R2
	.dbline 47
;  UCSR0A = 0x00;
	sts 192,R2
	.dbline 49
;  
;  UBRR0L =temp;    
	sts 196,R10
	.dbline 50
;  UBRR0H =(temp>>8);
	movw R2,R10
	mov R2,R3
	clr R3
	sbrc R2,7
	com R3
	sts 197,R2
	.dbline 52
; 
;  UCSR0C = 0x06;
	ldi R24,6
	sts 194,R24
	.dbline 53
;  UCSR0A = 0x02; //enable    2倍波特率
	ldi R24,2
	sts 192,R24
	.dbline 54
;  UCSR0B = 0x98;  
	ldi R24,152
	sts 193,R24
	.dbline -2
L10:
	rcall pop_gset3
	.dbline 0 ; func end
	ret
	.dbsym r temp 10 I
	.dbsym r bps 10 I
	.dbend
	.area data(ram, con, rel)
	.dbfile G:\发货盘\宛峰电子AVR_MEGA8_48_88_168\实验例程\实验11~1\ICC代码\1查询方式\main.c
_gU8getchar::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile G:\发货盘\宛峰电子AVR_MEGA8_48_88_168\实验例程\实验11~1\ICC代码\1查询方式\main.c
	.dbsym e gU8getchar _gU8getchar c
_gU8RecBuff::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile G:\发货盘\宛峰电子AVR_MEGA8_48_88_168\实验例程\实验11~1\ICC代码\1查询方式\main.c
	.blkb 127
	.area idata
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0
	.area data(ram, con, rel)
	.dbfile G:\发货盘\宛峰电子AVR_MEGA8_48_88_168\实验例程\实验11~1\ICC代码\1查询方式\main.c
	.dbsym e gU8RecBuff _gU8RecBuff A[128:128]c
	.area vector(rom, abs)
	.org 36
	rjmp _uart0_rx_isr
	.area data(ram, con, rel)
	.dbfile G:\发货盘\宛峰电子AVR_MEGA8_48_88_168\实验例程\实验11~1\ICC代码\1查询方式\main.c
	.area text(rom, con, rel)
	.dbfile G:\发货盘\宛峰电子AVR_MEGA8_48_88_168\实验例程\实验11~1\ICC代码\1查询方式\main.c
	.dbfunc e uart0_rx_isr _uart0_rx_isr fV
;              t -> R16
	.even
_uart0_rx_isr::
	st -y,R2
	st -y,R16
	st -y,R24
	st -y,R25
	st -y,R30
	st -y,R31
	in R2,0x3f
	st -y,R2
	.dbline -1
	.dbline 61
; }
; unsigned char gU8getchar=0x00;//接收字符的个数
; #define BUFLEN  10
; unsigned char gU8RecBuff[128]={0};
; #pragma interrupt_handler uart0_rx_isr:19
; void uart0_rx_isr(void)
; {
	.dbline 64
;  //uart has received a character in UDR
;  unsigned char t;
;  t = UDR0;
	lds R16,198
	.dbline 65
;  if(gU8getchar<BUFLEN){
	lds R24,_gU8getchar
	cpi R24,10
	brsh L12
	.dbline 65
	.dbline 66
;  	 gU8RecBuff[gU8getchar] = t;
	ldi R24,<_gU8RecBuff
	ldi R25,>_gU8RecBuff
	lds R30,_gU8getchar
	clr R31
	add R30,R24
	adc R31,R25
	std z+0,R16
	.dbline 67
;  }
	rjmp L13
L12:
	.dbline 68
;  else{
	.dbline 69
;      gU8getchar=0;
	clr R2
	sts _gU8getchar,R2
	.dbline 70
;  	 gU8RecBuff[gU8getchar] = t;
	ldi R24,<_gU8RecBuff
	ldi R25,>_gU8RecBuff
	mov R30,R2
	clr R31
	add R30,R24
	adc R31,R25
	std z+0,R16
	.dbline 71
;  }
L13:
	.dbline 72
;  gU8getchar++;
	lds R24,_gU8getchar
	subi R24,255    ; addi 1
	sts _gU8getchar,R24
	.dbline -2
L11:
	ld R2,y+
	out 0x3f,R2
	ld R31,y+
	ld R30,y+
	ld R25,y+
	ld R24,y+
	ld R16,y+
	ld R2,y+
	.dbline 0 ; func end
	reti
	.dbsym r t 16 c
	.dbend
	.dbfunc e Uart0_putchar _Uart0_putchar fV
;         sdbyte -> R16
	.even
_Uart0_putchar::
	.dbline -1
	.dbline 79
; }
; 
; 
; /*********************************************************/
; //向串口usart0发送一个字节函数   
;  void Uart0_putchar( unsigned char sdbyte)  
;  {
	.dbline 80
;      UDR0=sdbyte;
	sts 198,R16
L15:
	.dbline 81
L16:
	.dbline 81
;      while(!(UCSR0A&0x40));
	lds R2,192
	sbrs R2,6
	rjmp L15
	.dbline 82
;      UCSR0A|=0x40;
	lds R24,192
	ori R24,64
	sts 192,R24
	.dbline -2
L14:
	.dbline 0 ; func end
	ret
	.dbsym r sdbyte 16 c
	.dbend
	.dbfunc e Uart0_sendbuf _Uart0_sendbuf fV
;            len -> R20
;            ptr -> R22,R23
	.even
_Uart0_sendbuf::
	rcall push_gset2
	mov R20,R18
	movw R22,R16
	.dbline -1
	.dbline 87
;  }
;  /*********************************************************/
; //向串口usart0发送一个数组函数   
;  void Uart0_sendbuf(unsigned char *ptr,unsigned char len)  
;  {
	rjmp L20
L19:
	.dbline 89
	.dbline 90
	movw R30,R22
	ld R16,Z+
	movw R22,R30
	rcall _Uart0_putchar
	.dbline 91
	dec R20
	.dbline 92
L20:
	.dbline 88
;    while(len>0)
	clr R2
	cp R2,R20
	brlo L19
	.dbline -2
L18:
	rcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r len 20 c
	.dbsym r ptr 22 pc
	.dbend
	.dbfunc e init_devices _init_devices fV
	.even
_init_devices::
	.dbline -1
	.dbline 98
;    {
;      Uart0_putchar(*ptr++);
;      len--;   
;    }
;  }
; ///-----------------------UART-------------------------------///
; 
; //call this routine to initialize all peripherals
; void init_devices(void)
; {
	.dbline 100
;  //stop errant interrupts until set up
;  CLI(); //disable all interrupts
	cli
	.dbline 101
;  port_init();
	rcall _port_init
	.dbline 104
; // uart0_init();
; 
;  MCUCR = 0x00;
	clr R2
	out 0x35,R2
	.dbline 119
; /*
;  EICRA = 0x00; //extended ext ints
;  EIMSK = 0x00;
;  
;  TIMSK0 = 0x00; //timer 0 interrupt sources
;  TIMSK1 = 0x00; //timer 1 interrupt sources
;  TIMSK2 = 0x00; //timer 2 interrupt sources
;  
;  PCMSK0 = 0x00; //pin change mask 0 
;  PCMSK1 = 0x00; //pin change mask 1 
;  PCMSK2 = 0x00; //pin change mask 2
;  PCICR = 0x00; //pin change enable 
;  PRR = 0x00; //power controller
;  */
;  SEI(); //re-enable interrupts
	sei
	.dbline -2
L22:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
;              i -> <dead>
	.even
_main::
	.dbline -1
	.dbline 125
;  //all peripherals are now initialized
;  
; }
; 
; void main()
; {
	.dbline 127
;   int i;
;   init_devices();
	rcall _init_devices
	.dbline 129
; 
;   uart0_init(Bps_Uart0);
	ldi R16,9600
	ldi R17,37
	rcall _uart0_init
	.dbline 131
;   
;   delay_ms(100);
	ldi R16,100
	ldi R17,0
	rcall _delay_ms
	rjmp L25
L24:
	.dbline 134
;   
;   while(1)                     //循环
;   {
	.dbline 136
;   
;    if(gU8getchar==BUFLEN){
	lds R24,_gU8getchar
	cpi R24,10
	brne L27
	.dbline 136
	.dbline 137
;    		Uart0_sendbuf(gU8RecBuff,BUFLEN);
	ldi R18,10
	ldi R16,<_gU8RecBuff
	ldi R17,>_gU8RecBuff
	rcall _Uart0_sendbuf
	.dbline 138
;    }
L27:
	.dbline 139
L25:
	.dbline 133
	rjmp L24
X0:
	.dbline -2
L23:
	.dbline 0 ; func end
	ret
	.dbsym l i 1 I
	.dbend
