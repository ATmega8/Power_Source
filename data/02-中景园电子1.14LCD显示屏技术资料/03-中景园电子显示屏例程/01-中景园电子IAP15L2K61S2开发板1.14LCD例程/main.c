//////////////////////////////////////////////////////////////////////////////////	 
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//中景园电子
//店铺地址：http://shop73023976.taobao.com
//
//  文 件 名   : main.c
//  版 本 号   : v2.0
//  作    者   : HuangKai
//  生成日期   : 2018-10-31
//  最近修改   : 
//  功能描述   : LCD SPI接口演示例程(51系列)
//              说明: 
//              ----------------------------------------------------------------
//              GND     电源地
//              VCC     3.3v电源
//              CLK     P10（SCL）
//              MOSI    P11（SDA）
//              RES     P12
//              DC      P13 
//							CS      P14
//							BLK     P15 控制背光
//              ----------------------------------------------------------------
// 修改历史   :
// 日    期   : 
// 作    者   : HuangKai
// 修改内容   : 创建文件
//版权所有，盗版必究。
//Copyright(C) 中景园电子2018-10-31
//All rights reserved
//******************************************************************************/

#include "REG51.h"
#include "spi.h"
int main(void)
 {	
	 u8 i,m;
	 float t=0;
	 Lcd_Init();			     //初始化OLED  
	 LCD_Clear(WHITE);
	 BACK_COLOR=WHITE;
	 while(1)
	 {
		 	LCD_ShowChinese(10,0,0,32,RED);   //中
			LCD_ShowChinese(45,0,1,32,RED);   //景
			LCD_ShowChinese(80,0,2,32,RED);   //园
//			LCD_ShowChinese(115,0,3,32,RED);  //电
//			LCD_ShowChinese(150,0,4,32,RED);  //子
		 
		 	LCD_ShowChinese(10,75,0,16,RED);  //中
			LCD_ShowChinese(45,75,1,16,RED);  //景
			LCD_ShowChinese(80,75,2,16,RED);  //园
			LCD_ShowChinese(115,75,3,16,RED); //电
			LCD_ShowChinese(150,75,4,16,RED); //子
			LCD_ShowString(10,35,"1.14 TFT SPI 135*240",RED);
			LCD_ShowPicture(0,92,39,131);
			while(1)
			{
				LCD_ShowNum1(80,95,t,5,RED);
		    t+=0.01;
      }
   }
}