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
//  ��������   : LCD SPI�ӿ���ʾ����(51ϵ��)
//              ˵��: 
//              ----------------------------------------------------------------
//              GND     ��Դ��
//              VCC     3.3v��Դ
//              CLK     P10��SCL��
//              MOSI    P11��SDA��
//              RES     P12
//              DC      P13 
//							CS      P14
//							BLK     P15 ���Ʊ���
//              ----------------------------------------------------------------
// �޸���ʷ   :
// ��    ��   : 
// ��    ��   : HuangKai
// �޸�����   : �����ļ�
//��Ȩ���У�����ؾ���
//Copyright(C) �о�԰����2018-10-31
//All rights reserved
//******************************************************************************/

#include "REG51.h"
#include "spi.h"
int main(void)
 {	
	 u8 i,m;
	 float t=0;
	 Lcd_Init();			     //��ʼ��OLED  
	 LCD_Clear(WHITE);
	 BACK_COLOR=WHITE;
	 while(1)
	 {
		 	LCD_ShowChinese(10,0,0,32,RED);   //��
			LCD_ShowChinese(45,0,1,32,RED);   //��
			LCD_ShowChinese(80,0,2,32,RED);   //԰
//			LCD_ShowChinese(115,0,3,32,RED);  //��
//			LCD_ShowChinese(150,0,4,32,RED);  //��
		 
		 	LCD_ShowChinese(10,75,0,16,RED);  //��
			LCD_ShowChinese(45,75,1,16,RED);  //��
			LCD_ShowChinese(80,75,2,16,RED);  //԰
			LCD_ShowChinese(115,75,3,16,RED); //��
			LCD_ShowChinese(150,75,4,16,RED); //��
			LCD_ShowString(10,35,"1.14 TFT SPI 135*240",RED);
			LCD_ShowPicture(0,92,39,131);
			while(1)
			{
				LCD_ShowNum1(80,95,t,5,RED);
		    t+=0.01;
      }
   }
}