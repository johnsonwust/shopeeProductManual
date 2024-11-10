CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul -Wf-const_is_flash -DCONST="" 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = 12864时钟.o 

12864时钟:	$(FILES)
	$(CC) -o 12864时钟 $(LFLAGS) @12864时钟.lk   -lcatmega
12864时钟.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h
12864时钟.o:	D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
	$(CC) -c $(CFLAGS) D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\12.12864时钟\12864时钟.c
