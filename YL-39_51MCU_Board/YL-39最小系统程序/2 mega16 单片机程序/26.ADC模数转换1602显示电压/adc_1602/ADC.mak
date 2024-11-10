CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:1.512 -fihx_coff -S2
FILES = ADC-1602.o 

ADC:	$(FILES)
	$(CC) -o ADC $(LFLAGS) @ADC.lk   -lcatmega
ADC-1602.o: C:/icc/include/iom16v.h C:/icc/include/macros.h E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\26.ADCģ��ת��1602��ʾ��ѹ\adc_1602/1602.h
ADC-1602.o:	E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\26.ADCģ��ת��1602��ʾ��ѹ\adc_1602\ADC-1602.c
	$(CC) -c $(CFLAGS) E:\�ư�ɹ�\YL-60\YL-60A~2\4.�������\26.ADCģ��ת��1602��ʾ��ѹ\adc_1602\ADC-1602.c
