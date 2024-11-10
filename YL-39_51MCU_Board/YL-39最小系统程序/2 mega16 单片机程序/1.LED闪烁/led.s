	.module led.c
	.area text(rom, con, rel)
	.dbfile E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\1.LED��˸\led.c
	.dbfunc e delayms _delayms fV
;              i -> R16,R17
;              j -> R18,R19
	.even
_delayms::
	.dbline -1
	.dbline 15
; /******************************************************************************/
; /*����дʱ�䡿�� 2011.07.07
; * ����    �ߡ��� �������
; * ����    ������ V1.0
; * ����    վ���� http://ylelectronic.taobao.com/ 
; * ��Q      Q���� 348439350
; * �����뻷������ ICCAVR  
; * ���������ܡ��� ��˸LED��	
; * ����    ��:  8M		
; * ��о    Ƭ��:  ATMEGA16A	 
; * ��Ӳ�����ӡ��� J1��·ñ����               
; /******************************************************************************/
; 	  #include <iom16v.h>
; 	   void delayms(void)	 // ��ʱ�ӳ���       
;           {						
	.dbline 17
; 	         unsigned int i,j;
; 			 for(i=0;i<255;i++)
	clr R16
	clr R17
	xjmp L5
L2:
	.dbline 18
	clr R18
	clr R19
	xjmp L9
L6:
	.dbline 18
L7:
	.dbline 18
	subi R18,255  ; offset = 1
	sbci R19,255
L9:
	.dbline 18
	cpi R18,184
	ldi R30,11
	cpc R19,R30
	brlo L6
L3:
	.dbline 17
	subi R16,255  ; offset = 1
	sbci R17,255
L5:
	.dbline 17
	cpi R16,255
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
	.even
_main::
	.dbline -1
	.dbline 21
; 			    for(j=0;j<3000;j++);
;           }
;        void main(void)
; 	      { 
	.dbline 22
; 			 DDRD=0xFF;    //PD����������
	ldi R24,255
	out 0x11,R24
	.dbline 23
; 			 PORTD=0xFF; 
	out 0x12,R24
	xjmp L12
L11:
	.dbline 27
	.dbline 29
	clr R2
	out 0x12,R2
	.dbline 30
	xcall _delayms
	.dbline 31
	ldi R24,255
	out 0x12,R24
	.dbline 32
	xcall _delayms
	.dbline 33
L12:
	.dbline 26
	xjmp L11
X0:
	.dbline -2
L10:
	.dbline 0 ; func end
	ret
	.dbend
