	.module MAIN.C
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\3A304~1.定\MAIN.C
	.dbfunc e main _main fV
;              n -> <dead>
	.even
_main::
	.dbline -1
	.dbline 29
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 定时闪烁LED灯 	
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J1短路帽接上  
; /******************************************************************************/  
; 
; #define  uchar  unsigned char
; #define  uint   unsigned int
; #include <iom16v.h>
; #include <macros.h>
; 
; unsigned char t0_ovfnum;//t0软件定时计数器
; unsigned char t1_ovfnum;//t1软件定时计数器
; unsigned char t2_ovfnum;//t1软件定时计数器
; 
; void timer0_init(void);//10ms
; void timer1_init(void);//10ms
; void timer2_init(void);//10ms
; 
; 
; void main(void)
; {
	.dbline 31
; 	unsigned char n;
; 	DDRD= 0xFF;
	ldi R24,255
	out 0x11,R24
	.dbline 32
; 	PORTD=0xFF;
	out 0x12,R24
	.dbline 33
; 	timer0_init();//初始化定时器0
	xcall _timer0_init
	.dbline 34
; 	timer1_init();//初始化定时器1
	xcall _timer1_init
	.dbline 35
; 	timer2_init();//初始化定时器2
	xcall _timer2_init
	.dbline 36
; 	SEI();	      //开总中断
	sei
L2:
	.dbline 38
	.dbline 39
L3:
	.dbline 37
	xjmp L2
X0:
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym l n 1 c
	.dbend
	.dbfunc e timer0_init _timer0_init fV
	.even
_timer0_init::
	.dbline -1
	.dbline 47
; 	while(1)
; 	{	
; 	}
; }
; 
; //TIMER0 initialize - prescale:1024
; // WGM: Normal
; // desired value: 10mSec
; // actual value:  9.984mSec (0.2%)
; void timer0_init(void)//10ms
; {
	.dbline 48
; 	TCCR0 = 0x00; //stop
	clr R2
	out 0x33,R2
	.dbline 49
; 	TCNT0 = 0xB2; //set count
	ldi R24,178
	out 0x32,R24
	.dbline 50
; 	OCR0  = 0x4E;  //set compare
	ldi R24,78
	out 0x3c,R24
	.dbline 51
; 	TCCR0 = 0x05; //start timer
	ldi R24,5
	out 0x33,R24
	.dbline 52
;   	TIMSK |= 0x01; //timer interrupt sources
	in R24,0x39
	ori R24,1
	out 0x39,R24
	.dbline -2
L5:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e timer0_ovf_isr _timer0_ovf_isr fV
	.even
_timer0_ovf_isr::
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e timer1_init _timer1_init fV
	.even
_timer1_init::
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e timer1_ovf_isr _timer1_ovf_isr fV
	.even
_timer1_ovf_isr::
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e timer2_init _timer2_init fV
	.even
_timer2_init::
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e timer2_ovf_isr _timer2_ovf_isr fV
	.even
_timer2_ovf_isr::
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\3A304~1.定\MAIN.C
_t2_ovfnum::
	.blkb 1
	.dbsym e t2_ovfnum _t2_ovfnum c
_t1_ovfnum::
	.blkb 1
	.dbsym e t1_ovfnum _t1_ovfnum c
_t0_ovfnum::
	.blkb 1
	.dbsym e t0_ovfnum _t0_ovfnum c
