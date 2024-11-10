CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul -Wf-const_is_flash -DCONST="" 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = AVR����.o 

AVR����:	$(FILES)
	$(CC) -o AVR���� $(LFLAGS) @AVR����.lk   -lcatmega
AVR����.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h
AVR����.o:	E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
	$(CC) -c $(CFLAGS) E:\��Ƭ��\������ר���ļ���\MEGA16����������\4.�������\14.AVR�����������ʾ��ַ��������\AVR����.C
