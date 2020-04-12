#include "game.h"
#include "textures.h"

#define PAUSE   10 * random()
#define SOUND_RELOAD 100

//------------------------------ VARIABLES -----------------------------------//

uint32_t milliseconds = 201;
uint32_t SCORE = 0;
uint8_t SPEED = 3;
extern int8_t deltaY;
volatile Model myCar;
volatile PixModel enemies[ENEMY_NUM];

//----------------------------------------------------------------------------//


uint8_t random() { //Lagged Fibonacci generator of random numbers
    static uint8_t randNum = 55;
    static uint8_t fib[100] = {
        14, 216, 40, 170, 208, 168, 236, 156, 173, 148, 89, 132, 3,
        196, 93, 129, 242, 91, 29, 3, 83, 39, 225, 182, 96, 232, 1,
        175, 189, 161, 88, 65, 237, 181, 94, 192, 133, 31, 145, 22,
        117, 190, 130, 231, 28, 107, 117, 102, 133, 77, 85, 52, 55
    };

    if (randNum == 99)
        randNum = 0;
    else
        randNum++;

    int8_t n24 = randNum - 24;
    int8_t n55 = randNum - 55;
    fib[randNum] = (fib[n24 < 0 ? 100 + n24 : n24] +
                        fib[n55 < 0 ? 100 + n55 : n55] + myCar.y) % 64 + 120;
                        // myCar.y was added for true (not) random
    return fib[randNum];
}

void drawMyCar() {
    uint16_t x = 0;
    for (uint16_t y = 0; y < PIC_SIZE; y++) {
        if (y % PIC_WIDTH == 0 && y != 0)
            x++;
        oledSetPix (myCar.x + x, myCar.y + (y % PIC_WIDTH), myCar.tex[y] < 120);
    }
}

void drawCar (volatile PixModel* model) {
    if (model->x > GMEM_WIDTH)
        return;
    int16_t x;
    for (uint16_t i = 0; i < model->size; i++) {
        x = model->x + model->tex[i].x;
        if (x >= 0)
            oledSetPix (x, model->y + model->tex[i].y, clWhite);
    }
}

/*
    It checks 4 corners of enemy car for intersection
*/

void checkCrash (volatile PixModel* model) {
    if ((model->x >= myCar.x && model->x <= myCar.x + PIC_HEIGTH && model->y >= myCar.y && model->y <= myCar.y + PIC_WIDTH) ||
        (model->x + PIC_HEIGTH >= myCar.x && model->x + PIC_HEIGTH <= myCar.x + PIC_HEIGTH && model->y >= myCar.y && model->y <= myCar.y + PIC_WIDTH) ||
        (model->x + PIC_HEIGTH >= myCar.x && model->x + PIC_HEIGTH <= myCar.x + PIC_HEIGTH && model->y + PIC_WIDTH >= myCar.y && model->y + PIC_WIDTH <= myCar.y + PIC_WIDTH) ||
        (model->x >= myCar.x && model->x <= myCar.x + PIC_HEIGTH && model->y + PIC_WIDTH >= myCar.y && model->y + PIC_WIDTH <= myCar.y + PIC_WIDTH))
        {
        STATE = END_GAME; //
    }
    return;
}

void initModels() {
    for (uint8_t i = 0; i < ENEMY_NUM; i++) {
        enemies[i].x = GMEM_WIDTH;
        enemies[i].y = 0;
        enemies[i].size = 230;
        enemies[i].tex = enemyCar;
    }

    myCar.x = 95;
    myCar.y = 25;
    myCar.tex = myCarTex;
}

void game() {
    uint16_t oldX = 0;
    uint32_t level = 1;
    SPEED = 3;
    SCORE = 0;
    while (STATE != END_GAME) {
        if (STATE == GPAUSE) {
            pauseGame();
        }

        level++;
        if (level % 500 == 0 && SPEED < 10) {
            SPEED++;
            level = 1;
        }

        oledFrame2();

        for (uint8_t i = 0; i < ENEMY_NUM; i++) {
            oldX = enemies[i].x;
            enemies[i].x += SPEED;
            if (oldX < GMEM_WIDTH && enemies[i].x >= GMEM_WIDTH) {
                SCORE += 10 * SPEED;
            }
            drawCar (&enemies[i]);
            if (enemies[i].x + PIC_HEIGTH >= 95) {
                checkCrash (&enemies[i]);
            }
        }

        drawMyCar();
        oledUpdate();
    }
}

void pauseGame() {
    oledSetCursor (4, 3);
    deltaY = 3;
    drawRec (28, 5, 60, 58, clWhite, clBlack);
    xprintf ("GAME");
    oledSetCursor (5, 2);
    xprintf ("PAUSED");
    oledUpdate();
    deltaY = 0;
    while (STATE == GPAUSE)
        ;
    for (int8_t i = 3; i > 0 && STATE == COUNTDOWN; i--) {
        drawRec (28, 5, 60, 58, clWhite, clBlack);
        oledSetCursor (4,5);
        xprintf ("%d", i);
        oledUpdate();
        countSound();
        volatile uint32_t x = 2000000;
        while (x--)
            ;
    }
    STATE = GAME;
}

void startScreen() {
    oledPic (cover, 100);
    oledSetCursor (1,2);
    xprintf ("FLATOUT\n");
    deltaY = 3;
    xprintf ("   ZERO");
    oledSetCursor (11,3);
    deltaY = -1;
    xprintf ("PRESS\n");
    deltaY = 2;
    xprintf("THE BUTTON\n TO START");
    deltaY = 0;
    oledUpdate();
    while (STATE == START_SCREEN)
        ;
}

void countdown() {
    for (int8_t i = 3; i > 0 && STATE == COUNTDOWN; i--) {
        oledColor (clBlack);
        oledSetCursor (4,5);
        xprintf ("%d", i);
        oledUpdate();
        countSound();
        volatile uint32_t x = 2000000;
        while (x--)
            ;
    }
    STATE = GAME;
}

void endGame() {
    endSound();
    oledColor (clBlack);
    oledSetCursor (3,3);
    deltaY = 3;
    xprintf ("GAME\n   OVER\n");
    xprintf ("\nYOUR SCORE:\n");
    xprintf ("   %d", SCORE);
    oledUpdate();
    deltaY = 0;
    while (STATE == END_GAME)
        ;
}

void buttonSound() {
    for (uint32_t i = 1100; i >= 500; i -= 10) {
        LL_TIM_SetPrescaler(TIM2, i);
        volatile uint32_t x = 3000;
        while (x--)
            LL_TIM_SetPrescaler(TIM2, i + x / 8);
    }
    LL_TIM_SetPrescaler(TIM2, 000);
}

void endSound() {
    for (int32_t i = 2000; i >= 1000; i -= 4) {
        LL_TIM_SetPrescaler(TIM2, i + ((i % 2 == 0) ? 100 : 100));
        volatile uint32_t x = 2000;
        while (x--)
            LL_TIM_SetPrescaler(TIM2, i - x / 8);
    }
    LL_TIM_SetPrescaler(TIM2, 000);
}

void countSound() {
    for (int32_t i = 1200; i >= 700; i -= 2) {
        LL_TIM_SetPrescaler(TIM2, i + ((i % 2 == 0) ? 100 : 100));
        volatile uint32_t x = 1000;
        while (x--)
            LL_TIM_SetPrescaler(TIM2, i - x / 8);
    }
    LL_TIM_SetPrescaler(TIM2, 000);
}

//****************************************************************************//
//---------------------- INTERRUPTIONS CONFIGS -------------------------------//
//****************************************************************************//

void exti_config(void)
{
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);

    /*  LINE 1, 0 - Encoder
        LINE 2 - Button
    */

    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTB, LL_SYSCFG_EXTI_LINE2);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE1);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);

    /* BUTTON */
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_2);

    /* ENCODER */
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);

    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_2);

    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_1);

    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
    /*
     * Setting interrupts
     */
    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_SetPriority(EXTI0_1_IRQn, 0);
    NVIC_EnableIRQ(EXTI2_3_IRQn);
    NVIC_SetPriority(EXTI2_3_IRQn, 0);
}

void EXTI0_1_IRQHandler(void) // Encoder Handler
{
    if (STATE != GAME) {
        LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
        LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
        return;
    }

    static int8_t states[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};
    static uint8_t enc_trans = 0;
    static int8_t enc_dir = 0;
    uint8_t enc_state = 0x00;

    enc_state = 0x0003 & LL_GPIO_ReadInputPort(GPIOA);
    enc_trans = ((0x03 & enc_trans) << 2) | enc_state;
    enc_dir += states[enc_trans];

    if (enc_dir == 3) {
        if (myCar.y + PIC_WIDTH <= 61) {
            myCar.y += SPEED / 3 + 2;
        }
        enc_dir = 0;
    } else if (enc_dir == -3) {
        if (myCar.y >= 3) {
            myCar.y -= SPEED / 3 + 2;
        }
        enc_dir = 0;
    }

    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
}

void EXTI2_3_IRQHandler(void) { // BUTTON
    if (LL_EXTI_IsActiveFlag_0_31(LL_EXTI_LINE_2)) {
        milliseconds = 0;
    }
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_2);
}

//****************************************************************************//
//--------------------------- TIMER CONFIGS ----------------------------------//
//****************************************************************************//

void systick_config(void) { // BUTTON
    LL_InitTick(48000000, 1000);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}

void SysTick_Handler() { // BUTTON Handler
    milliseconds++;
    if (milliseconds == 200) {
        switch (STATE) {
            case START_SCREEN: {
                STATE = COUNTDOWN;
                break;
            }
            case COUNTDOWN: {
                STATE = GAME;
                buttonSound();
                break;
            }
            case GAME: {
                STATE = GPAUSE;
                buttonSound();
                break;
            }
            case GPAUSE: {
                STATE = COUNTDOWN;
                break;
            }
            case END_GAME: {
                STATE = COUNTDOWN;
                break;
            }
            default: {
                oledColor(clBlack);
                oledSetCursor (2,2);
                xprintf ("  \nERROR\n  ");
                oledUpdate();
                while (1)
                    ;
            }
        }
    }
}

void timers_config(void)
{
//----------------------------- FIRST TIMER ----------------------------------//
//------------------ COUNTER FOR ENEMY CARS DELAY ----------------------------//
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);
    LL_TIM_SetPrescaler(TIM3, 47999);
    LL_TIM_SetAutoReload(TIM3, 1000);
    LL_TIM_SetCounterMode(TIM3, LL_TIM_COUNTERMODE_UP);
    LL_TIM_EnableIT_UPDATE(TIM3);
    LL_TIM_EnableCounter(TIM3);

    NVIC_EnableIRQ(TIM3_IRQn);
    NVIC_SetPriority(TIM3_IRQn, 0);

//--------------------------- SECOND TIMER ----------------------------------//
//--------------------------- SOUND GENERATOR --------------------------------//
// Speaker "+" on GPIOA5 
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_5, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_5, LL_GPIO_AF_2);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
    LL_TIM_SetPrescaler(TIM2, 000);
    LL_TIM_SetAutoReload(TIM2, SOUND_RELOAD);
    LL_TIM_OC_SetCompareCH1(TIM2, SOUND_RELOAD / 2);
    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH1);
    LL_TIM_OC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCPOLARITY_HIGH);

    LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);
    LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
    LL_TIM_EnableIT_CC1(TIM2);
    LL_TIM_EnableCounter(TIM2);
}

void TIM3_IRQHandler(void) // Puts enemy's cars
{
    static uint8_t isAnybodyPut = 0;

    for (int8_t amnt = random() % 2; amnt >= 0; amnt--) {
        uint8_t i = random() % ENEMY_NUM;
        if (enemies[i].x > GMEM_WIDTH) {
            isAnybodyPut = 1;
            enemies[i].x = -PIC_HEIGTH;
            enemies[i].y = 4 + 21 * (random() % 3);
        }
    }

    if (isAnybodyPut == 0){
        LL_TIM_SetAutoReload(TIM3, 100);
        LL_TIM_ClearFlag_UPDATE(TIM3);
        return;
    }

    LL_TIM_SetAutoReload(TIM3, PAUSE - 60 * SPEED);
    LL_TIM_ClearFlag_UPDATE(TIM3);
	return;
}

//****************************************************************************//
//--------------------------- SYSTEM CONFIGS ---------------------------------//
//****************************************************************************//

void rcc_config(void)
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

void gpio_config(void)
{
    //---ENCODER---//
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_0, LL_GPIO_PULL_DOWN);
    //---BUTTON---//
    LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_2, LL_GPIO_PULL_DOWN);
    return;
}

/*
 * Set callback for out device
 */
void printf_config(void)
{
    xdev_out(oled_putc);
    return;
}

void initializeAll() {
    rcc_config();
    gpio_config();
    oled_config();
    printf_config();
    timers_config();
    exti_config();
    systick_config();
}
