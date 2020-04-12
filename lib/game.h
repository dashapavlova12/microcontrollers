#ifndef __GAME_H___
#define __GAME_H___

#define ENEMY_NUM 4

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"
#include "stm32f0xx_ll_tim.h"

#include "xprintf.h"
#include "oled_driver.h"

typedef struct _pxl {
	uint8_t x;
	uint8_t y;
} Pixel;

typedef struct _pixcar {
	int16_t x;
	int16_t y;
	uint16_t size;
	Pixel* tex;
} PixModel;

typedef struct _car {
	int16_t x;
	int16_t y;
	uint8_t* tex;
} Model;


//------------------------------ VARIABLES -----------------------------------//

volatile enum state {
	START_SCREEN,
	COUNTDOWN,
	GAME,
	GPAUSE,
	END_GAME
} STATE;

//------------------------- SYSTEM CONFIGS -----------------------------------//

void rcc_config(void);
void gpio_config(void);
void printf_config(void);
void exti_config(void);
void timers_config(void);
void systick_config(void);

//------------------------- USER FUNCTIONS -----------------------------------//

uint8_t random();
void drawCar (volatile PixModel* model);
void drawMyCar();
void checkCrash (volatile PixModel* model);
void game();
void initModels();
void endGame();
void countdown();
void startScreen();
void pauseGame();
void showCover();
void buttonSound();
void endSound();
void countSound();
void initializeAll();



#endif //__GAME_H___
