CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul -Wf-const_is_flash -DCONST="" 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = AVR解码.o 

AVR解码:	$(FILES)
	$(CC) -o AVR解码 $(LFLAGS) @AVR解码.lk   -lcatmega
AVR解码.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h
AVR解码.o:	E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\14.AVR解码数码管显示地址码数据码\AVR解码.C
	$(CC) -c $(CFLAGS) E:\单片机\开发板专用文件夹\MEGA16开发板资料\4.相关例程\14.AVR解码数码管显示地址码数据码\AVR解码.C
