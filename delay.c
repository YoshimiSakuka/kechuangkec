 /*********************************************************************
 *
 *                           delay.c
 *
 *********************************************************************
 * ��    ��: �����ռ��������ʱ����������Դ�롣
 * ����ƽ̨: KEIL+HL-1/HJ-3G/HJ-C52������*/

#include "stc.h"/*����STC��Ƭ��ͷ�ļ�*/
#include "delay.h"/*���������ռ�����ʱ����ͷ�ļ�*/
#include <intrins.h>/*��������_nop_()������ͷ�ļ�*/

/*һЩ�̶���ʱ����*/

/*1uS��ʱ����*/
/*FOSC=11.0592��12��22.1184MHZʱ������*/
/*��������Ƶ��ʱ��Ҫ����_nop_();���ľ�����_nop_();���ľ���=FOSC-10*/
long int FOSC=12000000;
void delay1us()
{
FOSC==12000000
		_nop_();_nop_();

}

/*2uS��ʱ����*/
/*FOSC=11.0592��12��22.1184MHZʱ������*/
/*��������Ƶ��ʱ��Ҫ����_nop_();���ľ�����_nop_();���ľ���=2*FOSC-10*/
void delay2us()
{
	#if FOSC==11059200
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();
	#elif FOSC==12000000
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	
	#elif FOSC==22118400
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	_nop_();
		_nop_();	_nop_();	_nop_();	_nop_();	
	#endif
}


/*5uS��ʱ����*/
void delay5us()
{
	delay8((FOSC/1000000*5-18)/10);
}

/*10uS��ʱ����*/
void delay10us()
{
	delay8((FOSC/1000000*10-18)/10);
}


/*20uS��ʱ����*/
void delay20us()
{
	delay8((FOSC/1000000*20-18)/10);
}
/*50uS��ʱ����*/
void delay50us()
{
	delay8((FOSC/1000000*50-18)/10);
}
/*100uS��ʱ����*/
void delay100us()
{
	delay((0.1*FOSC/1000-24)/13);
}
/*200uS��ʱ����*/
void delay200us()
{
	delay((0.2*FOSC/1000-24)/13);
}
/*500uS��ʱ����*/
void delay500us()
{
	delay((0.5*FOSC/1000-24)/13);
}
/*1mS��ʱ����*/
void delay1ms()
{
	delay((1*FOSC/1000-24)/13);
}
/*2mS��ʱ����*/
void delay2ms()
{
	delay((2*FOSC/1000-24)/13);
}
/*5mS��ʱ����*/
void delay5ms()
{
	delay((5*FOSC/1000-24)/13);
}
/*10mS��ʱ����*/
void delay10ms()
{
	delay((10*FOSC/1000-24)/13);
}
/*20mS��ʱ����*/
void delay20ms()
{
	delayms(20);
}
/*50mS��ʱ����*/
void delay50ms()
{
	delayms(50);
}
/*100mS��ʱ����*/
void delay100ms()
{
	delayms(100);
}
/*200mS��ʱ����*/
void delay200ms()
{
	delayms(200);
}
/*500mS��ʱ����*/
void delay500ms()
{
	delays(0.5);
}
/*1S��ʱ����*/
void delay1s()
{
	delays(1);
}
/*2S��ʱ����*/
void delay2s()
{
	delays(2);
}
/*5S��ʱ����*/
void delay5s()
{
	delays(5);
}
/*10S��ʱ����*/
void delay10s()
{
	delays(10);
}

/*0.8us--116us��ʱ����(FOSC=22.1184Mʱ)*/
/*1.5us--214us��ʱ����(FOSC=12Mʱ)*/
/*1.6us--232us��ʱ����(FOSC=11.0592Mʱ)*/
/*��ʱʱ�䣺(18+10t)/FOSC*/
/*�����ʱ��2568/FOSC*/
/*��С��ʱ��18/FOSC*/
/*��Ҫ��ʱ��ʱ��ΪT(��������λΪus),���÷�ʽ:delay8((FOSC/1000000*T-18)/10)*/
/*����Ҫ��ʱ��ʱ��Ϊ100us,���÷�ʽ:delay8((FOSC/1000000*100-18)/10)*/
void delay8(unsigned char t)
{
	unsigned char i;	
	for(i=t;i;i--);
}

/*1.1us--38.5ms��ʱ����(FOSC=22.1184Mʱ)*/
/*2us--70.9ms��ʱ����(FOSC=12Mʱ)*/
/*2.2us--77ms��ʱ����(FOSC=11.0592Mʱ)*/
/*��ʱʱ�䣺(13t+24)/FOSC
/*�����ʱ��851979/FOSC	
/*��С��ʱ��24/FOSC		
/*��Ҫ��ʱ��ʱ��ΪT(��������λΪms),���÷�ʽ:delay((T*FOSC/1000-24)/13)*/
/*����Ҫ��ʱ��ʱ��Ϊ10ms,���÷�ʽ:delay((10*FOSC/1000-24)/13)*/
void delay(unsigned int t)
{
	unsigned int i;	
	for(i=t;i;i--);
}



/*һ�����뼶�ɱ���ʱ����*/
/*��  �ܣ�ʵ�������ֱ�Ӷ�Ӧ��ʱ�䣨��λΪ���룩����ʱ*/
/*��  ������Χ1��255*/
/*����ֵ����*/
void delayms(unsigned char t)
{
	unsigned char j;	
	for(j=t;j;j--)	
		delay1ms();/*1ms��ʱ*/
}
  

/*һ���뼶�ɱ���ʱ����*/
/*��  �ܣ�ʵ�������ֱ�Ӷ�Ӧ��ʱ�䣨��λΪ�룩����ʱ*/
/*��  ������Χ0.01��42949672*/
/*����ֵ����*/
void delays(float t)
{
 	unsigned int j;
	j=t*100;
   while(j--)
  	{
		delay10ms();/*10ms��ʱ*/
 	}
}
