	.module _3.c
	.area text(rom, con, rel)
	.dbfile D:\16实验程序\延时试验\3.c
	.dbfunc e s_ms _s_ms fV
;             aa -> R20,R21
;             ms -> R16,R17
	.even
_s_ms::
	st -y,R20
	st -y,R21
	.dbline -1
	.dbline 6
; #include "iom16v.h"  
; 
; //延时函数
; //在16MHz时产生1ms的延时
; void s_ms(unsigned int ms)
; {
	.dbline 8
;     unsigned int aa;
; 	for(;ms>=1;ms--)
	xjmp L5
L2:
	.dbline 9
; 	{
	.dbline 10
; 	for(aa=0;aa<=2000;aa++)
	clr R20
	clr R21
	xjmp L9
L6:
	.dbline 11
; 	{;}
	.dbline 11
	.dbline 11
L7:
	.dbline 10
	subi R20,255  ; offset = 1
	sbci R21,255
L9:
	.dbline 10
	ldi R24,2000
	ldi R25,7
	cp R24,R20
	cpc R25,R21
	brsh L6
X0:
	.dbline 12
; 	}
L3:
	.dbline 8
	subi R16,1
	sbci R17,0
L5:
	.dbline 8
	cpi R16,1
	ldi R30,0
	cpc R17,R30
	brsh L2
X1:
	.dbline -2
L1:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	ret
	.dbsym r aa 20 i
	.dbsym r ms 16 i
	.dbend
	.dbfunc e main _main fI
	.even
_main::
	.dbline -1
	.dbline 16
; }	
;  
; main()
;  {
	.dbline 17
;  DDRD=0xff;
	ldi R24,255
	out 0x11,R24
	xjmp L12
L11:
	.dbline 20
;  //在端口d产生500Hz的信号
;  while(1)
;    {
	.dbline 21
;    PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 22
;    s_ms(5);
	ldi R16,5
	ldi R17,0
	xcall _s_ms
	.dbline 23
;    PORTD=0x00;
	clr R2
	out 0x12,R2
	.dbline 24
;    s_ms(5);
	ldi R16,5
	ldi R17,0
	xcall _s_ms
	.dbline 25
;    }
L12:
	.dbline 19
	xjmp L11
X2:
	.dbline -2
L10:
	.dbline 0 ; func end
	ret
	.dbend
;  }
