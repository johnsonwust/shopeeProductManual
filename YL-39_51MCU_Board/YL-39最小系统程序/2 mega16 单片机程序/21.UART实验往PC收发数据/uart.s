	.module uart.c
	.area text(rom, con, rel)
	.dbfile E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\21.UARTʵ����PC�շ�����\uart.c
	.dbfunc e port_init _port_init fV
	.even
_port_init::
	.dbline -1
	.dbline 31
; /******************************************************
;       	
; /*����дʱ�䡿�� 2011.07.07
; * ����    �ߡ��� �������
; * ����    ������ V1.0
; * ����    վ���� http://ylelectronic.taobao.com/ 
; * ��Q      Q���� 348439350
; * �����뻷������ ICCAVR  
; * ���������ܡ��� �������ѯ��ʽʵ���ô��ڵ�����������ݸ�avr����avr�����ݻش���pc��
; * ����    ��:  8M		
; * ��о    Ƭ��:  ATMEGA16A	 
; * ��Ӳ�����ӡ��� J2��·ñ����   		  
; 			  										   			  
; *******************************************************/
; 
; #include <iom8v.h>
; #include <macros.h>
; 
; /***********�궨��*************/
; #define  uchar unsigned char 
; #define  uint unsigned int
; #define fosc 8000000
; #define baud 9600
; /*******************************************
; ��������: IO�ڳ�ʼ������
; ��    ��: ʵ��IO��ʼ��
; ��    ��: ��
; �� �� ֵ: ��
; /********************************************/
; void port_init(void)
; {
	.dbline 32
;   DDRD = 0x02;
	ldi R24,2
	out 0x11,R24
	.dbline 33
;   PORTD = 0xFF;
	ldi R24,255
	out 0x12,R24
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e USART_Init _USART_Init fV
	.even
_USART_Init::
	.dbline -1
	.dbline 44
; 
; }
; 
; /***********************************************************************
; ��������: ���ڳ�ʼ������
; ��    ��: ʵ�ִ��ڳ�ʼ��
; ��    ��: ��
; �� �� ֵ: ��
; /*********************************************************************/
; void USART_Init(void)
; {
	.dbline 45
;  UCSRB=(1<<RXEN)|(1<<TXEN)|(1<<RXCIE);//�����շ�,�򿪽����ж�
	ldi R24,152
	out 0xa,R24
	.dbline 46
;  UBRRL=(fosc/16/(baud+1))%256;//���ò����ʼĴ���
	ldi R24,52
	out 0x9,R24
	.dbline 47
;  UBRRH=(fosc/16/(baud+1))/256;
	clr R2
	out 0x20,R2
	.dbline 48
;  UCSRC=(1<<URSEL)|(1<<UCSZ1)|(1<<UCSZ0);//8λ����+1λSTOP
	ldi R24,134
	out 0x20,R24
	.dbline -2
L2:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e USART_Transmit _USART_Transmit fV
;           data -> R16
	.even
_USART_Transmit::
	.dbline -1
	.dbline 58
; }
; 
; /*******************************************
; ��������: ���ڷ���һ���ֽں���
; ��    ��: ʵ�ִ��ڷ���һ���ֽ�
; ��    ��: data--����Ҫ���͵�һ���ֽ�
; �� �� ֵ: ��
; /********************************************/
; void USART_Transmit(uchar data) //���Ͳ��ò�ѯ��ʽ
; {
L4:
	.dbline 59
L5:
	.dbline 59
;   while(!(UCSRA&(1<<UDRE)));//�ϴη�����û�����
	sbis 0xb,5
	rjmp L4
	.dbline 60
;  UDR=data;                       //��������
	out 0xc,R16
	.dbline -2
L3:
	.dbline 0 ; func end
	ret
	.dbsym r data 16 c
	.dbend
	.dbfunc e USART_Transmit_string _USART_Transmit_string fV
;            ptr -> R20,R21
	.even
_USART_Transmit_string::
	rcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 71
;  
; }
; 
; /*******************************************
; ��������: ���ڷ������麯��
; ��    ��: ʵ�ִ��ڷ���һ������
; ��    ��: *ptr--����Ҫ���͵�������׵�ַ
; �� �� ֵ: ��
; /********************************************/
; void USART_Transmit_string(uchar *ptr)
; {
	rjmp L9
L8:
	.dbline 73
	.dbline 74
	movw R30,R20
	ld R16,Z+
	movw R20,R30
	rcall _USART_Transmit
	.dbline 75
L9:
	.dbline 72
;  while (*ptr)
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L8
	.dbline 76
;   {
;     USART_Transmit(*ptr++);
;   }
;  USART_Transmit(0x0D);
	ldi R16,13
	rcall _USART_Transmit
	.dbline 77
;  USART_Transmit(0x0A);  //��β���ͻس�����
	ldi R16,10
	rcall _USART_Transmit
	.dbline -2
L7:
	rcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r ptr 20 pc
	.dbend
	.dbfunc e USART_Receive _USART_Receive fc
	.even
_USART_Receive::
	.dbline -1
	.dbline 88
; }
; 
; /*���ݽ��գ���ѯ��ʽ*/
; /*******************************************
; ��������: ���ڽ���һ���ֽں���
; ��    ��: ʵ�ִ��ڽ���һ���ֽ�
; ��    ��: ��
; �� �� ֵ: ��
; /********************************************/
; uchar USART_Receive(void) //���ղ��ò�ѯ��ʽ
; {
L12:
	.dbline 89
	.dbline 89
	.dbline 89
L13:
	.dbline 89
;   while(!(UCSRA&(1<<RXC))){;}//��û�н��յ�����
	sbis 0xb,7
	rjmp L12
	.dbline 90
;   return UDR;				      //��ȡ����������
	in R16,0xc
	.dbline -2
L11:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
;           temp -> R20
	.even
_main::
	.dbline -1
	.dbline 101
; }
; 
; 
; /********************************************
; ��������: ������
; ��    ��: ʵ�ֺ������幦�ܡ�
; ��    ��: ��
; �� �� ֵ: ��
; ********************************************/
; void main(void)
; {
	.dbline 103
;   uchar temp;
;   USART_Init();
	rcall _USART_Init
	rjmp L17
L16:
	.dbline 106
	.dbline 107
	rcall _USART_Receive
	mov R20,R16
	.dbline 108
	mov R2,R20
	com R2
	out 0x18,R2
	.dbline 109
	rcall _USART_Transmit
	.dbline 110
L17:
	.dbline 105
	rjmp L16
X0:
	.dbline -2
L15:
	.dbline 0 ; func end
	ret
	.dbsym r temp 20 c
	.dbend
