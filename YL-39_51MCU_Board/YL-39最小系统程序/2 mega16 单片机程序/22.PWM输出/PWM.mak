CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = PWM.o 

PWM:	$(FILES)
	$(CC) -o PWM $(LFLAGS) @PWM.lk   -lcatmega
PWM.o: C:/icc/include/iom16v.h C:/icc/include/macros.h
PWM.o:	E:\制版成功\YL-60\YL-60A~2\4.相关例程\22.PWM输出\PWM.C
	$(CC) -c $(CFLAGS) E:\制版成功\YL-60\YL-60A~2\4.相关例程\22.PWM输出\PWM.C
