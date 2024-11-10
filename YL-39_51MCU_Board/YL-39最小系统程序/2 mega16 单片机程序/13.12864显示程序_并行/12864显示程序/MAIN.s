	.module MAIN.C
	.area text(rom, con, rel)
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\MAIN.C
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\delay.h
	.dbfunc e Delay_1us _Delay_1us fV
;              t -> R16
	.even
_Delay_1us::
	.dbline -1
	.dbline 53
; #ifndef	_DELAY_H
; #define	_DELAY_H
; 
; // mcu:avr   crystal=8MHz
; 
; /**************************************************************
; **��������:��ʱ1us
; **�������:��
; **����ֵ:��
; **�ڱ������ⶨ�����:��
; **���õĺ���:NOP()
; **************************************************************/
; void Delay_1us(void);
; 
; /**************************************************************
; **��������:us����ʱ
; **�������:xus:��ʱus��
; **����ֵ:��
; **�ڱ������ⶨ�����:��
; **���õĺ���:Delay_1us()
; **************************************************************/
; void Delay_Us(unsigned int xus);
; 
; /**************************************************************
; **��������:��ʱ1ms
; **�������:��
; **����ֵ:��
; **�ڱ������ⶨ�����:��
; **���õĺ���:NOP()
; **************************************************************/
; void Delay_1ms(void);
; 
; /**************************************************************
; **��������:ms����ʱ
; **�������:xms:��ʱms��
; **����ֵ:��
; **�ڱ������ⶨ�����:��
; **���õĺ���:Delay_1ms()
; **************************************************************/
; void Delay_Ms(unsigned int xms);
; 
; /**************************************************************
; **��������:10us����ʱ
; **�������:x10us:��ʱx10us��
; **����ֵ:��
; **�ڱ������ⶨ�����:��
; **���õĺ���:��
; **************************************************************/
; void Delay10us(Word x10us);
; 
; 
; void Delay_1us()
; {
	.dbline 54
; 	unsigned char t=2;
	ldi R16,2
	.dbline 55
;    	t--;
	dec R16
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r t 16 c
	.dbend
	.dbfunc e Delay_Us _Delay_Us fV
;            xus -> R20,R21
	.even
_Delay_Us::
	st -y,R20
	st -y,R21
	movw R20,R16
	.dbline -1
	.dbline 59
; }
; 
; void Delay_Us(unsigned int xus)
; {
	xjmp L4
L3:
	.dbline 61
; 	 while (xus--)
;        	Delay_1us();
	xcall _Delay_1us
L4:
	.dbline 60
	movw R2,R20
	subi R20,1
	sbci R21,0
	tst R2
	brne L3
	tst R3
	brne L3
X0:
	.dbline -2
L2:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	ret
	.dbsym r xus 20 i
	.dbend
	.dbfunc e Delay_1ms _Delay_1ms fV
;              i -> R16,R17
	.even
_Delay_1ms::
	.dbline -1
	.dbline 65
; }
; 
; void Delay_1ms(void)
; {
	.dbline 67
; 	unsigned int i;
; 	for(i=0;i<1142;i++)
	clr R16
	clr R17
	xjmp L10
L7:
	.dbline 68
; 		;
L8:
	.dbline 67
	subi R16,255  ; offset = 1
	sbci R17,255
L10:
	.dbline 67
	cpi R16,118
	ldi R30,4
	cpc R17,R30
	brlo L7
X1:
	.dbline -2
L6:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 i
	.dbend
	.dbfunc e Delay_Ms _Delay_Ms fV
;              i -> R20,R21
;              j -> R22,R23
;            xms -> R16,R17
	.even
_Delay_Ms::
	xcall push_xgsetF000
	.dbline -1
	.dbline 72
; }
; 
; void Delay_Ms(Word xms) //crystal=8MHz
; {
	.dbline 74
; 	Word i,j; //variable:declare Word
; 	for(i=0; i<xms; i++)
	clr R20
	clr R21
	xjmp L15
L12:
	.dbline 75
; 		for(j=0; j<498;j++)
	clr R22
	clr R23
	xjmp L19
L16:
	.dbline 76
; 		{
	.dbline 77
; 			NOP();
	nop
	.dbline 78
; 			NOP();
	nop
	.dbline 79
; 			NOP();
	nop
	.dbline 80
; 			NOP();
	nop
	.dbline 81
; 			NOP();
	nop
	.dbline 82
; 			NOP();
	nop
	.dbline 83
; 			NOP();
	nop
	.dbline 84
; 			NOP();
	nop
	.dbline 85
; 			NOP();
	nop
	.dbline 86
; 		}
L17:
	.dbline 75
	subi R22,255  ; offset = 1
	sbci R23,255
L19:
	.dbline 75
	cpi R22,242
	ldi R30,1
	cpc R23,R30
	brlo L16
X2:
L13:
	.dbline 74
	subi R20,255  ; offset = 1
	sbci R21,255
L15:
	.dbline 74
	cp R20,R16
	cpc R21,R17
	brlo L12
X3:
	.dbline -2
L11:
	.dbline 0 ; func end
	xjmp pop_xgsetF000
	.dbsym r i 20 i
	.dbsym r j 22 i
	.dbsym r xms 16 i
	.dbend
	.dbfunc e Delay10us _Delay10us fV
;              i -> R20,R21
;              j -> R22
;          x10us -> R16,R17
	.even
_Delay10us::
	xcall push_xgsetF000
	.dbline -1
	.dbline 90
; }
; 
; void Delay10us(Word x10us)//crystal=8MHz
; {
	.dbline 92
; 	Word i;Byte j; //variable:declare Word
; 	for(i=0; i<x10us; i++)
	clr R20
	clr R21
	xjmp L24
L21:
	.dbline 93
; 	{
	.dbline 94
; 			for(j=0;j<2;j++)
	clr R22
	xjmp L28
L25:
	.dbline 95
; 			{
	.dbline 96
; 			 	NOP();
	nop
	.dbline 97
; 				NOP();
	nop
	.dbline 98
; 				NOP();
	nop
	.dbline 99
; 			}
L26:
	.dbline 94
	inc R22
L28:
	.dbline 94
	cpi R22,2
	brlo L25
X4:
	.dbline 100
; 	}
L22:
	.dbline 92
	subi R20,255  ; offset = 1
	sbci R21,255
L24:
	.dbline 92
	cp R20,R16
	cpc R21,R17
	brlo L21
X5:
	.dbline -2
L20:
	.dbline 0 ; func end
	xjmp pop_xgsetF000
	.dbsym r i 20 i
	.dbsym r j 22 c
	.dbsym r x10us 16 i
	.dbend
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\initrialm16.h
	.dbfunc e Init_Devices _Init_Devices fV
	.even
_Init_Devices::
	.dbline -1
	.dbline 16
; //ICC-AVR application builder : 2007-6-27 10:26:06
; // Target : M8
; // Crystal: 8.0000Mhz
; 
; /**************��ʼ��m8����***************/
; #ifndef Initrial_M16_H
; #define Initrial_M16_H
; 
; void Init_Devices(void);
; void Port_Init(void);  
; 
;  
; 
; //call this routine to initialize all peripherals
; void Init_Devices(void)
; {
	.dbline 18
; 	//stop errant interrupts until set up
; 	CLI(); //disable all interrupts
	cli
	.dbline 19
; 	MCUCR = 0x00;
	clr R2
	out 0x35,R2
	.dbline 20
;  	GICR  = 0x00;
	out 0x3b,R2
	.dbline 21
;  	TIMSK = 0x00; //timer interrupt sources
	out 0x39,R2
	.dbline 22
; 	Port_Init(); 
	xcall _Port_Init
	.dbline 23
; 	SEI(); //re-enable interrupts
	sei
	.dbline -2
L29:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e Port_Init _Port_Init fV
	.even
_Port_Init::
	.dbline -1
	.dbline 28
; 	//all peripherals are now initialized
; }
; 
; void Port_Init(void)
; {
	.dbline 29
; 	PORTA = 0xFF;
	ldi R24,255
	out 0x1b,R24
	.dbline 30
; 	DDRA  = 0xFF;
	out 0x1a,R24
	.dbline 31
; 	PORTB = 0xFF;
	out 0x18,R24
	.dbline 32
; 	DDRB  = 0xFF;
	out 0x17,R24
	.dbline 33
; 	PORTC = 0xFF; 
	out 0x15,R24
	.dbline 34
; 	DDRD  = 0xFF;
	out 0x11,R24
	.dbline 35
; 	PORTD = 0xFF;	
	out 0x12,R24
	.dbline -2
L30:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\lcd12864.h
	.dbfunc e init12864_Hzk _init12864_Hzk fV
	.even
_init12864_Hzk::
	.dbline -1
	.dbline 58
; /******************************************************************** 
;  ��            �ܣ�LCD1602Һ����д����
;  ��            ʽ�����ڷ�ʽ ST7920����
;  ˵            ����MCU:atmage16  8M
;  ��            �ƣ�   
;  ��            �ģ��������   
;  ��            �ڣ�2008.09.06
; ********************************************************************/
; #ifndef _LCD12864_H
; #define _LCD12864_H
; 
; #include "delay.h"
; 
; unsigned char const IC_DAT[];
; unsigned char const pic1[];
; unsigned char const pic2[];
; unsigned char const pic3[];
; 
; //Port Definitions
; #define LCD12864_DATAPORT PORTB//��������˿�
; #define LCD12864_DATAPIN PINB//��������˿�
; #define LCD12864_DATADDR  DDRB//���ݷ���
; #define LCD12864_CTRLPORT PORTA
; 	#define RS12864 PA0//��������ѡ��
; 	#define RW12864 PA1//��дѡ��
; 	#define E12864  PA2//ʹ��
; 	#define PSB12864  PC0//����ѡ��
; 	#define RST12864  PA7//��λ
; 
; #define PSB12864_H LCD12864_CTRLPORT |= BIT(PSB12864)
; #define PSB12864_L LCD12864_CTRLPORT &=~ BIT(PSB12864)
; 
; #define RST12864_H LCD12864_CTRLPORT |= BIT(RST12864)
; #define RST12864_L LCD12864_CTRLPORT &=~ BIT(RST12864)
; 
; #define RS12864_H LCD12864_CTRLPORT |= BIT(RS12864)
; #define RS12864_L LCD12864_CTRLPORT &=~ BIT(RS12864)
; 
; #define RW12864_H LCD12864_CTRLPORT |= BIT(RW12864)
; #define RW12864_L LCD12864_CTRLPORT &=~ BIT(RW12864)
; 
; #define E12864_H LCD12864_CTRLPORT |= BIT(E12864)
; #define E12864_L LCD12864_CTRLPORT &=~ BIT(E12864)
; 
; #define CMD12864 0 
; #define DATA12864 1
; 
; void  TransferData(unsigned char data1,unsigned char di);
; void  display(void);
; void  display_grapic(void);
; void  DisplayLine(unsigned char line1,unsigned char line2);
; void  DisplayGraphic(unsigned char const *adder);
; void  lcd_mesg(unsigned char const *adder1);
; void   lcd12864_GB16X16(unsigned char y,unsigned char x,unsigned char *p);//16x16������ʾ����
; 
; 
; void  init12864_Hzk(void)           //LCD�ֿ��ʼ������
; {
	.dbline 59
; 	Delay_Ms(50);	//����40MS����ʱ����              
	ldi R16,50
	ldi R17,0
	xcall _Delay_Ms
	.dbline 60
; 	PSB12864_H;		//����Ϊ8BIT���ڹ���ģʽ
	sbi 0x1b,0
	.dbline 61
; 	Delay_Us(1);
	ldi R16,1
	ldi R17,0
	xcall _Delay_Us
	.dbline 62
; 	RST12864_L;
	cbi 0x1b,7
	.dbline 63
; 	Delay_Ms(50);	//����40MS����ʱ����               
	ldi R16,50
	ldi R17,0
	xcall _Delay_Ms
	.dbline 64
; 	RST12864_H;		//��λ�ø�
	sbi 0x1b,7
	.dbline 65
; 	Delay_Ms(50);
	ldi R16,50
	ldi R17,0
	xcall _Delay_Ms
	.dbline 66
; 	TransferData(0x30,0);  //Extended Function Set :8BIT����,RE=0: basic instruction set, G=0 :graphic display OFF
	clr R18
	ldi R16,48
	xcall _TransferData
	.dbline 67
; 	Delay_Us(120);         //����100uS����ʱ����
	ldi R16,120
	ldi R17,0
	xcall _Delay_Us
	.dbline 68
; 	TransferData(0x30,0);  //Function Set
	clr R18
	ldi R16,48
	xcall _TransferData
	.dbline 69
; 	Delay_Us(40);          //����37uS����ʱ����
	ldi R16,40
	ldi R17,0
	xcall _Delay_Us
	.dbline 70
; 	TransferData(0x08,0);  //Display on Control
	clr R18
	ldi R16,8
	xcall _TransferData
	.dbline 71
; 	Delay_Us(120);         //����100uS����ʱ����
	ldi R16,120
	ldi R17,0
	xcall _Delay_Us
	.dbline 72
; 	TransferData(0x10,0);  //Cursor Display Control�������
	clr R18
	ldi R16,16
	xcall _TransferData
	.dbline 73
; 	Delay_Us(120);         //����100uS����ʱ����
	ldi R16,120
	ldi R17,0
	xcall _Delay_Us
	.dbline 74
; 	TransferData(0x0C,0);  //Display Control,D=1,��ʾ��
	clr R18
	ldi R16,12
	xcall _TransferData
	.dbline 75
; 	Delay_Us(120);         //����100uS����ʱ����
	ldi R16,120
	ldi R17,0
	xcall _Delay_Us
	.dbline 76
; 	TransferData(0x01,0);  //Display Clear
	clr R18
	ldi R16,1
	xcall _TransferData
	.dbline 77
; 	Delay_Ms(15);          //����10mS����ʱ����
	ldi R16,15
	ldi R17,0
	xcall _Delay_Ms
	.dbline 78
; 	TransferData(0x06,0);  //Enry Mode Set,�����������1λ�ƶ�
	clr R18
	ldi R16,6
	xcall _TransferData
	.dbline 79
; 	Delay_Us(120);         //����100uS����ʱ����
	ldi R16,120
	ldi R17,0
	.dbline -2
L31:
	.dbline 0 ; func end
	xjmp _Delay_Us
	.dbend
	.dbfunc e init12864_Bmp _init12864_Bmp fV
	.even
_init12864_Bmp::
	.dbline -1
	.dbline 85
; }
; 
; 
; 
; void init12864_Bmp(void)        //LCD��ʾͼƬ(��չ)��ʼ������
; {
	.dbline 86
; 	Delay_Ms(50);          //����40MS����ʱ����
	ldi R16,50
	ldi R17,0
	xcall _Delay_Ms
	.dbline 87
; 	PSB12864_H;            //����Ϊ8BIT���ڹ���ģʽ
	sbi 0x1b,0
	.dbline 88
; 	Delay_Us(1);           //��ʱ
	ldi R16,1
	ldi R17,0
	xcall _Delay_Us
	.dbline 89
; 	RST12864_L;            //��λ
	cbi 0x1b,7
	.dbline 90
; 	Delay_Ms(50);          //��ʱ
	ldi R16,50
	ldi R17,0
	xcall _Delay_Ms
	.dbline 91
; 	RST12864_H;            //��λ�ø�
	sbi 0x1b,7
	.dbline 92
; 	Delay_Ms(255);;
	ldi R16,255
	ldi R17,0
	xcall _Delay_Ms
	.dbline 92
	.dbline 93
; 	TransferData(0x36,0);  //Extended Function Set RE=1: extended instruction
	clr R18
	ldi R16,54
	xcall _TransferData
	.dbline 94
; 	Delay_Us(120);         //����100uS����ʱ����
	ldi R16,120
	ldi R17,0
	xcall _Delay_Us
	.dbline 95
; 	TransferData(0x36,0);  //Extended Function Set:RE=1: extended instruction set
	clr R18
	ldi R16,54
	xcall _TransferData
	.dbline 96
; 	Delay_Us(40);          //����37uS����ʱ����
	ldi R16,40
	ldi R17,0
	xcall _Delay_Us
	.dbline 97
; 	TransferData(0x3E,0);  //EXFUNCTION(DL=8BITS,RE=1,G=1)
	clr R18
	ldi R16,62
	xcall _TransferData
	.dbline 98
; 	Delay_Us(120);         //����100uS����ʱ����
	ldi R16,120
	ldi R17,0
	xcall _Delay_Us
	.dbline 99
; 	TransferData(0x01,0);  //CLEAR SCREEN
	clr R18
	ldi R16,1
	xcall _TransferData
	.dbline 100
; 	Delay_Us(120);         //����100uS����ʱ����
	ldi R16,120
	ldi R17,0
	.dbline -2
L32:
	.dbline 0 ; func end
	xjmp _Delay_Us
	.dbend
	.dbfunc e lcd12864_GB16X16 _lcd12864_GB16X16 fV
;            num -> R12
;              i -> R10
;              p -> R14,R15
;              x -> R20
;              y -> R22
	.even
_lcd12864_GB16X16::
	xcall push_xgsetF0FC
	mov R20,R18
	mov R22,R16
	ldd R14,y+10
	ldd R15,y+11
	.dbline -1
	.dbline 104
; }
; 
; void   lcd12864_GB16X16(unsigned char y,unsigned char x,unsigned char *p)//16x16������ʾ����
; {
	.dbline 105
; 	unsigned char i=0,num=0;
	clr R10
	.dbline 105
	clr R12
	xjmp L35
L34:
	.dbline 107
; 	while(*(p+num) != 0)//�ж��ַ�������
; 		num ++;
	inc R12
L35:
	.dbline 106
	mov R30,R12
	clr R31
	add R30,R14
	adc R31,R15
	ldd R2,z+0
	tst R2
	brne L34
X6:
	.dbline 108
; 	if(y == 0)//��0��
	tst R22
	brne L37
X7:
	.dbline 109
; 	{
	.dbline 110
;     	TransferData(0x80+x,0);  //Set Graphic Display RAM Address
	clr R18
	mov R16,R20
	subi R16,128    ; addi 128
	xcall _TransferData
	.dbline 111
; 	}
L37:
	.dbline 112
; 	if(y == 1)//��0��
	cpi R22,1
	brne L39
X8:
	.dbline 113
; 	{
	.dbline 114
;     	TransferData(0x90+x,0);  //Set Graphic Display RAM Address
	clr R18
	mov R16,R20
	subi R16,112    ; addi 144
	xcall _TransferData
	.dbline 115
; 	}
L39:
	.dbline 116
; 	if(y == 2)//��0��
	cpi R22,2
	brne L41
X9:
	.dbline 117
; 	{
	.dbline 118
;     	TransferData(0x88+x,0);  //Set Graphic Display RAM Address
	clr R18
	mov R16,R20
	subi R16,120    ; addi 136
	xcall _TransferData
	.dbline 119
; 	}
L41:
	.dbline 120
; 	if(y == 3)//��0��
	cpi R22,3
	brne L43
X10:
	.dbline 121
; 	{
	.dbline 122
;     	TransferData(0x98+x,0);  //Set Graphic Display RAM Address
	clr R18
	mov R16,R20
	subi R16,104    ; addi 152
	xcall _TransferData
	.dbline 123
; 	}
L43:
	.dbline 124
;     Delay_Us(120);
	ldi R16,120
	ldi R17,0
	xcall _Delay_Us
	.dbline 125
; 	for(i=0;i<num;i++)
	clr R10
	xjmp L48
L45:
	.dbline 126
; 	{
	.dbline 127
;   		TransferData(*(p+i),1);
	ldi R18,1
	mov R30,R10
	clr R31
	add R30,R14
	adc R31,R15
	ldd R16,z+0
	xcall _TransferData
	.dbline 128
; 	}
L46:
	.dbline 125
	inc R10
L48:
	.dbline 125
	cp R10,R12
	brlo L45
X11:
	.dbline -2
L33:
	.dbline 0 ; func end
	xjmp pop_xgsetF0FC
	.dbsym r num 12 c
	.dbsym r i 10 c
	.dbsym r p 14 pc
	.dbsym r x 20 c
	.dbsym r y 22 c
	.dbend
	.dbfunc e TransferData _TransferData fV
;      cmdordata -> R12
;          data1 -> R10
	.even
_TransferData::
	st -y,R10
	st -y,R12
	mov R12,R18
	mov R10,R16
	.dbline -1
	.dbline 132
; }
; 
; void  TransferData(unsigned char data1,unsigned char cmdordata)  //�������ݻ�������,��DI=0��,��������,��DI=1,��������.
; {
	.dbline 133
; 	E12864_L;
	cbi 0x1b,2
	.dbline 134
; 	RW12864_L;
	cbi 0x1b,1
	.dbline 135
; 	Delay_Us(1);
	ldi R16,1
	ldi R17,0
	xcall _Delay_Us
	.dbline 136
; 	if(cmdordata == 0)
	tst R12
	brne L50
X12:
	.dbline 137
; 	{
	.dbline 138
; 		RS12864_L;
	cbi 0x1b,0
	.dbline 139
; 	}
	xjmp L51
L50:
	.dbline 141
; 	else
; 	{
	.dbline 142
; 		RS12864_H;
	sbi 0x1b,0
	.dbline 143
; 	}
L51:
	.dbline 144
; 	Delay_Us(1);
	ldi R16,1
	ldi R17,0
	xcall _Delay_Us
	.dbline 145
; 	LCD12864_DATAPORT = data1;
	out 0x18,R10
	.dbline 146
; 	E12864_H;
	sbi 0x1b,2
	.dbline 147
; 	Delay_Us(1);
	ldi R16,1
	ldi R17,0
	xcall _Delay_Us
	.dbline 148
; 	E12864_L;
	cbi 0x1b,2
	.dbline 149
; 	Delay_Us(1);
	ldi R16,1
	ldi R17,0
	xcall _Delay_Us
	.dbline -2
L49:
	.dbline 0 ; func end
	ld R12,y+
	ld R10,y+
	ret
	.dbsym r cmdordata 12 c
	.dbsym r data1 10 c
	.dbend
	.dbfunc e DisplayGraphic _DisplayGraphic fV
;              i -> R20,R21
;              j -> R10,R11
;          adder -> R22,R23
	.even
_DisplayGraphic::
	xcall push_xgsetF00C
	movw R22,R16
	.dbline -1
	.dbline 154
; }
; 
; 
; void DisplayGraphic(unsigned char const *adder)
; {
	.dbline 158
; 
;    int i,j;
; //*******��ʾ�ϰ�����������
;    for(i=0;i<32;i++)              //
	clr R20
	clr R21
L53:
	.dbline 159
;    { 
	.dbline 160
;       TransferData((0x80 + i),0); //SET  ��ֱ��ַ VERTICAL ADD
	clr R18
	movw R16,R20
	subi R16,128  ; offset = 128
	sbci R17,255
	xcall _TransferData
	.dbline 161
;       TransferData(0x80,0);       //SET  ˮƽ��ַ HORIZONTAL ADD
	clr R18
	ldi R16,128
	xcall _TransferData
	.dbline 162
;       for(j=0;j<16;j++)
	clr R10
	clr R11
L57:
	.dbline 163
;        {
	.dbline 164
;          TransferData(*adder,1);
	ldi R18,1
	movw R30,R22
	lpm R16,Z
	xcall _TransferData
	.dbline 165
;          adder++;
	subi R22,255  ; offset = 1
	sbci R23,255
	.dbline 166
;        }
L58:
	.dbline 162
	movw R24,R10
	adiw R24,1
	movw R10,R24
	.dbline 162
	cpi R24,16
	ldi R30,0
	cpc R25,R30
	brlt L57
X13:
	.dbline 167
;    }
L54:
	.dbline 158
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 158
	cpi R20,32
	ldi R30,0
	cpc R21,R30
	brlt L53
X14:
	.dbline 169
; //*******��ʾ�°�����������
;    for(i=0;i<32;i++)              //
	clr R20
	clr R21
L61:
	.dbline 170
;    {
	.dbline 171
;       TransferData((0x80 + i),0); //SET ��ֱ��ַ VERTICAL ADD
	clr R18
	movw R16,R20
	subi R16,128  ; offset = 128
	sbci R17,255
	xcall _TransferData
	.dbline 172
;       TransferData(0x88,0);       //SET ˮƽ��ַ HORIZONTAL ADD
	clr R18
	ldi R16,136
	xcall _TransferData
	.dbline 173
;       for(j=0;j<16;j++)
	clr R10
	clr R11
L65:
	.dbline 174
;       {
	.dbline 175
;          TransferData(*adder,1);
	ldi R18,1
	movw R30,R22
	lpm R16,Z
	xcall _TransferData
	.dbline 176
;          adder++;
	subi R22,255  ; offset = 1
	sbci R23,255
	.dbline 177
;       }
L66:
	.dbline 173
	movw R24,R10
	adiw R24,1
	movw R10,R24
	.dbline 173
	cpi R24,16
	ldi R30,0
	cpc R25,R30
	brlt L65
X15:
	.dbline 178
;    }
L62:
	.dbline 169
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 169
	cpi R20,32
	ldi R30,0
	cpc R21,R30
	brlt L61
X16:
	.dbline -2
L52:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r i 20 I
	.dbsym r j 10 I
	.dbsym r adder 22 pkc
	.dbend
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\MAIN.C
	.dbfunc e main _main fV
;              n -> <dead>
;              i -> <dead>
	.even
_main::
	sbiw R28,2
	.dbline -1
	.dbline 24
; /******************************************************************************/
; /*����дʱ�䡿�� 2011.07.07
; * ����    �ߡ��� �������
; * ����    ������ V1.0
; * ����    վ���� http://ylelectronic.taobao.com/ 
; * ��Q      Q���� 348439350
; * �����뻷������ ICCAVR  
; * ���������ܡ��� 12864
; * ����    ��:  8M		
; * ��о    Ƭ��:  ATMEGA16A	 
; * ��Ӳ�����ӡ��� J2��·ñ�õ�
; /******************************************************************************/
; #include <iom16v.h>
; #include <macros.h> 
; #include "define.h"
; #include "delay.h"
; #include "initrialm16.h"
; //#include "ds18b20.h"
; #include "lcd12864.h"
; 
; 
; 
; void main(void)
; {
	.dbline 27
; 	unsigned char i,n;
; 	
; 	Init_Devices();
	xcall _Init_Devices
	.dbline 28
; 	init12864_Hzk();   		 //����LCD�ֿ��ʼ������
	xcall _init12864_Hzk
	.dbline 31
; 	//init12864_Bmp();         //����LCD��ʾͼƬ(��չ)��ʼ������
; 	
; 	lcd12864_GB16X16(0,0,"mcustudio.com.cn ");
	ldi R24,<L70
	ldi R25,>L70
	std y+1,R25
	std y+0,R24
	clr R18
	clr R16
	xcall _lcd12864_GB16X16
	.dbline 32
; 	lcd12864_GB16X16(1,0,"    �����ǿ�    ");
	ldi R24,<L71
	ldi R25,>L71
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,1
	xcall _lcd12864_GB16X16
	.dbline 33
; 	lcd12864_GB16X16(2,0,"����12864 �ֿ�   ");
	ldi R24,<L72
	ldi R25,>L72
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,2
	xcall _lcd12864_GB16X16
	.dbline 34
; 	lcd12864_GB16X16(3,0,"����IC:ST7920    ");
	ldi R24,<L73
	ldi R25,>L73
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,3
	xcall _lcd12864_GB16X16
L74:
	.dbline 36
; 	while(1)
; 	{
	.dbline 37
; 		;
	.dbline 38
; 	}	
L75:
	.dbline 35
	xjmp L74
X17:
	.dbline -2
L69:
	.dbline 0 ; func end
	adiw R28,2
	ret
	.dbsym l n 3 c
	.dbsym l i 3 c
	.dbend
	.area bss(ram, con, rel)
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\MAIN.C
_pic3::
	.blkb 1
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\lcd12864.h
	.dbsym e pic3 _pic3 A[1:1]kc
_pic2::
	.blkb 1
	.dbsym e pic2 _pic2 A[1:1]kc
_pic1::
	.blkb 1
	.dbsym e pic1 _pic1 A[1:1]kc
_IC_DAT::
	.blkb 1
	.dbsym e IC_DAT _IC_DAT A[1:1]kc
_data_adc::
	.blkb 2
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\define.h
	.dbsym e data_adc _data_adc i
_disbuf::
	.blkb 16
	.dbsym e disbuf _disbuf A[16:16]c
_buf::
	.blkb 16
	.dbsym e buf _buf A[16:16]c
_data_1621::
	.blkb 4
	.dbsym e data_1621 _data_1621 l
_second::
	.blkb 1
	.dbsym e second _second c
_minute::
	.blkb 1
	.dbsym e minute _minute c
_hour::
	.blkb 1
	.dbsym e hour _hour c
_date::
	.blkb 1
	.dbsym e date _date c
_week::
	.blkb 1
	.dbsym e week _week c
_month::
	.blkb 1
	.dbsym e month _month c
_year::
	.blkb 1
	.dbsym e year _year c
_s_wtemp::
	.blkb 2
	.dbsym e s_wtemp _s_wtemp I
_u_btemp::
	.blkb 1
	.dbsym e u_btemp _u_btemp c
_u_wtemp::
	.blkb 2
	.dbsym e u_wtemp _u_wtemp i
_u_ltemp::
	.blkb 4
	.dbsym e u_ltemp _u_ltemp l
	.area data(ram, con, rel)
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\define.h
L73:
	.blkb 18
	.area idata
	.byte 199,253,182,175,'I,'C,58,'S,'T,55,57,50,48,32,32,32
	.byte 32,0
	.area data(ram, con, rel)
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\define.h
L72:
	.blkb 18
	.area idata
	.byte 214,208,206,196,49,50,56,54,52,32,215,214,191,226,32,32
	.byte 32,0
	.area data(ram, con, rel)
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\define.h
L71:
	.blkb 17
	.area idata
	.byte 32,32,32,32,207,195,195,197,214,199,191,216,32,32,32,32
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\define.h
L70:
	.blkb 18
	.area idata
	.byte 'm,'c,'u,'s,'t,'u,'d,'i,'o,46,'c,'o,'m,46,'c,'n
	.byte 32,0
	.area data(ram, con, rel)
	.dbfile D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\define.h
; 
; }
; 
