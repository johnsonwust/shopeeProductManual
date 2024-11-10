	.module _2.c
	.area text(rom, con, rel)
	.dbfile D:\16实验程序\延时试验\2.c
	.dbfunc e s_ms _s_ms fV
;             ms -> R16,R17
	.even
_s_ms::
	.dbline -1
	.dbline 6
; #include "iom16v.h"  
; 
; //延时函数
; //在16MHz时产生ms=2000时产生1ms的延时
; void s_ms(unsigned int ms)
; {
	.dbline 7
; 	for(;ms>1;ms--);
	xjmp L5
L2:
	.dbline 7
L3:
	.dbline 7
	subi R16,1
	sbci R17,0
L5:
	.dbline 7
	ldi R24,1
	ldi R25,0
	cp R24,R16
	cpc R25,R17
	brlo L2
X0:
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbsym r ms 16 i
	.dbend
	.dbfunc e main _main fI
	.even
_main::
	.dbline -1
	.dbline 11
; }	
;  
; main()
;  {
	.dbline 12
;  DDRD=0xff;
	ldi R24,255
	out 0x11,R24
	xjmp L8
L7:
	.dbline 15
;  //在端口d产生500Hz的信号
;  while(1)
;    {
	.dbline 16
;    PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 17
;    s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 18
;    PORTD=0x00;
	clr R2
	out 0x12,R2
	.dbline 19
;    s_ms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 20
;    }
L8:
	.dbline 14
	xjmp L7
X1:
	.dbline -2
L6:
	.dbline 0 ; func end
	ret
	.dbend
;  }
