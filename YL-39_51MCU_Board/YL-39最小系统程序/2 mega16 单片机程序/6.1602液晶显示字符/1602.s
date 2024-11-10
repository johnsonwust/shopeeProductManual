	.module _1602.c
	.area text(rom, con, rel)
	.dbfile D:\实验程序\1602液晶\1602.c
	.dbfile D:\实验程序\1602液晶\1602.h
	.dbfunc e s_ms _s_ms fV
;             ms -> R16,R17
	.even
_s_ms::
	.dbline -1
	.dbline 9
; ///////////////////////////////////////////////////////////
; //////////////北京东控自动化技术有限公司///////////////////
; /////////////////////作者：乌东东//////////////////////////
; ///////////////////////2008-9-18///////////////////////////
; ///////////////////////版权所有////////////////////////////
; 
; 
; #include<iom16v.h>
; #include"1602.h"
	.dbline 10
; #define uchar unsigned char 
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
; #define uint unsigned int 
; 
; uchar wz[]={"WWW.ISMCU.COM"};
; uchar gd[]={"Good Luck!"};
; 
	.dbline 17
; main()
; {
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 18
; DDRA=0xff;
	cbi 0x1b,5
	.dbline 19
; PORTA=0xff;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 20
; DDRD=0xff;
	sbi 0x1b,6
	.dbline 21
; PORTD=0xff;
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	xjmp L8
L7:
	.dbline 23
; LcdInit();
; WriteChar(1,1,13,wz);
	.dbline 24
; WriteChar(2,3,10,gd);
	sbi 0x1b,7
	.dbline 25
; }
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 26
	clr R2
	out 0x11,R2
	.dbline 27
	ldi R24,255
	out 0x12,R24
	.dbline 28
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 29
	in R20,0x10
	andi R20,128
	.dbline 30
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 31
	ldi R24,255
	out 0x11,R24
	.dbline 32
	out 0x12,R24
	.dbline 33
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 34
	cbi 0x1b,7
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
	cbi 0x1b,5
	.dbline 45
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 46
	cbi 0x1b,6
	.dbline 47
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 48
	sbi 0x1b,7
	.dbline 49
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 50
	out 0x12,R10
	.dbline 51
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 52
	cbi 0x1b,7
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
	ldi R16,56
	xcall _writecom
	.dbline 60
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 61
	ldi R16,1
	xcall _writecom
	.dbline 62
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 63
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
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
	ldi R16,2
	xcall _writecom
	.dbline 70
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 71
	ldi R16,6
	xcall _writecom
	.dbline 72
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 73
	ldi R16,12
	xcall _writecom
	.dbline 74
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline 75
	ldi R16,56
	xcall _writecom
	.dbline 76
	ldi R16,1000
	ldi R17,3
	xcall _s_ms
	.dbline -2
L11:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e writedata _writedata fV
;           data -> R10
	.even
_writedata::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 81
	.dbline 82
	xcall _busy
	.dbline 83
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 84
	sbi 0x1b,5
	.dbline 85
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 86
	cbi 0x1b,6
	.dbline 87
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 88
	sbi 0x1b,7
	.dbline 89
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 90
	out 0x12,R10
	.dbline 91
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 92
	cbi 0x1b,7
	.dbline 93
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
	.dbline 99
	.dbline 101
	xcall _busy
	.dbline 102
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 103
	sbi 0x1b,5
	.dbline 104
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 105
	sbi 0x1b,6
	.dbline 106
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 107
	sbi 0x1b,7
	.dbline 108
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 109
	clr R2
	out 0x11,R2
	.dbline 110
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 111
	in R10,0x10
	.dbline 112
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 113
	ldi R24,255
	out 0x11,R24
	.dbline 114
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 115
	cbi 0x1b,7
	.dbline 116
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 117
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
	.dbline 127
	.dbline 129
	ldi R16,64
	xcall _writecom
	.dbline 130
	sbi 0x1b,5
	.dbline 131
	cbi 0x1b,6
	.dbline 132
	movw R20,R10
	xjmp L18
L15:
	.dbline 133
	.dbline 134
	movw R30,R22
	elpm R10,Z+
	elpm R11,Z
	.dbline 135
	sbi 0x1b,7
	.dbline 136
	out 0x12,R10
	.dbline 137
	cbi 0x1b,7
	.dbline 138
	subi R22,254  ; offset = 2
	sbci R23,255
	.dbline 139
L16:
	.dbline 132
	subi R20,1
	sbci R21,0
L18:
	.dbline 132
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
	.dbline 149
	.dbline 151
	ldi R16,128
	xcall _writecom
	.dbline 153
	sbi 0x1b,5
	.dbline 154
	cbi 0x1b,6
	.dbline 155
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 156
	clr R22
	xjmp L23
L20:
	.dbline 157
	.dbline 158
	movw R30,R20
	elpm R10,Z
	.dbline 159
	out 0x12,R10
	.dbline 160
	sbi 0x1b,7
	.dbline 161
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 162
	cbi 0x1b,7
	.dbline 163
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 164
L21:
	.dbline 156
	inc R22
L23:
	.dbline 156
	cpi R22,16
	brlo L20
X3:
	.dbline 165
	ldi R16,192
	xcall _writecom
	.dbline 167
	sbi 0x1b,5
	.dbline 168
	cbi 0x1b,6
	.dbline 169
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 170
	clr R22
	xjmp L27
L24:
	.dbline 171
	.dbline 172
	movw R30,R20
	elpm R10,Z
	.dbline 173
	out 0x12,R10
	.dbline 174
	sbi 0x1b,7
	.dbline 175
	ldi R16,50
	ldi R17,0
	xcall _s_ms
	.dbline 176
	cbi 0x1b,7
	.dbline 177
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 178
L25:
	.dbline 170
	inc R22
L27:
	.dbline 170
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
	.dbline 188
	.dbline 189
	cpi R22,1
	ldi R30,0
	cpc R23,R30
	brne L29
X5:
	.dbline 189
	movw R22,R10
	subi R22,128  ; offset = 128
	sbci R23,255
	xjmp L30
L29:
	.dbline 190
	movw R22,R10
	subi R22,64  ; offset = 192
	sbci R23,255
L30:
	.dbline 191
	mov R16,R22
	xcall _writecom
	.dbline 192
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
	.dbline 192
	ldi R20,48
	ldi R21,0
	xjmp L32
L31:
	.dbline 193
	subi R20,208  ; offset = 48
	sbci R21,255
L32:
	.dbline 195
	sbi 0x1b,5
	.dbline 196
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 197
	cbi 0x1b,6
	.dbline 198
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 199
	out 0x12,R20
	.dbline 200
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 201
	sbi 0x1b,7
	.dbline 202
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 203
	cbi 0x1b,7
	.dbline 204
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
	.dbline 214
	.dbline 216
	cpi R22,1
	brne L38
X9:
	.dbline 216
	mov R22,R10
	subi R22,128    ; addi 128
	xjmp L39
L38:
	.dbline 217
	mov R22,R10
	subi R22,64    ; addi 192
L39:
	.dbline 218
	mov R16,R22
	xcall _writecom
	.dbline 222
	sbi 0x1b,5
	.dbline 223
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 224
	cbi 0x1b,6
	.dbline 225
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 226
	ldd R10,y+8
	xjmp L43
L40:
	.dbline 227
	.dbline 228
	movw R30,R20
	ldd R12,z+0
	.dbline 229
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 230
	out 0x12,R12
	.dbline 231
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 232
	sbi 0x1b,7
	.dbline 233
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 234
	cbi 0x1b,7
	.dbline 235
	ldi R16,500
	ldi R17,1
	xcall _s_ms
	.dbline 236
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 237
L41:
	.dbline 226
	dec R10
L43:
	.dbline 226
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
	.dbfile D:\实验程序\1602液晶\1602.h
_wz::
	.blkb 14
	.area idata
	.byte 'W,'W,'W,46,'I,'S,'M,'C,'U,46,'C,'O,'M,0
	.area data(ram, con, rel)
	.dbfile D:\实验程序\1602液晶\1602.h
	.dbfile D:\实验程序\1602液晶\1602.c
	.dbsym e wz _wz A[14:14]c
_gd::
	.blkb 11
	.area idata
	.byte 'G,'o,'o,'d,32,'L,'u,'c,'k,33,0
	.area data(ram, con, rel)
	.dbfile D:\实验程序\1602液晶\1602.c
	.dbsym e gd _gd A[11:11]c
	.area text(rom, con, rel)
	.dbfile D:\实验程序\1602液晶\1602.c
	.dbfunc e main _main fI
	.even
_main::
	sbiw R28,4
	.dbline -1
	.dbline 17
	.dbline 18
	ldi R24,255
	out 0x1a,R24
	.dbline 19
	out 0x1b,R24
	.dbline 20
	out 0x11,R24
	.dbline 21
	out 0x12,R24
	.dbline 22
	xcall _LcdInit
	.dbline 23
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
	.dbline 24
	ldi R24,<_gd
	ldi R25,>_gd
	std y+3,R25
	std y+2,R24
	ldi R24,10
	ldi R25,0
	std y+1,R25
	std y+0,R24
	ldi R18,3
	ldi R16,2
	xcall _WriteChar
	.dbline -2
L44:
	.dbline 0 ; func end
	adiw R28,4
	ret
	.dbend
