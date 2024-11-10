#line 1 "E:\制版成功\YL-60\YL-60A~2\4.相关例程\3A304~1.定\MAIN.C"


#line 13 "E:\制版成功\YL-60\YL-60A~2\4.相关例程\3A304~1.定\MAIN.C"



#line 1 "D:/安装软件/ICC-AVR/icc/include/iom16v.h"




#line 7 "D:/安装软件/ICC-AVR/icc/include/iom16v.h"


#line 10 "D:/安装软件/ICC-AVR/icc/include/iom16v.h"


#line 13 "D:/安装软件/ICC-AVR/icc/include/iom16v.h"


#line 16 "D:/安装软件/ICC-AVR/icc/include/iom16v.h"
























































































































































































































































































































































































































































































































#line 17 "E:\制版成功\YL-60\YL-60A~2\4.相关例程\3A304~1.定\MAIN.C"
#line 1 "D:/安装软件/ICC-AVR/icc/include/macros.h"






























#line 35 "D:/安装软件/ICC-AVR/icc/include/macros.h"














void _StackCheck(void);
void _StackOverflowed(char);




#line 18 "E:\制版成功\YL-60\YL-60A~2\4.相关例程\3A304~1.定\MAIN.C"

unsigned char t0_ovfnum;
unsigned char t1_ovfnum;
unsigned char t2_ovfnum;

void timer0_init(void);
void timer1_init(void);
void timer2_init(void);


void main(void)
{
	unsigned char n;
(*(volatile unsigned char *)0x31)= 0xFF;
(*(volatile unsigned char *)0x32)=0xFF;
	timer0_init();
	timer1_init();
	timer2_init();
 asm("sei");
	while(1)
	{
	}
}





void timer0_init(void)
{
(*(volatile unsigned char *)0x53) = 0x00;
(*(volatile unsigned char *)0x52) = 0xB2;
(*(volatile unsigned char *)0x5C)  = 0x4E;
(*(volatile unsigned char *)0x53) = 0x05;
(*(volatile unsigned char *)0x59) |= 0x01;
}

#pragma interrupt_handler timer0_ovf_isr:iv_TIM0_OVF
void timer0_ovf_isr(void)
{
(*(volatile unsigned char *)0x52) = 0xB2;
	t0_ovfnum ++;
	if(t0_ovfnum == 50)
	{
		t0_ovfnum = 0;
(*(volatile unsigned char *)0x32)^=(1 << (0));

	}
}






void timer1_init(void)
{
(*(volatile unsigned char *)0x4E) = 0x00;
(*(volatile unsigned char *)0x4D) = 0xFB;
(*(volatile unsigned char *)0x4C) = 0x1E;
(*(volatile unsigned char *)0x4B) = 0x04;
(*(volatile unsigned char *)0x4A) = 0xE2;
(*(volatile unsigned char *)0x49) = 0x04;
(*(volatile unsigned char *)0x48) = 0xE2;
(*(volatile unsigned char *)0x47)  = 0x04;
(*(volatile unsigned char *)0x46)  = 0xE2;
(*(volatile unsigned char *)0x4F) = 0x00;
(*(volatile unsigned char *)0x4E) = 0x03;
(*(volatile unsigned char *)0x59) |= 0x04;
}

#pragma interrupt_handler timer1_ovf_isr:iv_TIM1_OVF
void timer1_ovf_isr(void)
{

(*(volatile unsigned char *)0x4D) = 0xFB;
(*(volatile unsigned char *)0x4C) = 0x1E;
	t1_ovfnum ++;
	if(t1_ovfnum == 100)
	{
		t1_ovfnum = 0;
(*(volatile unsigned char *)0x32)^=(1 << (1));

	}
}





void timer2_init(void)
{
(*(volatile unsigned char *)0x45) = 0x00;
(*(volatile unsigned char *)0x42)  = 0x00;
(*(volatile unsigned char *)0x44) = 0xB2;
(*(volatile unsigned char *)0x43)  = 0x4E;
(*(volatile unsigned char *)0x45) = 0x07;
(*(volatile unsigned char *)0x59) |= 0x40;
}

#pragma interrupt_handler timer2_ovf_isr:iv_TIM2_OVF
void timer2_ovf_isr(void)
{
(*(volatile unsigned char *)0x44) = 0xB2;
	t2_ovfnum ++;
	if(t2_ovfnum == 200)
	{
		t2_ovfnum = 0;
(*(volatile unsigned char *)0x32)^=(1 << (2));

	}
}





