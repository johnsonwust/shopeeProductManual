CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION="7.16A" -DATMEGA -DATMega16  -l -g -MLongJump -MEnhanced -MHasMul -Wf-const_is_flash -DCONST="" 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = MAIN.o 

12864:	$(FILES)
	$(CC) -o 12864 $(LFLAGS) @12864.lk   -lcatmega
MAIN.o: C:\iccv7avr\include\iom16v.h C:\iccv7avr\include\macros.h D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\13.12864显示程序_并行\12864显示程序\define.h D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\13.12864显示程序_并行\12864显示程序\delay.h D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\13.12864显示程序_并行\12864显示程序\initrialm16.h D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\13.12864显示程序_并行\12864显示程序\lcd12864.h
MAIN.o:	D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\13.12864显示程序_并行\12864显示程序\MAIN.C
	$(CC) -c $(CFLAGS) D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\13.12864显示程序_并行\12864显示程序\MAIN.C
