	.module _数码显温度.C
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\DS18B20.h
	.dbfunc e delay_18B20 _delay_18B20 fV
;              x -> R16,R17
	.even
_delay_18B20::
	.dbline -1
	.dbline 20
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 数码管显示ds18b20温度试验
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽接上   
; /******************************************************************************/  
;       #define uchar unsigned char
; 	  #define uint  unsigned int
; 	  #include <iom16v.h>
; 	  #include "DS18B20.h"
; 	  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
;       #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
;       #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
;       uchar  tx[7]={0};
	xjmp L3
L2:
	.dbline 22
;       uchar  discode[12]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0xff };  //段码表
;       uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
	.dbline 23
; /******************************************************************************/
	subi R16,1
	sbci R17,0
	.dbline 24
; //延时函数
L3:
	.dbline 21
	cpi R16,0
	cpc R16,R17
	brne L2
X0:
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r x 16 i
	.dbend
	.dbfunc e Init_1820 _Init_1820 fV
	.even
_Init_1820::
	.dbline -1
	.dbline 31
; /******************************************************************************/  	                                             							
;       void delay(void)   
;            {uchar i;
;              for(i=0;i<255;i++);
;            }
; /******************************************************************************/
; //显示函数
	.dbline 33
; /******************************************************************************/  
; 	  void Display(void)
	sbi 0x14,1
	.dbline 34
;          {  
	sbi 0x15,1
	.dbline 35
; 		    uchar i;
	cbi 0x15,1
	.dbline 36
;             for(i=0;i<4;i++)
	ldi R16,3000
	ldi R17,11
	xcall _delay_18B20
	.dbline 37
;                 {
	sbi 0x15,1
	.dbline 38
; 				 if(i==1)
	cbi 0x14,1
	.dbline 39
; 		         PORTB=(discode[tx[i]])&0x7f;//显示数码管的点
	ldi R16,50
	ldi R17,0
	xcall _delay_18B20
L6:
	.dbline 40
; 				 else 
L7:
	.dbline 40
	sbic 0x13,1
	rjmp L6
X1:
	.dbline 41
; 				 PORTB=discode[tx[i]];
	sbi 0x14,1
	.dbline 42
;                  PORTA=disbit[i];
	sbi 0x15,1
	.dbline 43
;                  delay();
	ldi R16,150
	ldi R17,0
	.dbline -2
L5:
	.dbline 0 ; func end
	xjmp _delay_18B20
	.dbend
	.dbfunc e Write_1820 _Write_1820 fI
;              m -> R20
;              x -> R10
	.even
_Write_1820::
	st -y,R10
	st -y,R20
	mov R10,R16
	.dbline -1
	.dbline 49
;                  PORTA=0xff;
; 			    } 
; 		 }
; /******************************************************************************/
; //读出温度程序
; /******************************************************************************/  		 
	.dbline 51
; void ReadTemperature(void)
; {
	clr R20
	xjmp L13
L10:
	.dbline 52
; 	unsigned char a=0;
	.dbline 53
; 	unsigned char b=0;
	cbi 0x15,1
	.dbline 54
; 	unsigned char Data_L=0;
	ldi R16,1
	mov R17,R20
	xcall lsl8
	mov R2,R10
	and R2,R16
	breq L14
X2:
	.dbline 55
; 	unsigned char num=0;
	sbi 0x15,1
	xjmp L15
L14:
	.dbline 57
; 
; 	Init_1820();        //复位18b20 
	cbi 0x15,1
L15:
	.dbline 58
; 	Write_1820(0xcc);   // 发出转换命令 
	ldi R16,40
	ldi R17,0
	xcall _delay_18B20
	.dbline 59
;     Write_1820(0x44); 
	sbi 0x15,1
	.dbline 60
; 	Init_1820(); 
L11:
	.dbline 51
	inc R20
L13:
	.dbline 51
	cpi R20,8
	brlo L10
X3:
	.dbline 61
; 	Write_1820(0xcc);  //发出读命令 
	sbi 0x15,1
	.dbline -2
L9:
	.dbline 0 ; func end
	ld R20,y+
	ld R10,y+
	ret
	.dbsym r m 20 c
	.dbsym r x 10 c
	.dbend
	.dbfunc e Read_1820 _Read_1820 fc
;           temp -> R10
;              k -> R22
;              n -> R20
	.even
_Read_1820::
	xcall push_xgsetF00C
	.dbline -1
	.dbline 67
;     Write_1820(0xbe); 
; 	a=Read_1820();    //读数据 低8位
;     b=Read_1820();    //       高8位
; 	tx[0] = (a/16+b*16)/10;      //整数部分
; 	tx[1] = (a/16+b*16)%10; 
; 
	.dbline 69
;     Data_L=a&0X0F;
;      for(num=2;num<6;num++)		 //小数部分
	clr R10
	.dbline 70
;    {
	clr R20
	xjmp L20
L17:
	.dbline 71
;       Data_L=Data_L*10;				 //10	   //100		//40		 //80
	.dbline 72
;       tx[num]=Data_L/16;			 //0	  //6			//2			 //5
	cbi 0x15,1
	.dbline 73
;       Data_L=Data_L%16;				 //10	   //4			//8
	sbi 0x15,1
	.dbline 74
; 	}
	cbi 0x14,1
	.dbline 75
; }
	in R22,0x13
	andi R22,2
	.dbline 76
; /******************************************************************************/
	breq L21
X4:
	.dbline 77
; //主函数不断扫描数码管
	ldi R16,1
	mov R17,R20
	xcall lsl8
	or R10,R16
	xjmp L22
L21:
	.dbline 79
; /******************************************************************************/  
; 	  void main (void)
	ldi R16,1
	mov R17,R20
	xcall lsl8
	mov R2,R16
	com R2
	and R10,R2
L22:
	.dbline 80
;              { 
	ldi R16,50
	ldi R17,0
	xcall _delay_18B20
	.dbline 81
; 			 
	sbi 0x14,1
	.dbline 82
; 			      unsigned char n;
L18:
	.dbline 70
	inc R20
L20:
	.dbline 70
	cpi R20,8
	brlo L17
X5:
	.dbline 83
; 				  unsigned int  j;
	mov R16,R10
	.dbline -2
L16:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r temp 10 c
	.dbsym r k 22 c
	.dbsym r n 20 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\DS18B20.h
_tx::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\DS18B20.h
	.blkb 6
	.area idata
	.byte 0,0,0,0,0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\DS18B20.h
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.dbsym e tx _tx A[7:7]c
_discode::
	.blkb 2
	.area idata
	.byte 192,249
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.blkb 2
	.area idata
	.byte 164,176
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.blkb 2
	.area idata
	.byte 153,146
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.blkb 2
	.area idata
	.byte 130,248
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.blkb 2
	.area idata
	.byte 128,144
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.blkb 1
	.area idata
	.byte 255
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.dbsym e discode _discode A[12:12]c
_disbit::
	.blkb 2
	.area idata
	.byte 254,253
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.blkb 2
	.area idata
	.byte 251,247
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.dbsym e disbit _disbit A[4:4]c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	.dbfunc e delay _delay fV
;              i -> R16
	.even
_delay::
	.dbline -1
	.dbline 27
	.dbline 28
	clr R16
	xjmp L27
L24:
	.dbline 28
L25:
	.dbline 28
	inc R16
L27:
	.dbline 28
	cpi R16,255
	brlo L24
X6:
	.dbline -2
L23:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 c
	.dbend
	.dbfunc e Display _Display fV
;              i -> R20
	.even
_Display::
	st -y,R20
	.dbline -1
	.dbline 34
	.dbline 36
	clr R20
	xjmp L32
L29:
	.dbline 37
	.dbline 38
	cpi R20,1
	brne L33
X7:
	.dbline 39
	ldi R24,<_tx
	ldi R25,>_tx
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
	ldd R24,z+0
	andi R24,127
	out 0x18,R24
	xjmp L34
L33:
	.dbline 41
	ldi R24,<_tx
	ldi R25,>_tx
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
L34:
	.dbline 42
	ldi R24,<_disbit
	ldi R25,>_disbit
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x1b,R2
	.dbline 43
	xcall _delay
	.dbline 44
	ldi R24,255
	out 0x1b,R24
	.dbline 45
L30:
	.dbline 36
	inc R20
L32:
	.dbline 36
	cpi R20,4
	brsh X9
	xjmp L29
X9:
X8:
	.dbline -2
L28:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r i 20 c
	.dbend
	.dbfunc e ReadTemperature _ReadTemperature fV
;              b -> R12
;              a -> R10
;            num -> R22
;         Data_L -> R20
	.even
_ReadTemperature::
	xcall push_xgsetF03C
	.dbline -1
	.dbline 51
	.dbline 52
	.dbline 53
	.dbline 54
	.dbline 55
	.dbline 57
	xcall _Init_1820
	.dbline 58
	ldi R16,204
	xcall _Write_1820
	.dbline 59
	ldi R16,68
	xcall _Write_1820
	.dbline 60
	xcall _Init_1820
	.dbline 61
	ldi R16,204
	xcall _Write_1820
	.dbline 62
	ldi R16,190
	xcall _Write_1820
	.dbline 63
	xcall _Read_1820
	mov R10,R16
	.dbline 64
	xcall _Read_1820
	mov R12,R16
	.dbline 65
	ldi R24,16
	mul R24,R12
	mov R16,R10
	swap R16
	andi R16,#0x0F
	add R16,R0
	ldi R17,10
	xcall div8u
	sts _tx,R16
	.dbline 66
	ldi R24,16
	mul R24,R12
	mov R16,R10
	swap R16
	andi R16,#0x0F
	add R16,R0
	ldi R17,10
	xcall mod8u
	sts _tx+1,R16
	.dbline 68
	mov R20,R10
	andi R20,15
	.dbline 69
	ldi R22,2
	xjmp L40
L37:
	.dbline 70
	.dbline 71
	ldi R24,10
	mul R24,R20
	movw R20,R0
	.dbline 72
	ldi R24,<_tx
	ldi R25,>_tx
	mov R30,R22
	clr R31
	add R30,R24
	adc R31,R25
	mov R24,R20
	swap R24
	andi R24,#0x0F
	std z+0,R24
	.dbline 73
	ldi R17,16
	mov R16,R20
	xcall mod8u
	mov R20,R16
	.dbline 74
L38:
	.dbline 69
	inc R22
L40:
	.dbline 69
	cpi R22,6
	brlo L37
X10:
	.dbline -2
L35:
	.dbline 0 ; func end
	xjmp pop_xgsetF03C
	.dbsym r b 12 c
	.dbsym r a 10 c
	.dbsym r num 22 c
	.dbsym r Data_L 20 c
	.dbend
	.dbfunc e main _main fV
;              j -> <dead>
;              n -> R20
	.even
_main::
	.dbline -1
	.dbline 80
	.dbline 84
;                   DDRA=0xFF;       //设为输出口     
	ldi R24,255
	out 0x1a,R24
	.dbline 85
;                   DDRB=0xFF;       //设为输出口 
	out 0x17,R24
	.dbline 86
; 		          PORTA=0xFF;      
	out 0x1b,R24
	.dbline 87
;                   PORTB=0xFF;
	out 0x18,R24
	xjmp L43
L42:
	.dbline 90
;   
;                   while(1)
;                  {  
	.dbline 91
; 				   ReadTemperature();
	xcall _ReadTemperature
	.dbline 92
; 				   for(n=0;n<30;n++)  //显示30次读出一次温度，当作延时
	clr R20
	xjmp L48
L45:
	.dbline 93
; 				   Display();
	xcall _Display
L46:
	.dbline 92
	inc R20
L48:
	.dbline 92
	cpi R20,30
	brlo L45
X11:
	.dbline 94
; 			      }
L43:
	.dbline 89
	xjmp L42
X12:
	.dbline -2
L41:
	.dbline 0 ; func end
	ret
	.dbsym l j 1 i
	.dbsym r n 20 c
	.dbend
; 			 }
; 				 	
; 
;                       
;                       
;                        
;                             
;                
