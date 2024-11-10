	.module LED.c
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\2.流水灯\LED.c
	.dbfunc e delayms _delayms fV
;              i -> R16,R17
;              j -> R18,R19
	.even
_delayms::
	.dbline -1
	.dbline 19
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 流水灯实验
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J1短路帽接上  
; /******************************************************************************/  
;        #define  uchar  unsigned char
; 	   #define  uint   unsigned int
;        #include <iom16v.h>
;        #include <macros.h>
; 	   
;        void delayms(void)	 // 延时子程序       
;         {						
	.dbline 21
; 	         unsigned int i,j;
; 			 for(i=0;i<100;i++)
	clr R16
	clr R17
	xjmp L5
L2:
	.dbline 22
	clr R18
	clr R19
	xjmp L9
L6:
	.dbline 22
L7:
	.dbline 22
	subi R18,255  ; offset = 1
	sbci R19,255
L9:
	.dbline 22
	cpi R18,184
	ldi R30,11
	cpc R19,R30
	brlo L6
L3:
	.dbline 21
	subi R16,255  ; offset = 1
	sbci R17,255
L5:
	.dbline 21
	cpi R16,100
	ldi R30,0
	cpc R17,R30
	brlo L2
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 i
	.dbsym r j 18 i
	.dbend
	.dbfunc e main _main fV
;              j -> R20
;              i -> R22
	.even
_main::
	.dbline -1
	.dbline 25
; 			    for(j=0;j<3000;j++);
;         } 
;         void  main(void)
;         {
	.dbline 27
; 		 uchar  i,j;            //定义变量
;          PORTD=0xFF;			//设为输出口
	ldi R24,255
	out 0x12,R24
	.dbline 28
;          DDRD=0xFF;				//PD口设为输出高电平，灯灭
	out 0x11,R24
	xjmp L12
L11:
	.dbline 30
;          while(1)
;             {
	.dbline 31
; 	        i=1;
	ldi R22,1
	.dbline 32
; 	        for (j=0;j<8;j++)  //循环8次，即PD0~~PF7轮流闪亮  
	clr R20
	xjmp L17
L14:
	.dbline 33
	.dbline 34
	mov R2,R22
	com R2
	out 0x12,R2
	.dbline 35
	xcall _delayms
	.dbline 36
	lsl R22
	.dbline 37
L15:
	.dbline 32
	inc R20
L17:
	.dbline 32
	cpi R20,8
	brlo L14
	.dbline 39
L12:
	.dbline 29
	xjmp L11
X0:
	.dbline -2
L10:
	.dbline 0 ; func end
	ret
	.dbsym r j 20 c
	.dbsym r i 22 c
	.dbend
