CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = 时钟.o 

数码管时钟:	$(FILES)
	$(CC) -o 数码管时钟 $(LFLAGS) @数码管时钟.lk   -lcatmega
时钟.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h
时钟.o:	D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
	$(CC) -c $(CFLAGS) D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\10.数码管时钟(定时器)\时钟.c
