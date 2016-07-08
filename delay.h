 /*********************************************************************
 *
 *                           delay.h
 *
 *********************************************************************
 * ��    ��: �����ռ��������ʱ����ͷ�ļ�������Դ�롣
 * ����ƽ̨: KEIL+HL-1/HJ-3G/HJ-C52������
 ********************************************************************/

#ifndef   DELAY_H
#define   DELAY_H

void delay1us();
void delay2us();
void delay5us();
void delay10us();
void delay20us();
void delay50us();
void delay100us();
void delay200us();
void delay500us();
void delay1ms();
void delay2ms();
void delay5ms();
void delay10ms();
void delay20ms();
void delay50ms();
void delay100ms();
void delay200ms();
void delay500ms();
void delay1s();
void delay2s();
void delay5s();
void delay10s();


void delay8(unsigned char t);/*1.6us--232us��ʱ����(fosc=11.0592Mʱ)*/
void delay(unsigned int t);/*2.2us--77ms��ʱ����(fosc=11.0592Mʱ)*/
void delayms(unsigned char t);/*һ�����뼶�ɱ���ʱ����*/
void delays(float t);/*һ���뼶�ɱ���ʱ����*/


#endif