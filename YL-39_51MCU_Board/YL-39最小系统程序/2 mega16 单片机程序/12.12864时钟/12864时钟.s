	.module _12864时钟.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
_Hour::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.dbsym e Hour _Hour c
_flag::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.dbsym e flag _flag c
_disbuf::
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.dbsym e disbuf _disbuf A[6:6]c
_num::
	.blkb 13
	.area idata
	.byte 48,49,50,51,52,53,54,55,56,57,58,32,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.dbsym e num _num A[13:13]c
_welcome::
	.blkb 6
	.area idata
	.byte 202,177,188,228,58,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.dbsym e welcome _welcome A[6:6]c
_input::
	.blkb 6
	.area idata
	.byte 200,213,198,218,58,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.dbsym e input _input A[6:6]c
	.area lit(rom, con, rel)
_discode::
	.byte 192,249
	.byte 164,176
	.byte 153,146
	.byte 130,248
	.byte 128,144
	.dbsym e discode _discode A[10:10]kc
_logo::
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,3
	.byte 243,224
	.byte 15,143
	.byte 252,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,3
	.byte 243,240
	.byte 15,143
	.byte 254,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,7
	.byte 249,240
	.byte 15,159
	.byte 255,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,7
	.byte 249,248
	.byte 31,159
	.byte 255,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,7
	.byte 249,248
	.byte 31,31
	.byte 255,128
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,15
	.byte 252,248
	.byte 31,63
	.byte 31,128
	.byte 0,0
	.byte 0,3
	.byte 255,255
	.byte 252,0
	.byte 0,15
	.byte 252,252
	.byte 63,63
	.byte 31,128
	.byte 0,0
	.byte 0,7
	.byte 255,255
	.byte 252,0
	.byte 0,15
	.byte 252,124
	.byte 62,62
	.byte 31,128
	.byte 0,0
	.byte 0,7
	.byte 255,255
	.byte 252,0
	.byte 0,31
	.byte 254,124
	.byte 126,126
	.byte 63,0
	.byte 32,0
	.byte 0,1
	.byte 192,0
	.byte 0,0
	.byte 0,31
	.byte 190,126
	.byte 126,126
	.byte 255,0
	.byte 'p,0
	.byte 0,13
	.byte 191,223
	.byte 176,0
	.byte 0,31
	.byte 62,62
	.byte 124,127
	.byte 255,0
	.byte 'p,0
	.byte 0,29
	.byte 255,223
	.byte 176,0
	.byte 0,63
	.byte 63,62
	.byte 124,255
	.byte 254,0
	.byte 'p,0
	.byte 0,29
	.byte 255,216
	.byte 48,0
	.byte 0,63
	.byte 31,63
	.byte 252,255
	.byte 252,0
	.byte 96,0
	.byte 0,61
	.byte 246,216
	.byte 48,0
	.byte 0,63
	.byte 31,159
	.byte 248,255
	.byte 240,0
	.byte 224,0
	.byte 0,61
	.byte 246,223
	.byte 176,0
	.byte 0,63
	.byte 255,159
	.byte 249,255
	.byte 224,0
	.byte 192,0
	.byte 0,125
	.byte 246,223
	.byte 176,0
	.byte 0,127
	.byte 255,159
	.byte 249,251
	.byte 224,0
	.byte 64,0
	.byte 0,237
	.byte 246,216
	.byte 48,0
	.byte 0,127
	.byte 255,207
	.byte 241,243
	.byte 240,0
	.byte 64,0
	.byte 0,237
	.byte 246,216
	.byte 48,0
	.byte 0,127
	.byte 255,207
	.byte 243,243
	.byte 240,0
	.byte 64,0
	.byte 0,237
	.byte 246,223
	.byte 176,0
	.byte 0,255
	.byte 255,207
	.byte 243,241
	.byte 240,0
	.byte 96,0
	.byte 1,255
	.byte 255,255
	.byte 254,0
	.byte 0,248
	.byte 7,231
	.byte 227,225
	.byte 240,8
	.byte 32,30
	.byte 1,255
	.byte 255,255
	.byte 254,0
	.byte 0,248
	.byte 3,231
	.byte 231,225
	.byte 248,255
	.byte 60,63
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 1,248
	.byte 3,227
	.byte 231,225
	.byte 249,255
	.byte 255,247
	.byte 128,0
	.byte 0,0
	.byte 0,0
	.byte 0,240
	.byte 1,227
	.byte 199,192
	.byte 249,224
	.byte 255,255
	.byte 192,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,3
	.byte 192,0
	.byte 0,128
	.byte 124,252
	.byte 192,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,1
	.byte 192,0
	.byte 0,0
	.byte 127,252
	.byte 240,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,1
	.byte 128,0
	.byte 0,0
	.byte 127,255
	.byte 240,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,1
	.byte 128,0
	.byte 0,0
	.byte 39,255
	.byte 176,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 128,0
	.byte 0,0
	.byte 55,255
	.byte 16,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 63,255
	.byte 28,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 63,255
	.byte 12,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 255,255
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,1
	.byte 255,255
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,1
	.byte 223,255
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,1
	.byte 31,255
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,1
	.byte 191,255
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,1
	.byte 248,60
	.byte 0,204
	.byte 0,0
	.byte 255,254
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,31
	.byte 'l,55
	.byte 241,140
	.byte 0,0
	.byte 231,254
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,3
	.byte 96,'o
	.byte 55,255
	.byte 128,0
	.byte 207,252
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,31
	.byte 254,'l
	.byte 54,'y
	.byte 128,0
	.byte 238,240
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,3
	.byte 96,236
	.byte 54,'q
	.byte 128,0
	.byte 'x,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,3
	.byte 236,'l
	.byte 54,'y
	.byte 128,0
	.byte 60,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,7
	.byte 248,'l
	.byte 55,237
	.byte 128,0
	.byte 62,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,31
	.byte 48,'l
	.byte 54,'m
	.byte 128,0
	.byte 'v,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,3
	.byte 'v,'l
	.byte 54,'a
	.byte 128,0
	.byte 6,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,3
	.byte 222,'l
	.byte 55,225
	.byte 128,0
	.byte 6,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,15
	.byte 14,'l
	.byte 246,'o
	.byte 0,0
	.byte 6,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.dbsym e logo _logo A[1072:1072]kc
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.dbfunc e Lcd_init _Lcd_init fV
	.even
_Lcd_init::
	.dbline -1
	.dbline 108
;   /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 12864 时钟显示 
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽拿掉   
; /******************************************************************************/
; #include <iom16v.h>
; #include <macros.h>
; #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
; #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
; //12864
; void Write_char(unsigned char start, unsigned char ddata);
; void Send_byte (unsigned char bbyte);
; void Delaynms  (unsigned int di);
; void Lcd_init  (void);
; void delay     (void);
; void Disp_img  (unsigned char const *img);
; void timer1_init(void);
; unsigned char  Sec,Min,Hour=0;
; unsigned char  flag=0;
; unsigned char  disbuf[6]={0,0,0,0,0,0};
; unsigned char  num[]=    {"0123456789: "};
; unsigned char  welcome[]={"时间:"};
; unsigned char  input[]  ={"日期:"};
; const unsigned char  discode[10]={ 0xC0, 0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 }; 
; /**************************************************************/
;  unsigned  char const logo[]={  
; /*--  调入了一幅图像：C:\Documents and Settings\lwd\桌面\AVR程序\AVR_12864_串行\b01.bmp  --*/
; /*--  宽度x高度=127x63  --*/
; /*--  宽度不是8的倍数，现调整为：宽度x高度=128x63  --*/
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x03,0xF3,0xE0,0x0F,0x8F,0xFC,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x03,0xF3,0xF0,0x0F,0x8F,0xFE,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x07,0xF9,0xF0,0x0F,0x9F,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x07,0xF9,0xF8,0x1F,0x9F,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x07,0xF9,0xF8,0x1F,0x1F,0xFF,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x0F,0xFC,0xF8,0x1F,0x3F,0x1F,0x80,0x00,0x00,0x00,0x03,0xFF,0xFF,0xFC,0x00,
; 0x00,0x0F,0xFC,0xFC,0x3F,0x3F,0x1F,0x80,0x00,0x00,0x00,0x07,0xFF,0xFF,0xFC,0x00,
; 0x00,0x0F,0xFC,0x7C,0x3E,0x3E,0x1F,0x80,0x00,0x00,0x00,0x07,0xFF,0xFF,0xFC,0x00,
; 0x00,0x1F,0xFE,0x7C,0x7E,0x7E,0x3F,0x00,0x20,0x00,0x00,0x01,0xC0,0x00,0x00,0x00,
; 0x00,0x1F,0xBE,0x7E,0x7E,0x7E,0xFF,0x00,0x70,0x00,0x00,0x0D,0xBF,0xDF,0xB0,0x00,
; 0x00,0x1F,0x3E,0x3E,0x7C,0x7F,0xFF,0x00,0x70,0x00,0x00,0x1D,0xFF,0xDF,0xB0,0x00,
; 0x00,0x3F,0x3F,0x3E,0x7C,0xFF,0xFE,0x00,0x70,0x00,0x00,0x1D,0xFF,0xD8,0x30,0x00,
; 0x00,0x3F,0x1F,0x3F,0xFC,0xFF,0xFC,0x00,0x60,0x00,0x00,0x3D,0xF6,0xD8,0x30,0x00,
; 0x00,0x3F,0x1F,0x9F,0xF8,0xFF,0xF0,0x00,0xE0,0x00,0x00,0x3D,0xF6,0xDF,0xB0,0x00,
; 0x00,0x3F,0xFF,0x9F,0xF9,0xFF,0xE0,0x00,0xC0,0x00,0x00,0x7D,0xF6,0xDF,0xB0,0x00,
; 0x00,0x7F,0xFF,0x9F,0xF9,0xFB,0xE0,0x00,0x40,0x00,0x00,0xED,0xF6,0xD8,0x30,0x00,
; 0x00,0x7F,0xFF,0xCF,0xF1,0xF3,0xF0,0x00,0x40,0x00,0x00,0xED,0xF6,0xD8,0x30,0x00,
; 0x00,0x7F,0xFF,0xCF,0xF3,0xF3,0xF0,0x00,0x40,0x00,0x00,0xED,0xF6,0xDF,0xB0,0x00,
; 0x00,0xFF,0xFF,0xCF,0xF3,0xF1,0xF0,0x00,0x60,0x00,0x01,0xFF,0xFF,0xFF,0xFE,0x00,
; 0x00,0xF8,0x07,0xE7,0xE3,0xE1,0xF0,0x08,0x20,0x1E,0x01,0xFF,0xFF,0xFF,0xFE,0x00,
; 0x00,0xF8,0x03,0xE7,0xE7,0xE1,0xF8,0xFF,0x3C,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x01,0xF8,0x03,0xE3,0xE7,0xE1,0xF9,0xFF,0xFF,0xF7,0x80,0x00,0x00,0x00,0x00,0x00,
; 0x00,0xF0,0x01,0xE3,0xC7,0xC0,0xF9,0xE0,0xFF,0xFF,0xC0,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x03,0xC0,0x00,0x00,0x80,0x7C,0xFC,0xC0,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x01,0xC0,0x00,0x00,0x00,0x7F,0xFC,0xF0,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x01,0x80,0x00,0x00,0x00,0x7F,0xFF,0xF0,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x01,0x80,0x00,0x00,0x00,0x27,0xFF,0xB0,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x80,0x00,0x00,0x00,0x37,0xFF,0x10,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0xFF,0x1C,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0xFF,0x0C,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xDF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x1F,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xBF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x01,0xF8,0x3C,0x00,0xCC,0x00,0x00,0xFF,0xFE,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x1F,0x6C,0x37,0xF1,0x8C,0x00,0x00,0xE7,0xFE,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x03,0x60,0x6F,0x37,0xFF,0x80,0x00,0xCF,0xFC,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x1F,0xFE,0x6C,0x36,0x79,0x80,0x00,0xEE,0xF0,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x03,0x60,0xEC,0x36,0x71,0x80,0x00,0x78,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x03,0xEC,0x6C,0x36,0x79,0x80,0x00,0x3C,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x07,0xF8,0x6C,0x37,0xED,0x80,0x00,0x3E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x1F,0x30,0x6C,0x36,0x6D,0x80,0x00,0x76,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x03,0x76,0x6C,0x36,0x61,0x80,0x00,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x03,0xDE,0x6C,0x37,0xE1,0x80,0x00,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x0F,0x0E,0x6C,0xF6,0x6F,0x00,0x00,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
; };
; 
; /******************************************************************************/
; void Lcd_init(void)	//初始化LCD 
; {
	.dbline 109
; 	Delaynms(10); //启动等待，等LCM讲入工作状态
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 110
; 	Set_Bit(PORTA,0);
	sbi 0x1b,0
	.dbline 111
;   	Write_char(0,0x30);  //8 位介面，基本指令集
	ldi R18,48
	clr R16
	xcall _Write_char
	.dbline 112
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 113
;   	Write_char(0,0x0c);  //显示打开，光标关，反白关
	ldi R18,12
	clr R16
	xcall _Write_char
	.dbline 114
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 115
;   	Write_char(0,0x01);  //清屏，将DDRAM的地址计数器归零  
	ldi R18,1
	clr R16
	xcall _Write_char
	.dbline 116
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	.dbline -2
L1:
	.dbline 0 ; func end
	xjmp _Delaynms
	.dbend
	.dbfunc e Write_char _Write_char fV
;          Ldata -> R20
;          Hdata -> R22
;     start_data -> R10
;          ddata -> R20
;          start -> R10
	.even
_Write_char::
	xcall push_xgsetF00C
	mov R20,R18
	mov R10,R16
	.dbline -1
	.dbline 121
; }
; 
; /******************************************************************************/
; void Write_char(unsigned char start, unsigned char ddata) //写指令或数据
; {
	.dbline 123
; 	unsigned char start_data,Hdata,Ldata;
;   	if(start==0) 
	tst R10
	brne L3
X0:
	.dbline 124
; 		start_data=0xf8;	 //写指令
	ldi R24,248
	mov R10,R24
	xjmp L4
L3:
	.dbline 126
;     else    
;     	start_data=0xfa;  //写数据
	ldi R24,250
	mov R10,R24
L4:
	.dbline 128
;   
;   	Hdata=ddata&0xf0;		  //取高四位
	mov R22,R20
	andi R22,240
	.dbline 129
;   	Ldata=(ddata<<4)&0xf0;  //取低四位
	mov R24,R20
	andi R24,#0x0F
	swap R24
	andi R24,240
	mov R20,R24
	.dbline 130
;   	Send_byte(start_data);	  //发送起始信号
	mov R16,R10
	xcall _Send_byte
	.dbline 131
;   	Delaynms(10); //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 132
;   	Send_byte(Hdata);	      //发送高四位
	mov R16,R22
	xcall _Send_byte
	.dbline 133
;   	Delaynms(10);  //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 134
;   	Send_byte(Ldata);		  //发送低四位
	mov R16,R20
	xcall _Send_byte
	.dbline 135
;   	Delaynms(10);  //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline -2
L2:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r Ldata 20 c
	.dbsym r Hdata 22 c
	.dbsym r start_data 10 c
	.dbsym r ddata 20 c
	.dbsym r start 10 c
	.dbend
	.dbfunc e Send_byte _Send_byte fV
;              j -> R22
;              i -> R20
;          bbyte -> R16
	.even
_Send_byte::
	st -y,R20
	st -y,R22
	.dbline -1
	.dbline 140
; }
; 
; /******************************************************************************/
; void Send_byte(unsigned char bbyte) //发送一个字节
; {
	.dbline 142
;     unsigned char i,j;
;  	for(i=0;i<8;i++)
	clr R20
	xjmp L9
L6:
	.dbline 143
;    	{    
	.dbline 144
;    		j=bbyte&0x80; //取出最高位
	mov R22,R16
	andi R22,128
	.dbline 145
;  		if(j)
	breq L10
X1:
	.dbline 146
; 			Set_Bit(PORTA,1);
	sbi 0x1b,1
	xjmp L11
L10:
	.dbline 148
; 		else
; 			Clr_Bit(PORTA,1);
	cbi 0x1b,1
L11:
	.dbline 149
; 		Set_Bit(PORTA,2);
	sbi 0x1b,2
	.dbline 151
; 		//Delaynms(1);
; 		Clr_Bit(PORTA,2);
	cbi 0x1b,2
	.dbline 152
;    		bbyte<<=1; //左移  
	lsl R16
	.dbline 153
;    	}  
L7:
	.dbline 142
	inc R20
L9:
	.dbline 142
	cpi R20,8
	brlo L6
X2:
	.dbline -2
L5:
	.dbline 0 ; func end
	ld R22,y+
	ld R20,y+
	ret
	.dbsym r j 22 c
	.dbsym r i 20 c
	.dbsym r bbyte 16 c
	.dbend
	.dbfunc e Delaynms _Delaynms fV
;             da -> R20,R21
;             db -> R22,R23
;             di -> R16,R17
	.even
_Delaynms::
	xcall push_xgsetF000
	.dbline -1
	.dbline 158
; }
; 
; /******************************************************************************/
; void Delaynms(unsigned int di) //延时
; {
	.dbline 160
; 	unsigned int da,db;
;  	for(da=0;da<di;da++)
	clr R20
	clr R21
	xjmp L16
L13:
	.dbline 161
;    		for(db=0;db<10;db++);
	clr R22
	clr R23
	xjmp L20
L17:
	.dbline 161
L18:
	.dbline 161
	subi R22,255  ; offset = 1
	sbci R23,255
L20:
	.dbline 161
	cpi R22,10
	ldi R30,0
	cpc R23,R30
	brlo L17
X3:
L14:
	.dbline 160
	subi R20,255  ; offset = 1
	sbci R21,255
L16:
	.dbline 160
	cp R20,R16
	cpc R21,R17
	brlo L13
X4:
	.dbline -2
L12:
	.dbline 0 ; func end
	xjmp pop_xgsetF000
	.dbsym r da 20 i
	.dbsym r db 22 i
	.dbsym r di 16 i
	.dbend
	.dbfunc e Disp_img _Disp_img fV
;              i -> R20
;              k -> R22,R23
;              j -> R12
;            img -> R10,R11
	.even
_Disp_img::
	xcall push_xgsetF03C
	movw R10,R16
	.dbline -1
	.dbline 166
; }
; 
; /****************************************************************************/
; void Disp_img(unsigned char const *img )	//图形方式12864显示字模221 横向取膜
; { 
	.dbline 168
; 	unsigned char i,j;
; 	unsigned int k = 0;
	clr R22
	clr R23
	.dbline 169
;     Delaynms(10);//延时好重要!!!!!!AVR太快了
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 170
; 	Write_char(0,0x36); //图形方式
	ldi R18,54
	clr R16
	xcall _Write_char
	.dbline 171
; 	Delaynms(10);//延时好重要!!!!!!AVR太快了
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 172
; 	for(i=0;i<32;i++)
	clr R20
	xjmp L25
L22:
	.dbline 173
;   	{ 
	.dbline 174
; 		Write_char(0,0x80+i); //列
	mov R18,R20
	subi R18,128    ; addi 128
	clr R16
	xcall _Write_char
	.dbline 175
; 		Write_char(0,0x80);	  //行
	ldi R18,128
	clr R16
	xcall _Write_char
	.dbline 176
;     	for(j=0;j<16;j++) 
	clr R12
	xjmp L29
L26:
	.dbline 177
; 		{
	.dbline 178
; 			Write_char(1,img[k++]);
	movw R2,R22
	subi R22,255  ; offset = 1
	sbci R23,255
	movw R30,R2
	add R30,R10
	adc R31,R11
	lpm R18,Z
	ldi R16,1
	xcall _Write_char
	.dbline 179
; 		}
L27:
	.dbline 176
	inc R12
L29:
	.dbline 176
	mov R24,R12
	cpi R24,16
	brlo L26
X5:
	.dbline 180
;   	}
L23:
	.dbline 172
	inc R20
L25:
	.dbline 172
	cpi R20,32
	brlo L22
X6:
	.dbline 182
; 
;  	for(i=0;i<32;i++)
	clr R20
	xjmp L33
L30:
	.dbline 183
;   	{ 
	.dbline 184
; 		Write_char(0,0x80+i);
	mov R18,R20
	subi R18,128    ; addi 128
	clr R16
	xcall _Write_char
	.dbline 185
; 		Write_char(0,0x88);
	ldi R18,136
	clr R16
	xcall _Write_char
	.dbline 186
;     	for(j=0;j<16;j++) 
	clr R12
	xjmp L37
L34:
	.dbline 187
; 		{
	.dbline 188
; 			Write_char(1,img[k++]);
	movw R2,R22
	subi R22,255  ; offset = 1
	sbci R23,255
	movw R30,R2
	add R30,R10
	adc R31,R11
	lpm R18,Z
	ldi R16,1
	xcall _Write_char
	.dbline 189
;   		}
L35:
	.dbline 186
	inc R12
L37:
	.dbline 186
	mov R24,R12
	cpi R24,16
	brlo L34
X7:
	.dbline 190
; 	}
L31:
	.dbline 182
	inc R20
L33:
	.dbline 182
	cpi R20,32
	brlo L30
X8:
	.dbline -2
L21:
	.dbline 0 ; func end
	xjmp pop_xgsetF03C
	.dbsym r i 20 c
	.dbsym r k 22 i
	.dbsym r j 12 c
	.dbsym r img 10 pkc
	.dbend
	.dbfunc e Clr_Scr _Clr_Scr fV
	.even
_Clr_Scr::
	.dbline -1
	.dbline 195
; }
; 
; /******************************************************************************/
; void Clr_Scr(void)//清屏函数
; {
	.dbline 196
; 	Write_char(0,0x01);
	ldi R18,1
	clr R16
	.dbline -2
L38:
	.dbline 0 ; func end
	xjmp _Write_char
	.dbend
	.dbfunc e LCD_set_xy _LCD_set_xy fV
;        address -> R20
;              y -> R22
;              x -> R10
	.even
_LCD_set_xy::
	xcall push_xgsetF00C
	mov R22,R18
	mov R10,R16
	.dbline -1
	.dbline 201
; }
; 
; /******************************************************************************/
; void LCD_set_xy( unsigned char x, unsigned char y )
; {	//设置LCD显示的起始位置，X为行，Y为列
	.dbline 203
;     unsigned char address;
; 	switch(x)
	mov R20,R10
	clr R21
	cpi R20,0
	cpc R20,R21
	breq L43
X9:
	cpi R20,1
	ldi R30,0
	cpc R21,R30
	breq L44
X10:
	cpi R20,2
	ldi R30,0
	cpc R21,R30
	breq L45
X11:
	cpi R20,3
	ldi R30,0
	cpc R21,R30
	breq L46
X12:
	cpi R20,4
	ldi R30,0
	cpc R21,R30
	breq L47
X13:
	xjmp L40
L43:
	.dbline 205
; 	{
; 		case 0: address = 0x80 + y; break;    
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 205
	xjmp L41
L44:
	.dbline 206
;     	case 1: address = 0x80 + y; break; 
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 206
	xjmp L41
L45:
	.dbline 207
; 		case 2: address = 0x90 + y; break; 
	mov R20,R22
	subi R20,112    ; addi 144
	.dbline 207
	xjmp L41
L46:
	.dbline 208
;    	 	case 3: address = 0x88 + y; break;
	mov R20,R22
	subi R20,120    ; addi 136
	.dbline 208
	xjmp L41
L47:
	.dbline 209
; 		case 4: address = 0x98 + y; break; 
	mov R20,R22
	subi R20,104    ; addi 152
	.dbline 209
	xjmp L41
L40:
	.dbline 210
; 		default:address = 0x80 + y; break;
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 210
L41:
	.dbline 212
; 	}
;     Write_char(0, address);
	mov R18,R20
	clr R16
	xcall _Write_char
	.dbline -2
L39:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r address 20 c
	.dbsym r y 22 c
	.dbsym r x 10 c
	.dbend
	.dbfunc e LCD_Write_string _LCD_Write_string fV
;              s -> R20,R21
;              Y -> R12
;              X -> R10
	.even
_LCD_Write_string::
	xcall push_xgset303C
	mov R12,R18
	mov R10,R16
	ldd R20,y+6
	ldd R21,y+7
	.dbline -1
	.dbline 217
; }
; 
; /******************************************************************************/
; void LCD_Write_string(unsigned char X,unsigned char Y,unsigned char *s)
; {	//	中英文字符串显示函数
	.dbline 218
; 	LCD_set_xy( X, Y );   
	mov R18,R12
	mov R16,R10
	xcall _LCD_set_xy
	xjmp L50
L49:
	.dbline 220
;     while (*s) 
;     {
	.dbline 221
; 		Write_char( 1, *s );
	movw R30,R20
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline 222
; 	    s ++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 223
; 		Delaynms(1);
	ldi R16,1
	ldi R17,0
	xcall _Delaynms
	.dbline 224
; 	}
L50:
	.dbline 219
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L49
X14:
	.dbline -2
L48:
	.dbline 0 ; func end
	xjmp pop_xgset303C
	.dbsym r s 20 pc
	.dbsym r Y 12 c
	.dbsym r X 10 c
	.dbend
	.dbfunc e LCD_Write_number _LCD_Write_number fV
;              s -> R10
	.even
_LCD_Write_number::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 228
; }
; /*******************************************************************************/
; void LCD_Write_number(unsigned char s)//	数字显示函数
; {	
	.dbline 229
; 	Write_char(1,num[s]);
	ldi R24,<_num
	ldi R25,>_num
	mov R30,R10
	clr R31
	add R30,R24
	adc R31,R25
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline 230
; 	Delaynms(1);
	ldi R16,1
	ldi R17,0
	xcall _Delaynms
	.dbline -2
L52:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r s 10 c
	.dbend
	.dbfunc e delay _delay fV
;              i -> R16,R17
	.even
_delay::
	.dbline -1
	.dbline 234
; }
; 
; void delay(void)          
; {    
	.dbline 236
;     unsigned i;
;     for(i=0;i<255;i++);
	clr R16
	clr R17
	xjmp L57
L54:
	.dbline 236
L55:
	.dbline 236
	subi R16,255  ; offset = 1
	sbci R17,255
L57:
	.dbline 236
	cpi R16,255
	ldi R30,0
	cpc R17,R30
	brlo L54
X15:
	.dbline -2
L53:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 i
	.dbend
	.dbfunc e Lcd_Mark2 _Lcd_Mark2 fV
	.even
_Lcd_Mark2::
	sbiw R28,2
	.dbline -1
	.dbline 240
; }
; /******************************************************************************/
; void Lcd_Mark2(void)
; {
	.dbline 241
; 	Clr_Scr();//清屏
	xcall _Clr_Scr
	.dbline 242
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 243
; 	LCD_Write_string(1,0,welcome);//
	ldi R24,<_welcome
	ldi R25,>_welcome
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,1
	xcall _LCD_Write_string
	.dbline 244
; 	LCD_Write_string(2,0,input);
	ldi R24,<_input
	ldi R25,>_input
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,2
	xcall _LCD_Write_string
	.dbline -2
L58:
	.dbline 0 ; func end
	adiw R28,2
	ret
	.dbend
	.dbfunc e timer1_init _timer1_init fV
	.even
_timer1_init::
	.dbline -1
	.dbline 248
; }
; /******************************************************************************/
;  void timer1_init(void)
; {
	.dbline 249
; 	TCCR1B = 0x00;	//stop timer
	clr R2
	out 0x2e,R2
	.dbline 250
; 	TCNT1H = 0xc7;	//设置 TC1 的 计数寄存器 高8位值
	ldi R24,199
	out 0x2d,R24
	.dbline 251
; 	TCNT1L = 0xc0;	//设置 TC1 的 计数寄存器 低8位值
	ldi R24,192
	out 0x2c,R24
	.dbline 252
; 	TCCR1A = 0x00;
	out 0x2f,R2
	.dbline 253
; 	TCCR1B = 0x04;	//设置TC1 为 CLK/1024分频，启动TC1
	ldi R24,4
	out 0x2e,R24
	.dbline 254
; 	MCUCR  = 0x00;	//设置 MCU 的 控制寄存器
	out 0x35,R2
	.dbline 255
; 	GICR   = 0x00;  //设置 中断控制寄存器
	out 0x3b,R2
	.dbline 256
; 	TIMSK  = 0x04;	//设置 定时计数器 的 屏蔽寄存器
	out 0x39,R24
	.dbline -2
L59:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 260
; }   
; /******************************************************************************/
; void main(void)//主函数
; { 
	.dbline 262
; 
;     DDRA|=1<<0|1<<1|1<<2|0<<7;//设置PA0,PA1,PA2为输出,PA7为输入
	in R24,0x1a
	ori R24,7
	out 0x1a,R24
	.dbline 263
; 	PORTA=0x00;
	clr R2
	out 0x1b,R2
	.dbline 265
; 	
; 	DDRC|=1<<0;//设置PC0为输出
	sbi 0x14,0
	.dbline 266
; 	PORTC=0x00;
	out 0x15,R2
	.dbline 268
; 
; 	DDRD|=1<<0;
	sbi 0x11,0
	.dbline 269
; 	PORTD=0x00;
	out 0x12,R2
	.dbline 272
;     
; 	
; 	Lcd_init();//设置液晶显示器
	xcall _Lcd_init
	.dbline 273
; 	Clr_Scr();//清屏	
	xcall _Clr_Scr
	.dbline 274
; 	Disp_img(logo);	//显示我们的AVR
	ldi R16,<_logo
	ldi R17,>_logo
	xcall _Disp_img
	.dbline 275
; 	Delaynms(40000);//显示画面等待时间
	ldi R16,40000
	ldi R17,156
	xcall _Delaynms
	.dbline 276
;     Lcd_init();
	xcall _Lcd_init
	.dbline 277
; 	Lcd_Mark2();
	xcall _Lcd_Mark2
	.dbline 278
; 	timer1_init();	
	xcall _timer1_init
	.dbline 279
; 	SEI();	 
	sei
	xjmp L62
L61:
	.dbline 281
;     while(1)
; 	{ 
	.dbline 282
; 		  PORTB=discode[disbuf[0]];
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf
	clr R31
	add R30,R24
	adc R31,R25
	lpm R2,Z
	out 0x18,R2
	.dbline 283
;           PORTD=0xEF;
	ldi R24,239
	out 0x12,R24
	.dbline 284
;           delay();
	xcall _delay
	.dbline 285
;           PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 286
; 		  PORTB=discode[disbuf[1]];
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf+1
	clr R31
	add R30,R24
	adc R31,R25
	lpm R2,Z
	out 0x18,R2
	.dbline 287
;           PORTD=0xDF;
	ldi R24,223
	out 0x12,R24
	.dbline 288
;           delay();
	xcall _delay
	.dbline 289
;           PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 290
; 		  PORTB=discode[disbuf[2]];      	                     
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf+2
	clr R31
	add R30,R24
	adc R31,R25
	lpm R2,Z
	out 0x18,R2
	.dbline 291
;           PORTD=0xBF;
	ldi R24,191
	out 0x12,R24
	.dbline 292
;           delay();
	xcall _delay
	.dbline 293
;           PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 294
; 	      PORTB=discode[disbuf[3]];
	ldi R24,<_discode
	ldi R25,>_discode
	lds R30,_disbuf+3
	clr R31
	add R30,R24
	adc R31,R25
	lpm R2,Z
	out 0x18,R2
	.dbline 295
;           PORTD=0x7F;
	ldi R24,127
	out 0x12,R24
	.dbline 296
;           delay();
	xcall _delay
	.dbline 297
;           PORTD=0xff;
	ldi R24,255
	out 0x12,R24
	.dbline 298
;     }
L62:
	.dbline 280
	xjmp L61
X16:
	.dbline -2
L60:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 32
	jmp _timer1_ovf_isr
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	.dbfunc e timer1_ovf_isr _timer1_ovf_isr fV
	.even
_timer1_ovf_isr::
	st -y,R0
	st -y,R1
	st -y,R2
	st -y,R3
	st -y,R4
	st -y,R5
	st -y,R6
	st -y,R7
	st -y,R8
	st -y,R9
	st -y,R16
	st -y,R17
	st -y,R18
	st -y,R19
	st -y,R24
	st -y,R25
	st -y,R26
	st -y,R27
	st -y,R30
	st -y,R31
	in R0,0x3f
	st -y,R0
	.dbline -1
	.dbline 303
; } //ENDmain
;  
; #pragma interrupt_handler timer1_ovf_isr:9                    
; void timer1_ovf_isr(void) 
; 		   { 
	.dbline 305
; 		         
; 			     TCNT1H = 0xc7;		//设置 TC1 的 计数寄存器 高8位值
	ldi R24,199
	out 0x2d,R24
	.dbline 306
; 	             TCNT1L = 0xc0;		//设置 TC1 的 计数寄存器 低8位值
	ldi R24,192
	out 0x2c,R24
	.dbline 307
; 				 flag=~flag;
	lds R2,_flag
	com R2
	sts _flag,R2
	.dbline 310
; 			   
; 				 
; 				 Sec++;
	lds R24,_Sec
	subi R24,255    ; addi 1
	sts _Sec,R24
	.dbline 311
; 				 if(Sec==60)
	cpi R24,60
	brne L68
X17:
	.dbline 312
; 				  { 
	.dbline 313
; 				   Sec=0;
	clr R2
	sts _Sec,R2
	.dbline 314
; 				   Min++;
	lds R24,_Min
	subi R24,255    ; addi 1
	sts _Min,R24
	.dbline 315
; 				        { 
	.dbline 316
; 					     if(Min==60)
	cpi R24,60
	brne L70
X18:
	.dbline 317
; 				  	       { Min=0;
	.dbline 317
	sts _Min,R2
	.dbline 318
; 					          Hour++;
	lds R24,_Hour
	subi R24,255    ; addi 1
	sts _Hour,R24
	.dbline 319
; 						       if(Hour==24)
	cpi R24,24
	brne L72
X19:
	.dbline 320
; 							    {
	.dbline 321
; 						        Hour=0; 
	sts _Hour,R2
	.dbline 322
; 								} 
L72:
	.dbline 323
; 					       }
L70:
	.dbline 325
; 						
; 					    }
	.dbline 327
; 					
; 			       }
L68:
	.dbline 328
; 			 disbuf[5]=Hour/10;
	ldi R17,10
	lds R16,_Hour
	xcall div8u
	sts _disbuf+5,R16
	.dbline 329
; 			 disbuf[4]=Hour%10;
	ldi R17,10
	lds R16,_Hour
	xcall mod8u
	sts _disbuf+4,R16
	.dbline 330
; 			 disbuf[3]=Min/10;
	ldi R17,10
	lds R16,_Min
	xcall div8u
	sts _disbuf+3,R16
	.dbline 331
; 			 disbuf[2]=Min%10;
	ldi R17,10
	lds R16,_Min
	xcall mod8u
	sts _disbuf+2,R16
	.dbline 332
; 			 disbuf[1]=Sec/10;
	ldi R17,10
	lds R16,_Sec
	xcall div8u
	sts _disbuf+1,R16
	.dbline 333
; 			 disbuf[0]=Sec%10;
	ldi R17,10
	lds R16,_Sec
	xcall mod8u
	sts _disbuf,R16
	.dbline 334
; 			 LCD_set_xy(1,4);
	ldi R18,4
	ldi R16,1
	xcall _LCD_set_xy
	.dbline 335
; 			 LCD_Write_number(disbuf[5]);
	lds R16,_disbuf+5
	xcall _LCD_Write_number
	.dbline 336
; 			 LCD_Write_number(disbuf[4]);
	lds R16,_disbuf+4
	xcall _LCD_Write_number
	.dbline 338
; 			 
; 			 if(flag==0)
	lds R2,_flag
	tst R2
	brne L81
X20:
	.dbline 339
; 			 {
	.dbline 340
; 			 LCD_set_xy(1,5);
	ldi R18,5
	ldi R16,1
	xcall _LCD_set_xy
	.dbline 341
; 			 LCD_Write_number(10);
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 342
; 			 LCD_Write_number(disbuf[3]);
	lds R16,_disbuf+3
	xcall _LCD_Write_number
	.dbline 343
; 			 LCD_set_xy(1,6);
	ldi R18,6
	ldi R16,1
	xcall _LCD_set_xy
	.dbline 344
; 			 LCD_Write_number(disbuf[2]);
	lds R16,_disbuf+2
	xcall _LCD_Write_number
	.dbline 345
; 			 LCD_Write_number(10);
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 346
; 			 }
	xjmp L82
L81:
	.dbline 348
; 			 else
; 			 {
	.dbline 349
; 			 LCD_set_xy(1,5);
	ldi R18,5
	ldi R16,1
	xcall _LCD_set_xy
	.dbline 350
; 			 LCD_Write_number(11);
	ldi R16,11
	xcall _LCD_Write_number
	.dbline 351
; 			 LCD_Write_number(disbuf[3]);
	lds R16,_disbuf+3
	xcall _LCD_Write_number
	.dbline 352
; 			 LCD_set_xy(1,6);
	ldi R18,6
	ldi R16,1
	xcall _LCD_set_xy
	.dbline 353
; 			 LCD_Write_number(disbuf[2]);
	lds R16,_disbuf+2
	xcall _LCD_Write_number
	.dbline 354
; 			 LCD_Write_number(11);
	ldi R16,11
	xcall _LCD_Write_number
	.dbline 355
; 			 }
L82:
	.dbline 357
; 			
; 			 LCD_set_xy(1,7);
	ldi R18,7
	ldi R16,1
	xcall _LCD_set_xy
	.dbline 358
; 			 LCD_Write_number(disbuf[1]);
	lds R16,_disbuf+1
	xcall _LCD_Write_number
	.dbline 359
; 			 LCD_Write_number(disbuf[0]);
	lds R16,_disbuf
	xcall _LCD_Write_number
	.dbline -2
L67:
	.dbline 0 ; func end
	ld R0,y+
	out 0x3f,R0
	ld R31,y+
	ld R30,y+
	ld R27,y+
	ld R26,y+
	ld R25,y+
	ld R24,y+
	ld R19,y+
	ld R18,y+
	ld R17,y+
	ld R16,y+
	ld R9,y+
	ld R8,y+
	ld R7,y+
	ld R6,y+
	ld R5,y+
	ld R4,y+
	ld R3,y+
	ld R2,y+
	ld R1,y+
	ld R0,y+
	reti
	.dbend
	.area bss(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
_Min::
	.blkb 1
	.dbsym e Min _Min c
_Sec::
	.blkb 1
	.dbsym e Sec _Sec c
; 			 
; 			
; 			 
; 	}
; 					 
; 				 
; 				
