CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMega8  -l -g -Mavr_enhanced_small -Wa-W 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -Wl-W -bfunc_lit:0x26.0x2000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = uart.o 

uart:	$(FILES)
	$(CC) -o uart $(LFLAGS) @uart.lk  
uart.o: C:/icc/include/iom8v.h C:/icc/include/macros.h
uart.o:	E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\21.UARTʵ����PC�շ�����\uart.c
	$(CC) -c $(CFLAGS) E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\21.UARTʵ����PC�շ�����\uart.c
