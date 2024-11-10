	.module _时钟.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
_disbuf::
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.dbsym e disbuf _disbuf A[4:4]c
_discode::
	.blkb 2
	.area idata
	.byte 192,249
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.blkb 2
	.area idata
	.byte 164,176
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.blkb 2
	.area idata
	.byte 153,146
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.blkb 2
	.area idata
	.byte 130,248
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.blkb 2
	.area idata
	.byte 128,144
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.dbsym e discode _discode A[10:10]kc
_cnt::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.dbsym e cnt _cnt c
_flag::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.dbsym e flag _flag c
_timer::
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.dbsym e timer _timer A[3:3]c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.dbfunc e delay _delay fV
;              i -> R16
	.even
_delay::
	.dbline -1
	.dbline 24
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 数码管时钟显示
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽接上                                                 */
; /******************************************************************************/  
; 	 
; 	 
; 	  #define uchar unsigned char
; 	  #define uint  unsigned int
;       #include <iom16v.h>
; 	  #include <macros.h>
;       uchar disbuf[4]={0,0,0,0};
;       const  uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };  
;       uchar  cnt=0;
; 	  uchar flag=0;
;       uchar  timer[3]={00,00,00};                                                  							
;       void delay(void)
;            {uchar i;
	.dbline 25
;              for(i=0;i<255;i++);
	clr R16
	xjmp L5
L2:
	.dbline 25
L3:
	.dbline 25
	inc R16
L5:
	.dbline 25
	cpi R16,255
	brlo L2
X0:
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 c
	.dbend
	.dbfunc e timer1_init _timer1_init fV
	.even
_timer1_init::
	.dbline -1
	.dbline 28
;            }
; 	  void timer1_init(void)
;          {
	.dbline 29
; 	      TCCR1B = 0x00;	   //stop timer
	clr R2
	out 0x2e,R2
	.dbline 30
; 	      TCNT1H = 0xc7;	   //设置 TC1 的 计数寄存器 高8位值
	ldi R24,199
	out 0x2d,R24
	.dbline 31
; 	      TCNT1L = 0xc0;	   //设置 TC1 的 计数寄存器 低8位值
	ldi R24,192
	out 0x2c,R24
	.dbline 38
; 	      //OCR1AH = 0x1C;	   //设置 TC1 的 输出比较寄存器A 高8位值
; 	      //OCR1AL = 0x20;	   //设置 TC1 的 输出比较寄存器A 低8位值
; 	      //OCR1BH = 0x1C;	   //设置 TC1 的 输出比较寄存器B 高8位值
; 	      //OCR1BL = 0x20;	   //设置 TC1 的 输出比较寄存器B 低8位值
; 	      //ICR1H  = 0x1C;	   //设置 TC1 的 输入捕获寄存器 高8位值
; 	      //ICR1L  = 0x20;	   //设置 TC1 的 输入捕获寄存器 低8位值
; 	      TCCR1A = 0x00;
	out 0x2f,R2
	.dbline 39
; 	      TCCR1B = 0x04;	  //设置TC1 为 CLK/1024分频，启动TC1
	ldi R24,4
	out 0x2e,R24
	.dbline 40
; 	      MCUCR = 0x00;		//设置 MCU 的 控制寄存器
	out 0x35,R2
	.dbline 41
; 	      GICR  = 0x00;		//设置 中断控制寄存器
	out 0x3b,R2
	.dbline 42
; 	      TIMSK = 0x04;		//设置 定时计数器 的 屏蔽寄存器
	out 0x39,R24
	.dbline -2
L6:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e Display _Display fV
	.even
_Display::
	st -y,R20
	st -y,R21
	.dbline -1
	.dbline 46
; 	      //SEI();			//enable interrupts
;         }   
; 	  void Display(void)
;          {  
	.dbline 47
; 		         PORTB=discode[disbuf[0]];
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x18,R2
	.dbline 48
;                  PORTA=0xF7;
	ldi R24,247
	out 0x1b,R24
	.dbline 49
;                  delay();
	xcall _delay
	.dbline 50
;                  PORTA=0xff;
	ldi R24,255
	out 0x1b,R24
	.dbline 52
; 				 
; 				 PORTB=discode[disbuf[1]];
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf+1
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x18,R2
	.dbline 53
;                  PORTA=0xFB;
	ldi R24,251
	out 0x1b,R24
	.dbline 54
;                  delay();
	xcall _delay
	.dbline 55
;                  PORTA=0xff;
	ldi R24,255
	out 0x1b,R24
	.dbline 56
; 				 switch(flag)
	lds R20,_flag
	clr R21
	cpi R20,0
	cpc R20,R21
	breq L12
X1:
	cpi R20,0
	ldi R30,0
	cpc R21,R30
	brlt L10
X2:
L16:
	cpi R20,255
	ldi R30,0
	cpc R21,R30
	breq L14
X3:
	xjmp L10
L12:
	.dbline 59
; 				{
; 				 case 0x00:
; 				 PORTB=((discode[disbuf[2]])&0x7f);  break;
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf+2
	clr R31
	add R30,R24
	adc R31,R25
	ldd R24,z+0
	andi R24,127
	out 0x18,R24
	.dbline 59
	xjmp L10
L14:
	.dbline 61
; 				 case 0xff:
; 				 PORTB= (discode[disbuf[2]]);        break;
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf+2
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x18,R2
	.dbline 61
	.dbline 62
; 				 default:                            break;
L10:
	.dbline 64
; 				}
;                  PORTA=0xFD;
	ldi R24,253
	out 0x1b,R24
	.dbline 65
;                  delay();
	xcall _delay
	.dbline 66
;                  PORTA=0xff;
	ldi R24,255
	out 0x1b,R24
	.dbline 67
; 				 PORTB=discode[disbuf[3]];
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf+3
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x18,R2
	.dbline 68
;                  PORTA=0xFE;
	ldi R24,254
	out 0x1b,R24
	.dbline 69
;                  delay();
	xcall _delay
	.dbline 70
;                  PORTA=0xff;
	ldi R24,255
	out 0x1b,R24
	.dbline -2
L7:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	ret
	.dbend
	.dbfunc e Process _Process fV
;         disbuf -> R20,R21
;              p -> <dead>
	.even
_Process::
	xcall push_arg4
	st -y,R20
	st -y,R21
	movw R20,R18
	.dbline -1
	.dbline 75
; 		   }
; 			  
; 		
;       void Process(uchar *p,uchar *disbuf) 
;          { 
	.dbline 76
; 		   disbuf[3]=timer[1]/10;
	ldi R17,10
	lds R16,_timer+1
	xcall div8u
	movw R30,R20
	std z+3,R16
	.dbline 77
; 		   disbuf[2]=timer[1]%10;
	ldi R17,10
	lds R16,_timer+1
	xcall mod8u
	movw R30,R20
	std z+2,R16
	.dbline 78
; 		   disbuf[1]=timer[0]/10;
	ldi R17,10
	lds R16,_timer
	xcall div8u
	movw R30,R20
	std z+1,R16
	.dbline 79
; 		   disbuf[0]=timer[0]%10;
	ldi R17,10
	lds R16,_timer
	xcall mod8u
	movw R30,R20
	std z+0,R16
	.dbline -2
L18:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	adiw R28,4
	ret
	.dbsym r disbuf 20 pc
	.dbsym l p 2 pc
	.dbend
	.dbfunc e PORT_INT _PORT_INT fV
	.even
_PORT_INT::
	.dbline -1
	.dbline 83
;          } 
;      
;       void PORT_INT(void)
; 	     {
	.dbline 84
; 		  DDRA=0xFF;            
	ldi R24,255
	out 0x1a,R24
	.dbline 85
;           DDRB=0xFF;
	out 0x17,R24
	.dbline 86
; 		  PORTA=0xFF;
	out 0x1b,R24
	.dbline 87
;           PORTB=0xFF;
	out 0x18,R24
	.dbline -2
L21:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 91
; 		 }	  
;       
;       void main (void)
;              { 
	.dbline 92
; 			   PORT_INT();
	xcall _PORT_INT
	.dbline 93
; 			   timer1_init();		
	xcall _timer1_init
	.dbline 94
; 			   SEI();
	sei
	xjmp L24
L23:
	.dbline 96
;                   while(1)
;                  {     
	.dbline 97
; 				    Process(timer,disbuf);
	ldi R18,<_disbuf
	ldi R19,>_disbuf
	ldi R16,<_timer
	ldi R17,>_timer
	xcall _Process
	.dbline 98
; 					Display();  
	xcall _Display
	.dbline 99
; 			     }
L24:
	.dbline 95
	xjmp L23
X4:
	.dbline -2
L22:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 32
	jmp _timer1_ovf_isr
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	.dbfunc e timer1_ovf_isr _timer1_ovf_isr fV
	.even
_timer1_ovf_isr::
	st -y,R2
	st -y,R16
	st -y,R17
	st -y,R24
	st -y,R25
	st -y,R26
	st -y,R30
	in R2,0x3f
	st -y,R2
	.dbline -1
	.dbline 104
; 			 }
; 
; #pragma interrupt_handler timer1_ovf_isr:9                    
;            void timer1_ovf_isr(void) 
; 		       { TCNT1H = 0xc7;		//设置 TC1 的 计数寄存器 高8位值
	.dbline 104
	ldi R24,199
	out 0x2d,R24
	.dbline 105
; 	             TCNT1L = 0xc0;		//设置 TC1 的 计数寄存器 低8位值
	ldi R24,192
	out 0x2c,R24
	.dbline 106
; 				 flag=~flag;
	lds R2,_flag
	com R2
	sts _flag,R2
	.dbline 107
; 				  switch(flag)
	mov R16,R2
	clr R17
	cpi R16,0
	cpc R16,R17
	breq L30
X5:
	cpi R16,0
	ldi R30,0
	cpc R17,R30
	brlt L28
X6:
L44:
	cpi R16,255
	ldi R30,0
	cpc R17,R30
	breq L28
X7:
	xjmp L28
L30:
	.dbline 109
; 				    {case 0x00:
; 				          {timer[0]++;
	.dbline 109
	lds R24,_timer
	subi R24,255    ; addi 1
	sts _timer,R24
	.dbline 110
; 				              if(timer[0]==60)
	cpi R24,60
	brne L28
X8:
	.dbline 111
; 					            {timer[0]=0;
	.dbline 111
	clr R2
	sts _timer,R2
	.dbline 112
; 						            timer[1]++;
	lds R24,_timer+1
	subi R24,255    ; addi 1
	sts _timer+1,R24
	.dbline 113
; 						              if(timer[1]==60)
	cpi R24,60
	brne L28
X9:
	.dbline 114
; 							              {timer[1]=0;
	.dbline 114
	sts _timer+1,R2
	.dbline 115
; 										      timer[2]++;
	lds R24,_timer+2
	subi R24,255    ; addi 1
	sts _timer+2,R24
	.dbline 116
; 											   if(timer[2]==24)
	cpi R24,24
	brne L28
X10:
	.dbline 117
; 											       timer[2]=0;
	sts _timer+2,R2
	.dbline 118
; 										  }  
	.dbline 120
; 										    
; 					            }
	.dbline 121
; 				           }   
	.dbline 122
; 					            break;
	.dbline 123
; 					 case 0xff: break;
	.dbline 124
; 					 default:   break;
L28:
	.dbline -2
L26:
	.dbline 0 ; func end
	ld R2,y+
	out 0x3f,R2
	ld R30,y+
	ld R26,y+
	ld R25,y+
	ld R24,y+
	ld R17,y+
	ld R16,y+
	ld R2,y+
	reti
	.dbend
; 					 }
; 				 
; 				}
; 						
; 			               
;                        
;                             
;                
;                 
; 
; 
