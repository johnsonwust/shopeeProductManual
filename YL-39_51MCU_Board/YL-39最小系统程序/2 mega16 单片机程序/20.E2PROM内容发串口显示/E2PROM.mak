CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = E2PROM.o 

E2PROM:	$(FILES)
	$(CC) -o E2PROM $(LFLAGS) @E2PROM.lk   -lcatmega
E2PROM.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\eeprom.h
E2PROM.o:	D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\20.E2PROM内容发串口显示\E2PROM.C
	$(CC) -c $(CFLAGS) D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\20.E2PROM内容发串口显示\E2PROM.C
