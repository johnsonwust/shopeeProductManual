CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = main.o 

main:	$(FILES)
	$(CC) -o main $(LFLAGS) @main.lk   -lcatmega
main.o: C:/icc/include/iom16v.h C:/icc/include/macros.h
main.o:	E:\制版成功\YL-60\YL-60A~2\4.相关例程\28.频率可调方波\main.c
	$(CC) -c $(CFLAGS) E:\制版成功\YL-60\YL-60A~2\4.相关例程\28.频率可调方波\main.c
