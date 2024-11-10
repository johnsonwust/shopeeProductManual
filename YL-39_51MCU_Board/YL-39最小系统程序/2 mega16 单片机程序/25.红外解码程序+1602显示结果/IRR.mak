CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = irr.o 

irr:	$(FILES)
	$(CC) -o irr $(LFLAGS) @irr.lk   -lcatmega
irr.o: C:/icc/include/iom16v.h C:/icc/include/macros.h E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果/1602.h
irr.o:	E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果\irr.c
	$(CC) -c $(CFLAGS) E:\制版成功\YL-60\YL-60A~2\4.相关例程\25.红外解码程序+1602显示结果\irr.c
