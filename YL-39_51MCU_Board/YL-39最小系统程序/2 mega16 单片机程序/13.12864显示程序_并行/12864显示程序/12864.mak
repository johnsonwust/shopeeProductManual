CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul -Wf-const_is_flash -DCONST="" 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = MAIN.o 

12864:	$(FILES)
	$(CC) -o 12864 $(LFLAGS) @12864.lk   -lcatmega
MAIN.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\define.h D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\delay.h D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\initrialm16.h D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\lcd12864.h
MAIN.o:	D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\MAIN.C
	$(CC) -c $(CFLAGS) D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\13.12864��ʾ����_����\12864��ʾ����\MAIN.C
