CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = key.o 

���������:	$(FILES)
	$(CC) -o ��������� $(LFLAGS) @���������.lk   -lcatmega
key.o: C:/icc/include/iom16v.h
key.o:	E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\7.���������\key.c
	$(CC) -c $(CFLAGS) E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\7.���������\key.c
