#line 55 "C:\iccv7avr\include\macros.h"
void _StackCheck(void);
void _StackOverflowed(char);

#line 17 "D:\工作\制版成功\YL-60A~2\YL-60A~2\4.相关例程\24.PWM产生正弦波\正弦波.c"
#pragma data:code

const unsigned char auc_SinParam[128] = {
64,67,70,73,76,79,82,85,88,91,94,96,99,102,104,106,109,111,113,115,117,118,120,121,
123,124,125,126,126,127,127,127,127,127,127,127,126,126,125,124,123,121,120,118,
117,115,113,111,109,106,104,102,99,96,94,91,88,85,82,79,76,73,70,67,64,60,57,54,51,48,
45,42,39,36,33,31,28,25,23,21,18,16,14,12,10,9,7,6,4,3,2,1,1,0,0,0,0,0,0,0,1,1,2,3,4,6,
7,9,10,12,14,16,18,21,23,25,28,31,33,36,39,42,45,48,51,54,57,60};
#pragma data:data
unsigned char x_SW = 8,X_LUT = 0;
#pragma interrupt_handler timer0_ovf_isr:17
void timer0_ovf_isr(void)
{
X_LUT += x_SW; 
if (X_LUT > 127) X_LUT -= 128; 
(*(volatile unsigned char *)0x5C) = auc_SinParam[X_LUT]; 
}
void main(void)
{
(*(volatile unsigned char *)0x37) |= 0x08; 
(*(volatile unsigned char *)0x53) = 0x71; 
(*(volatile unsigned char *)0x59) = 0x01; 
asm("sei"); 
while(1);

}
