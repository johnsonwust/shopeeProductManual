	.module _方波.C
	.area text(rom, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
_disbuf::
	.blkb 2
	.area idata
	.byte 1,0
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.dbsym e disbuf _disbuf A[4:4]c
_discode::
	.blkb 2
	.area idata
	.byte 192,249
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.blkb 2
	.area idata
	.byte 164,176
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.blkb 2
	.area idata
	.byte 153,146
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.blkb 2
	.area idata
	.byte 130,248
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.blkb 2
	.area idata
	.byte 128,144
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.dbsym e discode _discode A[10:10]c
_disbit::
	.blkb 2
	.area idata
	.byte 254,253
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.blkb 2
	.area idata
	.byte 251,247
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.dbsym e disbit _disbit A[4:4]c
	.area text(rom, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	.dbfunc e delay _delay fV
;              i -> R16
	.even
_delay::
	.dbline -1
	.dbline 13
;         #define uchar unsigned char
;         #define uint unsigned int
; 		#define ulong unsigned long
; 		#define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
; 		#define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
; 		#include <iom16v.h>
;         #include <macros.h>
; 		uchar disbuf[4]={1,0,0,0};
;         uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };  //段码表
;         uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
; 	    uchar Key1_Flag,Key2_Flag,Key3_Flag;                                      							
;         void delay(void)
;            {uchar i;
	.dbline 14
;              for(i=255;i>0;i--);
	ldi R16,255
	xjmp L5
L2:
	.dbline 14
L3:
	.dbline 14
	dec R16
L5:
	.dbline 14
	ldi R24,0
	cp R24,R16
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
	.dbline 17
;            }
; 	  void timer1_init(void)
;          {
	.dbline 18
; 	      TCCR1A = 0xC3;
	ldi R24,195
	out 0x2f,R24
	.dbline 19
; 	      TCCR1B = 0x02;	   //设置TC1 为 CLK/1024分频，启动TC1
	ldi R24,2
	out 0x2e,R24
	.dbline -2
L6:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e Set_Process _Set_Process fV
;              i -> <dead>
;              j -> R16,R17
	.even
_Set_Process::
	.dbline -1
	.dbline 23
;          }   
; 	  
; 	   void Set_Process(void) 
;          { uint i,j;
	.dbline 25
; 		  
; 		   j=512;
	ldi R16,512
	ldi R17,2
	.dbline 26
; 		   OCR1AH=j&0xff00;
	movw R24,R16
	andi R24,0
	out 0x2b,R24
	.dbline 27
; 		   OCR1AL=j&0x00ff;
	movw R24,R16
	andi R25,0
	out 0x2a,R24
	.dbline -2
L7:
	.dbline 0 ; func end
	ret
	.dbsym l i 1 i
	.dbsym r j 16 i
	.dbend
	.dbfunc e Display _Display fV
;              i -> R20
	.even
_Display::
	st -y,R20
	.dbline -1
	.dbline 30
;          }
; 		  void Display(void)
;          {  uchar i;
	.dbline 31
;             for(i=0;i<4;i++)
	clr R20
	xjmp L12
L9:
	.dbline 32
;               {
	.dbline 33
; 		         PORTB=discode[disbuf[i]];
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
	ldd R2,z+0
	out 0x18,R2
	.dbline 34
;                  PORTA=disbit[i];
	ldi R24,<_disbit
	ldi R25,>_disbit
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x1b,R2
	.dbline 35
;                  delay();
	xcall _delay
	.dbline 36
;                  PORTA=0xff;
	ldi R24,255
	out 0x1b,R24
	.dbline 37
; 			  }      
L10:
	.dbline 31
	inc R20
L12:
	.dbline 31
	cpi R20,4
	brlo L9
X1:
	.dbline -2
L8:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r i 20 c
	.dbend
	.dbfunc e Key_Process _Key_Process fV
	.even
_Key_Process::
	.dbline -1
	.dbline 40
; 		  }  	  
;       void Key_Process(void)
; 	     {
	xjmp L15
L14:
	.dbline 41
; 		  while((PINA&0x10)==0){Display();Key1_Flag=1;}
	.dbline 41
	xcall _Display
	.dbline 41
	ldi R24,1
	sts _Key1_Flag,R24
	.dbline 41
L15:
	.dbline 41
	sbis 0x19,4
	rjmp L14
X2:
	xjmp L18
L17:
	.dbline 42
; 		  while((PINA&0x08)==0){Display();Key2_Flag=1;}
	.dbline 42
	xcall _Display
	.dbline 42
	ldi R24,1
	sts _Key2_Flag,R24
	.dbline 42
L18:
	.dbline 42
	sbis 0x19,3
	rjmp L17
X3:
	xjmp L21
L20:
	.dbline 43
; 		  while((PINA&0x20)==0){Display();Key3_Flag=1;}
	.dbline 43
	xcall _Display
	.dbline 43
	ldi R24,1
	sts _Key3_Flag,R24
	.dbline 43
L21:
	.dbline 43
	sbis 0x19,5
	rjmp L20
X4:
	.dbline 44
; 		  if(Key1_Flag==1)
	lds R24,_Key1_Flag
	cpi R24,1
	brne L23
X5:
	.dbline 45
; 		    {
	.dbline 46
; 			disbuf[2]++;
	lds R24,_disbuf+2
	subi R24,255    ; addi 1
	sts _disbuf+2,R24
	.dbline 47
; 			Set_Process();
	xcall _Set_Process
	.dbline 48
; 			if(disbuf[2]==10) disbuf[2]=0;Key1_Flag=0;
	lds R24,_disbuf+2
	cpi R24,10
	brne L26
X6:
	.dbline 48
	clr R2
	sts _disbuf+2,R2
L26:
	.dbline 48
	clr R2
	sts _Key1_Flag,R2
	.dbline 49
; 			}
L23:
	.dbline 50
; 		  if(Key2_Flag==1)
	lds R24,_Key2_Flag
	cpi R24,1
	brne L30
X7:
	.dbline 51
; 		    {
	.dbline 52
; 			disbuf[1]++;
	lds R24,_disbuf+1
	subi R24,255    ; addi 1
	sts _disbuf+1,R24
	.dbline 53
; 			Set_Process();
	xcall _Set_Process
	.dbline 54
; 			if(disbuf[1]==10) disbuf[1]=0;Key2_Flag=0;
	lds R24,_disbuf+1
	cpi R24,10
	brne L33
X8:
	.dbline 54
	clr R2
	sts _disbuf+1,R2
L33:
	.dbline 54
	clr R2
	sts _Key2_Flag,R2
	.dbline 55
; 			}
L30:
	.dbline 56
; 		  if(Key3_Flag==1)
	lds R24,_Key3_Flag
	cpi R24,1
	brne L37
X9:
	.dbline 57
; 		    {
	.dbline 58
; 			disbuf[0]++;
	lds R24,_disbuf
	subi R24,255    ; addi 1
	sts _disbuf,R24
	.dbline 59
; 			Set_Process();
	xcall _Set_Process
	.dbline 60
; 			if(disbuf[0]==10) disbuf[0]=0;Key3_Flag=0;
	lds R24,_disbuf
	cpi R24,10
	brne L39
X10:
	.dbline 60
	clr R2
	sts _disbuf,R2
L39:
	.dbline 60
	clr R2
	sts _Key3_Flag,R2
	.dbline 61
; 			}
L37:
	.dbline -2
L13:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e PORT_INT _PORT_INT fV
	.even
_PORT_INT::
	.dbline -1
	.dbline 67
; 		  }
; 	 
;     
;      
;      void PORT_INT(void)
; 	     {
	.dbline 68
; 		     DDRA|=1<<0|1<<1|1<<2|1<<3|0<<4|0<<5;//设置PA0,PA1,PA2为输出,PA4,PA5为输入
	in R24,0x1a
	ori R24,15
	out 0x1a,R24
	.dbline 69
; 	         PORTA=0x00;            
	clr R2
	out 0x1b,R2
	.dbline 70
;              DDRB=0xFF;
	ldi R24,255
	out 0x17,R24
	.dbline 71
;              PORTB=0xFF;
	out 0x18,R24
	.dbline 72
; 			 DDRD=0XFF; 
	out 0x11,R24
	.dbline 73
; 			 PORTD=0xFF;
	out 0x12,R24
	.dbline -2
L41:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 77
; 		 }	  
;       
;          void main (void)
;              { 
	.dbline 78
; 			   PORT_INT();
	xcall _PORT_INT
	.dbline 79
; 			   timer1_init();		
	xcall _timer1_init
	.dbline 80
; 			   SEI();
	sei
	xjmp L44
L43:
	.dbline 82
;                   while(1)
;                  {   
	.dbline 83
; 				    Key_Process();  
	xcall _Key_Process
	.dbline 84
; 					Display();  
	xcall _Display
	.dbline 85
; 			     }
L44:
	.dbline 81
	xjmp L43
X11:
	.dbline -2
L42:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
_Key3_Flag::
	.blkb 1
	.dbsym e Key3_Flag _Key3_Flag c
_Key2_Flag::
	.blkb 1
	.dbsym e Key2_Flag _Key2_Flag c
_Key1_Flag::
	.blkb 1
	.dbsym e Key1_Flag _Key1_Flag c
; 			 }
; 		  
; 
; 						 
