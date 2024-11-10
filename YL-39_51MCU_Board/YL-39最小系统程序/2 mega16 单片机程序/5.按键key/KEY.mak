CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = key.o 

KEY:	$(FILES)
	$(CC) -o KEY $(LFLAGS) @KEY.lk   -lcatmega
key.o: C:\iccv7avr\include\iom16v.h
key.o:	D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\5.按键key\key.c
	$(CC) -c $(CFLAGS) D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\5.按键key\key.c
