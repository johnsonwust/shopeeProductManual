	.module AVR����.C
	.area text(rom, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
_disbuf::
	.blkb 2
	.area idata
	.byte 1,2
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 3,4
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.dbsym e disbuf _disbuf A[4:4]c
_discode::
	.blkb 2
	.area idata
	.byte 192,249
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 164,176
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 153,146
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 130,248
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 128,144
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 136,128
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 198,192
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 134,142
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.dbsym e discode _discode A[16:16]c
_disbit::
	.blkb 2
	.area idata
	.byte 254,253
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.blkb 2
	.area idata
	.byte 251,247
	.area data(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.dbsym e disbit _disbit A[4:4]c
	.area text(rom, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.dbfunc e delay _delay fV
;              i -> R16
	.even
_delay::
	.dbline -1
	.dbline 34
; /******************************************************************************/
; /*  Name:  �������ʾ��ַ�������J2Ҫ����                                     */
; /*  ���뻵����ICCAVR 7.16                                                     */
; /*  Designed by :���ĵ�                         Date:2007/6/21                */
; /*  ��������:ICCAVR                                                           */
; /*  QQ:80184985 �������                                                      */
; /******************************************************************************/  
;   #include <iom16v.h>
;   #include <macros.h>  
;   #define uint  unsigned int
;   #define uchar unsigned char
;   #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
;   #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
;   #define Get_Bit(val, bitn)    (val &(1<<(bitn)) ) 
;   #define Cpl_Bit(val, bitn)    (val^=(1<<(bitn)) )
;   #define fosc 8000000 //����8MHZ
;   #define baud 19200	 //������
; //*****************************************************************************/
;    uchar  disbuf[4]={1,2,3,4};
;    uchar  discode[]={ 0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90,0x88,0x80,0xc6,0xc0,0x86,0x8e };  //�����
;    uchar  disbit[4]  ={ 0xFE, 0xFD,0xFB,0xF7}; //ѡֵͨ   
;    uchar bitcnt;
;    uint newFall;
;    uint oldFall;
;    uint data0;
;    uint data1;  
;   //��������
;    void ICEInit(void);
;  
; /******************************************************************************/
; //��ʱ����
; /******************************************************************************/  	                                             							
;       void delay(void)   
;            {
	.dbline 36
; 		     uchar i;
;              for(i=0;i<255;i++);
	clr R16
	xjmp L5
L2:
	.dbline 36
L3:
	.dbline 36
	inc R16
L5:
	.dbline 36
	cpi R16,255
	brlo L2
X0:
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
	st -y,R20
	.dbline -1
	.dbline 42
;            }
; /******************************************************************************/
; //��ʾ����
; /******************************************************************************/  
; 	  void Display(void)
;          {  
	.dbline 44
; 		    uchar i;
;             for(i=0;i<4;i++)
	clr R20
	xjmp L10
L7:
	.dbline 45
;                 {
	.dbline 46
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
	.dbline 47
;                  PORTA=disbit[i];
	ldi R24,<_disbit
	ldi R25,>_disbit
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x1b,R2
	.dbline 48
;                  delay();
	xcall _delay
	.dbline 49
;                  PORTA=0xff;
	ldi R24,255
	out 0x1b,R24
	.dbline 50
; 			    } 
L8:
	.dbline 44
	inc R20
L10:
	.dbline 44
	cpi R20,4
	brlo L7
X1:
	.dbline -2
L6:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r i 20 c
	.dbend
	.dbfunc e ICEInit _ICEInit fV
	.even
_ICEInit::
	.dbline -1
	.dbline 56
; 		 }
; /******************************************************************************/
; //T/C1 �����ʼ��
; /******************************************************************************/               
;  void ICEInit(void) //T/C1��ʼ��
;  {
	.dbline 57
;     TIMSK=0X20;   //ʹ�ܲ����ж�
	ldi R24,32
	out 0x39,R24
	.dbline 58
;     TCCR1A=0X00;  //T/C1ʱ����ϵͳ��ͬ������ʹ��ϵͳAVR�ڲ��Դ�8MHz��Դ.T/C1ʱ������Ϊ1��s
	clr R2
	out 0x2f,R2
	.dbline 59
;     TCCR1B=0X82;  //ʹ���������ƣ��½��ش����ж�
	ldi R24,130
	out 0x2e,R24
	.dbline -2
L11:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 65
;  }
; /******************************************************************************/
; //������ ��ʾ��
; /******************************************************************************/  
;  void main(void)
;  {  
	.dbline 66
;      DDRA=0xFF;       //��Ϊ�����     
	ldi R24,255
	out 0x1a,R24
	.dbline 67
;      DDRB=0xFF;       //��Ϊ����� 
	out 0x17,R24
	.dbline 68
;      PORTA=0xFF;      
	out 0x1b,R24
	.dbline 69
;      PORTB=0xFF; 
	out 0x18,R24
	.dbline 70
;      ICEInit();
	xcall _ICEInit
	.dbline 71
;      SEI();
	sei
	xjmp L14
L13:
	.dbline 74
; 	 
;    while(1)
;    {
	.dbline 75
;       Display();
	xcall _Display
	.dbline 76
;    }
L14:
	.dbline 73
	xjmp L13
X2:
	.dbline -2
L12:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 20
	jmp _CAPT_ISR
	.area text(rom, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	.dbfunc e CAPT_ISR _CAPT_ISR fV
;              a -> <dead>
;           temp -> R16,R17
	.even
_CAPT_ISR::
	st -y,R1
	st -y,R2
	st -y,R3
	st -y,R4
	st -y,R5
	st -y,R16
	st -y,R17
	st -y,R24
	st -y,R25
	st -y,R26
	st -y,R30
	in R1,0x3f
	st -y,R1
	.dbline -1
	.dbline 85
;   } 
;   
; /******************************************************************************/
; //�����ж���������
; /******************************************************************************/  
; #pragma interrupt_handler CAPT_ISR:iv_TIMER1_CAPT 
; 
; void CAPT_ISR(void)
; {
	.dbline 88
;   uchar a;
;   uint temp;
;   newFall=ICR1;
	in R2,0x26
	in R3,0x27
	sts _newFall+1,R3
	sts _newFall,R2
	.dbline 89
;   temp=newFall-oldFall; //��������Ӽ����ʱ��
	lds R2,_oldFall
	lds R3,_oldFall+1
	lds R16,_newFall
	lds R17,_newFall+1
	sub R16,R2
	sbc R17,R3
	.dbline 90
;   oldFall=newFall;
	lds R2,_newFall
	lds R3,_newFall+1
	sts _oldFall+1,R3
	sts _oldFall,R2
	.dbline 92
;    
;  if(temp>1024 && temp<1225) // "0"�ź�
	ldi R24,1024
	ldi R25,4
	cp R24,R16
	cpc R25,R17
	brsh L17
X3:
	cpi R16,201
	ldi R30,4
	cpc R17,R30
	brsh L17
X4:
	.dbline 93
;    {
	.dbline 94
;     temp=0;
	clr R16
	clr R17
	.dbline 95
;    }
	xjmp L18
L17:
	.dbline 97
; 
; else if(temp>2145 && temp<2345) //��1���ź�
	ldi R24,2145
	ldi R25,8
	cp R24,R16
	cpc R25,R17
	brsh L19
X5:
	cpi R16,41
	ldi R30,9
	cpc R17,R30
	brsh L19
X6:
	.dbline 98
;    {
	.dbline 99
;     temp=1;
	ldi R16,1
	ldi R17,0
	.dbline 100
;    }
	xjmp L20
L19:
	.dbline 102
; 
; else if(temp>13400 && temp<13600) //header�ź�
	ldi R24,13400
	ldi R25,52
	cp R24,R16
	cpc R25,R17
	brlo X13
	xjmp L16
X13:
X7:
	cpi R16,32
	ldi R30,53
	cpc R17,R30
	brlo X14
	xjmp L16
X14:
X8:
	.dbline 104
; 
;   {
	.dbline 105
;    bitcnt=0;
	clr R2
	sts _bitcnt,R2
	.dbline 106
;    data0=0;
	clr R3
	sts _data0+1,R3
	sts _data0,R2
	.dbline 107
;    data1=0;
	sts _data1+1,R3
	sts _data1,R2
	.dbline 108
;    return; //���أ��ȴ��´ο�ʼ����
	xjmp L16
L20:
L18:
	.dbline 115
;   }
; 
; else ///�����ź�
;   {
;     return;
;   }
;   bitcnt++;
	lds R24,_bitcnt
	subi R24,255    ; addi 1
	sts _bitcnt,R24
	.dbline 116
;     if(bitcnt<16) //��ʼ����ǰ16λ
	cpi R24,16
	brsh L23
X9:
	.dbline 117
;   {
	.dbline 118
;     data0=data0|(uint)temp;
	lds R2,_data0
	lds R3,_data0+1
	or R2,R16
	or R3,R17
	sts _data0+1,R3
	sts _data0,R2
	.dbline 119
;     data0=data0<<1;
	lsl R2
	rol R3
	sts _data0+1,R3
	sts _data0,R2
	.dbline 120
;    }
	xjmp L24
L23:
	.dbline 121
; else if(bitcnt==16)
	lds R24,_bitcnt
	cpi R24,16
	brne L25
X10:
	.dbline 122
;   {
	.dbline 123
;    data0=data0|(uint)temp;
	lds R2,_data0
	lds R3,_data0+1
	or R2,R16
	or R3,R17
	sts _data0+1,R3
	sts _data0,R2
	.dbline 124
;   }
	xjmp L26
L25:
	.dbline 125
;  else if(bitcnt<32) //��ʼ���պ�16λ
	lds R24,_bitcnt
	cpi R24,32
	brsh L27
X11:
	.dbline 126
;  { 
	.dbline 127
;    data1=data1|(uint)temp;
	lds R2,_data1
	lds R3,_data1+1
	or R2,R16
	or R3,R17
	sts _data1+1,R3
	sts _data1,R2
	.dbline 128
;    data1=data1<<1;
	lsl R2
	rol R3
	sts _data1+1,R3
	sts _data1,R2
	.dbline 129
;  }
	xjmp L28
L27:
	.dbline 130
;  else if(bitcnt==32) //���������һλ
	lds R24,_bitcnt
	cpi R24,32
	brne L29
X12:
	.dbline 131
;  {
	.dbline 132
;     data1=data1|(uint)temp;
	lds R2,_data1
	lds R3,_data1+1
	or R2,R16
	or R3,R17
	sts _data1+1,R3
	sts _data1,R2
	.dbline 133
; 	disbuf[0]=(data0>>8)/16;//������ʾ
	lds R2,_data0
	lds R3,_data0+1
	mov R2,R3
	clr R3
	lsr R3
	ror R2
	lsr R3
	ror R2
	lsr R3
	ror R2
	lsr R3
	ror R2
	sts _disbuf,R2
	.dbline 134
; 	disbuf[1]=(data0>>8)%16;
	lds R24,_data0
	lds R25,_data0+1
	mov R24,R25
	clr R25
	andi R24,15
	andi R25,0
	sts _disbuf+1,R24
	.dbline 135
; 	disbuf[2]=(data1>>8)/16;
	lds R2,_data1
	lds R3,_data1+1
	mov R2,R3
	clr R3
	lsr R3
	ror R2
	lsr R3
	ror R2
	lsr R3
	ror R2
	lsr R3
	ror R2
	sts _disbuf+2,R2
	.dbline 136
; 	disbuf[3]=(data1>>8)%16;
	lds R24,_data1
	lds R25,_data1+1
	mov R24,R25
	clr R25
	andi R24,15
	andi R25,0
	sts _disbuf+3,R24
	.dbline 137
;  }
L29:
L28:
L26:
L24:
	.dbline -2
L16:
	.dbline 0 ; func end
	ld R1,y+
	out 0x3f,R1
	ld R30,y+
	ld R26,y+
	ld R25,y+
	ld R24,y+
	ld R17,y+
	ld R16,y+
	ld R5,y+
	ld R4,y+
	ld R3,y+
	ld R2,y+
	ld R1,y+
	reti
	.dbsym l a 1 c
	.dbsym r temp 16 i
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
_data1::
	.blkb 2
	.dbsym e data1 _data1 i
_data0::
	.blkb 2
	.dbsym e data0 _data0 i
_oldFall::
	.blkb 2
	.dbsym e oldFall _oldFall i
_newFall::
	.blkb 2
	.dbsym e newFall _newFall i
_bitcnt::
	.blkb 1
	.dbsym e bitcnt _bitcnt c
;  
; }
