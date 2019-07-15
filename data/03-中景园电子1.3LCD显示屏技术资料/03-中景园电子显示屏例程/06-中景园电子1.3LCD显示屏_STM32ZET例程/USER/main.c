//////////////////////////////////////////////////////////////////////////////////	 
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//中景园电子
//店铺地址：http://shop73023976.taobao.com/?spm=2013.1.0.0.M4PqC2
//
//  文 件 名   : main.c
//  版 本 号   : v2.0
//  作    者   : HuangKai
//  生成日期   : 2014-0101
//  最近修改   : 
//  功能描述   : OLED 4接口演示例程(STM32F103ZE)
//              说明: 
//              ----------------------------------------------------------------
//              GND    电源地
//              VCC  接5V或3.3v电源
//              D0   接PG12（SCL）
//              D1   接PD5（SDA）
//              RES  接PD4
//              DC   接PD15
//              CS   接PD1               
//              ----------------------------------------------------------------
// 修改历史   :
// 日    期   : 
// 作    者   : HuangKai
// 修改内容   : 创建文件
//版权所有，盗版必究。
//Copyright(C) 中景园电子2014/3/16
//All rights reserved
//******************************************************************************/

#include "delay.h"
#include "sys.h"
#include "lcd.h"
#include "led.h"
int main(void)
{
	 u8 i,m;
	 float t=0;
	 delay_init();	    	 //延时函数初始化	  
	 Lcd_Init();			//初始化OLED  
	 LED_Init();
	 LCD_Clear(WHITE);
	 BACK_COLOR=WHITE;
	 LED0=0;
	 while(1)
	 {
		 	LCD_ShowChinese(10,0,0,32,RED);   //中
			LCD_ShowChinese(45,0,1,32,RED);   //景
			LCD_ShowChinese(80,0,2,32,RED);   //园
			LCD_ShowChinese(115,0,3,32,RED);  //电
			LCD_ShowChinese(150,0,4,32,RED);  //子
		 
		 	LCD_ShowChinese(10,75,0,16,RED);   //中
			LCD_ShowChinese(45,75,1,16,RED);   //景
			LCD_ShowChinese(80,75,2,16,RED);   //园
			LCD_ShowChinese(115,75,3,16,RED);  //电
			LCD_ShowChinese(150,75,4,16,RED);  //子
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
				LCD_ShowNum1(80,95,t,5,RED);
		    t+=0.01;
   }
}

