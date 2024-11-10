	.module _键盘+12864.c
	.area data(ram, con, rel)
_T_1::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e T_1 _T_1 c
_T_2::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e T_2 _T_2 c
_T_3::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e T_3 _T_3 c
_T_4::
	.blkb 1
	.area idata
	.byte 1
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e T_4 _T_4 c
_T_5::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e T_5 _T_5 c
_T_6::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e T_6 _T_6 c
_T_7::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e T_7 _T_7 c
	.area lit(rom, con, rel)
_key_code::
	.byte 'w,183
	.byte 215,231
	.byte 123,187
	.byte 219,235
	.byte 125,189
	.byte 221,237
	.byte 126,190
	.byte 222,238
	.dbsym e key_code _key_code A[16:16]kc
_ksp::
	.byte 127,191
	.byte 223,239
	.dbsym e ksp _ksp A[4:4]kc
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
_num::
	.blkb 15
	.area idata
	.byte 48,49,50,51,52,53,54,55,56,57,95,58,46,'V,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e num _num A[15:15]c
_welcome::
	.blkb 10
	.area idata
	.byte 202,228,179,246,178,168,208,206,58,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e welcome _welcome A[10:10]c
_input::
	.blkb 10
	.area idata
	.byte 178,168,208,205,183,229,214,181,58,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e input _input A[10:10]c
_ouput::
	.blkb 10
	.area idata
	.byte 178,168,208,206,198,181,194,202,58,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e ouput _ouput A[10:10]c
_sin::
	.blkb 7
	.area idata
	.byte 213,253,207,210,178,168,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e sin _sin A[7:7]c
_sq1::
	.blkb 7
	.area idata
	.byte 183,189,178,168,32,32,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e sq1 _sq1 A[7:7]c
_angle::
	.blkb 7
	.area idata
	.byte 200,253,189,199,178,168,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e angle _angle A[7:7]c
_hz::
	.blkb 3
	.area idata
	.byte 'H,'z,0
	.area data(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbsym e hz _hz A[3:3]c
	.area code(ram, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.area lit(rom, con, rel)
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
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
	.dbfunc e Lcd_init _Lcd_init fV
	.even
_Lcd_init::
	.dbline -1
	.dbline 119
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】：LCD12864(St7920/St7921)+AD9833+4*4键盘
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J1短路帽接上    
; /******************************************************************************/
; /******************************************************************************/
; /*硬体接口
; /*PB接键盘
; /*PD0-----------------------FSYNC---------------------------244 A0--------------
; /*PD1-----------------------SCLK----------------------------244 A1--------------
; /*PD2-----------------------SDATA---------------------------244 A2--------------
; /******************************************************************************/
; #include <iom16v.h>
; #include <macros.h>
; #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
; #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
; //12864
; void Write_char(unsigned char start, unsigned char ddata);
; void Send_byte(unsigned char bbyte);
; void Delaynms(unsigned int di);
; void Lcd_init(void);
; void Disp_img(unsigned char const *img);
; unsigned char T_1=0,T_2=0,T_3=0,T_4=1,T_5=0,T_6=0,T_7=0;
; unsigned char  const key_code[]={0x77,0XB7,0XD7,0XE7,0X7B,0XBB,0XDB,0XEB,
;                                  0X7D,0XBD,0XDD,0XED,0X7E,0XBE,0XDE,0XEE};
; unsigned char  const ksp[4]=    {0x7F,0xBF,0xDF,0xEF};
; unsigned char  num[]=    {"0123456789_:.V"};
; unsigned char  welcome[]= {"输出波形:"};
; unsigned char  input[]  = {"波型峰值:"};
; unsigned char  ouput[]  = {"波形频率:"};
; unsigned char  sin[]    = {"正弦波"	 };
; unsigned char  sq1[]    = {"方波  "};
; unsigned char  angle[]  = {"三角波"};
; unsigned char  hz[]     = {"Hz"};
; #pragma data:code
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
	.dbline 120
; 	Delaynms(10); //启动等待，等LCM讲入工作状态
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 121
; 	Set_Bit(PORTA,0);
	sbi 0x1b,0
	.dbline 122
;   	Write_char(0,0x30);  //8 位介面，基本指令集
	ldi R18,48
	clr R16
	xcall _Write_char
	.dbline 123
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 124
;   	Write_char(0,0x0c);  //显示打开，光标关，反白关
	ldi R18,12
	clr R16
	xcall _Write_char
	.dbline 125
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 126
;   	Write_char(0,0x01);  //清屏，将DDRAM的地址计数器归零  
	ldi R18,1
	clr R16
	xcall _Write_char
	.dbline 127
; 	Delaynms(10);
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e Write_char _Write_char fV
;          Ldata -> R20
;          Hdata -> R22
;     start_data -> R10
;          ddata -> R20
;          start -> R22
	.even
_Write_char::
	xcall push_gset3
	mov R20,R18
	mov R22,R16
	.dbline -1
	.dbline 132
; }
; 
; /******************************************************************************/
; void Write_char(unsigned char start, unsigned char ddata) //写指令或数据
; {
	.dbline 134
; 	unsigned char start_data,Hdata,Ldata;
;   	if(start==0) 
	tst R22
	brne L3
	.dbline 135
; 		start_data=0xf8;	 //写指令
	ldi R24,248
	mov R10,R24
	xjmp L4
L3:
	.dbline 137
;     else    
;     	start_data=0xfa;  //写数据
	ldi R24,250
	mov R10,R24
L4:
	.dbline 139
;   
;   	Hdata=ddata&0xf0;		  //取高四位
	mov R22,R20
	andi R22,240
	.dbline 140
;   	Ldata=(ddata<<4)&0xf0;  //取低四位
	mov R24,R20
	andi R24,#0x0F
	swap R24
	andi R24,240
	mov R20,R24
	.dbline 141
;   	Send_byte(start_data);	  //发送起始信号
	mov R16,R10
	xcall _Send_byte
	.dbline 142
;   	Delaynms(10); //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 143
;   	Send_byte(Hdata);	      //发送高四位
	mov R16,R22
	xcall _Send_byte
	.dbline 144
;   	Delaynms(10);  //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline 145
;   	Send_byte(Ldata);		  //发送低四位
	mov R16,R20
	xcall _Send_byte
	.dbline 146
;   	Delaynms(10);  //延时是必须的
	ldi R16,10
	ldi R17,0
	xcall _Delaynms
	.dbline -2
L2:
	xcall pop_gset3
	.dbline 0 ; func end
	ret
	.dbsym r Ldata 20 c
	.dbsym r Hdata 22 c
	.dbsym r start_data 10 c
	.dbsym r ddata 20 c
	.dbsym r start 22 c
	.dbend
	.dbfunc e Send_byte _Send_byte fV
;              j -> R20
;              i -> R22
;          bbyte -> R16
	.even
_Send_byte::
	xcall push_gset2
	.dbline -1
	.dbline 151
; }
; 
; /******************************************************************************/
; void Send_byte(unsigned char bbyte) //发送一个字节
; {
	.dbline 153
; 	unsigned char i,j;
;  	for(i=0;i<8;i++)
	clr R22
	xjmp L9
L6:
	.dbline 154
;    	{    
	.dbline 156
; 	    
;    		j=bbyte&0x80; //取出最高位
	mov R20,R16
	andi R20,128
	.dbline 157
;  		if(j)
	breq L10
	.dbline 158
; 			Set_Bit(PORTA,1);  //液晶发送数据 1
	sbi 0x1b,1
	xjmp L11
L10:
	.dbline 160
; 		else
; 			Clr_Bit(PORTA,1);  //液晶发送数据 0
	cbi 0x1b,1
L11:
	.dbline 161
	sbi 0x1b,2
	.dbline 162
	cbi 0x1b,2
	.dbline 163
	lsl R16
	.dbline 164
L7:
	.dbline 153
	inc R22
L9:
	.dbline 153
	cpi R22,8
	brlo L6
	.dbline -2
L5:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r j 20 c
	.dbsym r i 22 c
	.dbsym r bbyte 16 c
	.dbend
	.dbfunc e Delaynms _Delaynms fV
;             da -> R20,R21
;             db -> R22,R23
;             di -> R16,R17
	.even
_Delaynms::
	xcall push_gset2
	.dbline -1
	.dbline 169
; 		Set_Bit(PORTA,2);      //液晶同步脉冲
; 		Clr_Bit(PORTA,2);      //液晶同步脉冲
;    		bbyte<<=1;   //左移
;    	}  
; }
; 
; /******************************************************************************/
; void Delaynms(unsigned int di) //延时
; {
	.dbline 171
; 	unsigned int da,db;
;  	for(da=0;da<di;da++)
	clr R20
	clr R21
	xjmp L16
L13:
	.dbline 172
	clr R22
	clr R23
	xjmp L20
L17:
	.dbline 172
L18:
	.dbline 172
	subi R22,255  ; offset = 1
	sbci R23,255
L20:
	.dbline 172
	cpi R22,10
	ldi R30,0
	cpc R23,R30
	brlo L17
L14:
	.dbline 171
	subi R20,255  ; offset = 1
	sbci R21,255
L16:
	.dbline 171
	cp R20,R16
	cpc R21,R17
	brlo L13
	.dbline -2
L12:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r da 20 i
	.dbsym r db 22 i
	.dbsym r di 16 i
	.dbend
	.dbfunc e Disp_img _Disp_img fV
;              i -> R20
;              k -> R22,R23
;              j -> R10
;            img -> R12,R13
	.even
_Disp_img::
	xcall push_gset4
	movw R12,R16
	.dbline -1
	.dbline 177
;    		for(db=0;db<10;db++);
; }
; 
; /****************************************************************************/
; void Disp_img(unsigned char const *img )	//图形方式12864显示字模221 横向取膜
; { 
	.dbline 179
; 	unsigned char i,j;
; 	unsigned int k = 0;
	clr R22
	clr R23
	.dbline 180
;     Delaynms(100);//延时好重要!!!!!!AVR太快了
	ldi R16,100
	ldi R17,0
	xcall _Delaynms
	.dbline 181
; 	Write_char(0,0x36); //图形方式
	ldi R18,54
	clr R16
	xcall _Write_char
	.dbline 182
; 	Delaynms(100);//延时好重要!!!!!!AVR太快了
	ldi R16,100
	ldi R17,0
	xcall _Delaynms
	.dbline 183
; 	for(i=0;i<32;i++)
	clr R20
	xjmp L25
L22:
	.dbline 184
;   	{ 
	.dbline 185
; 		Write_char(0,0x80+i); //列
	mov R18,R20
	subi R18,128    ; addi 128
	clr R16
	xcall _Write_char
	.dbline 186
; 		Write_char(0,0x80);	  //行
	ldi R18,128
	clr R16
	xcall _Write_char
	.dbline 187
;     	for(j=0;j<16;j++) 
	clr R10
	xjmp L29
L26:
	.dbline 188
	.dbline 189
	movw R2,R22
	subi R22,255  ; offset = 1
	sbci R23,255
	movw R30,R2
	add R30,R12
	adc R31,R13
	lpm R18,Z
	ldi R16,1
	xcall _Write_char
	.dbline 190
L27:
	.dbline 187
	inc R10
L29:
	.dbline 187
	mov R24,R10
	cpi R24,16
	brlo L26
	.dbline 191
L23:
	.dbline 183
	inc R20
L25:
	.dbline 183
	cpi R20,32
	brlo L22
	.dbline 193
; 		{
; 			Write_char(1,img[k++]);	
; 		}
;   	}
; 
;  	for(i=0;i<32;i++)
	clr R20
	xjmp L33
L30:
	.dbline 194
;   	{ 
	.dbline 195
; 		Write_char(0,0x80+i);
	mov R18,R20
	subi R18,128    ; addi 128
	clr R16
	xcall _Write_char
	.dbline 196
; 		Write_char(0,0x88);
	ldi R18,136
	clr R16
	xcall _Write_char
	.dbline 197
;     	for(j=0;j<16;j++) 
	clr R10
	xjmp L37
L34:
	.dbline 198
	.dbline 199
	movw R2,R22
	subi R22,255  ; offset = 1
	sbci R23,255
	movw R30,R2
	add R30,R12
	adc R31,R13
	lpm R18,Z
	ldi R16,1
	xcall _Write_char
	.dbline 200
L35:
	.dbline 197
	inc R10
L37:
	.dbline 197
	mov R24,R10
	cpi R24,16
	brlo L34
	.dbline 201
L31:
	.dbline 193
	inc R20
L33:
	.dbline 193
	cpi R20,32
	brlo L30
	.dbline -2
L21:
	xcall pop_gset4
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r k 22 i
	.dbsym r j 10 c
	.dbsym r img 12 pkc
	.dbend
	.dbfunc e Clr_Scr _Clr_Scr fV
	.even
_Clr_Scr::
	.dbline -1
	.dbline 206
; 		{
; 			Write_char(1,img[k++]);
;   		}
; 	}
; }
; 
; /******************************************************************************/
; void Clr_Scr(void)//清屏函数
; {
	.dbline 207
; 	Write_char(0,0x01);
	ldi R18,1
	clr R16
	xcall _Write_char
	.dbline -2
L38:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e LCD_set_xy _LCD_set_xy fV
;        address -> R20
;              y -> R22
;              x -> R20
	.even
_LCD_set_xy::
	xcall push_gset2
	mov R22,R18
	mov R20,R16
	.dbline -1
	.dbline 211
; }
; /******************************************************************************/
; void LCD_set_xy( unsigned char x, unsigned char y )
; {	//设置LCD显示的起始位置，X为行，Y为列
	.dbline 213
;     unsigned char address;
; 	switch(x)
	clr R21
	cpi R20,0
	cpc R20,R21
	breq L43
X0:
	cpi R20,1
	ldi R30,0
	cpc R21,R30
	breq L44
	cpi R20,2
	ldi R30,0
	cpc R21,R30
	breq L45
	cpi R20,3
	ldi R30,0
	cpc R21,R30
	breq L46
	cpi R20,4
	ldi R30,0
	cpc R21,R30
	breq L47
	xjmp L40
X1:
	.dbline 214
; 	{
L43:
	.dbline 215
; 		case 0: address = 0x80 + y; break;    
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 215
	xjmp L41
L44:
	.dbline 216
;     	case 1: address = 0x80 + y; break; 
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 216
	xjmp L41
L45:
	.dbline 217
; 		case 2: address = 0x90 + y; break; 
	mov R20,R22
	subi R20,112    ; addi 144
	.dbline 217
	xjmp L41
L46:
	.dbline 218
;    	 	case 3: address = 0x88 + y; break;
	mov R20,R22
	subi R20,120    ; addi 136
	.dbline 218
	xjmp L41
L47:
	.dbline 219
; 		case 4: address = 0x98 + y; break; 
	mov R20,R22
	subi R20,104    ; addi 152
	.dbline 219
	xjmp L41
L40:
	.dbline 220
; 		default:address = 0x80 + y; break;
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 220
L41:
	.dbline 222
; 	}
;     Write_char(0, address);
	mov R18,R20
	clr R16
	xcall _Write_char
	.dbline -2
L39:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r address 20 c
	.dbsym r y 22 c
	.dbsym r x 20 c
	.dbend
	.dbfunc e LCD_Write_string _LCD_Write_string fV
;              s -> R20,R21
;              Y -> R10
;              X -> R22
	.even
_LCD_Write_string::
	xcall push_gset3
	mov R10,R18
	mov R22,R16
	ldd R20,y+6
	ldd R21,y+7
	.dbline -1
	.dbline 226
; }
; /******************************************************************************/
; void LCD_Write_string(unsigned char X,unsigned char Y,unsigned char *s)
; {	//	中英文字符串显示函数
	.dbline 227
; 	LCD_set_xy( X, Y );   
	mov R18,R10
	mov R16,R22
	xcall _LCD_set_xy
	xjmp L50
L49:
	.dbline 229
	.dbline 230
	movw R30,R20
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline 231
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 232
	ldi R16,1
	ldi R17,0
	xcall _Delaynms
	.dbline 233
L50:
	.dbline 228
;     while (*s) 
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L49
	.dbline -2
L48:
	xcall pop_gset3
	.dbline 0 ; func end
	ret
	.dbsym r s 20 pc
	.dbsym r Y 10 c
	.dbsym r X 22 c
	.dbend
	.dbfunc e LCD_Write_number _LCD_Write_number fV
;              s -> R20
	.even
_LCD_Write_number::
	xcall push_gset1
	mov R20,R16
	.dbline -1
	.dbline 237
;     {
; 		Write_char( 1, *s );
; 	    s ++;
; 		Delaynms(1);
; 	}
; }
; /*******************************************************************************/
; void LCD_Write_number(unsigned char s)//	数字显示函数
; {	
	.dbline 238
; 	Write_char(1,num[s]);
	ldi R24,<_num
	ldi R25,>_num
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline 239
; 	Delaynms(1);
	ldi R16,1
	ldi R17,0
	xcall _Delaynms
	.dbline -2
L52:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r s 20 c
	.dbend
	.dbfunc e Lcd_Mark2 _Lcd_Mark2 fV
	.even
_Lcd_Mark2::
	sbiw R28,2
	.dbline -1
	.dbline 243
; }
; /******************************************************************************/
; void Lcd_Mark2(void)
; {
	.dbline 244
; 	Clr_Scr();//清屏
	xcall _Clr_Scr
	.dbline 245
; 	Clr_Scr();//清屏
	xcall _Clr_Scr
	.dbline 246
; 	LCD_Write_string(1,0,welcome);//
	ldi R24,<_welcome
	ldi R25,>_welcome
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,1
	xcall _LCD_Write_string
	.dbline 247
; 	LCD_Write_string(2,0,input);
	ldi R24,<_input
	ldi R25,>_input
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,2
	xcall _LCD_Write_string
	.dbline 248
; 	LCD_Write_string(4,0,ouput);
	ldi R24,<_ouput
	ldi R25,>_ouput
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,4
	xcall _LCD_Write_string
	.dbline 249
; 	LCD_Write_string(3,7,hz);
	ldi R24,<_hz
	ldi R25,>_hz
	std y+1,R25
	std y+0,R24
	ldi R18,7
	ldi R16,3
	xcall _LCD_Write_string
	.dbline 250
; 	LCD_Write_string(0,5,sin);
	ldi R24,<_sin
	ldi R25,>_sin
	std y+1,R25
	std y+0,R24
	ldi R18,5
	clr R16
	xcall _LCD_Write_string
	.dbline -2
L53:
	adiw R28,2
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e Lcd_write_number _Lcd_write_number fV
	.even
_Lcd_write_number::
	.dbline -1
	.dbline 254
; }
; /******************************************************************************/
;  void Lcd_write_number(void)
; {  
	.dbline 255
;     LCD_set_xy(4,4);LCD_Write_number(11 );LCD_Write_number(T_1);
	ldi R18,4
	ldi R16,4
	xcall _LCD_set_xy
	.dbline 255
	ldi R16,11
	xcall _LCD_Write_number
	.dbline 255
	lds R16,_T_1
	xcall _LCD_Write_number
	.dbline 256
;     LCD_set_xy(4,5);LCD_Write_number(T_2);LCD_Write_number(T_3);
	ldi R18,5
	ldi R16,4
	xcall _LCD_set_xy
	.dbline 256
	lds R16,_T_2
	xcall _LCD_Write_number
	.dbline 256
	lds R16,_T_3
	xcall _LCD_Write_number
	.dbline 257
;     LCD_set_xy(4,6);LCD_Write_number(T_4);LCD_Write_number(T_5);
	ldi R18,6
	ldi R16,4
	xcall _LCD_set_xy
	.dbline 257
	lds R16,_T_4
	xcall _LCD_Write_number
	.dbline 257
	lds R16,_T_5
	xcall _LCD_Write_number
	.dbline 258
; 	LCD_set_xy(4,7);LCD_Write_number(T_6);LCD_Write_number(T_7);
	ldi R18,7
	ldi R16,4
	xcall _LCD_set_xy
	.dbline 258
	lds R16,_T_6
	xcall _LCD_Write_number
	.dbline 258
	lds R16,_T_7
	xcall _LCD_Write_number
	.dbline -2
L54:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e AD9833_Send_Word _AD9833_Send_Word fV
;              i -> R20
;        Data_In -> R16,R17
	.even
_AD9833_Send_Word::
	xcall push_gset1
	.dbline -1
	.dbline 264
; }
; 
; /****************************************************************************/
; void AD9833_Send_Word(unsigned int Data_In)
; 
; {
	.dbline 266
;    		unsigned char i;
; 		Set_Bit(PORTD, 1);//SCLK=1;
	sbi 0x12,1
	.dbline 267
; 		Clr_Bit(PORTD, 2);//FSYNC=0;
	cbi 0x12,2
	.dbline 268
;    		for(i=0;i<16;i++)
	clr R20
	xjmp L59
L56:
	.dbline 269
;    		{
	.dbline 270
;         Set_Bit(PORTD, 1);//SCLK=1;
	sbi 0x12,1
	.dbline 271
; 		if(Data_In & 0x8000)
	sbrs R17,7
	rjmp L60
	.dbline 272
; 		Set_Bit(PORTD, 0);//SDATA=1;
	sbi 0x12,0
	xjmp L61
L60:
	.dbline 274
; 		else
; 		Clr_Bit(PORTD, 0);//SDATA=0;
	cbi 0x12,0
L61:
	.dbline 275
	cbi 0x12,1
	.dbline 276
	lsl R16
	rol R17
	.dbline 277
L57:
	.dbline 268
	inc R20
L59:
	.dbline 268
	cpi R20,16
	brlo L56
	.dbline 278
; 		Clr_Bit(PORTD, 1);//SCLK=0;
;      	Data_In=Data_In<<1;
;    		}
; 		Set_Bit(PORTD, 2);//FSYNC=1;
	sbi 0x12,2
	.dbline 279
; 		Clr_Bit(PORTD, 1);//SCLK=0;
	cbi 0x12,1
	.dbline -2
L55:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r Data_In 16 i
	.dbend
	.dbfunc e Wave_Generate _Wave_Generate fV
;           temp -> y+16
;    Config_Data -> y+0
;              k -> R10
;          Shape -> y+38
;           Freq -> y+34
	.even
_Wave_Generate::
	xcall push_arg4
	xcall push_gset3
	sbiw R28,28
	.dbline -1
	.dbline 291
; }
; 
; //波形发生函数
; 
; //入口参数: 频率:Freq (<=12000000)
; 
; //          形状:0(正弦波),1(三角波),2(方波)
; 
; //默认: Fmclk=25MHz, 0相移，方波不分频.
; 
; 		void  Wave_Generate(unsigned long Freq,unsigned char Shape)
; {
	.dbline 295
;         unsigned int Config_Data[8];
;   		unsigned long temp;
;    		unsigned char k;
;    		if(Freq>12000000) Freq=12000000;
	ldi R20,0
	ldi R21,27
	ldi R22,183
	ldi R23,0
	movw R30,R28
	ldd R2,z+34
	ldd R3,z+35
	ldd R4,z+36
	ldd R5,z+37
	cp R20,R2
	cpc R21,R3
	cpc R22,R4
	cpc R23,R5
	brsh L63
	.dbline 295
	ldi R20,0
	ldi R21,27
	ldi R22,183
	ldi R23,0
	movw R30,R28
	std z+34,R20
	std z+35,R21
	std z+36,R22
	std z+37,R23
L63:
	.dbline 296
;    		switch(Shape)
	ldd R10,y+38
	clr R11
	tst R10
	brne X2
	tst R11
	breq L68
X2:
	movw R24,R10
	cpi R24,1
	ldi R30,0
	cpc R25,R30
	breq L70
	cpi R24,2
	ldi R30,0
	cpc R25,R30
	breq L72
	xjmp L65
X3:
	.dbline 297
;    		{
L68:
	.dbline 298
;      case 0: Config_Data[0]=0x2108;
	ldi R24,8456
	ldi R25,33
	std y+1,R25
	std y+0,R24
	.dbline 299
;              Config_Data[7]=0x2008;
	ldi R25,32
	std y+15,R25
	std y+14,R24
	.dbline 300
;              break;
	xjmp L66
L70:
	.dbline 301
;      case 1: Config_Data[0]=0x210A;
	ldi R24,8458
	ldi R25,33
	std y+1,R25
	std y+0,R24
	.dbline 302
;              Config_Data[7]=0x200A;
	ldi R25,32
	std y+15,R25
	std y+14,R24
	.dbline 303
;              break;
	xjmp L66
L72:
	.dbline 304
;      case 2: Config_Data[0]=0x2128;
	ldi R24,8488
	ldi R25,33
	std y+1,R25
	std y+0,R24
	.dbline 305
;              Config_Data[7]=0x2028;
	ldi R25,32
	std y+15,R25
	std y+14,R24
	.dbline 306
;              break;
	xjmp L66
L65:
	.dbline 307
;      default:Config_Data[0]=0x2108;
	ldi R24,8456
	ldi R25,33
	std y+1,R25
	std y+0,R24
	.dbline 308
;              Config_Data[7]=0x2008;
	ldi R25,32
	std y+15,R25
	std y+14,R24
	.dbline 310
; 
;    		}
L66:
	.dbline 311
;    		temp=Freq*10.73;   //temp=Freq*(0x10000000/20000000);
	ldi R16,<L77
	ldi R17,>L77
	xcall lpm32
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	ldi R16,<L78
	ldi R17,>L78
	xcall lpm32
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	movw R30,R28
 ; stack offset 8
	ldd R2,z+42
	ldd R3,z+43
	ldd R4,z+44
	ldd R5,z+45
	lsr R5
	ror R4
	ror R3
	ror R2
	movw R16,R2
	movw R18,R4
	xcall long2fp
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	xcall empy32fs
	ldi R20,1
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
 ; stack offset 8
	ldd R2,z+42
	ldd R3,z+43
	ldd R4,z+44
	ldd R5,z+45
	and R2,R20
	and R3,R21
	and R4,R22
	and R5,R23
	movw R16,R2
	movw R18,R4
	xcall long2fp
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	xcall add32fs
	xcall empy32f
	movw R30,R28
	std z+24,R16
	std z+25,R17
	std z+26,R18
	std z+27,R19
	movw R30,R28
	ldd R2,z+24
	ldd R3,z+25
	ldd R4,z+26
	ldd R5,z+27
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	ldi R16,<L79
	ldi R17,>L79
	xcall lpm32
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	xcall cmp32f
	brlt L75
	movw R30,R28
	ldd R2,z+24
	ldd R3,z+25
	ldd R4,z+26
	ldd R5,z+27
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	ldi R16,<L79
	ldi R17,>L79
	xcall lpm32
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	xcall sub32f
	xcall fp2long
	movw R2,R16
	movw R4,R18
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,128
	add R2,R20
	adc R3,R21
	adc R4,R22
	adc R5,R23
	movw R30,R28
	std z+20,R2
	std z+21,R3
	std z+22,R4
	std z+23,R5
	xjmp L76
L75:
	movw R30,R28
	ldd R16,z+24
	ldd R17,z+25
	ldd R18,z+26
	ldd R19,z+27
	xcall fp2long
	movw R30,R28
	std z+20,R16
	std z+21,R17
	std z+22,R18
	std z+23,R19
L76:
	movw R30,R28
	ldd R2,z+20
	ldd R3,z+21
	ldd R4,z+22
	ldd R5,z+23
	movw R30,R28
	std z+16,R2
	std z+17,R3
	std z+18,R4
	std z+19,R5
	.dbline 312
;    		Config_Data[1]=temp&0x00003fff;
	ldi R20,255
	ldi R21,63
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+16
	ldd R3,z+17
	ldd R4,z+18
	ldd R5,z+19
	and R2,R20
	and R3,R21
	and R4,R22
	and R5,R23
	std y+3,R3
	std y+2,R2
	.dbline 313
;    		Config_Data[3]=Config_Data[1];
	std y+7,R3
	std y+6,R2
	.dbline 314
;    		Config_Data[2]=(temp&0x0fffc000)>>14;
	ldi R20,0
	ldi R21,192
	ldi R22,255
	ldi R23,15
	movw R30,R28
	ldd R2,z+16
	ldd R3,z+17
	ldd R4,z+18
	ldd R5,z+19
	and R2,R20
	and R3,R21
	and R4,R22
	and R5,R23
	ldi R24,14
	ldi R25,0
	st -y,R24
	movw R16,R2
	movw R18,R4
	xcall lsr32
	std y+5,R17
	std y+4,R16
	.dbline 315
;    		Config_Data[4]=Config_Data[2];
	movw R2,R16
	std y+9,R3
	std y+8,R2
	.dbline 316
;    		Config_Data[1]=Config_Data[1]|0x4000;
	ldd R24,y+2
	ldd R25,y+3
	ori R25,64
	std y+3,R25
	std y+2,R24
	.dbline 317
;    		Config_Data[2]=Config_Data[2]|0x4000;
	ldd R24,y+4
	ldd R25,y+5
	ori R25,64
	std y+5,R25
	std y+4,R24
	.dbline 318
;    		Config_Data[3]=Config_Data[3]|0x8000;
	ldd R24,y+6
	ldd R25,y+7
	ori R25,128
	std y+7,R25
	std y+6,R24
	.dbline 319
;    		Config_Data[4]=Config_Data[4]|0x8000;
	ldd R24,y+8
	ldd R25,y+9
	ori R25,128
	std y+9,R25
	std y+8,R24
	.dbline 320
;    		Config_Data[5]=0xC000;
	ldi R24,49152
	ldi R25,192
	std y+11,R25
	std y+10,R24
	.dbline 321
;    		Config_Data[6]=0xE000;
	ldi R25,224
	std y+13,R25
	std y+12,R24
	.dbline 322
;   		for(k=0;k<8;k++)
	clr R10
	xjmp L99
L96:
	.dbline 323
	.dbline 324
	ldi R24,2
	mul R24,R10
	movw R30,R0
	movw R24,R28
	add R30,R24
	adc R31,R25
	ldd R16,z+0
	ldd R17,z+1
	xcall _AD9833_Send_Word
	.dbline 325
L97:
	.dbline 322
	inc R10
L99:
	.dbline 322
	mov R24,R10
	cpi R24,8
	brlo L96
	.dbline -2
L62:
	adiw R28,28
	xcall pop_gset3
	adiw R28,4
	.dbline 0 ; func end
	ret
	.dbsym l temp 16 l
	.dbsym l Config_Data 0 A[16:8]i
	.dbsym r k 10 c
	.dbsym l Shape 38 c
	.dbsym l Freq 34 l
	.dbend
	.dbfunc e Bcd_Div _Bcd_Div fV
;             CV -> y+4
	.even
_Bcd_Div::
	xcall push_arg4
	xcall push_gset2
	.dbline -1
	.dbline 329
;   		{
;      	AD9833_Send_Word(Config_Data[k]);
;   		}
; }
; /****************************************************************************/
;    void Bcd_Div(unsigned long CV)
; {
	.dbline 330
;     T_1=CV/1000000;
	ldi R20,64
	ldi R21,66
	ldi R22,15
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	sts _T_1,R16
	.dbline 331
; 	CV=  CV%1000000;
	ldi R20,64
	ldi R21,66
	ldi R22,15
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+4,R16
	std z+5,R17
	std z+6,R18
	std z+7,R19
	.dbline 332
; 	T_2=CV/100000;
	ldi R20,160
	ldi R21,134
	ldi R22,1
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	sts _T_2,R16
	.dbline 333
; 	CV =  CV%100000;
	ldi R20,160
	ldi R21,134
	ldi R22,1
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+4,R16
	std z+5,R17
	std z+6,R18
	std z+7,R19
	.dbline 334
; 	T_3=CV/10000;
	ldi R20,16
	ldi R21,39
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	sts _T_3,R16
	.dbline 335
; 	CV=  CV%10000;
	ldi R20,16
	ldi R21,39
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+4,R16
	std z+5,R17
	std z+6,R18
	std z+7,R19
	.dbline 336
; 	T_4=CV/1000;
	ldi R20,232
	ldi R21,3
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	sts _T_4,R16
	.dbline 337
; 	CV=  CV%1000;
	ldi R20,232
	ldi R21,3
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+4,R16
	std z+5,R17
	std z+6,R18
	std z+7,R19
	.dbline 338
; 	T_5=CV/100;
	ldi R20,100
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	sts _T_5,R16
	.dbline 339
; 	CV=  CV%100;
	ldi R20,100
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	movw R30,R28
	std z+4,R16
	std z+5,R17
	std z+6,R18
	std z+7,R19
	.dbline 340
; 	T_6=CV/10;
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall div32u
	sts _T_6,R16
	.dbline 341
; 	T_7=CV%10;
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	sts _T_7,R16
	.dbline -2
L100:
	xcall pop_gset2
	adiw R28,4
	.dbline 0 ; func end
	ret
	.dbsym l CV 4 l
	.dbend
	.dbfunc e keypad_scan _keypad_scan fc
;            key -> R22
;              i -> R20
	.even
_keypad_scan::
	xcall push_gset2
	.dbline -1
	.dbline 346
; }
; /******************************************************************************/
; /*****************************键盘扫描*****************************************/
; unsigned char keypad_scan()
; {
	.dbline 348
;     unsigned char key,i;
;     PORTB=0xF0;
	ldi R24,240
	out 0x18,R24
	xjmp L103
L102:
	.dbline 350
;     while (PINB!=0xF0)
;     {  
	.dbline 351
;        for(i=0;i<=3;i++)
	clr R20
	xjmp L108
L105:
	.dbline 352
;        {         
	.dbline 353
;            PORTB=ksp[i];
	ldi R24,<_ksp
	ldi R25,>_ksp
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	lpm R30,Z
	out 0x18,R30
	.dbline 354
;            if(PINB!=ksp[i])
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	lpm R30,Z
	in R2,0x16
	cp R2,R30
	breq L109
	.dbline 355
;            {
	.dbline 356
;               Delaynms(1000);
	ldi R16,1000
	ldi R17,3
	xcall _Delaynms
	.dbline 357
;               key=PINB;
	in R22,0x16
	.dbline 358
;               if(key!=ksp[i])
	ldi R24,<_ksp
	ldi R25,>_ksp
	mov R30,R20
	clr R31
	add R30,R24
	adc R31,R25
	lpm R30,Z
	cp R22,R30
	breq L111
	.dbline 359
;               {
L113:
	.dbline 360
L114:
	.dbline 360
; 			      while(key==PINB);
	in R2,0x16
	cp R22,R2
	breq L113
	.dbline 361
;                   return(key);
	mov R16,R22
	xjmp L101
L111:
	.dbline 363
;               }
;            }
L109:
	.dbline 364
L106:
	.dbline 351
	inc R20
L108:
	.dbline 351
	ldi R24,3
	cp R24,R20
	brsh L105
	.dbline 365
L103:
	.dbline 349
	in R24,0x16
	cpi R24,240
	brne L102
	.dbline -2
L101:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r key 22 c
	.dbsym r i 20 c
	.dbend
	.dbfunc e gotkey _gotkey fc
;           temp -> R20
;              i -> R22
	.even
_gotkey::
	xcall push_gset2
	.dbline -1
	.dbline 369
;        }
;      }
; }
; // 检查是否有按键按下
; unsigned char gotkey()
; {
	.dbline 371
;      char temp,i;
;      temp=keypad_scan();
	xcall _keypad_scan
	mov R20,R16
	.dbline 372
;      for (i=0;i<=15;i++)
	clr R22
	xjmp L120
L117:
	.dbline 373
; 	 {
	.dbline 374
;       if(temp==key_code[i]) return(i);
	ldi R24,<_key_code
	ldi R25,>_key_code
	mov R30,R22
	clr R31
	add R30,R24
	adc R31,R25
	lpm R30,Z
	cp R20,R30
	brne L121
	.dbline 374
	mov R16,R22
	xjmp L116
L121:
	.dbline 375
L118:
	.dbline 372
	inc R22
L120:
	.dbline 372
	ldi R24,15
	cp R24,R22
	brsh L117
	.dbline 376
;      }
;      return(0xff);
	ldi R16,255
	.dbline -2
L116:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r temp 20 c
	.dbsym r i 22 c
	.dbend
	.dbfunc e main _main fV
	.area func_lit(rom, con, rel)
L155:
	.word `L132
	.word `L132
	.word `L132
	.word `L132
	.word `L132
	.word `L132
	.word `L132
	.word `L132
	.word `L132
	.word `L132
	.word `L143
	.word `L144
	.word `L145
	.word `L130
	.word `L130
	.word `L130
	.area text(rom, con, rel)
	.dbfile E:\制版成功\YL-60\YL-60A~2\4.相关例程\27.键盘+12864+AD9833\键盘+12864.c
;              I -> y+37
;              C -> y+30
;              B -> y+26
;              A -> y+22
;              K -> y+18
;              Z -> y+14
;              Y -> y+10
;              X -> y+6
;          S_ape -> y+36
;              M -> y+35
;              D -> y+2
;              U -> y+34
	.even
_main::
	sbiw R28,38
	.dbline -1
	.dbline 380
; }
; /*********************************************************************************/
; void main(void)//主函数
; {
	.dbline 381
;     unsigned char U,I,S_ape=0,M=0;
	clr R0
	std y+36,R0
	.dbline 381
	std y+35,R0
	.dbline 382
; 	unsigned long X=0,Y=0,Z=0,K=0,A=0,B=0,C=0,D=1000;//D为启动时给9833送1000Hz控制字
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+6,R20
	std z+7,R21
	std z+8,R22
	std z+9,R23
	.dbline 382
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+10,R20
	std z+11,R21
	std z+12,R22
	std z+13,R23
	.dbline 382
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+14,R20
	std z+15,R21
	std z+16,R22
	std z+17,R23
	.dbline 382
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+18,R20
	std z+19,R21
	std z+20,R22
	std z+21,R23
	.dbline 382
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+22,R20
	std z+23,R21
	std z+24,R22
	std z+25,R23
	.dbline 382
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+26,R20
	std z+27,R21
	std z+28,R22
	std z+29,R23
	.dbline 382
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+30,R20
	std z+31,R21
	std z+32,R22
	std z+33,R23
	.dbline 382
	ldi R20,232
	ldi R21,3
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+2,R20
	std z+3,R21
	std z+4,R22
	std z+5,R23
	.dbline 383
; 	DDRA|=BIT(2)|BIT(3)|BIT(4);//设置PA2,PA3,PA4为输出
	in R24,0x1a
	ori R24,28
	out 0x1a,R24
	.dbline 384
; 	PORTA=0xFF;
	ldi R24,255
	out 0x1b,R24
	.dbline 385
; 	DDRB=0XF0;
	ldi R24,240
	out 0x17,R24
	.dbline 386
; 	PORTB=0XFF;
	ldi R24,255
	out 0x18,R24
	.dbline 387
; 	DDRD=0XFF;
	out 0x11,R24
	.dbline 388
; 	PORTD=0XFF;
	out 0x12,R24
	.dbline 389
; 	Wave_Generate(1000,0); //1000Hz的正弦波
	clr R2
	std y+0,R2
	ldi R16,232
	ldi R17,3
	ldi R18,0
	ldi R19,0
	xcall _Wave_Generate
	.dbline 390
; 	Lcd_init();//设置液晶显示器
	xcall _Lcd_init
	.dbline 391
; 	Clr_Scr();//清屏	
	xcall _Clr_Scr
	.dbline 392
; 	Disp_img(logo);	//显示我们的AVR
	ldi R16,<_logo
	ldi R17,>_logo
	xcall _Disp_img
	.dbline 393
; 	Delaynms(30000);//显示画面等待时间
	ldi R16,30000
	ldi R17,117
	xcall _Delaynms
	.dbline 394
;     Lcd_init();
	xcall _Lcd_init
	.dbline 395
; 	Lcd_Mark2();
	xcall _Lcd_Mark2
	.dbline 396
; 	LCD_set_xy(3,6);LCD_Write_number(10);
	ldi R18,6
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 396
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 397
; 	LCD_set_xy(3,5);LCD_Write_number(10);
	ldi R18,5
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 397
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 398
;     LCD_set_xy(3,4);LCD_Write_number(10);
	ldi R18,4
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 398
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 399
; 	LCD_set_xy(3,3);LCD_Write_number(10);
	ldi R18,3
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 399
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 400
;     LCD_set_xy(3,2);LCD_Write_number(10);
	ldi R18,2
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 400
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 401
;     LCD_set_xy(3,1);LCD_Write_number(10);
	ldi R18,1
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 401
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 402
; 	LCD_set_xy(3,0);LCD_Write_number(10);
	clr R18
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 402
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 403
;     Lcd_write_number();	 
	xcall _Lcd_write_number
	xjmp L125
L124:
	.dbline 405
; 	while(1)
; 	{
	.dbline 406
; 	 U=gotkey();
	xcall _gotkey
	std y+34,R16
	.dbline 407
; 	 if(U!=255)
	mov R24,R16
	cpi R16,255
	brne X8
	xjmp L127
X8:
	.dbline 408
; 	 { 
	.dbline 410
; 	   
; 		 switch(U)
	mov R12,R24
	clr R13
	movw R24,R12
	cpi R24,0
	ldi R30,0
	cpc R25,R30
	brge X9
	xjmp L130
X9:
	ldi R24,15
	cp R24,R12
	cpc R25,R13
	brge X10
	xjmp L130
X10:
	ldi R16,2
	ldi R17,0
	movw R18,R12
	xcall empy16s
	movw R30,R16
	ldi R24,<L155
	ldi R25,>L155
	add R30,R24
	adc R31,R25
	lpm R0,Z+
	lpm R1,Z
	movw R30,R0
	ijmp
X4:
	.dbline 411
; 		{ 
L132:
	.dbline 422
; 		case 0: 
; 		case 1: 
; 		case 2: 
; 		case 3:	
; 		case 4: 
; 		case 5:	
; 		case 6: 
; 		case 7: 
; 		case 8: 
; 		case 9:
; 		 M++; 
	ldd R0,y+35
	inc R0
	std y+35,R0
	.dbline 423
; 	       switch(M)
	mov R10,R0
	clr R11
	movw R24,R10
	cpi R24,1
	ldi R30,0
	cpc R25,R30
	breq L136
	cpi R24,2
	ldi R30,0
	cpc R25,R30
	breq L137
	cpi R24,3
	ldi R30,0
	cpc R25,R30
	brne X11
	xjmp L138
X11:
	cpi R24,4
	ldi R30,0
	cpc R25,R30
	brne X12
	xjmp L139
X12:
	cpi R24,5
	ldi R30,0
	cpc R25,R30
	brne X13
	xjmp L140
X13:
	cpi R24,6
	ldi R30,0
	cpc R25,R30
	brne X14
	xjmp L141
X14:
	cpi R24,7
	ldi R30,0
	cpc R25,R30
	brne X15
	xjmp L142
X15:
	xjmp L130
X5:
	.dbline 424
; 	       {
L136:
	.dbline 425
; 			case 1:LCD_set_xy(3,0);LCD_Write_number(U);X=U; break;
	clr R18
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 425
	ldd R16,y+34
	xcall _LCD_Write_number
	.dbline 425
	ldd R2,y+34
	clr R3
	clr R4
	clr R5
	movw R30,R28
	std z+6,R2
	std z+7,R3
	std z+8,R4
	std z+9,R5
	.dbline 425
	xjmp L130
L137:
	.dbline 426
; 			case 2:LCD_set_xy(3,1);LCD_Write_number(U);Y=U; break;
	ldi R18,1
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 426
	ldd R16,y+34
	xcall _LCD_Write_number
	.dbline 426
	ldd R2,y+34
	clr R3
	clr R4
	clr R5
	movw R30,R28
	std z+10,R2
	std z+11,R3
	std z+12,R4
	std z+13,R5
	.dbline 426
	xjmp L130
L138:
	.dbline 427
; 			case 3:LCD_set_xy(3,2);LCD_Write_number(U);Z=U;	break;
	ldi R18,2
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 427
	ldd R16,y+34
	xcall _LCD_Write_number
	.dbline 427
	ldd R2,y+34
	clr R3
	clr R4
	clr R5
	movw R30,R28
	std z+14,R2
	std z+15,R3
	std z+16,R4
	std z+17,R5
	.dbline 427
	xjmp L130
L139:
	.dbline 428
; 			case 4:LCD_set_xy(3,3);LCD_Write_number(U);K=U; break;
	ldi R18,3
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 428
	ldd R16,y+34
	xcall _LCD_Write_number
	.dbline 428
	ldd R2,y+34
	clr R3
	clr R4
	clr R5
	movw R30,R28
	std z+18,R2
	std z+19,R3
	std z+20,R4
	std z+21,R5
	.dbline 428
	xjmp L130
L140:
	.dbline 429
; 			case 5:LCD_set_xy(3,4);LCD_Write_number(U);A=U;	break;
	ldi R18,4
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 429
	ldd R16,y+34
	xcall _LCD_Write_number
	.dbline 429
	ldd R2,y+34
	clr R3
	clr R4
	clr R5
	movw R30,R28
	std z+22,R2
	std z+23,R3
	std z+24,R4
	std z+25,R5
	.dbline 429
	xjmp L130
L141:
	.dbline 430
; 			case 6:LCD_set_xy(3,5);LCD_Write_number(U);B=U; break;
	ldi R18,5
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 430
	ldd R16,y+34
	xcall _LCD_Write_number
	.dbline 430
	ldd R2,y+34
	clr R3
	clr R4
	clr R5
	movw R30,R28
	std z+26,R2
	std z+27,R3
	std z+28,R4
	std z+29,R5
	.dbline 430
	xjmp L130
L142:
	.dbline 431
; 			case 7:LCD_set_xy(3,6);LCD_Write_number(U);C=U; break;
	ldi R18,6
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 431
	ldd R16,y+34
	xcall _LCD_Write_number
	.dbline 431
	ldd R2,y+34
	clr R3
	clr R4
	clr R5
	movw R30,R28
	std z+30,R2
	std z+31,R3
	std z+32,R4
	std z+33,R5
	.dbline 431
	.dbline 432
; 			default:break;
	.dbline 433
; 		    }break;
	xjmp L130
L143:
	.dbline 435
; 
; 		case 10: { 
	.dbline 436
; 		          LCD_set_xy(3,6);LCD_Write_number(10);X=0;
	ldi R18,6
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 436
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 436
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+6,R20
	std z+7,R21
	std z+8,R22
	std z+9,R23
	.dbline 437
; 			      LCD_set_xy(3,5);LCD_Write_number(10);Y=0;
	ldi R18,5
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 437
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 437
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+10,R20
	std z+11,R21
	std z+12,R22
	std z+13,R23
	.dbline 438
; 				  LCD_set_xy(3,4);LCD_Write_number(10);Z=0;
	ldi R18,4
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 438
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 438
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+14,R20
	std z+15,R21
	std z+16,R22
	std z+17,R23
	.dbline 439
; 			      LCD_set_xy(3,3);LCD_Write_number(10);K=0;
	ldi R18,3
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 439
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 439
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+18,R20
	std z+19,R21
	std z+20,R22
	std z+21,R23
	.dbline 440
; 			      LCD_set_xy(3,2);LCD_Write_number(10);A=0;
	ldi R18,2
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 440
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 440
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+22,R20
	std z+23,R21
	std z+24,R22
	std z+25,R23
	.dbline 441
; 			      LCD_set_xy(3,1);LCD_Write_number(10);B=0;
	ldi R18,1
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 441
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 441
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+26,R20
	std z+27,R21
	std z+28,R22
	std z+29,R23
	.dbline 442
; 			      LCD_set_xy(3,0);LCD_Write_number(10);C=0; M=0;
	clr R18
	ldi R16,3
	xcall _LCD_set_xy
	.dbline 442
	ldi R16,10
	xcall _LCD_Write_number
	.dbline 442
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+30,R20
	std z+31,R21
	std z+32,R22
	std z+33,R23
	.dbline 442
	clr R0
	std y+35,R0
	.dbline 443
; 				  } break; 
	.dbline 443
	xjmp L130
L144:
	.dbline 444
; 		case 11:  {  
	.dbline 445
; 		            D=X*1000000+Y*100000+Z*10000+K*1000+A*100+B*10+C;
	movw R30,R28
	ldd R2,z+10
	ldd R3,z+11
	ldd R4,z+12
	ldd R5,z+13
	ldi R20,160
	ldi R21,134
	ldi R22,1
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	movw R2,R16
	movw R4,R18
	movw R30,R28
	ldd R6,z+6
	ldd R7,z+7
	ldd R8,z+8
	ldd R9,z+9
	ldi R20,64
	ldi R21,66
	ldi R22,15
	ldi R23,0
	st -y,R9
	st -y,R8
	st -y,R7
	st -y,R6
	movw R16,R20
	movw R18,R22
	xcall empy32u
	movw R6,R16
	movw R8,R18
	add R6,R2
	adc R7,R3
	adc R8,R4
	adc R9,R5
	movw R30,R28
	ldd R2,z+14
	ldd R3,z+15
	ldd R4,z+16
	ldd R5,z+17
	ldi R20,16
	ldi R21,39
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	add R6,R16
	adc R7,R17
	adc R8,R18
	adc R9,R19
	movw R30,R28
	ldd R2,z+18
	ldd R3,z+19
	ldd R4,z+20
	ldd R5,z+21
	ldi R20,232
	ldi R21,3
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	add R6,R16
	adc R7,R17
	adc R8,R18
	adc R9,R19
	movw R30,R28
	ldd R2,z+22
	ldd R3,z+23
	ldd R4,z+24
	ldd R5,z+25
	ldi R20,100
	ldi R21,0
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	add R6,R16
	adc R7,R17
	adc R8,R18
	adc R9,R19
	movw R30,R28
	ldd R2,z+26
	ldd R3,z+27
	ldd R4,z+28
	ldd R5,z+29
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	add R6,R16
	adc R7,R17
	adc R8,R18
	adc R9,R19
	movw R30,R28
	ldd R2,z+30
	ldd R3,z+31
	ldd R4,z+32
	ldd R5,z+33
	add R6,R2
	adc R7,R3
	adc R8,R4
	adc R9,R5
	movw R30,R28
	std z+2,R6
	std z+3,R7
	std z+4,R8
	std z+5,R9
	.dbline 446
; 		            Wave_Generate(D,I); 
	ldd R0,y+37
	std y+0,R0
	movw R30,R28
	ldd R16,z+2
	ldd R17,z+3
	ldd R18,z+4
	ldd R19,z+5
	xcall _Wave_Generate
	.dbline 447
; 					Bcd_Div(D);
	movw R30,R28
	ldd R16,z+2
	ldd R17,z+3
	ldd R18,z+4
	ldd R19,z+5
	xcall _Bcd_Div
	.dbline 448
; 				    Lcd_write_number();
	xcall _Lcd_write_number
	.dbline 449
; 				   }break;
	.dbline 449
	xjmp L130
L145:
	.dbline 451
; 
; 		case 12:  { 
	.dbline 452
;  					S_ape++;
	ldd R0,y+36
	inc R0
	std y+36,R0
	.dbline 453
; 					switch(S_ape)
	mov R14,R0
	clr R15
	movw R24,R14
	cpi R24,1
	ldi R30,0
	cpc R25,R30
	breq L149
	cpi R24,2
	ldi R30,0
	cpc R25,R30
	breq L150
	cpi R24,3
	ldi R30,0
	cpc R25,R30
	breq L151
	xjmp L130
X6:
	.dbline 454
; 					{ 
L149:
	.dbline 455
; 					   case 1: I=1;Wave_Generate(D,I); 	LCD_Write_string(0,5,angle);          break;
	clr R0
	inc R0
	std y+37,R0
	.dbline 455
	std y+0,R0
	movw R30,R28
	ldd R16,z+2
	ldd R17,z+3
	ldd R18,z+4
	ldd R19,z+5
	xcall _Wave_Generate
	.dbline 455
	ldi R24,<_angle
	ldi R25,>_angle
	std y+1,R25
	std y+0,R24
	ldi R18,5
	clr R16
	xcall _LCD_Write_string
	.dbline 455
	xjmp L130
L150:
	.dbline 456
; 					   case 2: I=2;Wave_Generate(D,I); 	LCD_Write_string(0,5,sq1);		      break;
	ldi R24,2
	std y+37,R24
	.dbline 456
	mov R0,R24
	std y+0,R0
	movw R30,R28
	ldd R16,z+2
	ldd R17,z+3
	ldd R18,z+4
	ldd R19,z+5
	xcall _Wave_Generate
	.dbline 456
	ldi R24,<_sq1
	ldi R25,>_sq1
	std y+1,R25
	std y+0,R24
	ldi R18,5
	clr R16
	xcall _LCD_Write_string
	.dbline 456
	xjmp L130
L151:
	.dbline 457
; 		           	   case 3: I=0;Wave_Generate(D,I);  LCD_Write_string(0,5,sin); S_ape=0;   break;
	clr R0
	std y+37,R0
	.dbline 457
	std y+0,R0
	movw R30,R28
	ldd R16,z+2
	ldd R17,z+3
	ldd R18,z+4
	ldd R19,z+5
	xcall _Wave_Generate
	.dbline 457
	ldi R24,<_sin
	ldi R25,>_sin
	std y+1,R25
	std y+0,R24
	ldi R18,5
	clr R16
	xcall _LCD_Write_string
	.dbline 457
	clr R0
	std y+36,R0
	.dbline 457
	.dbline 459
; 					}
; 		           } 	break;
	.dbline 459
	.dbline 461
; 
; 		case 13:  {	
	.dbline 463
; 		          
; 				  }     break;
	.dbline 463
	.dbline 465
; 
; 		case 14:  { 
	.dbline 467
; 		            
; 				  }     break;
	.dbline 467
	.dbline 469
; 
; 		case 15:  {  
	.dbline 471
; 		             
; 				  }  break;
	.dbline 471
	.dbline 473
; 				  		  	 
; 		default:break;   	   
L130:
	.dbline 475
; 	    }
; 	 }//END if
L127:
	.dbline 476
L125:
	.dbline 404
	xjmp L124
X7:
	.dbline -2
L123:
	adiw R28,38
	.dbline 0 ; func end
	ret
	.dbsym l I 37 c
	.dbsym l C 30 l
	.dbsym l B 26 l
	.dbsym l A 22 l
	.dbsym l K 18 l
	.dbsym l Z 14 l
	.dbsym l Y 10 l
	.dbsym l X 6 l
	.dbsym l S_ape 36 c
	.dbsym l M 35 c
	.dbsym l D 2 l
	.dbsym l U 34 c
	.dbend
	.area lit(rom, con, rel)
L79:
	.word 0x0,0x4f00
L78:
	.word 0x0,0x4000
L77:
	.word 0xae14,0x412b
