CC = iccavr
CFLAGS =  -IE:\��Ʒ\mega128-board\����\1602 -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LD:\��װ���\ICC-AVR\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = 1602_main.o 

1602:	$(FILES)
	$(CC) -o 1602 $(LFLAGS) @1602.lk   -lcatmega
1602_main.o: E:/��Ʒ/mega128-board/����/1602/iom16v.h E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\6.1602Һ����ʾ�ַ�/1602.h
1602_main.o:	E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\6.1602Һ����ʾ�ַ�\1602_main.c
	$(CC) -c $(CFLAGS) E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\6.1602Һ����ʾ�ַ�\1602_main.c
