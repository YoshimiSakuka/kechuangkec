
#include "stc.h"
#include <stdio.h>
#include <stdlib.h>

#define uchar unsigned char 
#define uint unsigned int

unsigned char code table[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,
                        0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71,0x00};//数码管码表
uint num,i;
uchar a0,b0,c0,d0,e0,f0;



sbit k1=P1^0;//按键
sbit k2=P1^1;
sbit k3=P1^2;
sbit k4=P1^3;
sbit k5=P1^4;
sbit k6=P1^5;
sbit k7=P1^6;
sbit k8=P1^7;


sbit beep=P2^4;//蜂鸣器P2_4
sbit led1=P2^5;//LED口
sbit led2=P2^6;//LED口
sbit led3=P2^7;//LED口
												

void delay(uint i)
{
	uint m,n;
	for(m=i;m>0;m--)
		for(n=90;n>0;n--);
}

void display(uchar a,uchar b,uchar c,uchar d)
{

   P0=table[a];

   P0=0xfe;
   delay(5);
   
   P0=table[b];
	 P0=0xfd;
   delay(5);

   P0=table[c];
   P0=0xfb;
   delay(5);
   
   P0=table[d];
   P0=0xf7;
   delay(5);

}

void dis_fun()//显示数函数
{
	if(num<10)
		{a0=num;b0=16;c0=16;d0=16;e0=16;f0=16;}
		else
		{
			if(num<100)
			{a0=num/10;b0=num%10;c0=16;d0=16;e0=16;f0=16;}
			else
			{
				if(num<1000)
				{a0=num/100;b0=num%100/10;c0=num%10;d0=16;e0=16;f0=16;}
				else
				{
					if(num<10000)
					{a0=num/1000;b0=num%1000/100;c0=num%100/10;d0=num%10;e0=16;f0=16;}
					
				}
			}
		}
		display(a0,b0,c0,d0);
}



/*void delay(uchar i)//备用延时函数
{
	uchar j,k;
	for(j=i;j>0;j--)
	for(k=125;k>0;k--);
}*/


void main()
{		led1=0;
		led2=0;
		led3=0;
		beep=0;
					delay(1000);
		led1=1;
		led2=1;
		led3=1;
		beep=1;
	while(1)
	{
		if(k1==0)
		{
			knot1:k1=0;
			delay(20);		 //消抖
			if(k1==20)
			{
				while(!k1);	 //等待按键松开
				{  
					srand(1000);

					for(i=0;i<20;i++)
  {
 
		num=rand();
		num=num-1000;
	dis_fun();}
	goto knot1;
 
				}//语句
			}
			
		}
		if(k2==0)
		{
			knot2:k2=0;
			delay(20);		 //消抖
			if(k2==20)
			{
				while(!k2);	 //等待按键松开
				{	
					  for(num=0;num<16;num++){
								P0=table[num];	  //daima
							P0=0xfe;	   //选中第一个数码管
							delay(500);
						}
				goto knot2;
 
				}//语句
			}
		}
			
		if(k3==0)
		{
			delay(20);		 //消抖
			if(k3==20)
			{
				while(!k3);	 //等待按键松开
					//语句
				{
					while(1)
					{
						for(num=0;num<16;num++)
						{
							P0=table[num];	   
							dis_fun();
							delay(1000);
						}
					}
				}
			}
			
		}
		if(k4==0)
		{
			delay(20);		 //消抖		 //消抖
			if(k4==20)
			{
				while(!k4);	 //等待按键松开
	while(1){
		P0=0xfe;	   
		P0=0xdf;	  //数字“8”的代码
		delay(1000);
		P0=0x00;	  //什么都不显示的代码
		delay(1000);//语句
					}
			}
			
		}
		if(k5==0)
		{
			delay(20);		 //消抖
			if(k5==20)
			{
				while(!k5);	 //等待按键松开
				{
				while(1)
				{
					if(!k5)
						beep=1;
					else
						beep=0;
				}}//语句
			}
		}
		if(k6==0)
		{
			delay(20);		 //消抖
			if(k6==20)
			{
				while(!k6);	 //等待按键松开
				{
					while(1)
					{
						if(!k6)
						{led1=0;
		delay(500);
		led2=0;
		delay(500);
		led3=0;
		delay(500);}
						else
						{led1=1;
						led2=1;
						led3=1;}
					}
				}			//语句
			}
			
		}
		if(k7==0)
		{
			num=0;
			knot7:beep=1;
					delay(500);
					beep=0;
			k7=0;
			delay(20);		 //消抖
			if(k7==20)
			{
				while(!k7);	 //等待按键松开
				{
					while(1)
				{
					num=num+1;
					dis_fun();
					beep=1;
					delay(500);
					beep=0;
					goto knot7;
				}
				}
			}
			
		}
		if(k8==0)
		{
			num=1;
			knot8:beep=1;
					delay(500);
					beep=0;
			k8=0;
			delay(20);		 //消抖
			if(k8==20)
			{
				while(!k8);	 //等待按键松开
				//语句
				{
					while(1)
				{
					num=num*2;
					dis_fun();
					beep=1;
					delay(500);
					beep=0;
					goto knot8;
				}
				}
			}
		}
	}
}
	

