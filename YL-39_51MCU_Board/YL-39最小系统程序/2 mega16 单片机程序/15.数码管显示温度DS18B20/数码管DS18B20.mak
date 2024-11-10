CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = 数码显温度.o 

数码管DS18B20:	$(FILES)
	$(CC) -o 数码管DS18B20 $(LFLAGS) @数码管DS18B20.lk   -lcatmega
数码显温度.o: C:\iccv7avr\include\iom16v.h D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\DS18B20.h
数码显温度.o:	D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
	$(CC) -c $(CFLAGS) D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\15.数码管显示温度DS18B20\数码显温度.C
