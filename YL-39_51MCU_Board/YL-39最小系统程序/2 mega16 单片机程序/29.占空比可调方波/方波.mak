CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = ����.o 

����:	$(FILES)
	$(CC) -o ���� $(LFLAGS) @����.lk   -lcatmega
����.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h
����.o:	E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\30.ռ�ձȿɵ�����\����.C
	$(CC) -c $(CFLAGS) E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\30.ռ�ձȿɵ�����\����.C
