//////////////////////////////////////////////////////////////////////////////////	 
//������ֻ��ѧϰʹ�ã�δ��������ɣ��������������κ���;
//�о�԰����
//���̵�ַ��http://shop73023976.taobao.com
//
//  �� �� ��   : main.c
//  �� �� ��   : v2.0
//  ��    ��   : HuangKai
//  ��������   : 2018-10-31
//  ����޸�   : 
//  ��������   : LCD SPI�ӿ���ʾ����(STM32F103ϵ��)
//              ˵��: 
//              ----------------------------------------------------------------
//              GND     ��Դ��
//              VCC     3.3v��Դ
//              D0   PB13��SCL��
//              D1   PB15��SDA�� 
//              RES  PB11
//              DC   PB10
//              BLK  PB12 
//              ----------------------------------------------------------------
// �޸���ʷ   :
// ��    ��   : 
// ��    ��   : HuangKai
// �޸�����   : �����ļ�
//��Ȩ���У�����ؾ���
//Copyright(C) �о�԰����2018-10-31
//All rights reserved
//******************************************************************************/

#include "delay.h"
#include "sys.h"
#include "lcd.h"


int main(void)
 {	
	 u8 i,m;
	 float t=0;
	 delay_init();	    	 //��ʱ������ʼ��	  
	 NVIC_Configuration(); 	 //����NVIC�жϷ���2:2λ��ռ���ȼ���2λ��Ӧ���ȼ�
	 Lcd_Init();			//��ʼ��OLED  
	 LCD_Clear(WHITE);
	 BACK_COLOR=WHITE;
	 LED_ON;
	 while(1)
	 {
		 	LCD_ShowChinese(10,0,0,32,RED);   //��
			LCD_ShowChinese(45,0,1,32,RED);   //��
			LCD_ShowChinese(80,0,2,32,RED);   //԰
			LCD_ShowChinese(115,0,3,32,RED);  //��
			LCD_ShowChinese(150,0,4,32,RED);  //��
		 
		 	LCD_ShowChinese(10,75,0,16,RED);   //��
			LCD_ShowChinese(45,75,1,16,RED);   //��
			LCD_ShowChinese(80,75,2,16,RED);   //԰
			LCD_ShowChinese(115,75,3,16,RED);  //��
			LCD_ShowChinese(150,75,4,16,RED);  //��
			LCD_ShowString(10,35,"1.3 TFT SPI 240*240",RED);
			LCD_ShowString(10,55,"LCD_W:",RED);	LCD_ShowNum(70,55,LCD_W,3,RED);
			LCD_ShowString(110,55,"LCD_H:",RED);LCD_ShowNum(160,55,LCD_H,3,RED);
		  for(i=0;i<5;i++)
		  {
				for(m=0;m<6;m++)
				{
				  LCD_ShowPicture(0+m*40,120+i*40,39+m*40,159+i*40);
				}
		  }
			while(1)
			{
				LCD_ShowNum1(80,95,t,5,RED);
		    t+=0.01;
      }
   }
}