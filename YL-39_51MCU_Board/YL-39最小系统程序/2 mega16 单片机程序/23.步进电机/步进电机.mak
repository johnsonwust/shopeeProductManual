CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = 步进电机.o 

步进电机:	$(FILES)
	$(CC) -o 步进电机 $(LFLAGS) @步进电机.lk   -lcatmega
步进电机.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h
步进电机.o:	D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\23.步进电机\步进电机.c
	$(CC) -c $(CFLAGS) D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\23.步进电机\步进电机.c
