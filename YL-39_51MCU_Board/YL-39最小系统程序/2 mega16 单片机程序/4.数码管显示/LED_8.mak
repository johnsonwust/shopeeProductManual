CC = iccavr
CFLAGS =  -ID:\安装软件\ICC-AVR\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LD:\安装软件\ICC-AVR\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = led_8.o 

led_8:	$(FILES)
	$(CC) -o led_8 $(LFLAGS) @led_8.lk   -lcatmega
led_8.o: D:/安装软件/ICC-AVR/icc/include/iom16v.h
led_8.o:	E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
	$(CC) -c $(CFLAGS) E:\制版成功\YL-60\YL-60A~2\4.相关例程\4.数码管显示\led_8.c
