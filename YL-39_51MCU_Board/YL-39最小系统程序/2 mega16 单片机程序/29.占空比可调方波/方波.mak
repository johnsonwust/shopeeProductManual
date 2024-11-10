CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = 方波.o 

方波:	$(FILES)
	$(CC) -o 方波 $(LFLAGS) @方波.lk   -lcatmega
方波.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h
方波.o:	E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
	$(CC) -c $(CFLAGS) E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\30.占空比可调方波\方波.C
