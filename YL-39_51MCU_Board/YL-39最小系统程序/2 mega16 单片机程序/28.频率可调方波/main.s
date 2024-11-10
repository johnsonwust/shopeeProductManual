	.module main.c
	.area data(ram, con, rel)
_disbuf::
	.blkb 2
	.area idata
	.byte 1,0
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\28.频率可调方波\main.c
	.dbsym e disbuf _disbuf A[4:4]c
	.area lit(rom, con, rel)
_discode::
	.byte 192,249
	.byte 164,176
	.byte 153,146
	.byte 130,248
	.byte 128,144
	.dbsym e discode _discode A[10:10]kc
_disbit::
	.byte 239,223
	.byte 191,127
	.dbsym e disbit _disbit A[4:4]kc
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\28.频率可调方波\main.c
	.dbfunc e delay _delay fV
;              i -> R16
	.even
_delay::
	.dbline -1
	.dbline 14
;      
; 	 
; 	  #define uchar unsigned char
;       #define uint  unsigned int
;       #include <iom16v.h>
; 	  #include <macros.h>
; 	  uchar disbuf[4]={1,0,0,0};
; 	  
;       const  uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };
; 	  const  uchar  disbit[4]  ={ 0xEF, 0xDF,0xBF,0x7F};
; 	  
; 	  uchar Key1_Flag,Key2_Flag,Key3_Flag;                                      							
;       void delay(void)
;            {
	.dbline 16
	clr R16
	xjmp L5
L2:
	.dbline 16
L3:
	.dbline 16
	inc R16
L5:
	.dbline 16
; 		     uchar i;
;              for(i=0;i<255;i++);
	cpi R16,255
	brlo L2
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
	.dbline 19
;            }
; 	  void timer1_init(void)
;          {
	.dbline 21
; 	      //TCCR1B = 0x00;	   //stop timer
; 	      TCNT1H = 0x00;	   //设置 TC1 的 计数寄存器 高8位值
	clr R2
	out 0x2d,R2
	.dbline 22
; 	      TCNT1L = 0x00;	   //设置 TC1 的 计数寄存器 低8位值
	out 0x2c,R2
	.dbline 30
; 	      //OCR1AH = 0x1C;	   //设置 TC1 的 输出比较寄存器A 高8位值
; 	      //OCR1AL = 0x20;	   //设置 TC1 的 输出比较寄存器A 低8位值
; 	      //OCR1BH = 0x1C;	   //设置 TC1 的 输出比较寄存器B 高8位值
; 	      //OCR1BL = 0x20;	   //设置 TC1 的 输出比较寄存器B 低8位值
; 	      //ICR1H  = 0x1C;	   //设置 TC1 的 输入捕获寄存器 高8位值
; 	      //ICR1L  = 0x20;	   //设置 TC1 的 输入捕获寄存器 低8位值
; 	      //TCCR1A = 0x00;
; 	      TCCR1B = 0x0A;	   //设置TC1 为 CLK/1024分频，启动TC1
	ldi R24,10
	out 0x2e,R24
	.dbline 31
; 	      MCUCR = 0x00;		   //设置 MCU 的 控制寄存器
	out 0x35,R2
	.dbline 32
; 	      GICR  = 0x00;		   //设置 中断控制寄存器
	out 0x3b,R2
	.dbline 33
; 	      TIMSK = TIMSK|0X10;  //设置 定时计数器 的 屏蔽寄存器
	in R24,0x39
	ori R24,16
	out 0x39,R24
	.dbline -2
L6:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e Set_Process _Set_Process fV
;              i -> R20,R21
;              j -> R20,R21
	.even
_Set_Process::
	xcall push_gset1
	.dbline -1
	.dbline 38
; 	      //SEI();			   //enable interrupts
;          }   
; 	  
; 	   void Set_Process(void) 
;          { 
	.dbline 40
; 		   uint i,j;
; 		   i=disbuf[3]*1000+disbuf[2]*100+disbuf[1]*10+disbuf[0];
	lds R2,_disbuf+2
	ldi R24,100
	mul R24,R2
	movw R2,R0
	lds R18,_disbuf+3
	clr R19
	ldi R16,1000
	ldi R17,3
	xcall empy16s
	movw R20,R16
	add R20,R2
	adc R21,R3
	lds R2,_disbuf+1
	ldi R24,10
	mul R24,R2
	add R20,R0
	adc R21,R1
	lds R2,_disbuf
	clr R3
	add R20,R2
	adc R21,R3
	.dbline 41
; 		   j=500/i;
	ldi R16,500
	ldi R17,1
	movw R18,R20
	xcall div16u
	movw R20,R16
	.dbline 42
; 		   OCR1AH=j&0xff00;
	movw R24,R20
	andi R24,0
	out 0x2b,R24
	.dbline 43
; 		   OCR1AL=j&0x00ff;
	movw R24,R20
	andi R25,0
	out 0x2a,R24
	.dbline -2
L7:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r j 20 i
	.dbend
	.dbfunc e Display _Display fV
;              i -> R20
	.even
_Display::
	xcall push_gset1
	.dbline -1
	.dbline 46
;          }
; 		  void Display(void)
;          {  uchar i;
	.dbline 47
;             for(i=0;i<4;i++)
	clr R20
	xjmp L15
L12:
	.dbline 48
	.dbline 49
	ldi R24,<_disbuf
	ldi R25,>_disbuf
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	ldd R30,z+0
	clr R31
	ldi R24,<_discode
	ldi R25,>_discode
	add R30,R24
	adc R31,R25
	lpm R30,Z
	out 0x18,R30
	.dbline 50
	ldi R24,<_disbit
	ldi R25,>_disbit
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	lpm R30,Z
	out 0x1b,R30
	.dbline 51
	xcall _delay
	.dbline 52
	ldi R24,255
	out 0x1b,R24
	.dbline 53
L13:
	.dbline 47
	inc R20
L15:
	.dbline 47
	cpi R20,4
	brlo L12
	.dbline -2
L11:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbend
	.dbfunc e Key_Process _Key_Process fV
	.even
_Key_Process::
	.dbline -1
	.dbline 57
;               {
; 		       PORTB=discode[disbuf[i]];
;                PORTA=disbit[i];
;                delay();
;                PORTA=0xff;
; 			  }      
; 		  }  	
; 		    
;       void Key_Process(void)
; 	     {
	xjmp L18
L17:
	.dbline 58
	.dbline 58
	xcall _Display
	.dbline 58
	ldi R24,1
	sts _Key1_Flag,R24
	.dbline 58
L18:
	.dbline 58
; 		  while((PINA&0x80)==0){Display();Key1_Flag=1;}
	sbis 0x19,7
	rjmp L17
	xjmp L21
L20:
	.dbline 59
	.dbline 59
	xcall _Display
	.dbline 59
	ldi R24,1
	sts _Key2_Flag,R24
	.dbline 59
L21:
	.dbline 59
; 		  while((PINA&0x40)==0){Display();Key2_Flag=1;}
	sbis 0x19,6
	rjmp L20
	xjmp L24
L23:
	.dbline 60
	.dbline 60
	xcall _Display
	.dbline 60
	ldi R24,1
	sts _Key3_Flag,R24
	.dbline 60
L24:
	.dbline 60
; 		  while((PINA&0x20)==0){Display();Key3_Flag=1;}
	sbis 0x19,5
	rjmp L23
	.dbline 61
; 		  if(Key1_Flag==1)
	lds R24,_Key1_Flag
	cpi R24,1
	brne L26
	.dbline 62
; 		    {disbuf[2]++;
	.dbline 62
	lds R24,_disbuf+2
	subi R24,255    ; addi 1
	sts _disbuf+2,R24
	.dbline 63
; 			Set_Process();
	xcall _Set_Process
	.dbline 64
	lds R24,_disbuf+2
	cpi R24,10
	brne L29
	.dbline 64
	clr R2
	sts _disbuf+2,R2
L29:
	.dbline 64
; 			 if(disbuf[2]==10) disbuf[2]=0;Key1_Flag=0;
	clr R2
	sts _Key1_Flag,R2
	.dbline 65
; 			}
L26:
	.dbline 66
; 		  if(Key2_Flag==1)
	lds R24,_Key2_Flag
	cpi R24,1
	brne L33
	.dbline 67
; 		    {disbuf[1]++;
	.dbline 67
	lds R24,_disbuf+1
	subi R24,255    ; addi 1
	sts _disbuf+1,R24
	.dbline 68
; 			Set_Process();
	xcall _Set_Process
	.dbline 69
	lds R24,_disbuf+1
	cpi R24,10
	brne L36
	.dbline 69
	clr R2
	sts _disbuf+1,R2
L36:
	.dbline 69
; 			 if(disbuf[1]==10) disbuf[1]=0;Key2_Flag=0;
	clr R2
	sts _Key2_Flag,R2
	.dbline 70
; 			}
L33:
	.dbline 71
; 		  if(Key3_Flag==1)
	lds R24,_Key3_Flag
	cpi R24,1
	brne L40
	.dbline 72
; 		    {disbuf[0]++;
	.dbline 72
	lds R24,_disbuf
	subi R24,255    ; addi 1
	sts _disbuf,R24
	.dbline 73
; 			Set_Process();
	xcall _Set_Process
	.dbline 74
	lds R24,_disbuf
	cpi R24,10
	brne L42
	.dbline 74
	clr R2
	sts _disbuf,R2
L42:
	.dbline 74
	clr R2
	sts _Key3_Flag,R2
	.dbline 75
L40:
	.dbline -2
L16:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e PORT_INT _PORT_INT fV
	.even
_PORT_INT::
	.dbline -1
	.dbline 81
; 			 if(disbuf[0]==10) disbuf[0]=0;Key3_Flag=0;
; 			}
; 		  }
; 	 
;     
;      
;      void PORT_INT(void)
; 	     {
	.dbline 83
; 		 
; 		  DDRA=0x00;            
	clr R2
	out 0x1a,R2
	.dbline 84
;           DDRB=0xFF;
	ldi R24,255
	out 0x17,R24
	.dbline 85
;           DDRD=0XFF; 
	out 0x11,R24
	.dbline 86
; 		  DDRC=0xFF;
	out 0x14,R24
	.dbline 87
; 		  PORTA=0x00;
	out 0x1b,R2
	.dbline 88
;           PORTB=0xFF;
	out 0x18,R24
	.dbline 89
; 		  PORTC=0xFF;
	out 0x15,R24
	.dbline 90
;           PORTD=0xFF;
	out 0x12,R24
	.dbline -2
L44:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 94
; 		 }	  
;       
;          void main (void)
;              { 
	.dbline 95
; 			   PORT_INT();
	xcall _PORT_INT
	.dbline 96
; 			   timer1_init();		
	xcall _timer1_init
	.dbline 97
; 			   SEI();
	sei
	xjmp L47
L46:
	.dbline 99
	.dbline 100
	xcall _Key_Process
	.dbline 102
	xcall _Display
	.dbline 103
L47:
	.dbline 98
	xjmp L46
X0:
	.dbline -2
L45:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 24
	jmp _Compare
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\28.频率可调方波\main.c
	.dbfunc e Compare _Compare fV
	.even
_Compare::
	st -y,R2
	in R2,0x3f
	st -y,R2
	.dbline -1
	.dbline 109
;                   while(1)
;                  {   
; 				    Key_Process();  
; 				    //Set_Process(); 
; 					Display();  
; 			     }
; 			 }
; 		  
; 
; #pragma interrupt_handler Compare:7                   
;             void Compare(void)
; 			  {PORTC=~PORTC;}
	.dbline 109
	in R2,0x15
	com R2
	out 0x15,R2
	.dbline -2
L49:
	ld R2,y+
	out 0x3f,R2
	ld R2,y+
	.dbline 0 ; func end
	reti
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\28.频率可调方波\main.c
_Key3_Flag::
	.blkb 1
	.dbsym e Key3_Flag _Key3_Flag c
_Key2_Flag::
	.blkb 1
	.dbsym e Key2_Flag _Key2_Flag c
_Key1_Flag::
	.blkb 1
	.dbsym e Key1_Flag _Key1_Flag c
