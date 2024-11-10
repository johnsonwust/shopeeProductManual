CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul -Wf-const_is_flash -DCONST="" 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = 12864ʱ��.o 

12864ʱ��:	$(FILES)
	$(CC) -o 12864ʱ�� $(LFLAGS) @12864ʱ��.lk   -lcatmega
12864ʱ��.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h
12864ʱ��.o:	D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\12.12864ʱ��\12864ʱ��.c
	$(CC) -c $(CFLAGS) D:\����\�ư�ɹ�\YL-60A~2\YL-60A~2\4.�������\12.12864ʱ��\12864ʱ��.c
