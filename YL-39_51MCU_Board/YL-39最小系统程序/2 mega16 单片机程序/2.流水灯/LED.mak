CC = iccavr
CFLAGS =  -ID:\安装软件\ICC-AVR\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LD:\安装软件\ICC-AVR\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = LED.o 

LED:	$(FILES)
	$(CC) -o LED $(LFLAGS) @LED.lk   -lcatmega
LED.o: D:/安装软件/ICC-AVR/icc/include/iom16v.h D:/安装软件/ICC-AVR/icc/include/macros.h
LED.o:	E:\制版成功\YL-60\YL-60A~2\4.相关例程\2.流水灯\LED.c
	$(CC) -c $(CFLAGS) E:\制版成功\YL-60\YL-60A~2\4.相关例程\2.流水灯\LED.c
