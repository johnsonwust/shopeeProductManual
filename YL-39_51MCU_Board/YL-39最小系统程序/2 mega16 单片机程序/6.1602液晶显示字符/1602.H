#define uchar unsigned char 
#define uint unsigned int 

#define RS 0
#define RW 1
#define EN 2

void s_ms(uint ms)
{
	for(;ms>1;ms--);
}	

//查忙
void busy(void)
{
    uchar temp;
	s_ms(500);
	PORTA&=~(1<<RS);    //RS=0
	s_ms(500);
	PORTA|=(1<<RW);     //RW=1
	s_ms(500);
	while(temp)
	{
		PORTA|=(1<<EN); //EN=1
		s_ms(500);
		DDRB=0x00;      //A口变输入
		PORTB=0xff;     //上拉使能
		s_ms(500);
		temp = PINB&0x80;    //读取A口
		s_ms(500);      
		DDRB=0xff;      
		PORTB=0xff;        //A口变输出
		s_ms(500);
		PORTA&=~(1<<EN);   //EN=0
		s_ms(500);
	}
}

//写指令
void writecom(uchar	com)
{
	busy();
	s_ms(500);
	PORTA&=~(1<<RS);   //RS=0
	s_ms(500);
	PORTA&=~(1<<RW);   //RW=0
	s_ms(500);
	PORTA|=(1<<EN);    //EN=1
	s_ms(500);
	PORTB = com;       //输出指令
	s_ms(500);
	PORTA&=~(1<<EN);   //EN=0
	s_ms(500);
}

//1602初始化
void	LcdInit(void)
{
    DDRB = 0xff; 
    PORTB = 0x00; 
	writecom(0x38);
	s_ms(1000);
	writecom(0x01);
	s_ms(1000);
	s_ms(1000);
	s_ms(1000);
	s_ms(1000);
	s_ms(1000);
	s_ms(1000);
	s_ms(1000);
	writecom(0x02);
	s_ms(1000);
	writecom(0x06);
	s_ms(1000);
	writecom(0x0c);
	s_ms(1000);
	writecom(0x38);	
	s_ms(1000);
}	

//写数据
void	writedata(uchar data)
{
	busy();
	s_ms(500);
	PORTA|=(1<<RS);   //RS=1
	s_ms(500);
	PORTA&=~(1<<RW);   //RW=0
	s_ms(500);
	PORTA|=(1<<EN);    //EN=1
	s_ms(500);
	PORTB = data;      //输出数据
	s_ms(500);
	PORTA&=~(1<<EN);   //EN=0
	s_ms(500);
}


//读数据
uchar	readdata(void)
{
	uchar temp;
	busy();
	s_ms(500);
	PORTA|=(1<<RS);  //RS=1
	s_ms(500);
	PORTA|=(1<<RW);  //RW=1
	s_ms(500);
	PORTA|=(1<<EN);  //EN=1
	s_ms(500);
	DDRB=0x00;       //A端口变输入
	s_ms(500);
	temp = PINB;     //读A端口
	s_ms(500);
	DDRB=0xff;       //A端口变输出
	s_ms(500);
	PORTA&=~(1<<EN); //EN=0
	s_ms(500);
	return temp;	
}

//=================================================
// 描述： 写LCD内部CGRAM函数
// 入口： ‘num’要写的数据个数
//        ‘pbuffer’要写的数据的首地址
// 出口： 无
//================================================
void	WriteCGRAM(uint	num, const uint	*pBuffer)
{
	uint	i,t;
	writecom(0x40);
	PORTA|=(1<<RS);
	PORTA&=~(1<<RW);
	for(i=num;i!=0;i--)
	{
		t = *pBuffer;
		PORTA|=(1<<EN);
		PORTB = t;
		PORTA&=~(1<<EN);				
		pBuffer++;
	}
	
}

//=================================================
//描述：写菜单函数，本程序使用的LCD规格为 16 * 2
//入口：菜单数组首地址
//出口：无
//=================================================
void	WriteMenu(const uchar *pBuffer)
{
	uchar	i,t;
	writecom(0x80);   //数据地址
	
	PORTA|=(1<<RS);
	PORTA&=~(1<<RW);
	s_ms(50);
	for(i=0;i<16;i++)
	{
		t = *pBuffer;
		PORTB = t;
		PORTA|=(1<<EN);
		s_ms(50);
		PORTA&=~(1<<EN);				
		pBuffer++;
	}
	writecom(0xC0);

	PORTA|=(1<<RS);
	PORTA&=~(1<<RW);
	s_ms(50);	
	for(i=0;i<16;i++)
	{
		t = *pBuffer;
		PORTB = t;
		PORTA|=(1<<EN);
		s_ms(50);
		PORTA&=~(1<<EN);				
		pBuffer++;
	}
}
//====================================================
// 描述：在任意位置写数字函数
// 入口：’row‘表示要写数字所在的行地址，只能为1或2
//       ’col‘表示要写数字所在的列地址，只能为0--15
//		 ‘num’表示要写的数字，只能为0--9
// 出口：无
//===================================================
void	WriteNum(uint	row,uint	col,uint	 num)
{
	if (row == 1)	row = 0x80 + col;
	else	row = 0xC0 + col;
	writecom(row);
	if (num<=0 | num>9)	num =0x30;
	else	num = 0x30 + num;

	PORTA|=(1<<RS);
	s_ms(500);
	PORTA&=~(1<<RW);
	s_ms(500);
	PORTB = num;
	s_ms(500);
	PORTA|=(1<<EN);
	s_ms(500);
	PORTA&=~(1<<EN);	
	s_ms(500);			
}
//================================================================
// 描述：在任意位置写任意多个字符
// 入口：’row‘要写的字符所在的行，只能为1或2；
//       ‘col’要写的字符所在的列，只能为0---15
//       ‘num’要写字符的个数
//       ‘pbuffer’要写字符的首地址
//================================================================== 
void	WriteChar(uchar row,uchar col,uint num,uchar *pBuffer)
{
	uchar i,t;
	if (row == 1)	row = 0x80 + col;
	else	row = 0xC0 + col;
	writecom(row);
	//if (num<=0 | num>9)	num =0x30;
	//else	num = 0x30 + num;

	PORTA|=(1<<RS);
	s_ms(500);
	PORTA&=~(1<<RW);
	s_ms(500);
	for(i=num;i!=0;i--)
	{
		t = *pBuffer;
		s_ms(500);
		PORTB = t;
		s_ms(500);
		PORTA|=(1<<EN);
		s_ms(500);
		PORTA&=~(1<<EN);		
		s_ms(500);		
		pBuffer++;
	}
	
}
