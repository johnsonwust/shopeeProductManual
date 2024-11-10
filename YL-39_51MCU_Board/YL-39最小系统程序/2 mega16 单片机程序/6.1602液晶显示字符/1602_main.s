	.module _1602_main.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602_main.c
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602.h
	.dbfunc e s_ms _s_ms fV
;             ms -> R16,R17
	.even
_s_ms::
	.dbline -1
	.dbline 9
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 闪烁LED灯	
; * 【晶    振】:  8M		
	.dbline 10
; * 【芯    片】:  ATMEGA16A	 
	xjmp L5
L2:
	.dbline 10
L3:
	.dbline 10
	subi R16,1
	sbci R17,0
L5:
	.dbline 10
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
	.dbfunc e busy _busy fV
;           temp -> R20
	.even
_busy::
	st -y,R20
	.dbline -1
	.dbline 15
; * 【硬件连接】： J2短路帽去掉 
; /******************************************************************************/  
; //1602液晶显示程序
; #include<iom16v.h>
; #include"1602.h"
	.dbline 17
; #define uchar unsigned char 
; #define uint unsigned int 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 18
; 
	cbi 0x1b,0
	.dbline 19
; uchar wz[]={"mcustudio.com.cn"};
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 20
; uchar gd[]={"Tel:15980845601"};
	sbi 0x1b,1
	.dbline 21
; 
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	xjmp L8
L7:
	.dbline 23
; //主函数
; void main()
	.dbline 24
; {
	sbi 0x1b,2
	.dbline 25
;     DDRA=0xff;    
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 26
;     PORTA=0xff;
	clr R2
	out 0x17,R2
	.dbline 27
;     DDRD=0xff;
	ldi R24,255
	out 0x18,R24
	.dbline 28
;     PORTD=0xff;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 29
;     s_ms(5000);      //延时
	in R20,0x16
	andi R20,128
	.dbline 30
;     LcdInit();     //1602初始化
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 31
;     WriteChar(1,1,13,wz);    //显示第一行
	ldi R24,255
	out 0x17,R24
	.dbline 32
;     WriteChar(2,1,16,gd);    //显示第二行
	out 0x18,R24
	.dbline 33
; }
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 34
	cbi 0x1b,2
	.dbline 35
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 36
L8:
	.dbline 22
	tst R20
	brne L7
X1:
	.dbline -2
L6:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r temp 20 c
	.dbend
	.dbfunc e writecom _writecom fV
;            com -> R10
	.even
_writecom::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 41
	.dbline 42
	xcall _busy
	.dbline 43
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 44
	cbi 0x1b,0
	.dbline 45
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 46
	cbi 0x1b,1
	.dbline 47
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 48
	sbi 0x1b,2
	.dbline 49
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 50
	out 0x18,R10
	.dbline 51
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 52
	cbi 0x1b,2
	.dbline 53
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L10:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r com 10 c
	.dbend
	.dbfunc e LcdInit _LcdInit fV
	.even
_LcdInit::
	.dbline -1
	.dbline 58
	.dbline 59
	ldi R24,255
	out 0x17,R24
	.dbline 60
	clr R2
	out 0x18,R2
	.dbline 61
	ldi R16,56
	xcall _writecom
	.dbline 62
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 63
	ldi R16,1
	xcall _writecom
	.dbline 64
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 65
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 66
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 67
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 68
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 69
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 70
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 71
	ldi R16,2
	xcall _writecom
	.dbline 72
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 73
	ldi R16,6
	xcall _writecom
	.dbline 74
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 75
	ldi R16,12
	xcall _writecom
	.dbline 76
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 77
	ldi R16,56
	xcall _writecom
	.dbline 78
	ldi R16,1000
	ldi R17,3
	.dbline -2
L11:
	.dbline 0 ; func end
	xjmp _s_ms
	.dbend
	.dbfunc e writedata _writedata fV
;           data -> R10
	.even
_writedata::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 83
	.dbline 84
	xcall _busy
	.dbline 85
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 86
	sbi 0x1b,0
	.dbline 87
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 88
	cbi 0x1b,1
	.dbline 89
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 90
	sbi 0x1b,2
	.dbline 91
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 92
	out 0x18,R10
	.dbline 93
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 94
	cbi 0x1b,2
	.dbline 95
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L12:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r data 10 c
	.dbend
	.dbfunc e readdata _readdata fc
;           temp -> R10
	.even
_readdata::
	st -y,R10
	.dbline -1
	.dbline 101
	.dbline 103
	xcall _busy
	.dbline 104
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 105
	sbi 0x1b,0
	.dbline 106
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 107
	sbi 0x1b,1
	.dbline 108
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 109
	sbi 0x1b,2
	.dbline 110
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 111
	clr R2
	out 0x17,R2
	.dbline 112
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 113
	in R10,0x16
	.dbline 114
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 115
	ldi R24,255
	out 0x17,R24
	.dbline 116
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 117
	cbi 0x1b,2
	.dbline 118
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 119
	mov R16,R10
	.dbline -2
L13:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r temp 10 c
	.dbend
	.dbfunc e WriteCGRAM _WriteCGRAM fV
;              t -> R10,R11
;              i -> R20,R21
;        pBuffer -> R22,R23
;            num -> R10,R11
	.even
_WriteCGRAM::
	xcall push_xgsetF00C
	movw R22,R18
	movw R10,R16
	.dbline -1
	.dbline 129
	.dbline 131
	ldi R16,64
	xcall _writecom
	.dbline 132
	sbi 0x1b,0
	.dbline 133
	cbi 0x1b,1
	.dbline 134
	movw R20,R10
	xjmp L18
L15:
	.dbline 135
	.dbline 136
	movw R30,R22
	ldd R10,z+0
	ldd R11,z+1
	.dbline 137
	sbi 0x1b,2
	.dbline 138
	out 0x18,R10
	.dbline 139
	cbi 0x1b,2
	.dbline 140
	subi R22,254  ; offset = 2
	sbci R23,255
	.dbline 141
L16:
	.dbline 134
	subi R20,1
	sbci R21,0
L18:
	.dbline 134
	cpi R20,0
	cpc R20,R21
	brne L15
X2:
	.dbline -2
L14:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r t 10 i
	.dbsym r i 20 i
	.dbsym r pBuffer 22 pki
	.dbsym r num 10 i
	.dbend
	.dbfunc e WriteMenu _WriteMenu fV
;              t -> R10
;              i -> R22
;        pBuffer -> R20,R21
	.even
_WriteMenu::
	xcall push_xgsetF00C
	movw R20,R16
	.dbline -1
	.dbline 151
	.dbline 153
	ldi R16,128
	xcall _writecom
	.dbline 155
	sbi 0x1b,0
	.dbline 156
	cbi 0x1b,1
	.dbline 157
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 158
	clr R22
	xjmp L23
L20:
	.dbline 159
	.dbline 160
	movw R30,R20
	ldd R10,z+0
	.dbline 161
	out 0x18,R10
	.dbline 162
	sbi 0x1b,2
	.dbline 163
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 164
	cbi 0x1b,2
	.dbline 165
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 166
L21:
	.dbline 158
	inc R22
L23:
	.dbline 158
	cpi R22,16
	brlo L20
X3:
	.dbline 167
	ldi R16,192
	xcall _writecom
	.dbline 169
	sbi 0x1b,0
	.dbline 170
	cbi 0x1b,1
	.dbline 171
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 172
	clr R22
	xjmp L27
L24:
	.dbline 173
	.dbline 174
	movw R30,R20
	ldd R10,z+0
	.dbline 175
	out 0x18,R10
	.dbline 176
	sbi 0x1b,2
	.dbline 177
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 178
	cbi 0x1b,2
	.dbline 179
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 180
L25:
	.dbline 172
	inc R22
L27:
	.dbline 172
	cpi R22,16
	brlo L24
X4:
	.dbline -2
L19:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r t 10 c
	.dbsym r i 22 c
	.dbsym r pBuffer 20 pkc
	.dbend
	.dbfunc e WriteNum _WriteNum fV
;            num -> R20,R21
;            col -> R10,R11
;            row -> R22,R23
	.even
_WriteNum::
	xcall push_xgsetF00C
	movw R10,R18
	movw R22,R16
	ldd R20,y+6
	ldd R21,y+7
	.dbline -1
	.dbline 190
	.dbline 191
	cpi R22,1
	ldi R30,0
	cpc R23,R30
	brne L29
X5:
	.dbline 191
	movw R22,R10
	subi R22,128  ; offset = 128
	sbci R23,255
	xjmp L30
L29:
	.dbline 192
	movw R22,R10
	subi R22,64  ; offset = 192
	sbci R23,255
L30:
	.dbline 193
	mov R16,R22
	xcall _writecom
	.dbline 194
	cpi R20,0
	cpc R20,R21
	brne L33
X6:
	ldi R24,1
	ldi R25,0
	movw R10,R24
	xjmp L34
L33:
	clr R10
	clr R11
L34:
	ldi R24,9
	ldi R25,0
	cp R24,R20
	cpc R25,R21
	brsh L35
X7:
	ldi R22,1
	ldi R23,0
	xjmp L36
L35:
	clr R22
	clr R23
L36:
	movw R2,R10
	or R2,R22
	or R3,R23
	tst R2
	brne X8
	tst R3
	breq L31
X8:
	.dbline 194
	ldi R20,48
	ldi R21,0
	xjmp L32
L31:
	.dbline 195
	subi R20,208  ; offset = 48
	sbci R21,255
L32:
	.dbline 197
	sbi 0x1b,0
	.dbline 198
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 199
	cbi 0x1b,1
	.dbline 200
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 201
	out 0x18,R20
	.dbline 202
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 203
	sbi 0x1b,2
	.dbline 204
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 205
	cbi 0x1b,2
	.dbline 206
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline -2
L28:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r num 20 i
	.dbsym r col 10 i
	.dbsym r row 22 i
	.dbend
	.dbfunc e WriteChar _WriteChar fV
;              t -> R12
;              i -> R10
;        pBuffer -> R20,R21
;            num -> y+8
;            col -> R10
;            row -> R22
	.even
_WriteChar::
	xcall push_xgsetF03C
	mov R10,R18
	mov R22,R16
	ldd R20,y+10
	ldd R21,y+11
	.dbline -1
	.dbline 216
	.dbline 218
	cpi R22,1
	brne L38
X9:
	.dbline 218
	mov R22,R10
	subi R22,128    ; addi 128
	xjmp L39
L38:
	.dbline 219
	mov R22,R10
	subi R22,64    ; addi 192
L39:
	.dbline 220
	mov R16,R22
	xcall _writecom
	.dbline 224
	sbi 0x1b,0
	.dbline 225
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 226
	cbi 0x1b,1
	.dbline 227
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 228
	ldd R10,y+8
	ldd R11,y+9
	xjmp L43
L40:
	.dbline 229
	.dbline 230
	movw R30,R20
	ldd R12,z+0
	.dbline 231
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 232
	out 0x18,R12
	.dbline 233
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 234
	sbi 0x1b,2
	.dbline 235
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 236
	cbi 0x1b,2
	.dbline 237
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 238
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 239
L41:
	.dbline 228
	dec R10
L43:
	.dbline 228
	tst R10
	brne L40
X10:
	.dbline -2
L37:
	.dbline 0 ; func end
	xjmp pop_xgsetF03C
	.dbsym r t 12 c
	.dbsym r i 10 c
	.dbsym r pBuffer 20 pc
	.dbsym l num 8 i
	.dbsym r col 10 c
	.dbsym r row 22 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602.h
_wz::
	.blkb 17
	.area idata
	.byte 'm,'c,'u,'s,'t,'u,'d,'i,'o,46,'c,'o,'m,46,'c,'n
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602.h
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602_main.c
	.dbsym e wz _wz A[17:17]c
_gd::
	.blkb 16
	.area idata
	.byte 'T,'e,'l,58,49,53,57,56,48,56,52,53,54,48,49,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602_main.c
	.dbsym e gd _gd A[16:16]c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602_main.c
	.dbfunc e main _main fV
	.even
_main::
	sbiw R28,4
	.dbline -1
	.dbline 24
	.dbline 25
	ldi R24,255
	out 0x1a,R24
	.dbline 26
	out 0x1b,R24
	.dbline 27
	out 0x11,R24
	.dbline 28
	out 0x12,R24
	.dbline 29
	ldi R16,5000
	ldi R17,19
	xcall _s_ms
	.dbline 30
	xcall _LcdInit
	.dbline 31
	ldi R24,<_wz
	ldi R25,>_wz
	std y+3,R25
	std y+2,R24
	ldi R24,13
	ldi R25,0
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,1
	xcall _WriteChar
	.dbline 32
	ldi R24,<_gd
	ldi R25,>_gd
	std y+3,R25
	std y+2,R24
	ldi R24,16
	ldi R25,0
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,2
	xcall _WriteChar
	.dbline -2
L44:
	.dbline 0 ; func end
	adiw R28,4
	ret
	.dbend
