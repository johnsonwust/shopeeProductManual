	.module key.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\5.按键key\key.c
	.dbfunc e delayms _delayms fV
;              i -> R16,R17
;              j -> R18,R19
	.even
_delayms::
	.dbline -1
	.dbline 21
; 
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： K5 k6 控制LED灯闪烁 	
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J1短路帽接上  
; /******************************************************************************/  
;    #define uchar unsigned char 
;    #define uint unsigned int 
;    #include<iom16v.h>
;     #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
;       #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
;       #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
;   void delayms(void)	 // 延时子程序       
;           {						
	.dbline 23
; 	         unsigned int i,j;
; 			 for(i=0;i<255;i++)
	clr R16
	clr R17
	xjmp L5
L2:
	.dbline 24
; 			    for(j=0;j<1000;j++);
	clr R18
	clr R19
	xjmp L9
L6:
	.dbline 24
L7:
	.dbline 24
	subi R18,255  ; offset = 1
	sbci R19,255
L9:
	.dbline 24
	cpi R18,232
	ldi R30,3
	cpc R19,R30
	brlo L6
X0:
L3:
	.dbline 23
	subi R16,255  ; offset = 1
	sbci R17,255
L5:
	.dbline 23
	cpi R16,255
	ldi R30,0
	cpc R17,R30
	brlo L2
X1:
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 i
	.dbsym r j 18 i
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 28
;           }
; 
;   void main(void)
;   {
	.dbline 31
;      
;     //端口初始化
;      DDRD=0xf0;      //D口高四位输出 低四位输入
	ldi R24,240
	out 0x11,R24
	.dbline 32
;      PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 35
; 	 
; 	 
;      DDRA=0x00;      //A口为输入
	clr R2
	out 0x1a,R2
	.dbline 36
;      PORTA=0xff;
	out 0x1b,R24
	xjmp L12
L11:
	.dbline 39
;    
;      while(1)
;      {
	.dbline 40
;         if(Get_Bit(PINA,5)==0)    //PA4 按键处理函数        
	sbic 0x19,5
	rjmp L14
X2:
	.dbline 41
; 	    {  
	xjmp L17
L16:
	.dbline 43
; 		  while(!(Get_Bit(PINA,5)))//等待按键松开
;            { 
	.dbline 44
; 				PORTD=0x0F;
	ldi R24,15
	out 0x12,R24
	.dbline 45
; 				delayms();
	xcall _delayms
	.dbline 46
; 				PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 49
; 				
; 				
;            }		   
L17:
	.dbline 42
	sbis 0x19,5
	rjmp L16
X3:
	.dbline 51
; 		   	   
; 	   }
L14:
	.dbline 53
; 	   
; 	   if(Get_Bit(PINA,4)==0)    //PA4 按键处理函数        
	sbic 0x19,4
	rjmp L19
X4:
	.dbline 54
; 	    {  
	xjmp L22
L21:
	.dbline 56
; 		  while(!(Get_Bit(PINA,4)))//等待按键松开
;            { 
	.dbline 57
; 				PORTD=0x0F;
	ldi R24,15
	out 0x12,R24
	.dbline 58
; 				delayms();
	xcall _delayms
	.dbline 59
; 				PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 60
; 				delayms();
	xcall _delayms
	.dbline 61
; 				PORTD=0x0F;
	ldi R24,15
	out 0x12,R24
	.dbline 62
; 				delayms();
	xcall _delayms
	.dbline 63
; 				PORTD=0xff;	
	ldi R24,255
	out 0x12,R24
	.dbline 65
; 				
;            }
L22:
	.dbline 55
	sbis 0x19,4
	rjmp L21
X5:
	.dbline 66
; 		 }	
L19:
	.dbline 68
; 		
; 		if(Get_Bit(PIND,3)==0)    //PA4 按键处理函数        
	sbic 0x10,3
	rjmp L24
X6:
	.dbline 69
; 	    {  
	xjmp L27
L26:
	.dbline 71
; 		  while(!(Get_Bit(PIND,3)))//等待按键松开
;            { 
	.dbline 72
; 				PORTD=0x0F;
	ldi R24,15
	out 0x12,R24
	.dbline 73
; 				delayms();
	xcall _delayms
	.dbline 74
; 				PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 75
; 				delayms();
	xcall _delayms
	.dbline 76
; 				PORTD=0x0F;
	ldi R24,15
	out 0x12,R24
	.dbline 77
; 				delayms();
	xcall _delayms
	.dbline 78
; 				PORTD=0xff;	
	ldi R24,255
	out 0x12,R24
	.dbline 79
; 				delayms();
	xcall _delayms
	.dbline 80
; 				PORTD=0x0F;	
	ldi R24,15
	out 0x12,R24
	.dbline 81
; 				delayms();
	xcall _delayms
	.dbline 82
; 				PORTD=0xff;	
	ldi R24,255
	out 0x12,R24
	.dbline 83
;            }
L27:
	.dbline 70
	sbis 0x10,3
	rjmp L26
X7:
	.dbline 84
; 		 }	 
L24:
	.dbline 86
; 		
; 		if(Get_Bit(PIND,2)==0)    //PA4 按键处理函数        
	sbic 0x10,2
	rjmp L29
X8:
	.dbline 87
; 	    {  
	xjmp L32
L31:
	.dbline 89
; 		  while(!(Get_Bit(PIND,2)))//等待按键松开
;            { 
	.dbline 90
; 				PORTD=0x0F;
	ldi R24,15
	out 0x12,R24
	.dbline 91
; 				delayms();
	xcall _delayms
	.dbline 92
; 				PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 93
; 				delayms();
	xcall _delayms
	.dbline 94
; 				PORTD=0x0F;
	ldi R24,15
	out 0x12,R24
	.dbline 95
; 				delayms();
	xcall _delayms
	.dbline 96
; 				PORTD=0xff;	
	ldi R24,255
	out 0x12,R24
	.dbline 97
; 				delayms();
	xcall _delayms
	.dbline 98
; 				PORTD=0x0F;	
	ldi R24,15
	out 0x12,R24
	.dbline 99
; 				delayms();
	xcall _delayms
	.dbline 100
; 				PORTD=0xff;	
	ldi R24,255
	out 0x12,R24
	.dbline 101
; 				delayms();
	xcall _delayms
	.dbline 102
; 				PORTD=0x0F;	
	ldi R24,15
	out 0x12,R24
	.dbline 103
; 				delayms();
	xcall _delayms
	.dbline 104
; 				PORTD=0xff;	
	ldi R24,255
	out 0x12,R24
	.dbline 105
;            }
L32:
	.dbline 88
	sbis 0x10,2
	rjmp L31
X9:
	.dbline 106
; 		 }	  
L29:
	.dbline 109
; 		 
; 		 
;      }
L12:
	.dbline 38
	xjmp L11
X10:
	.dbline -2
L10:
	.dbline 0 ; func end
	ret
	.dbend
;   }
