#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_i2c.h"

#include "oled_driver.h"
#include <string.h>


static uint8_t gmem[GMEM_SIZE] = {0};
static uint8_t curX = 0;
static uint8_t curY = 0;
int8_t deltaY = 0; // offset for xprintf (putc)

extern font_desc_t font_desc;
extern uint8_t SPEED;

void drawLine(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, enum color_t c) {
	int16_t dx, dy, sx, sy, err, e2, i, tmp;

	/* Check for overflow */
	if (x0 >= GMEM_WIDTH) {
		x0 = GMEM_WIDTH - 1;
	};
	if (x1 >= GMEM_WIDTH) {
		x1 = GMEM_WIDTH - 1;
	}
	if (y0 >= GMEM_HEIGHT) {
		y0 = GMEM_HEIGHT - 1;
	}
	if (y1 >= GMEM_HEIGHT) {
		y1 = GMEM_HEIGHT - 1;
	}

	dx = (x0 < x1) ? (x1 - x0) : (x0 - x1);
	dy = (y0 < y1) ? (y1 - y0) : (y0 - y1);
	sx = (x0 < x1) ? 1 : -1;
	sy = (y0 < y1) ? 1 : -1;
	err = ((dx > dy) ? dx : -dy) / 2;

	if (dx == 0) {
		if (y1 < y0) {
			tmp = y1;
			y1 = y0;
			y0 = tmp;
		}

		if (x1 < x0) {
			tmp = x1;
			x1 = x0;
			x0 = tmp;
		}

		/* Vertical line */
		for (i = y0; i <= y1; i++) {
			oledSetPix(x0, i, c);
		}

		/* Return from function */
		return;
	}

	if (dy == 0) {
		if (y1 < y0) {
			tmp = y1;
			y1 = y0;
			y0 = tmp;
		}

		if (x1 < x0) {
			tmp = x1;
			x1 = x0;
			x0 = tmp;
		}

		/* Horizontal line */
		for (i = x0; i <= x1; i++) {
			oledSetPix(i, y0, c);
		}

		/* Return from function */
		return;
	}

	while (1) {
		oledSetPix(x0, y0, c);
		if (x0 == x1 && y0 == y1) {
			break;
		}
		e2 = err;
		if (e2 > -dx) {
			err -= dy;
			x0 += sx;
		}
		if (e2 < dy) {
			err += dx;
			y0 += sy;
		}
	}
}

void drawRec (uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, enum color_t bndColor, enum color_t bodyColor) {

    uint8_t tmp = 0;

    if (x1 > x2) {
        tmp = x1;
        x1 = x2;
        x2 = tmp;
    }
    if (y1 > y2) {
        tmp = y1;
        y1 = y2;
        y2 = tmp;
    }

    for (uint8_t i = 0; i <= (x2 - x1) / 2 + 1; i++) {
        oledSetPix (x1 + i, y1, bndColor);
        oledSetPix (x1 + i, y2, bndColor);
        oledSetPix (x2 - i, y1, bndColor);
        oledSetPix (x2 - i, y2, bndColor);
    }
    for (uint8_t i = 0; i <= (y2 - y1) / 2 + 1; i++) {
        oledSetPix (x1, y1 + i, bndColor);
        oledSetPix (x2, y1 + i, bndColor);
        oledSetPix (x1, y2 - i, bndColor);
        oledSetPix (x2, y2 - i, bndColor);
    }
    for (uint8_t i = 1; i <= (x2 - x1) / 2 + 1; i++) {
        for (uint8_t j = 1; j <= (y2 - y1) / 2 + 1; j++) {
            oledSetPix (x1 + i, y1 + j, bodyColor);
            oledSetPix (x2 - i, y1 + j, bodyColor);
            oledSetPix (x1 + i,  y2 - j, bodyColor);
            oledSetPix (x2 - i, y2 - j, bodyColor);
        }
    }
}

void drawEmptyRec (int16_t x1, uint8_t y1, int16_t x2, uint8_t y2, enum color_t bndColor) {

    uint8_t tmp = 0;

    if (x1 < 0)
        x1 = 0;
    if (x2 < 0)
        x2 = 0;

    if (x1 > x2) {
        tmp = x1;
        x1 = x2;
        x2 = tmp;
    }
    if (y1 > y2) {
        tmp = y1;
        y1 = y2;
        y2 = tmp;
    }

    for (uint8_t i = 0; i <= (x2 - x1) / 2 + 1; i++) {
        oledSetPix (x1 + i, y1, bndColor);
        oledSetPix (x1 + i, y2, bndColor);
        oledSetPix (x2 - i, y1, bndColor);
        oledSetPix (x2 - i, y2, bndColor);
    }
    for (uint8_t i = 0; i <= (y2 - y1) / 2 + 1; i++) {
        oledSetPix (x1, y1 + i, bndColor);
        oledSetPix (x2, y1 + i, bndColor);
        oledSetPix (x1, y2 - i, bndColor);
        oledSetPix (x2, y2 - i, bndColor);
    }
}

void drawCircle (int x, int y, int r, int d, enum color_t bndColor, enum color_t bodyColor) {
    int j = y;

    if (d > r)
        d = r;

    for (int i = x; (i - x) * (i - x) + (j - y) * (j - y) <= r * r; i++) {
        for (int j = y; (i - x) * (i - x) + (j - y) * (j - y) <= r * r; j++) {
            if ((i - x) * (i - x) + (j - y) * (j - y) >= (r - d) * (r - d)) {
                oledSetPix (2 * x - i, j, bndColor);
                oledSetPix (i, j, bndColor);
                oledSetPix (i, 2 * y - j, bndColor);
                oledSetPix (2 * x - i, 2 * y - j, bndColor);
            } else {
                oledSetPix (2 * x - i, j, bodyColor);
                oledSetPix (i, j, bodyColor);
                oledSetPix (i, 2 * y - j, bodyColor);
                oledSetPix (2 * x - i, 2 * y - j, bodyColor);
            }
        }
    }
}

void drawEmptyCircle (int16_t x0, int16_t y0, int16_t r, enum color_t c) {
	int16_t f = 1 - r;
	int16_t ddF_x = 1;
	int16_t ddF_y = -2 * r;
	int16_t x = 0;
	int16_t y = r;

    oledSetPix (x0, y0 + r, c);
    oledSetPix (x0, y0 - r, c);
    oledSetPix (x0 + r, y0, c);
    oledSetPix (x0 - r, y0, c);

    while (x < y) {
        if (f >= 0) {
            y--;
            ddF_y += 2;
            f += ddF_y;
        }
        x++;
        ddF_x += 2;
        f += ddF_x;

        oledSetPix (x0 + x, y0 + y, c);
        oledSetPix (x0 - x, y0 + y, c);
        oledSetPix (x0 + x, y0 - y, c);
        oledSetPix (x0 - x, y0 - y, c);

        oledSetPix (x0 + y, y0 + x, c);
        oledSetPix (x0 - y, y0 + x, c);
        oledSetPix (x0 + y, y0 - x, c);
        oledSetPix (x0 - y, y0 - x, c);
    }
}


static uint8_t oled_cmd_send(uint8_t byte)
{
    /*
     * Initiate transmission
     * Display address = 0x78
     */
    LL_I2C_HandleTransfer(I2C2, 0x78, LL_I2C_ADDRSLAVE_7BIT,
                          2, LL_I2C_MODE_AUTOEND,
                          LL_I2C_GENERATE_START_WRITE);
    /*
     * Send Control byte (Co = 0, D/C# = 0)
     */
    while (!LL_I2C_IsActiveFlag_TXIS(I2C2));
    LL_I2C_TransmitData8(I2C2, 0x00);
    /*
     * Send cmd
     */
    while (!LL_I2C_IsActiveFlag_TXIS(I2C2));
    LL_I2C_TransmitData8(I2C2, byte);
    /*
     * Check for end of transmission
     */
    while (LL_I2C_IsActiveFlag_TC(I2C2));
    return 0;
}

static uint8_t oled_data_send(uint8_t *byte, uint8_t size)
{
    uint8_t i;

    /*
     * Initiate transmission
     * Display address = 0x78
     */
    LL_I2C_HandleTransfer(I2C2, 0x78, LL_I2C_ADDRSLAVE_7BIT,
                          size + 1, LL_I2C_MODE_AUTOEND,
                          LL_I2C_GENERATE_START_WRITE);
    /*
     * Send Control byte (Co = 0, D/C# = 1)
     */
    while (!LL_I2C_IsActiveFlag_TXIS(I2C2));
    LL_I2C_TransmitData8(I2C2, 0x40);
    /*
     * Send data
     */
    for (i = 0; i < size; i++) {
        while (!LL_I2C_IsActiveFlag_TXIS(I2C2));
        LL_I2C_TransmitData8(I2C2, byte[i]);
    }
    /*
     * Check for end of transmission
     */
    while (LL_I2C_IsActiveFlag_TC(I2C2));
    return 0;
}

/*
 * Fill all display with one color
 */

void oledColor (enum color_t color)
{
    memset(gmem, color, GMEM_SIZE);
    return;
}

/*
 * It draws the background of a given movement.
 */

void oledFrame2 (void) {
    static uint8_t offset = 0;
    static uint16_t i;

    offset += SPEED;
    offset %= 9;

    memset(gmem, 0x01, GMEM_WIDTH);
    memset(gmem + GMEM_WIDTH, 0x00, GMEM_WIDTH);
    memset(gmem + GMEM_WIDTH * 3, 0x00, GMEM_WIDTH * 2);
    memset(gmem + GMEM_WIDTH * 6, 0x00, GMEM_WIDTH);
    memset(gmem + GMEM_WIDTH * 7, 0x01 << 7, GMEM_WIDTH);

    if (offset <= 4) {
        memset(gmem + GMEM_WIDTH * 2, 0x00, offset);
        memset(gmem + GMEM_WIDTH * 5, 0x00, offset);
    } else {
        memset(gmem + GMEM_WIDTH * 2, 0x01 << 5, offset - 4);
        memset(gmem + GMEM_WIDTH * 2 + (offset - 4), 0x0, 4);
        memset(gmem + GMEM_WIDTH * 5, 0x01 << 2, offset - 4);
        memset(gmem + GMEM_WIDTH * 5 + (offset - 4), 0x0, 4);
    }

    i = offset;

    for ( ; i <= GMEM_WIDTH - 9; i += 9) {
        memset(gmem + GMEM_WIDTH * 2 + i, 0x01 << 5, 5);
        memset(gmem + GMEM_WIDTH * 2 + i + 5, 0x0, 4);
        memset(gmem + GMEM_WIDTH * 5 + i, 0x01 << 2, 5);
        memset(gmem + GMEM_WIDTH * 5 + i + 5, 0x0, 4);
    }


    if (GMEM_WIDTH - i + 9 > 4) {
        memset(gmem + GMEM_WIDTH * 2 + i, 0x01 << 5, GMEM_WIDTH - i);
        memset(gmem + GMEM_WIDTH * 5 + i, 0x01 << 2, GMEM_WIDTH - i);
        if (GMEM_WIDTH - i - 5 > 0) {
            memset(gmem + GMEM_WIDTH * 2 + i + 5, 0x0, GMEM_WIDTH - i - 5);
            memset(gmem + GMEM_WIDTH * 5 + i + 5, 0x0, GMEM_WIDTH - i - 5);
        }
    } else {
        memset(gmem + GMEM_WIDTH * 2 + i, 0x01 << 5, GMEM_WIDTH - i);
        memset(gmem + GMEM_WIDTH * 5 + i, 0x01 << 2, GMEM_WIDTH - i);
    }

    return;
}

void oledUpdate (void)
{
    uint8_t i;

    for (i = 0; i < 8; i++) {
        // Set page start address (number of vertical byte)
        oled_cmd_send(0xB0 + i);
        // Set lower column number
        oled_cmd_send(0x00);
        // Set higher column number
        oled_cmd_send(0x10);
        // Send 128 pixels
        oled_data_send(&gmem[GMEM_WIDTH * i], GMEM_WIDTH);
    }
}


void oled_config(void)
{
    uint32_t delay = 2000000;
    // Config hardware
    oled_hw_config();

    // Wait a bit
    while (delay--);

    // Set display OFF
    oled_cmd_send(0xAE);

    // Set addressing mode
    // Vertical addressing mode
    oled_cmd_send(0x20);
    oled_cmd_send(0x10);

    // Vertical flip: 0xC0 - on, 0xC8 - off
    oled_cmd_send(0xC8); //c0

    // Set start line address 0-63
    oled_cmd_send(0x40);

    // Set contrast level: 0-255
    oled_cmd_send(0x81);
    oled_cmd_send(0xFF);

    // Horizontal flip: 0xA1 - on, 0xA0 - off
    oled_cmd_send(0xA0); //a1

    // Normal colo - 0xA6, Inverse - 0xA7
    oled_cmd_send(0xA6);

    // Number of active lines: 16 - 64
    oled_cmd_send(0xA8);
    oled_cmd_send(0x3F);

    // Render GRAM: 0xA4 - render, 0xA5 - black screen
    oled_cmd_send(0xA4);

    // Set display offset: 0-63
    oled_cmd_send(0xD3);
    oled_cmd_send(0x00);

    // Set display refresh rate:
    // 7-4 bits set osc freq, 0-3 sets resfresh ratio
    oled_cmd_send(0xD5);
    oled_cmd_send(0xF0);

    // Set flipping config
    oled_cmd_send(0xDA);
    oled_cmd_send(0x12);

    // Enable charge pump
    oled_cmd_send(0x8D);
    oled_cmd_send(0x14);

    // Turn on display
    oled_cmd_send(0xAF);

    oledColor(clBlack);
    oledUpdate();
    return;
}

void oledSetPix(int16_t x, int16_t y, enum color_t color)
{
    if (x >= GMEM_WIDTH || y >= GMEM_HEIGHT || x < 0 || y < 0)
        return;

    if (color != clBlack)
        gmem[GMEM_WIDTH * (y / 8) + x] |= 1 << (y % 8);
    else
        gmem[GMEM_WIDTH * (y / 8) + x] &= ~(1 << (y % 8));
    return;
}


void oledSetCursor (uint8_t x, uint8_t y)
{
    curX = x;
    curY = y;
    return;
}

/*
 * OLED putc works correctly for vertical Display
 */

void oled_putc(char ch)
{
    uint8_t i, j;
    uint8_t color;

    /*
     * NOTE: historically \r and \n are used together
     * in many instances as \r is used to move the carriage back
     * to the left side of terminal, \n moves the carriage down
     * Thereby, we must implement both of them
     */

    if (ch == '\n') {
        curX++;
        return;
    }

    if (ch == '\r') {
        curY = 0;
        return;
    }

    for (j = 0; j < font_desc.height; j++) {
        for (i = 0; i < font_desc.width; i++) {
            color = font_desc.get_pix(ch, i, j);
            oledSetPix(curX * (font_desc.height + 2) + j,
                         curY * (font_desc.width + 1) + i + deltaY, color);
        }
    }
    curY++;
    return;
}

void oledPic (const uint8_t *im, uint8_t thrsh)
{
    uint8_t i, j;

    /*
     * Render INVERTED (!!!) picture from im array:
     * if value is above thrsh then it is white
     * otherwise it is black
     */

    for (j = 0; j < GMEM_HEIGHT; j++) {
        for (i = 0; i < GMEM_WIDTH; i++) {
            oledSetPix(i, j, im[j * GMEM_WIDTH + i] < thrsh);
        }
    }
    return;
}

void oled_hw_config(void)
{
    /*
     * Clock on the I2C port and configure it
     */
    // SCL - GPIOB10
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_10,
                       LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_10,
                             LL_GPIO_OUTPUT_OPENDRAIN);
    LL_GPIO_SetAFPin_8_15(GPIOB, LL_GPIO_PIN_10, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOB, LL_GPIO_PIN_10,
                        LL_GPIO_SPEED_FREQ_HIGH);

    // SDA - GPIOB11
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_11,
                       LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_11,
                             LL_GPIO_OUTPUT_OPENDRAIN);
    LL_GPIO_SetAFPin_8_15(GPIOB, LL_GPIO_PIN_11, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOB, LL_GPIO_PIN_11,
                        LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * Clock on the I2C2 peripheral and set it up
     */
    LL_RCC_SetI2CClockSource(LL_RCC_I2C1_CLKSOURCE_SYSCLK);
    LL_I2C_Disable(I2C2);
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_I2C2);
    LL_I2C_DisableAnalogFilter(I2C2);
    LL_I2C_SetDigitalFilter(I2C2, 1);
    /*
     * Set I2C speed to 400 kHz, for further details refer
     * to lecture
     */
    LL_I2C_SetTiming(I2C2, 0x50330309);
    LL_I2C_DisableClockStretching(I2C2);
    LL_I2C_SetMasterAddressingMode(I2C2, LL_I2C_ADDRESSING_MODE_7BIT);
    LL_I2C_SetMode(I2C2, LL_I2C_MODE_I2C);
    LL_I2C_Enable(I2C2);

    return;
}
