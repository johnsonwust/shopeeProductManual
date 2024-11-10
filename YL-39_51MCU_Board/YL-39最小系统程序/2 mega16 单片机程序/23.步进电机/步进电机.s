	.module _步进电机.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\23.步进电机\步进电机.c
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\23.步进电机\步进电机.c
_TAB::
	.blkb 2
	.area idata
	.byte 4,1
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\23.步进电机\步进电机.c
	.blkb 2
	.area idata
	.byte 8,2
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\23.步进电机\步进电机.c
	.dbsym e TAB _TAB A[4:4]c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\23.步进电机\步进电机.c
	.dbfunc e delay _delay fV
;              i -> R16
;              j -> R18
	.even
_delay::
	.dbline -1
	.dbline 22
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 步进电机试验
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J1短路帽接上               
; /******************************************************************************/
; 
;  #define uchar unsigned char
;  #define uint unsigned int
;  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
;  #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn)))
;  #include <iom16v.h>
;  #include <macros.h> 	
; uchar TAB[4]={0x04,0x01,0x08,0x02};
; void delay(void)
;  {
	.dbline 24
; 	uchar i,j;
; 	for(i=0;i<20;i++)
	clr R16
	xjmp L5
L2:
	.dbline 25
; 	for(j=0;j<255;j++);
	clr R18
	xjmp L9
L6:
	.dbline 25
L7:
	.dbline 25
	inc R18
L9:
	.dbline 25
	cpi R18,255
	brlo L6
X0:
L3:
	.dbline 24
	inc R16
L5:
	.dbline 24
	cpi R16,20
	brlo L2
X1:
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 c
	.dbsym r j 18 c
	.dbend
	.dbfunc e main _main fV
;              b -> R20
;              a -> R22
	.even
_main::
	.dbline -1
	.dbline 29
; }
; 
; void main(void)
; {
	.dbline 31
; 	uchar a,b;
; 	DDRB=0XFF;
	ldi R24,255
	out 0x17,R24
	.dbline 32
; 	PORTB=0XFF;	    
	out 0x18,R24
	.dbline 33
;     for(b=0;b<50;b++)
	clr R20
	xjmp L14
L11:
	.dbline 34
; 		    {
	.dbline 35
; 		       for(a=0;a<4;a++)
	clr R22
	xjmp L18
L15:
	.dbline 36
; 			   {
	.dbline 37
; 		        PORTB=TAB[a];
	ldi R24,<_TAB
	ldi R25,>_TAB
	mov R30,R22
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x18,R2
	.dbline 38
; 		        delay();
	xcall _delay
	.dbline 39
; 			   }
L16:
	.dbline 35
	inc R22
L18:
	.dbline 35
	cpi R22,4
	brlo L15
X2:
	.dbline 40
; 	   	    }
L12:
	.dbline 33
	inc R20
L14:
	.dbline 33
	cpi R20,50
	brlo L11
X3:
	.dbline 41
; 			PORTB=0xff;
	ldi R24,255
	out 0x18,R24
L19:
	.dbline 42
; 			 while(1);
L20:
	.dbline 42
	xjmp L19
X4:
	.dbline -2
L10:
	.dbline 0 ; func end
	ret
	.dbsym r b 20 c
	.dbsym r a 22 c
	.dbend
; 		}
; 		   
; 	
; 		
; 	
