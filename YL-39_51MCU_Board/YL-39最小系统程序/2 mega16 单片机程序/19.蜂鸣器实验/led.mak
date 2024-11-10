CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = led.o 

led:	$(FILES)
	$(CC) -o led $(LFLAGS) @led.lk   -lcatmega
led.o: C:/icc/include/iom16v.h
led.o:	C:\DOCUME~1\Administrator\◊¿√Ê\1.LED…¡À∏\led.c
	$(CC) -c $(CFLAGS) C:\DOCUME~1\Administrator\◊¿√Ê\1.LED…¡À∏\led.c
