	.module main.c
	.area text(rom, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
_disbuf::
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.dbsym e disbuf _disbuf A[4:4]c
_discode::
	.blkb 2
	.area idata
	.byte 192,249
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.blkb 2
	.area idata
	.byte 164,176
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.blkb 2
	.area idata
	.byte 153,146
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.blkb 2
	.area idata
	.byte 130,248
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.blkb 2
	.area idata
	.byte 128,144
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.blkb 1
	.area idata
	.byte 255
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.dbsym e discode _discode A[11:11]c
_disbit::
	.blkb 2
	.area idata
	.byte 254,253
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.blkb 2
	.area idata
	.byte 251,247
	.area data(ram, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.dbsym e disbit _disbit A[4:4]c
	.area text(rom, con, rel)
	.dbfile E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\18.上电读EEprom实现上电数码管加1\main.c
	.dbfunc e delayms _delayms fV
;              j -> R20,R21
;              K -> R16
	.even
_delayms::
	st -y,R20
	st -y,R21
	.dbline -1
	.dbline 28
; /******************************************************************************/
; /*  Name: 数码管每次上电都加1                                                 */
; /*  编译坏境：ICCAVR 7.16                                                     */
; /*  Designed by :廖文丹                         Date:2007/6/21                */
; /*  开发环境:ICCAVR                                                           */
; /*  QQ:80184985 真红炎神                                                      */     
; /******************************************************************************/   
; 	  #define uchar unsigned char
; 	  #define uint  unsigned int
; 	  #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
;       #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
;       #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
;       #include <iom16v.h>
;       uchar  disbuf[4]={0,0,0,0};  
;       uchar  discode[]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0xff};  //段码表
;       uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //选通值   
; /******************************************************************************/
; //函数声明
; /******************************************************************************/  		  
; 	  void delay(uchar k);
; 	  void Display(void); 
; 	  void Write_EEprom(uchar Data,uint address);//写入AVR单片机内部EERPOM函数
; 	  uchar Read_EEprom (uint address);          //读出AVR单片机内部EERPOM函数   
; /******************************************************************************/
; //延时函数
; /******************************************************************************/  		                                            							
;       void delayms(uchar K)
;            {
	.dbline 30
; 		    uint j;
; 		    for(;K!=0;K--)
	xjmp L5
L2:
	.dbline 31
; 			 for(j=1000;j!=0;j--);  
	ldi R20,1000
	ldi R21,3
	xjmp L9
L6:
	.dbline 31
L7:
	.dbline 31
	subi R20,1
	sbci R21,0
L9:
	.dbline 31
	cpi R20,0
	cpc R20,R21
	brne L6
X0:
L3:
	.dbline 30
	dec R16
L5:
	.dbline 30
	tst R16
	brne L2
X1:
	.dbline -2
L1:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	ret
	.dbsym r j 20 i
	.dbsym r K 16 c
	.dbend
	.dbfunc e Display _Display fV
;              i -> R20
	.even
_Display::
	st -y,R20
	.dbline -1
	.dbline 37
;            }
; /******************************************************************************/
; //显示函数
; /******************************************************************************/  		      
; 	  void Display(void)
;          {  
	.dbline 39
; 		    uchar i;
;             for(i=0;i<4;i++)
	clr R20
	xjmp L14
L11:
	.dbline 40
;                 {
	.dbline 41
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
	.dbline 42
;                  PORTA=disbit[i];
	ldi R24,<_disbit
	ldi R25,>_disbit
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x1b,R2
	.dbline 43
;                  delayms(1);
	ldi R16,1
	xcall _delayms
	.dbline 44
;                  PORTA=0xff;
	ldi R24,255
	out 0x1b,R24
	.dbline 45
; 			    } 
L12:
	.dbline 39
	inc R20
L14:
	.dbline 39
	cpi R20,4
	brlo L11
X2:
	.dbline -2
L10:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r i 20 c
	.dbend
	.dbfunc e Read_EEprom _Read_EEprom fc
;              j -> R10
;        address -> R20,R21
	.even
_Read_EEprom::
	xcall push_xgset300C
	movw R20,R16
	.dbline -1
	.dbline 51
; 		 }
; /******************************************************************************/
; //读内部EEPROM函数
; /******************************************************************************/  				 
;       uchar Read_EEprom(uint address)
; 	     {
	.dbline 53
; 		  uchar j;
; 		  if(EECR&0x01)delayms(32);
	sbis 0x1c,0
	rjmp L16
X3:
	.dbline 53
	ldi R16,32
	xcall _delayms
L16:
	.dbline 54
; 		  EEARH=address>>8;
	movw R2,R20
	mov R2,R3
	clr R3
	out 0x1f,R2
	.dbline 55
; 		  EEARL=address&0x00ff;
	movw R24,R20
	andi R25,0
	out 0x1e,R24
	.dbline 56
; 		  EECR=EECR|0x01;
	sbi 0x1c,0
	.dbline 57
; 		  delayms(32);
	ldi R16,32
	xcall _delayms
	.dbline 58
; 		  j=EEDR;
	in R10,0x1d
	.dbline 59
; 		  return(j);
	mov R16,R10
	.dbline -2
L15:
	.dbline 0 ; func end
	xjmp pop_xgset300C
	.dbsym r j 10 c
	.dbsym r address 20 i
	.dbend
	.dbfunc e Write_EEprom _Write_EEprom fV
;        address -> R20,R21
;           data -> R10
	.even
_Write_EEprom::
	xcall push_xgset300C
	movw R20,R18
	mov R10,R16
	.dbline -1
	.dbline 65
; 		  }
; /******************************************************************************/
; //写入EEPORM函数
; /******************************************************************************/  				  
; 	 void Write_EEprom(uchar data,uint address)
; 	     {
	.dbline 66
; 		  if(EECR&0x20)delayms(32);
	sbis 0x1c,5
	rjmp L19
X4:
	.dbline 66
	ldi R16,32
	xcall _delayms
L19:
	.dbline 67
; 		  EEARH=address>>8;
	movw R2,R20
	mov R2,R3
	clr R3
	out 0x1f,R2
	.dbline 68
; 		  EEARL=address&0x00ff; 
	movw R24,R20
	andi R25,0
	out 0x1e,R24
	.dbline 69
; 		  EEDR=data;
	out 0x1d,R10
	.dbline 70
; 		  EECR=EECR|0x04;
	sbi 0x1c,2
	.dbline 71
; 		  EECR=EECR|0x02;
	sbi 0x1c,1
	.dbline 72
; 		  delayms(32);
	ldi R16,32
	xcall _delayms
	.dbline -2
L18:
	.dbline 0 ; func end
	xjmp pop_xgset300C
	.dbsym r address 20 i
	.dbsym r data 10 c
	.dbend
	.dbfunc e main _main fV
;              i -> R20
	.even
_main::
	.dbline -1
	.dbline 78
; 		 }
; /******************************************************************************/
; //主函数
; /******************************************************************************/  			 
;          void main (void)
;          { 
	.dbline 80
; 		   uchar i;
; 		   DDRA|=1<<0|1<<1|1<<2|1<<3|0<<4;//设置PA0,PA1,PA2为输出,PA4为输入
	in R24,0x1a
	ori R24,15
	out 0x1a,R24
	.dbline 81
; 	       PORTA=0x00;
	clr R2
	out 0x1b,R2
	.dbline 83
; 	
; 		   DDRB=0XFF;   //数码管段码输出口
	ldi R24,255
	out 0x17,R24
	.dbline 84
; 		   PORTB=0xFF;
	out 0x18,R24
	.dbline 86
; 		   
; 			   i=Read_EEprom(1);//读出EEPROM存的数
	ldi R16,1
	ldi R17,0
	xcall _Read_EEprom
	mov R20,R16
	.dbline 87
; 			   i++;             //在原来基础上加1，每次开机数码管加1
	inc R20
	.dbline 88
; 			   if(i>=255)i=0;
	cpi R20,255
	brlo L22
X5:
	.dbline 88
	clr R20
L22:
	.dbline 89
; 			   Write_EEprom(i,1);
	ldi R18,1
	ldi R19,0
	mov R16,R20
	xcall _Write_EEprom
	.dbline 90
; 			   disbuf[1]=i/100;
	ldi R17,100
	mov R16,R20
	xcall div8u
	sts _disbuf+1,R16
	.dbline 91
; 			   disbuf[2]=i%100/10;
	ldi R17,100
	mov R16,R20
	xcall mod8u
	ldi R17,10
	xcall div8u
	sts _disbuf+2,R16
	.dbline 92
; 			   disbuf[3]=i%100%10;
	ldi R17,100
	mov R16,R20
	xcall mod8u
	ldi R17,10
	xcall mod8u
	sts _disbuf+3,R16
	.dbline 93
; 			   disbuf[0]=10;
	ldi R24,10
	sts _disbuf,R24
	xjmp L28
L27:
	.dbline 95
;                   while(1)
;                  {  
	.dbline 98
; 				 
; 				 
; 				      if(Get_Bit(PINA,4)==0)   //按键加一，并写入EEPROM ,断电重启后，数码管一直显示0123
	sbic 0x19,4
	rjmp L30
X6:
	.dbline 99
; 					{
	xjmp L33
L32:
	.dbline 100
; 					    while(!Get_Bit(PINA,4))Display();   
	xcall _Display
L33:
	.dbline 100
	sbis 0x19,4
	rjmp L32
X7:
	.dbline 101
; 			           { 
	.dbline 102
; 					     i++;
	inc R20
	.dbline 103
; 						 if(i>=255)i=0;
	cpi R20,255
	brlo L35
X8:
	.dbline 103
	clr R20
L35:
	.dbline 104
; 						 Write_EEprom(i,1);
	ldi R18,1
	ldi R19,0
	mov R16,R20
	xcall _Write_EEprom
	.dbline 105
; 						 disbuf[1]=i/100;
	ldi R17,100
	mov R16,R20
	xcall div8u
	sts _disbuf+1,R16
	.dbline 106
; 						 disbuf[2]=i%100/10;
	ldi R17,100
	mov R16,R20
	xcall mod8u
	ldi R17,10
	xcall div8u
	sts _disbuf+2,R16
	.dbline 107
; 						 disbuf[3]=i%100%10;
	ldi R17,100
	mov R16,R20
	xcall mod8u
	ldi R17,10
	xcall mod8u
	sts _disbuf+3,R16
	.dbline 108
; 						 disbuf[0]=10;
	ldi R24,10
	sts _disbuf,R24
	.dbline 109
; 				       }
	.dbline 110
; 					 }
L30:
	.dbline 111
; 					Display();    
	xcall _Display
	.dbline 112
; 			     }
L28:
	.dbline 94
	xjmp L27
X9:
	.dbline -2
L21:
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbend
; 			 }
; 
; 						
; 			               
;                        
;                             
;                
;                 
; 
; 
;    
;                       
;                        
;                             
;                
;                 
; 
; 
