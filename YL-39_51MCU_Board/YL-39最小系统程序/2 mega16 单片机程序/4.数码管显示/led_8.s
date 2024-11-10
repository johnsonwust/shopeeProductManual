	.module led_8.c
	.area data(ram, con, rel)
_disbuf::
	.blkb 2
	.area idata
	.byte 1,2
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 3,4
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.dbsym e disbuf _disbuf A[4:4]c
_discode::
	.blkb 2
	.area idata
	.byte 192,249
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.blkb 2
	.area idata
	.byte 164,176
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.blkb 2
	.area idata
	.byte 153,146
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.blkb 2
	.area idata
	.byte 130,248
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.blkb 2
	.area idata
	.byte 128,144
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.dbsym e discode _discode A[10:10]c
_disbit::
	.blkb 2
	.area idata
	.byte 254,253
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.blkb 2
	.area idata
	.byte 251,247
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.dbsym e disbit _disbit A[4:4]c
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	.dbfunc e delay _delay fV
;              i -> R16
	.even
_delay::
	.dbline -1
	.dbline 27
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 数码管显示1234 
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽接上  
; /******************************************************************************/  
; 
;       #define uchar unsigned char
; 	  #define uint  unsigned int
; 	  #include <iom16v.h>
; 	  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
;       #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
;       #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
;       uchar  disbuf[4]={1,2,3,4};
;       uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };  //段码表
;       uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
; /******************************************************************************/
; //延时函数
; /******************************************************************************/  	                                             							
;       void delay(void)   
;            {uchar i;
	.dbline 28
	clr R16
	xjmp L5
L2:
	.dbline 28
L3:
	.dbline 28
	inc R16
L5:
	.dbline 28
;              for(i=0;i<255;i++);
	cpi R16,255
	brlo L2
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 c
	.dbend
	.dbfunc e Display _Display fV
;              i -> R20
	.even
_Display::
	xcall push_gset1
	.dbline -1
	.dbline 34
;            }
; /******************************************************************************/
; //显示函数
; /******************************************************************************/  
; 	  void Display(void)
;          {  
	.dbline 36
; 		    uchar i;
;             for(i=0;i<4;i++)
	clr R20
	xjmp L10
L7:
	.dbline 37
	.dbline 38
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
	.dbline 39
	ldi R24,<_disbit
	ldi R25,>_disbit
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x1b,R2
	.dbline 40
	xcall _delay
	.dbline 41
	ldi R24,255
	out 0x1b,R24
	.dbline 42
L8:
	.dbline 36
	inc R20
L10:
	.dbline 36
	cpi R20,4
	brlo L7
	.dbline -2
L6:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 48
;                 {
; 		         PORTB=discode[disbuf[i]];
;                  PORTA=disbit[i];
;                  delay();
;                  PORTA=0xff;
; 			    } 
; 		 }
; /******************************************************************************/
; //主函数不断扫描数码管
; /******************************************************************************/  
; 	  void main (void)
;              { 
	.dbline 49
;                   DDRA=0xFF;       //设为输出口     
	ldi R24,255
	out 0x1a,R24
	.dbline 50
;                   DDRB=0xFF;       //设为输出口 
	out 0x17,R24
	.dbline 51
; 		          PORTA=0xFF;      
	out 0x1b,R24
	.dbline 52
;                   PORTB=0xFF;
	out 0x18,R24
	xjmp L13
L12:
	.dbline 55
	.dbline 56
	xcall _Display
	.dbline 57
L13:
	.dbline 54
	xjmp L12
X0:
	.dbline -2
L11:
	.dbline 0 ; func end
	ret
	.dbend
