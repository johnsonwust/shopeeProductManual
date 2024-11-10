CC = iccavr
CFLAGS =  -e -D__ICC_VERSION="7.14C" -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = s_ms.o 

1:	$(FILES)
	$(CC) -o 1 $(LFLAGS) @1.lk   -lcatmega
s_ms.o: C:\iccv7avr\include\iom16v.h
s_ms.o:	D:\16实验程序\延时试验\s_ms.c
	$(CC) -c $(CFLAGS) D:\16实验程序\延时试验\s_ms.c
