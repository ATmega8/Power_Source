//////////////////////////////////////////////////////////////////////////////////	 
//������ֻ��ѧϰʹ�ã�δ��������ɣ��������������κ���;
//�о�԰����
//���̵�ַ��http://shop73023976.taobao.com
//
//  �� �� ��   : main.c
//  �� �� ��   : v2.0
//  ��    ��   : HuangKai
//  ��������   : 2018-0101
//  ����޸�   : 
//  ��������   : STM32L151AC8T6���������OLED��ʾ��ʵ��
//              ˵��: 
//              ----------------------------------------------------------------
//              GND    ��Դ��
//              VCC  3.3v��Դ
//              D0   ��PA0��SCL��
//              D1   ��PA1��SDA��
//              RES  ��PA2
//              DC   ��PA3
//              CS   ��PA4 
//              BLK  ��PA5 
//              ----------------------------------------------------------------
// �޸���ʷ   :
// ��    ��   : 
// ��    ��   : HuangKai
// �޸�����   : �����ļ�
//��Ȩ���У�����ؾ���
//Copyright(C) �о�԰����2018
//All rights reserved
//******************************************************************************/

#include "main.h"
#include "stm32l1xx_hal.h"
#include "lcd.h"
void SystemClock_Config(void);
int main()
{
	u8 i;
	float t=0;
	HAL_Init();
	SystemClock_Config();
	Lcd_Init();
	LCD_Clear(WHITE);
	BACK_COLOR=WHITE;
	LED_ON;
	while(1)
	{
		LCD_ShowChinese(10,0,0,32,RED);   //��
		LCD_ShowChinese(45,0,1,32,RED);   //��
		LCD_ShowChinese(80,0,2,32,RED);   //԰
//			LCD_ShowChinese(115,0,3,32,RED);  //��
//			LCD_ShowChinese(150,0,4,32,RED);  //��

		LCD_ShowChinese(10,75,0,16,RED);   //��
		LCD_ShowChinese(45,75,1,16,RED);   //��
		LCD_ShowChinese(80,75,2,16,RED);   //԰
		LCD_ShowChinese(115,75,3,16,RED);  //��
		LCD_ShowChinese(150,75,4,16,RED);  //��
		LCD_ShowString(10,35,"1.14 TFT SPI 135*240",RED);
		LCD_ShowPicture(0,92,39,131);
		LCD_ShowNum1(80,95,t,4,RED);
		t+=0.01;
	}
}

void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;

    /**Configure the main internal regulator output voltage 
    */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL3;
  RCC_OscInitStruct.PLL.PLLDIV = RCC_PLL_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
  }

    /**Configure the Systick interrupt time 
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick 
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}


