	.module key.c
	.area data(ram, con, rel)
_disbuf::
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.dbsym e disbuf _disbuf A[4:4]c
_discode::
	.blkb 2
	.area idata
	.byte 192,249
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.blkb 2
	.area idata
	.byte 164,176
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.blkb 2
	.area idata
	.byte 153,146
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.blkb 2
	.area idata
	.byte 130,248
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.blkb 2
	.area idata
	.byte 128,144
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.dbsym e discode _discode A[10:10]c
_disbit::
	.blkb 2
	.area idata
	.byte 254,253
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.blkb 2
	.area idata
	.byte 251,247
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.dbsym e disbit _disbit A[4:4]c
_k:
	.blkb 2
	.area idata
	.word 8888
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.dbsym s k _k i
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
	.dbfunc e delay _delay fV
;              i -> R16,R17
	.even
_delay::
	.dbline -1
	.dbline 30
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 按键K5 K6 实现数码管加减1  初始值 8888
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽接上                                                     */   
; /******************************************************************************/
;       #define uchar unsigned char
; 	  #define uint  unsigned int
; 	  #include <iom16v.h>
; 	  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
;       #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
;       #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
; 	  
;       uchar disbuf[4]={0,0,0,0};
;       uchar  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };  //段码表
;       uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
;       uchar  Key_Up;
;       uchar  Key_Down; 
; 	  static uint k=8888;  
; /******************************************************************************/
; //延时函数
; /******************************************************************************/  	                                                  							
;       void delay(void)
;            {uint i;
	.dbline 31
	clr R16
	clr R17
	xjmp L5
L2:
	.dbline 31
L3:
	.dbline 31
	subi R16,255  ; offset = 1
	sbci R17,255
L5:
	.dbline 31
;              for(i=0;i<500;i++);
	cpi R16,244
	ldi R30,1
	cpc R17,R30
	brlo L2
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 i
	.dbend
	.dbfunc e Display _Display fV
;              i -> R20
	.even
_Display::
	xcall push_gset1
	.dbline -1
	.dbline 40
;            }
; /******************************************************************************/
; 
; /******************************************************************************/
; 
; //显示函数
; /******************************************************************************/  		   
; 	  void Display(void)
;          {  uchar i;
	.dbline 41
;             for(i=0;i<4;i++)
	clr R20
	xjmp L10
L7:
	.dbline 42
	.dbline 43
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
	.dbline 44
	ldi R24,<_disbit
	ldi R25,>_disbit
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x1b,R2
	.dbline 45
	xcall _delay
	.dbline 46
	ldi R24,255
	out 0x1b,R24
	.dbline 47
L8:
	.dbline 41
	inc R20
L10:
	.dbline 41
	cpi R20,4
	brlo L7
	.dbline -2
L6:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbend
	.dbfunc e Process _Process fV
;         disbuf -> R20,R21
;              i -> R22,R23
	.even
_Process::
	xcall push_gset2
	movw R20,R18
	movw R22,R16
	.dbline -1
	.dbline 53
;                 {
; 		         PORTB=discode[disbuf[i]];
;                  PORTA=disbit[i];
;                  delay();
;                  PORTA=0xff;
; 			    } 
; 		 }	
; /******************************************************************************/
; //显示数据处理
; /******************************************************************************/  		
;       void Process(uint i,uchar *disbuf) 
;          { disbuf[0]=i/1000;
	.dbline 53
	ldi R18,1000
	ldi R19,3
	movw R16,R22
	xcall div16u
	movw R30,R20
	std z+0,R16
	.dbline 54
; 		   i=i%1000;
	ldi R18,1000
	ldi R19,3
	movw R16,R22
	xcall mod16u
	movw R22,R16
	.dbline 55
; 		   disbuf[1]=i/100;
	ldi R18,100
	ldi R19,0
	xcall div16u
	movw R30,R20
	std z+1,R16
	.dbline 56
; 		   i=i%100;
	ldi R18,100
	ldi R19,0
	movw R16,R22
	xcall mod16u
	movw R22,R16
	.dbline 57
; 		   disbuf[2]=i/10;
	ldi R18,10
	ldi R19,0
	xcall div16u
	movw R30,R20
	std z+2,R16
	.dbline 58
; 		   i=i%10;
	ldi R18,10
	ldi R19,0
	movw R16,R22
	xcall mod16u
	movw R22,R16
	.dbline 59
; 		   disbuf[3]=i; 
	movw R30,R20
	std z+3,R22
	.dbline -2
L11:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r disbuf 20 pc
	.dbsym r i 22 i
	.dbend
	.dbfunc e Get_Key _Get_Key fV
	.even
_Get_Key::
	.dbline -1
	.dbline 65
;           } 
; /******************************************************************************/
; //按键处理子程序
; /******************************************************************************/  	  
;       void Get_Key(void)
; 	     { 
	.dbline 66
; 	    	 if(Get_Bit(PINA,4)==0)    //PA4 按键处理函数        
	sbic 0x19,4
	rjmp L13
	.dbline 67
; 			{ 
	.dbline 68
; 			   Display();
	xcall _Display
	.dbline 69
; 			   Display();
	xcall _Display
	.dbline 70
; 			   Display(); 
	xcall _Display
	.dbline 71
; 			   Display();
	xcall _Display
	xjmp L16
L15:
	.dbline 73
	.dbline 74
	xcall _Display
	.dbline 75
L16:
	.dbline 72
; 			  while(!(Get_Bit(PINA,4)))//等待按键松开
	sbis 0x19,4
	rjmp L15
	.dbline 76
;                   { 
; 				  Display(); 
;                   }
; 				  k++; 
	lds R24,_k
	lds R25,_k+1
	adiw R24,1
	sts _k+1,R25
	sts _k,R24
	.dbline 77
;                   if(k>9999)k=0; 
	ldi R24,9999
	ldi R25,39
	lds R2,_k
	lds R3,_k+1
	cp R24,R2
	cpc R25,R3
	brsh L18
	.dbline 77
	clr R2
	clr R3
	sts _k+1,R3
	sts _k,R2
L18:
	.dbline 78
;                   Process(k,disbuf);    
	ldi R18,<_disbuf
	ldi R19,>_disbuf
	lds R16,_k
	lds R17,_k+1
	xcall _Process
	.dbline 79
; 			}
L13:
	.dbline 81
; 			
; 		      if(Get_Bit(PINA,5)==0)   //PA5 按键处理函数
	sbic 0x19,5
	rjmp L20
	.dbline 82
;                 {  
	.dbline 83
; 				  Display();
	xcall _Display
	.dbline 84
; 				  Display();
	xcall _Display
	.dbline 85
; 				  Display();
	xcall _Display
	.dbline 86
; 				  Display(); 
	xcall _Display
	.dbline 87
; 			      Display();
	xcall _Display
	xjmp L23
L22:
	.dbline 90
	.dbline 91
	xcall _Display
	.dbline 92
	xcall _Display
	.dbline 93
L23:
	.dbline 89
; 				
; 				 while(!Get_Bit(PINA,5))  //等待按键松开
	sbis 0x19,5
	rjmp L22
	.dbline 94
;                   { 
; 				  Display(); 
; 				  Display();
;                   }  
;                   k--;   
	lds R24,_k
	lds R25,_k+1
	sbiw R24,1
	sts _k+1,R25
	sts _k,R24
	.dbline 95
; 				     if(k==65535)k=9999;
	cpi R24,255
	ldi R30,255
	cpc R25,R30
	brne L25
	.dbline 95
	ldi R24,9999
	ldi R25,39
	sts _k+1,R25
	sts _k,R24
L25:
	.dbline 96
	ldi R18,<_disbuf
	ldi R19,>_disbuf
	lds R16,_k
	lds R17,_k+1
	xcall _Process
	.dbline 97
L20:
	.dbline -2
L12:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 100
;                       Process(k,disbuf);     
; 			    }
;          }
;          void main (void)
;              { 
	.dbline 102
; 			 
; 			   DDRA|=1<<0|1<<1|1<<2|1<<3|0<<4|0<<5;//设置PA0,PA1,PA2为输出,PA4,PA5为输入
	in R24,0x1a
	ori R24,15
	out 0x1a,R24
	.dbline 103
; 	           PORTA=0x00;
	clr R2
	out 0x1b,R2
	.dbline 105
; 			              
;                DDRB=0xFF;
	ldi R24,255
	out 0x17,R24
	.dbline 106
;                PORTB=0xFF;
	out 0x18,R24
	.dbline 108
;          		
;                Process(k,disbuf); 
	ldi R18,<_disbuf
	ldi R19,>_disbuf
	lds R16,_k
	lds R17,_k+1
	xcall _Process
	xjmp L29
L28:
	.dbline 110
	.dbline 111
	xcall _Get_Key
	.dbline 112
	xcall _Display
	.dbline 113
L29:
	.dbline 109
	xjmp L28
X0:
	.dbline -2
L27:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\7.按键数码管\key.c
_Key_Down::
	.blkb 1
	.dbsym e Key_Down _Key_Down c
_Key_Up::
	.blkb 1
	.dbsym e Key_Up _Key_Up c
