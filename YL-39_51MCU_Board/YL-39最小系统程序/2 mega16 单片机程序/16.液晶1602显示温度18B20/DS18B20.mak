CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul -Wf-const_is_flash -DCONST="" 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = DS18B20_main.o 

DS18B20:	$(FILES)
	$(CC) -o DS18B20 $(LFLAGS) @DS18B20.lk   -lcatmega
DS18B20_main.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20.H D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\1602.h
DS18B20_main.o:	D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20_main.c
	$(CC) -c $(CFLAGS) D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\16.液晶1602显示温度18B20\DS18B20_main.c
