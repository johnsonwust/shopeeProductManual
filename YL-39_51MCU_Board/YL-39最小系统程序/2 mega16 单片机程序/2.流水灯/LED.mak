CC = iccavr
CFLAGS =  -ID:\��װ���\ICC-AVR\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LD:\��װ���\ICC-AVR\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = LED.o 

LED:	$(FILES)
	$(CC) -o LED $(LFLAGS) @LED.lk   -lcatmega
LED.o: D:/��װ���/ICC-AVR/icc/include/iom16v.h D:/��װ���/ICC-AVR/icc/include/macros.h
LED.o:	E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\2.��ˮ��\LED.c
	$(CC) -c $(CFLAGS) E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\2.��ˮ��\LED.c
