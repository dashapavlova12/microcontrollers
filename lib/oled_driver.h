#ifndef __OLED_DRIVER__
#define __OLED_DRIVER__

#define GMEM_WIDTH 128
#define GMEM_HEIGHT 64
#define GMEM_SIZE (GMEM_WIDTH * GMEM_HEIGHT / 8)

/*
 * Simple strucutre to define fonts
 * Refer to font5x7.c for example
 */
typedef struct {
    const uint8_t *font;
    uint8_t width;
    uint8_t height;
    uint8_t (*get_pix)(uint8_t, uint8_t, uint8_t);
} font_desc_t;

enum color_t {
    clBlack = 0x00,
    clWhite = 0xFF
};


/*
 * initialize display
 */
void oled_hw_config(void);
void oled_config(void);


/*
 * clear graphic memory
 */
void oledColor(enum color_t);

/*
 * flush graphic mem to display
 */
void oledUpdate(void);

/*
 * Put a pixel with a specified color
 */
void oledSetPix(int16_t x, int16_t y, enum color_t color);

/*
 * Put a character
 */
void oled_putc(char ch);

/*
 * Set current cursor
 */
void oledSetCursor (uint8_t x, uint8_t y);

/*
 * Print picture with a given threshold for b/w
 */
void oledPic(const uint8_t *im, uint8_t thrsh);


void drawRec (uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, enum color_t bndColor, enum color_t bodyColor);
void drawCircle (int x, int y, int r, int d, enum color_t bndColor, enum color_t bodyColor);
void drawEmptyRec (int16_t x1, uint8_t y1, int16_t x2, uint8_t y2, enum color_t bndColor);
void drawEmptyCircle (int16_t x0, int16_t y0, int16_t r, enum color_t c);
void drawLine(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, enum color_t c);
void oledFrame (void);
void oledFrame2 (void);

#endif
