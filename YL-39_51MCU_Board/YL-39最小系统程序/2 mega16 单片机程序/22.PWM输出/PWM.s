	.module PWM.C
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\22.PWM输出\PWM.C
	.dbfunc e port_init _port_init fV
	.even
_port_init::
	.dbline -1
	.dbline 20
; 
; /******************************************************************************/
; /*在端口PD4,PD5（led5,led6）输出PWM脉冲，由于占空比不同，显示亮度不同         */
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 在端口PD4,PD5（led5,led6）输出PWM脉冲，由于占空比不同，显示亮度不同 
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J1短路帽接上    
; /******************************************************************************/
; 
; #include <iom16v.h>
; #include <macros.h>
; 
; void port_init(void)
; {
	.dbline 21
;   PORTD = 0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 22
;   DDRD  = 0xff;
	out 0x11,R24
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e timer1_init _timer1_init fV
	.even
_timer1_init::
	.dbline -1
	.dbline 30
; }
; 
; //TIMER1 initialize - prescale:64
; // WGM: 10) PWM phz correct, TOP= ICRn
; // desired value: 1000Hz
; // actual value: 1000.000Hz (0.0%)
; void timer1_init(void)
; {
	.dbline 31
;  TCCR1B = 0x00; //stop
	clr R2
	out 0x2e,R2
	.dbline 32
;  TCNT1H = 0xFF; //setup
	ldi R24,255
	out 0x2d,R24
	.dbline 33
;  TCNT1L = 0x83;
	ldi R24,131
	out 0x2c,R24
	.dbline 34
;  OCR1AH = 0x00;
	out 0x2b,R2
	.dbline 35
;  OCR1AL = 0x65; //占空比
	ldi R24,101
	out 0x2a,R24
	.dbline 36
;  OCR1BH = 0x00;
	out 0x29,R2
	.dbline 37
;  OCR1BL = 0x10; //占空比
	ldi R24,16
	out 0x28,R24
	.dbline 38
;  ICR1H  = 0x00;
	out 0x27,R2
	.dbline 39
;  ICR1L  = 0x7D;
	ldi R24,125
	out 0x26,R24
	.dbline 40
;  TCCR1A = 0xA2;
	ldi R24,162
	out 0x2f,R24
	.dbline 41
;  TCCR1B = 0x13; //start Timer
	ldi R24,19
	out 0x2e,R24
	.dbline -2
L2:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e init_devices _init_devices fV
	.even
_init_devices::
	.dbline -1
	.dbline 46
; }
; 
; //call this routine to initialize all peripherals
; void init_devices(void)
; {
	.dbline 48
;  //stop errant interrupts until set up
;  CLI(); //disable all interrupts
	cli
	.dbline 49
;  port_init();
	xcall _port_init
	.dbline 50
;  timer1_init();
	xcall _timer1_init
	.dbline 52
; 
;  MCUCR = 0x00;
	clr R2
	out 0x35,R2
	.dbline 53
;  GICR  = 0x00;
	out 0x3b,R2
	.dbline 54
;  TIMSK = 0x00; //timer interrupt sources
	out 0x39,R2
	.dbline 55
;  SEI(); //re-enable interrupts
	sei
	.dbline -2
L3:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fI
	.even
_main::
	.dbline -1
	.dbline 60
;  //all peripherals are now initialized
; }
; 
; main() 
; {
	.dbline 61
; init_devices();
	xcall _init_devices
	.dbline -2
L4:
	.dbline 0 ; func end
	ret
	.dbend
