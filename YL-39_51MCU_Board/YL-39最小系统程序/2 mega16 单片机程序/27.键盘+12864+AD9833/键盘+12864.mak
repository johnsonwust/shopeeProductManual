CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = ����+12864.o 

����+12864:	$(FILES)
	$(CC) -o ����+12864 $(LFLAGS) @����+12864.lk   -lcatmega
����+12864.o: C:/icc/include/iom16v.h C:/icc/include/macros.h
����+12864.o:	E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\27.����+12864+AD9833\����+12864.c
	$(CC) -c $(CFLAGS) E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\27.����+12864+AD9833\����+12864.c
