	.module s_ms.c
	.area text(rom, con, rel)
	.dbfile D:\16实验程序\延时试验\s_ms.c
	.dbfunc e delay_ms _delay_ms fV
;              b -> R20
;              i -> R16,R17
	.even
_delay_ms::
	st -y,R20
	.dbline -1
	.dbline 6
; #include "iom16v.h"  
; 
; //延时函数
; //在1MHz时产生1mS的延时
; void delay_ms(unsigned int i) 
; {
	xjmp L3
L2:
	.dbline 9
;  unsigned char b; 
;  while (i --)
;  {  
	.dbline 10
;  for (b = 1; b; b++) 
	ldi R20,1
	xjmp L8
L5:
	.dbline 11
;  {   ;   }  
	.dbline 11
	.dbline 11
L6:
	.dbline 10
	inc R20
L8:
	.dbline 10
	tst R20
	brne L5
X0:
	.dbline 12
;  }
L3:
	.dbline 8
	movw R2,R16
	subi R16,1
	sbci R17,0
	tst R2
	brne L2
	tst R3
	brne L2
X1:
	.dbline -2
L1:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r b 20 c
	.dbsym r i 16 i
	.dbend
	.dbfunc e main _main fI
	.even
_main::
	.dbline -1
	.dbline 16
;  }
;  
; main()
;  {
	.dbline 17
;  DDRD=0xff;
	ldi R24,255
	out 0x11,R24
	xjmp L11
L10:
	.dbline 20
;  //在端口d产生100Hz的信号
;  while(1)
;    {
	.dbline 21
;    PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 22
;    delay_ms(5);
	ldi R16,5
	ldi R17,0
	xcall _delay_ms
	.dbline 23
;    PORTD=0x00;
	clr R2
	out 0x12,R2
	.dbline 24
;    delay_ms(5);
	ldi R16,5
	ldi R17,0
	xcall _delay_ms
	.dbline 25
;    }
L11:
	.dbline 19
	xjmp L10
X2:
	.dbline -2
L9:
	.dbline 0 ; func end
	ret
	.dbend
;  }
