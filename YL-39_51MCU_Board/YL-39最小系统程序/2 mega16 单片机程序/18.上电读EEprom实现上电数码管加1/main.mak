CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = main.o 

MAIN:	$(FILES)
	$(CC) -o MAIN $(LFLAGS) @MAIN.lk   -lcatmega
main.o: C:\iccv7avr\include\iom16v.h
main.o:	E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\18.�ϵ��EEpromʵ���ϵ�����ܼ�1\main.c
	$(CC) -c $(CFLAGS) E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\18.�ϵ��EEpromʵ���ϵ�����ܼ�1\main.c
