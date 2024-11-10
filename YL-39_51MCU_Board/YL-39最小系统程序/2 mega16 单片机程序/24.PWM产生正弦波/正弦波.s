	.module _正弦波.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\24.PWM产生正弦波\正弦波.c
	.area code(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\24.PWM产生正弦波\正弦波.c
_auc_SinParam::
	.byte 64,'C
	.byte 'F,'I
	.byte 'L,'O
	.byte 'R,'U
	.byte 'X,91
	.byte 94,96
	.byte 'c,'f
	.byte 'h,'j
	.byte 'm,'o
	.byte 'q,'s
	.byte 'u,'v
	.byte 'x,'y
	.byte 123,124
	.byte 125,126
	.byte 126,127
	.byte 127,127
	.byte 127,127
	.byte 127,127
	.byte 126,126
	.byte 125,124
	.byte 123,'y
	.byte 'x,'v
	.byte 'u,'s
	.byte 'q,'o
	.byte 'm,'j
	.byte 'h,'f
	.byte 'c,96
	.byte 94,91
	.byte 'X,'U
	.byte 'R,'O
	.byte 'L,'I
	.byte 'F,'C
	.byte 64,60
	.byte 57,54
	.byte 51,48
	.byte 45,42
	.byte 39,36
	.byte 33,31
	.byte 28,25
	.byte 23,21
	.byte 18,16
	.byte 14,12
	.byte 10,9
	.byte 7,6
	.byte 4,3
	.byte 2,1
	.byte 1,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 1,1
	.byte 2,3
	.byte 4,6
	.byte 7,9
	.byte 10,12
	.byte 14,16
	.byte 18,21
	.byte 23,25
	.byte 28,31
	.byte 33,36
	.byte 39,42
	.byte 45,48
	.byte 51,54
	.byte 57,60
	.dbsym e auc_SinParam _auc_SinParam A[128:128]kc
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\24.PWM产生正弦波\正弦波.c
_x_SW::
	.blkb 1
	.area idata
	.byte 8
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\24.PWM产生正弦波\正弦波.c
	.dbsym e x_SW _x_SW c
_X_LUT::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\24.PWM产生正弦波\正弦波.c
	.dbsym e X_LUT _X_LUT c
	.area vector(rom, abs)
	.org 64
	jmp _timer0_ovf_isr
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\24.PWM产生正弦波\正弦波.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\24.PWM产生正弦波\正弦波.c
	.dbfunc e timer0_ovf_isr _timer0_ovf_isr fV
	.even
_timer0_ovf_isr::
	st -y,R2
	st -y,R3
	st -y,R24
	st -y,R25
	st -y,R30
	st -y,R31
	in R2,0x3f
	st -y,R2
	.dbline -1
	.dbline 29
; /******************************************************************************/
; /*  Name:  PB3加二级RC滤波后用示波器可以看正弦波                              */
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 闪烁LED灯	
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J1短路帽接上      
; /******************************************************************************/
; 
; #include <iom16v.h>
; #include <macros.h>
; #pragma data:code
; // 128 点正弦波样本表
; const unsigned char auc_SinParam[128] = {
; 64,67,70,73,76,79,82,85,88,91,94,96,99,102,104,106,109,111,113,115,117,118,120,121,
; 123,124,125,126,126,127,127,127,127,127,127,127,126,126,125,124,123,121,120,118,
; 117,115,113,111,109,106,104,102,99,96,94,91,88,85,82,79,76,73,70,67,64,60,57,54,51,48,
; 45,42,39,36,33,31,28,25,23,21,18,16,14,12,10,9,7,6,4,3,2,1,1,0,0,0,0,0,0,0,1,1,2,3,4,6,
; 7,9,10,12,14,16,18,21,23,25,28,31,33,36,39,42,45,48,51,54,57,60};
; #pragma data:data
; unsigned char x_SW = 8,X_LUT = 0;
; #pragma interrupt_handler timer0_ovf_isr:17
; void timer0_ovf_isr(void)
; {
	.dbline 30
; X_LUT += x_SW; // 新样点指针
	lds R2,_x_SW
	lds R3,_X_LUT
	add R3,R2
	sts _X_LUT,R3
	.dbline 31
; if (X_LUT > 127) X_LUT -= 128; // 样点指针调整
	ldi R24,127
	mov R2,R3
	cp R24,R3
	brsh L2
X0:
	.dbline 31
	mov R24,R3
	subi R24,128
	sts _X_LUT,R24
L2:
	.dbline 32
; OCR0 = auc_SinParam[X_LUT]; // 取样点指针到比较匹配寄存器
	ldi R24,<_auc_SinParam
	ldi R25,>_auc_SinParam
	lds R30,_X_LUT
	clr R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	out 0x3c,R2
	.dbline -2
L1:
	.dbline 0 ; func end
	ld R2,y+
	out 0x3f,R2
	ld R31,y+
	ld R30,y+
	ld R25,y+
	ld R24,y+
	ld R3,y+
	ld R2,y+
	reti
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 35
; }
; void main(void)
; {
	.dbline 36
; DDRB |= 0x08; // PB3(OC0)输出
	sbi 0x17,3
	.dbline 37
; TCCR0 = 0x71; // 相位调整PWM 模式，分频系数=1，正向控制OC0
	ldi R24,113
	out 0x33,R24
	.dbline 38
; TIMSK = 0x01; // T/C0 溢出中断允许
	ldi R24,1
	out 0x39,R24
	.dbline 39
; SEI(); // 使能全局中断
	sei
L5:
	.dbline 40
; while(1);
L6:
	.dbline 40
	xjmp L5
X1:
	.dbline -2
L4:
	.dbline 0 ; func end
	ret
	.dbend
; 
; }
