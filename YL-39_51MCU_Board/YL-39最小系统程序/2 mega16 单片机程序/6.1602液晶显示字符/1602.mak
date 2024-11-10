CC = iccavr
CFLAGS =  -IE:\产品\mega128-board\程序\1602 -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LD:\安装软件\ICC-AVR\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = 1602_main.o 

1602:	$(FILES)
	$(CC) -o 1602 $(LFLAGS) @1602.lk   -lcatmega
1602_main.o: E:/产品/mega128-board/程序/1602/iom16v.h E:\制版成功\YL-60\YL-60A~2\4.相关例程\6.1602液晶显示字符/1602.h
1602_main.o:	E:\制版成功\YL-60\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602_main.c
	$(CC) -c $(CFLAGS) E:\制版成功\YL-60\YL-60A~2\4.相关例程\6.1602液晶显示字符\1602_main.c
