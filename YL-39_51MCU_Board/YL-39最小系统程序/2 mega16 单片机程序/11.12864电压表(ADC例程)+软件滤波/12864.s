	.module _12864.c
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
_k::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.dbsym e k _k c
_sum_adc::
	.blkb 2
	.area idata
	.word 0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.blkb 28
	.area idata
	.word 0,0,0,0,0
	.word 0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.dbsym e sum_adc _sum_adc A[30:15]i
_num::
	.blkb 15
	.area idata
	.byte 48,49,50,51,52,53,54,55,56,57,95,58,46,'V,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.dbsym e num _num A[15:15]c
_welcome::
	.blkb 7
	.area idata
	.byte 205,168,181,192,50,58,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.dbsym e welcome _welcome A[7:7]c
_input::
	.blkb 7
	.area idata
	.byte 205,168,181,192,49,58,0
	.area data(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.dbsym e input _input A[7:7]c
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
	.dbsym e logo _logo A[1040:1040]kc
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.dbfunc e Lcd_init _Lcd_init fV
	.even
_Lcd_init::
	.dbline -1
	.dbline 105
; /******************************************************************************/
; /*【编写时间】： 2011.07.07
; * 【作    者】： 雁翎电子
; * 【版    本】： V1.0
; * 【网    站】： http://ylelectronic.taobao.com/ 
; * 【Q      Q】： 348439350
; * 【编译环境】： ICCAVR  
; * 【函数功能】： 12864电压值显示 内部2.54基准电压 短路帽选择2.5v	
; * 【晶    振】:  8M		
; * 【芯    片】:  ATMEGA16A	 
; * 【硬件连接】： J2短路帽拿掉                                                   */
; /******************************************************************************/
; #include <iom16v.h>
; #include <macros.h>
; #define Set_Bit(val, bitn)    (val |=(1<<(bitn))) 
; #define Clr_Bit(val, bitn)    (val&=~(1<<(bitn))) 
; #define N 15
; //12864
; void Write_char(unsigned char start, unsigned char ddata);
; void Send_byte(unsigned char bbyte);
; void Delaynms(unsigned int di);
; void Lcd_init(void);
; void Disp_img(unsigned char const *img);
; //unsigned char flag;
; unsigned int value;
; unsigned char k=0;
; unsigned int sum_adc[N]={0};
; unsigned char  num[]=    {"0123456789_:.V"};
; unsigned char  welcome[]={"通道2:"};
; unsigned char  input[]  ={"通道1:"};
; /**************************************************************/
;  const unsigned  char logo[]={  
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
; };
; 
; /******************************************************************************/
; void Lcd_init(void)	//初始化LCD 
; {
	.dbline 106
; 	Delaynms(20); //启动等待，等LCM讲入工作状态
	ldi R16,20
	ldi R17,0
	xcall _Delaynms
	.dbline 107
; 	Set_Bit(PORTA,0);
	sbi 0x1b,0
	.dbline 108
;   	Write_char(0,0x30);  //8 位介面，基本指令集
	ldi R18,48
	clr R16
	xcall _Write_char
	.dbline 109
; 	Delaynms(20);
	ldi R16,20
	ldi R17,0
	xcall _Delaynms
	.dbline 110
;   	Write_char(0,0x0c);  //显示打开，光标关，反白关
	ldi R18,12
	clr R16
	xcall _Write_char
	.dbline 111
; 	Delaynms(20);
	ldi R16,20
	ldi R17,0
	xcall _Delaynms
	.dbline 112
;   	Write_char(0,0x01);  //清屏，将DDRAM的地址计数器归零  
	ldi R18,1
	clr R16
	xcall _Write_char
	.dbline 113
; 	Delaynms(20);
	ldi R16,20
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
	.dbline 118
; }
; 
; /******************************************************************************/
; void Write_char(unsigned char start, unsigned char ddata) //写指令或数据
; {
	.dbline 120
; 	unsigned char start_data,Hdata,Ldata;
;   	if(start==0) 
	tst R10
	brne L3
X0:
	.dbline 121
; 		start_data=0xf8;	 //写指令
	ldi R24,248
	mov R10,R24
	xjmp L4
L3:
	.dbline 123
;     else    
;     	start_data=0xfa;  //写数据
	ldi R24,250
	mov R10,R24
L4:
	.dbline 125
;   
;   	Hdata=ddata&0xf0;		  //取高四位
	mov R22,R20
	andi R22,240
	.dbline 126
;   	Ldata=(ddata<<4)&0xf0;  //取低四位
	mov R24,R20
	andi R24,#0x0F
	swap R24
	andi R24,240
	mov R20,R24
	.dbline 127
;   	Send_byte(start_data);	  //发送起始信号
	mov R16,R10
	xcall _Send_byte
	.dbline 128
;   	Delaynms(20); //延时是必须的
	ldi R16,20
	ldi R17,0
	xcall _Delaynms
	.dbline 129
;   	Send_byte(Hdata);	      //发送高四位
	mov R16,R22
	xcall _Send_byte
	.dbline 130
;   	Delaynms(20);  //延时是必须的
	ldi R16,20
	ldi R17,0
	xcall _Delaynms
	.dbline 131
;   	Send_byte(Ldata);		  //发送低四位
	mov R16,R20
	xcall _Send_byte
	.dbline 132
;   	Delaynms(20);  //延时是必须的
	ldi R16,20
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
	.dbline 136
; }
; /******************************************************************************/
; void Send_byte(unsigned char bbyte) //发送一个字节
; {
	.dbline 138
; 	unsigned char i,j;
;  	for(i=0;i<8;i++)
	clr R20
	xjmp L9
L6:
	.dbline 139
;    	{    
	.dbline 140
;    		j=bbyte&0x80; //取出最高位
	mov R22,R16
	andi R22,128
	.dbline 141
;  		if(j)
	breq L10
X1:
	.dbline 142
; 			Set_Bit(PORTA,1);
	sbi 0x1b,1
	xjmp L11
L10:
	.dbline 144
; 		else
; 			Clr_Bit(PORTA,1);
	cbi 0x1b,1
L11:
	.dbline 145
; 		Set_Bit(PORTA,2);
	sbi 0x1b,2
	.dbline 147
; 		//Delaynms(1);
; 		Clr_Bit(PORTA,2);
	cbi 0x1b,2
	.dbline 148
;    		bbyte<<=1; //左移
	lsl R16
	.dbline 149
;    	}  
L7:
	.dbline 138
	inc R20
L9:
	.dbline 138
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
	.dbline 154
; }
; 
; /******************************************************************************/
; void Delaynms(unsigned int di) //延时
; {
	.dbline 156
; 	unsigned int da,db;
;  	for(da=0;da<di;da++)
	clr R20
	clr R21
	xjmp L16
L13:
	.dbline 157
;    		for(db=0;db<10;db++);
	clr R22
	clr R23
	xjmp L20
L17:
	.dbline 157
L18:
	.dbline 157
	subi R22,255  ; offset = 1
	sbci R23,255
L20:
	.dbline 157
	cpi R22,10
	ldi R30,0
	cpc R23,R30
	brlo L17
X3:
L14:
	.dbline 156
	subi R20,255  ; offset = 1
	sbci R21,255
L16:
	.dbline 156
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
	.dbline 161
; }
; /****************************************************************************/
; void Disp_img(unsigned char const *img )	//图形方式12864显示字模221 横向取膜
; { 
	.dbline 163
; 	unsigned char i,j;
; 	unsigned int k = 0;
	clr R22
	clr R23
	.dbline 164
;     Delaynms(100);//延时好重要!!!!!!AVR太快了
	ldi R16,100
	ldi R17,0
	xcall _Delaynms
	.dbline 165
; 	Write_char(0,0x36); //图形方式
	ldi R18,54
	clr R16
	xcall _Write_char
	.dbline 166
; 	Delaynms(100);//延时好重要!!!!!!AVR太快了
	ldi R16,100
	ldi R17,0
	xcall _Delaynms
	.dbline 167
; 	for(i=0;i<32;i++)
	clr R20
	xjmp L25
L22:
	.dbline 168
;   	{ 
	.dbline 169
; 		Write_char(0,0x80+i); //列
	mov R18,R20
	subi R18,128    ; addi 128
	clr R16
	xcall _Write_char
	.dbline 170
; 		Write_char(0,0x80);	  //行
	ldi R18,128
	clr R16
	xcall _Write_char
	.dbline 171
;     	for(j=0;j<16;j++) 
	clr R12
	xjmp L29
L26:
	.dbline 172
; 		{
	.dbline 173
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
	.dbline 174
; 		}
L27:
	.dbline 171
	inc R12
L29:
	.dbline 171
	mov R24,R12
	cpi R24,16
	brlo L26
X5:
	.dbline 175
;   	}
L23:
	.dbline 167
	inc R20
L25:
	.dbline 167
	cpi R20,32
	brlo L22
X6:
	.dbline 177
; 
;  	for(i=0;i<32;i++)
	clr R20
	xjmp L33
L30:
	.dbline 178
;   	{ 
	.dbline 179
; 		Write_char(0,0x80+i);
	mov R18,R20
	subi R18,128    ; addi 128
	clr R16
	xcall _Write_char
	.dbline 180
; 		Write_char(0,0x88);
	ldi R18,136
	clr R16
	xcall _Write_char
	.dbline 181
;     	for(j=0;j<16;j++) 
	clr R12
	xjmp L37
L34:
	.dbline 182
; 		{
	.dbline 183
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
	.dbline 184
;   		}
L35:
	.dbline 181
	inc R12
L37:
	.dbline 181
	mov R24,R12
	cpi R24,16
	brlo L34
X7:
	.dbline 185
; 	}
L31:
	.dbline 177
	inc R20
L33:
	.dbline 177
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
	.dbline 190
; }
; 
; /******************************************************************************/
; void Clr_Scr(void)//清屏函数
; {
	.dbline 191
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
	.dbline 196
; }
; 
; /******************************************************************************/
; void LCD_set_xy( unsigned char x, unsigned char y )
; {	//设置LCD显示的起始位置，X为行，Y为列
	.dbline 198
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
	.dbline 200
; 	{
; 		case 0: address = 0x80 + y; break;    
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 200
	xjmp L41
L44:
	.dbline 201
;     	case 1: address = 0x80 + y; break; 
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 201
	xjmp L41
L45:
	.dbline 202
; 		case 2: address = 0x90 + y; break; 
	mov R20,R22
	subi R20,112    ; addi 144
	.dbline 202
	xjmp L41
L46:
	.dbline 203
;    	 	case 3: address = 0x88 + y; break;
	mov R20,R22
	subi R20,120    ; addi 136
	.dbline 203
	xjmp L41
L47:
	.dbline 204
; 		case 4: address = 0x98 + y; break; 
	mov R20,R22
	subi R20,104    ; addi 152
	.dbline 204
	xjmp L41
L40:
	.dbline 205
; 		default:address = 0x80 + y; break;
	mov R20,R22
	subi R20,128    ; addi 128
	.dbline 205
L41:
	.dbline 208
; 	}
; 	//Delaynms(100);//延时好重要!!!!!!AVR太快了
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
	.dbline 213
; 	//Delaynms(100);//延时好重要!!!!!!AVR太快了
; }
; /******************************************************************************/
; void LCD_Write_string( unsigned char X, unsigned char Y, unsigned char *s)
; {	//	中英文字符串显示函数
	.dbline 214
; 	LCD_set_xy( X, Y );   
	mov R18,R12
	mov R16,R10
	xcall _LCD_set_xy
	xjmp L50
L49:
	.dbline 216
;     while (*s) 
;     {
	.dbline 217
; 		Write_char( 1, *s );
	movw R30,R20
	ldd R18,z+0
	ldi R16,1
	xcall _Write_char
	.dbline 218
; 	    s ++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 219
; 		Delaynms(100);
	ldi R16,100
	ldi R17,0
	xcall _Delaynms
	.dbline 220
; 	}
L50:
	.dbline 215
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
	.dbline 224
; }
; /*******************************************************************************/
; void LCD_Write_number(unsigned char s)//	数字显示函数
; {	
	.dbline 225
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
	.dbline -2
L52:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r s 10 c
	.dbend
	.dbfunc e Lcd_Mark2 _Lcd_Mark2 fV
	.even
_Lcd_Mark2::
	sbiw R28,2
	.dbline -1
	.dbline 229
; }
; /******************************************************************************/
; void Lcd_Mark2(void)
; {
	.dbline 230
; 	Clr_Scr();//清屏
	xcall _Clr_Scr
	.dbline 231
; 	Delaynms(20);
	ldi R16,20
	ldi R17,0
	xcall _Delaynms
	.dbline 232
; 	LCD_Write_string(1,0,welcome);//
	ldi R24,<_welcome
	ldi R25,>_welcome
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,1
	xcall _LCD_Write_string
	.dbline 233
; 	LCD_Write_string(2,0,input);
	ldi R24,<_input
	ldi R25,>_input
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,2
	xcall _LCD_Write_string
	.dbline 234
; 	LCD_Write_string(2,0,input);
	ldi R24,<_input
	ldi R25,>_input
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,2
	xcall _LCD_Write_string
	.dbline -2
L53:
	.dbline 0 ; func end
	adiw R28,2
	ret
	.dbend
	.area lit(rom, con, rel)
L55:
	.byte 0,0
	.byte 0,0
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.dbfunc e main _main fV
;              j -> <dead>
;              i -> <dead>
;         disbuf -> y+0
	.even
_main::
	sbiw R28,4
	.dbline -1
	.dbline 238
; }
; /******************************************************************************/
; void main(void)//主函数
; {
	.dbline 240
;     unsigned int i,j;
;     unsigned char disbuf[4]={0,0,0,0};
	ldi R24,<L55
	ldi R25,>L55
	movw R30,R28
	ldi R16,4
	ldi R17,0
	st -y,R31
	st -y,R30
	st -y,R25
	st -y,R24
	xcall asgncblk
	.dbline 242
; 	 
; 	DDRA|=1<<0|1<<1|1<<2|0<<7;//设置PA0,PA1,PA2为输出,PA7为输入
	in R24,0x1a
	ori R24,7
	out 0x1a,R24
	.dbline 243
; 	PORTA=0x00;
	clr R2
	out 0x1b,R2
	.dbline 245
; 	
; 	DDRC|=1<<0;//设置PC0为输出
	sbi 0x14,0
	.dbline 246
; 	PORTC=0x00;
	out 0x15,R2
	.dbline 248
; 
; 	DDRD|=1<<0;
	sbi 0x11,0
	.dbline 249
; 	PORTD=0x00;
	out 0x12,R2
	.dbline 251
; 	
; 	Lcd_init();//设置液晶显示器
	xcall _Lcd_init
	.dbline 252
; 	Clr_Scr();//清屏	
	xcall _Clr_Scr
	.dbline 253
; 	Disp_img(logo);	//显示我们的AVR
	ldi R16,<_logo
	ldi R17,>_logo
	xcall _Disp_img
	.dbline 254
; 	Delaynms(2000);//显示画面等待时间
	ldi R16,2000
	ldi R17,7
	xcall _Delaynms
	.dbline 255
;     Lcd_init();
	xcall _Lcd_init
	.dbline 256
; 	Lcd_Mark2();	
	xcall _Lcd_Mark2
	.dbline 257
; 	ADCSRA=0X00;    
	clr R2
	out 0x6,R2
	.dbline 258
;     ADMUX =(1<<REFS0)|(1<<REFS1)|(0<<MUX0)|(0<<MUX1)|(0<<MUX2)|(0<<MUX3)|(0<<MUX4); //采用内部5参考电压，ADC0输入
	ldi R24,192
	out 0x7,R24
	.dbline 259
;     ADCSRA=(1<<ADEN)|(1<<ADSC)|(1<<ADIE)|(1<<ADPS2)|(1<<ADPS1) ;//ADC转换 64分频
	ldi R24,206
	out 0x6,R24
	.dbline 260
; 	SEI();
	sei
L56:
	.dbline 261
;     while(1);
L57:
	.dbline 261
	xjmp L56
X15:
	.dbline -2
L54:
	.dbline 0 ; func end
	adiw R28,4
	ret
	.dbsym l j 1 i
	.dbsym l i 1 i
	.dbsym l disbuf 0 A[4:4]c
	.dbend
	.dbfunc e ADC_Convert _ADC_Convert fi
;          temp1 -> R18,R19
;          temp2 -> R16,R17
	.even
_ADC_Convert::
	.dbline -1
	.dbline 267
; 	
; 		
; } //ENDmain
; 
;  unsigned int ADC_Convert(void)
; {   
	.dbline 269
; 	 unsigned int temp1,temp2;
; 	 temp1=(unsigned int)ADCL;
	in R18,0x4
	clr R19
	.dbline 270
; 	 temp2=(unsigned int)ADCH;
	in R16,0x5
	clr R17
	.dbline 271
; 	 temp2=(temp2<<8)+temp1;
	movw R2,R16
	mov R3,R2
	clr R2
	add R2,R18
	adc R3,R19
	movw R16,R2
	.dbline 272
; 	 return(temp2);
	.dbline -2
L59:
	.dbline 0 ; func end
	ret
	.dbsym r temp1 18 i
	.dbsym r temp2 16 i
	.dbend
	.area vector(rom, abs)
	.org 56
	jmp _adc_isr
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.area lit(rom, con, rel)
L61:
	.byte 0,0
	.byte 0,0
	.byte 0
	.area text(rom, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
	.dbfunc e adc_isr _adc_isr fV
;         disbuf -> y+8
;              i -> y+4
;   sum_aver_adc -> y+0
;              f -> R10
	.even
_adc_isr::
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
	xcall push_xgsetF00C
	sbiw R28,13
	.dbline -1
	.dbline 290
; }
; 
; /*=======================
; unsigned int ADC_Volut(void)
; {
; 	 unsigned long c,d;
; 	
; 	c=ADC_Convert();
; 	 //c=filter();
; 	 d=(25100* c)/1023; 
; 	 //d=(25000/1023)*c;
; 	 return(d); 
; 
; }  
; ***********************/
; #pragma interrupt_handler adc_isr:iv_ADC 
; void adc_isr(void)
; {
	.dbline 292
;     unsigned  long int i;
; 	unsigned char disbuf[5]={0,0,0,0,0};
	ldi R24,<L61
	ldi R25,>L61
	movw R30,R28
	adiw R30,8
	ldi R16,5
	ldi R17,0
	st -y,R31
	st -y,R30
	st -y,R25
	st -y,R24
	xcall asgncblk
	.dbline 294
; 	unsigned char f;
; 	unsigned long sum_aver_adc=0;
	ldi R20,0
	ldi R21,0
	ldi R22,0
	ldi R23,0
	std y+0,R20
	std y+1,R21
	std y+2,R22
	std y+3,R23
	.dbline 298
; 	//flag=~flag;
; 	//if(flag==0)
; 	//{
;     ADMUX =(1<<REFS0)|(1<<REFS1)|(1<<MUX0)|(1<<MUX1)|(1<<MUX2)|(0<<MUX3)|(0<<MUX4);//内部2.56基准，PA7 AD输入
	ldi R24,199
	out 0x7,R24
	.dbline 299
;     ADCSRA|=(1<<ADSC);//启动AD转换
	sbi 0x6,6
	.dbline 307
; 	//}
; 	//else
; 	//{
; 	//ADMUX =(1<<REFS0)|(1<<REFS1)|(1<<MUX0)|(0<<MUX1)|(0<<MUX2)|(0<<MUX3);
;     //ADCSRA|=(1<<ADSC);//启动AD转换
; 	//}
; 	// j=ADC_Volut();
; 	 sum_adc[k]=ADC_Convert();     
	xcall _ADC_Convert
	ldi R24,<_sum_adc
	ldi R25,>_sum_adc
	lds R30,_k
	clr R31
	lsl R30
	rol R31
	add R30,R24
	adc R31,R25
	std z+1,R17
	std z+0,R16
	.dbline 308
; 	 k++;
	lds R24,_k
	subi R24,255    ; addi 1
	sts _k,R24
	.dbline 309
; 	 if(k>=N)
	cpi R24,15
	brsh X18
	xjmp L62
X18:
X16:
	.dbline 310
;   {
	.dbline 311
; 	 k=0;
	clr R2
	sts _k,R2
	.dbline 312
; 	 for(f=0;f<N;f++)
	clr R10
	xjmp L67
L64:
	.dbline 313
; 	  {
	.dbline 314
;       sum_aver_adc=sum_aver_adc+sum_adc[f];  //总的加起来
	ldi R24,<_sum_adc
	ldi R25,>_sum_adc
	mov R30,R10
	clr R31
	lsl R30
	rol R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	ldd R3,z+1
	clr R4
	clr R5
	ldd R6,y+0
	ldd R7,y+1
	ldd R8,y+2
	ldd R9,y+3
	add R6,R2
	adc R7,R3
	adc R8,R4
	adc R9,R5
	std y+0,R6
	std y+1,R7
	std y+2,R8
	std y+3,R9
	.dbline 315
; 	  }
L65:
	.dbline 312
	inc R10
L67:
	.dbline 312
	mov R24,R10
	cpi R24,15
	brlo L64
X17:
	.dbline 316
; 	  sum_aver_adc=(sum_aver_adc/N);         //除下，算平均
	ldi R20,15
	ldi R21,0
	ldi R22,0
	ldi R23,0
	ldd R16,y+0
	ldd R17,y+1
	ldd R18,y+2
	ldd R19,y+3
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall div32u
	std y+0,R16
	std y+1,R17
	std y+2,R18
	std y+3,R19
	.dbline 317
; 	  i=(26000* sum_aver_adc)/1023;          //算出电压
	ldd R2,y+0
	ldd R3,y+1
	ldd R4,y+2
	ldd R5,y+3
	ldi R20,144
	ldi R21,101
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	ldi R20,255
	ldi R21,3
	ldi R22,0
	ldi R23,0
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall div32u
	std y+4,R16
	std y+5,R17
	std y+6,R18
	std y+7,R19
	.dbline 319
; 	  
; 	  disbuf[4]=i/10000;
	ldi R20,16
	ldi R21,39
	ldi R22,0
	ldi R23,0
	ldd R16,y+4
	ldd R17,y+5
	ldd R18,y+6
	ldd R19,y+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall div32u
	std y+12,R16
	.dbline 320
;       i=i%10000;
	ldi R20,16
	ldi R21,39
	ldi R22,0
	ldi R23,0
	ldd R16,y+4
	ldd R17,y+5
	ldd R18,y+6
	ldd R19,y+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall mod32u
	std y+4,R16
	std y+5,R17
	std y+6,R18
	std y+7,R19
	.dbline 321
;       disbuf[3]=i/1000;
	ldi R20,232
	ldi R21,3
	ldi R22,0
	ldi R23,0
	ldd R16,y+4
	ldd R17,y+5
	ldd R18,y+6
	ldd R19,y+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall div32u
	std y+11,R16
	.dbline 322
;       i=i%1000;
	ldi R20,232
	ldi R21,3
	ldi R22,0
	ldi R23,0
	ldd R16,y+4
	ldd R17,y+5
	ldd R18,y+6
	ldd R19,y+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall mod32u
	std y+4,R16
	std y+5,R17
	std y+6,R18
	std y+7,R19
	.dbline 323
;       disbuf[2]=i/100;
	ldi R20,100
	ldi R21,0
	ldi R22,0
	ldi R23,0
	ldd R16,y+4
	ldd R17,y+5
	ldd R18,y+6
	ldd R19,y+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall div32u
	std y+10,R16
	.dbline 324
;       i=i%100;
	ldi R20,100
	ldi R21,0
	ldi R22,0
	ldi R23,0
	ldd R16,y+4
	ldd R17,y+5
	ldd R18,y+6
	ldd R19,y+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall mod32u
	std y+4,R16
	std y+5,R17
	std y+6,R18
	std y+7,R19
	.dbline 325
; 	  disbuf[1]=i/10;
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	ldd R16,y+4
	ldd R17,y+5
	ldd R18,y+6
	ldd R19,y+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall div32u
	std y+9,R16
	.dbline 326
; 	  i=i%10;
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	ldd R16,y+4
	ldd R17,y+5
	ldd R18,y+6
	ldd R19,y+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	xcall mod32u
	std y+4,R16
	std y+5,R17
	std y+6,R18
	std y+7,R19
	.dbline 327
; 	  disbuf[0]=i;
	ldd R2,y+4
	ldd R3,y+5
	ldd R4,y+6
	ldd R5,y+7
	std y+8,R2
	.dbline 328
; 	  Set_Bit(PORTD,0);
	sbi 0x12,0
	.dbline 329
;       Delaynms(5000);
	ldi R16,5000
	ldi R17,19
	xcall _Delaynms
	.dbline 330
;       Clr_Bit(PORTD,0);
	cbi 0x12,0
	.dbline 331
;       Delaynms(5000);
	ldi R16,5000
	ldi R17,19
	xcall _Delaynms
	.dbline 335
;    //{
;     //if(flag==0)
; 	//{
;     LCD_set_xy(2,5);LCD_Write_number(disbuf[4]);LCD_Write_number(12);
	ldi R18,5
	ldi R16,2
	xcall _LCD_set_xy
	.dbline 335
	ldd R16,y+12
	xcall _LCD_Write_number
	.dbline 335
	ldi R16,12
	xcall _LCD_Write_number
	.dbline 336
;     LCD_set_xy(2,6);LCD_Write_number(disbuf[3]);LCD_Write_number(disbuf[2]);
	ldi R18,6
	ldi R16,2
	xcall _LCD_set_xy
	.dbline 336
	ldd R16,y+11
	xcall _LCD_Write_number
	.dbline 336
	ldd R16,y+10
	xcall _LCD_Write_number
	.dbline 337
; 	LCD_set_xy(2,7);LCD_Write_number(disbuf[1]);LCD_Write_number(disbuf[0]);
	ldi R18,7
	ldi R16,2
	xcall _LCD_set_xy
	.dbline 337
	ldd R16,y+9
	xcall _LCD_Write_number
	.dbline 337
	ldd R16,y+8
	xcall _LCD_Write_number
	.dbline 347
; 	//}
; 	//else
; 	//{
; 	//LCD_set_xy(1,5);LCD_Write_number(disbuf[4]);LCD_Write_number(12);
;     //LCD_set_xy(1,6);LCD_Write_number(disbuf[3]);LCD_Write_number(disbuf[2]);
; 	//LCD_set_xy(1,7);LCD_Write_number(disbuf[1]);LCD_Write_number(disbuf[0]);
; 	//}
;    //}
;  // }//end else
;   }
L62:
	.dbline -2
L60:
	.dbline 0 ; func end
	adiw R28,13
	xcall pop_xgsetF00C
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
	.dbsym l disbuf 8 A[5:5]c
	.dbsym l i 4 l
	.dbsym l sum_aver_adc 0 l
	.dbsym r f 10 c
	.dbend
	.area bss(ram, con, rel)
	.dbfile D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\11.12864电压表(ADC例程)+软件滤波\12864.c
_value::
	.blkb 2
	.dbsym e value _value i
; 	 //i=ADC_Volut();        
; }//end void 
