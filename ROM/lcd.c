/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: COG LCD Driver Function
 **/
#include "lcd.h"

#include <stdio.h>
#include <stdarg.h>
#include <string.h>

#include "sys.h"
#include "font.h"

static uint8_t lcd_buffer[FONT_MAX_WIDTH * 8 / 3];

void resetLcd(uint8_t r) {
    if (r)
        SB_IO_REG &= 0x03;
    else
        SB_IO_REG |= 0x80;
}

void writeCmd0(uint8_t cmd) {
    LCD_CMD_REG = cmd;
}

void writeCmd1(uint8_t cmd, uint8_t dat) {
    LCD_CMD_REG = cmd;
    LCD_DAT_REG = dat;
}

void writeCmd2(uint8_t cmd, uint16_t dat) {
    LCD_CMD_REG = cmd;
    LCD_DAT_REG = dat & 0xFF;
    LCD_DAT_REG = dat >> 8;
}

void writeCmd4(uint8_t cmd, uint32_t dat) {
    LCD_CMD_REG = cmd;
    LCD_DAT_REG = dat & 0xFF;
    LCD_DAT_REG = (dat >> 8) & 0xFF;
    LCD_DAT_REG = (dat >> 16) & 0xFF;
    LCD_DAT_REG = (dat >> 24) & 0xFF;
}

void lcdAddr(uint16_t x, uint16_t y, uint16_t w, uint16_t h) {
    uint16_t xs, ys, xe, ye;
    xs = x / 3;
    ys = y;
    xe = x / 3 + (w - 1) / 3;
    ye = y + h - 1;

    LCD_CMD_REG = 0x2A;
    LCD_DAT_REG = (xs >> 8) & 0xFF;
    LCD_DAT_REG = xs & 0xFF;
    LCD_DAT_REG = (xe >> 8) & 0xFF;
    LCD_DAT_REG = xe & 0xFF;
    LCD_CMD_REG = 0x2B;
    LCD_DAT_REG = (ys >> 8) & 0xFF;
    LCD_DAT_REG = ys & 0xFF;
    LCD_DAT_REG = (ye >> 8) & 0xFF;
    LCD_DAT_REG = ye & 0xFF;
}

void lcdInit() {
    resetLcd(1);
    delay(10);
    resetLcd(0);
    delay(10);

    writeCmd0(0x11);
    writeCmd2(0xC0, 0x012C);
    writeCmd1(0xC3, 0x02);
    writeCmd1(0xC4, 0x07);
    writeCmd1(0xD0, 0xD0);
    writeCmd1(0xB5, 0x00);
    writeCmd0(0x38); // 0x38: Gray, 0x39: BW
    writeCmd1(0x3A, 0x02); // 0x03: Gray-16, 0x02: Gray-4 or BW
    writeCmd1(0x36, 0x00);
    writeCmd1(0xB0, 0x9F);
    writeCmd0(0x20);
    writeCmd4(0xF0, 0x13131313); // 80Hz
    writeCmd4(0xF1, 0x13131313); // 80Hz
    writeCmd1(0xB1, 0x00);
    writeCmd0(0x29);

    delay(10);
}

const static uint8_t color_to_rawdat[3][4] = {
    { 0x00, 0x40, 0x80, 0xE0 },
    { 0x00, 0x08, 0x10, 0x1C },
    { 0x00, 0x01, 0x02, 0x03 }
};

const static uint8_t rawdat_mask[3] = { 0xE0, 0x1C, 0x03 };

void lcdClear(uint8_t color) {
    uint8_t buf;
    color &= 0x03;

    buf = color_to_rawdat[0][color] | color_to_rawdat[1][color] | color_to_rawdat[2][color];
    lcdAddr(0, 0, LCD_WIDTH, LCD_HEIGHT);
    LCD_CMD_REG = 0x2C;
    for (uint8_t i = 0; i < LCD_HEIGHT; i++)
        for (uint8_t j = 0; j < LCD_WIDTH / 3; j++)
            LCD_DAT_REG = buf;
}

void lcdLogo() {
    const uint8_t* logo;
    uint8_t w, h;

    logo = fontGet(0xFF);
    fontSize(logo, &w, &h);

    lcdBmpC(LCD_WIDTH / 2, LCD_HEIGHT / 3, w, h, logo);
    lcdStringC(LCD_WIDTH / 2, LCD_HEIGHT - 32, 0, 0x3, "now booting...");
}

void lcdBmp(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t* bmp) {
    uint8_t buf, tmp, c;
    
    lcdAddr(x, y, w, h);
    LCD_CMD_REG = 0x2C;

    buf = 0; c = 0;
    for (uint16_t i = 0; i < w * h; i++) {
        tmp = bmp[i / 4] >> ((3 - i % 4) * 2);
        buf |= color_to_rawdat[c][tmp & 0x3];
        c++;
        if (c >= 3) {
            LCD_DAT_REG = buf;
            buf = 0; c = 0;
        }
    }
}

void lcdBmpC(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t* bmp) {
    lcdBmp(x - w / 2, y - h / 2, w, h, bmp);
}

void lcdBwp(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint8_t color, const uint8_t* buffer) {
    uint8_t pos, off;
    uint16_t f;

    color &= 0xF;

    if (x > LCD_WIDTH - w) { x = 0; y += h; }

    for (uint8_t seg = 0; seg < h / 8; seg++) {
        for (uint8_t col = 0; col < w; col++) {
            off = col % 3;
            f = w * seg + col;
            for (uint8_t row = 0; row < 8; row++) {
                pos = (w * row + col) / 3;
                lcd_buffer[pos] &= ~rawdat_mask[off];
                lcd_buffer[pos] |= color_to_rawdat[off][
                    (buffer[f] & (1 << row)) ? color & 0x3 : color >> 2
                ];
            }
        }
        lcdAddr(x, y + seg * 8, w, 8);
        LCD_CMD_REG = 0x2C;
        for (uint8_t i = 0; i < w * 8 / 3; i++)
            LCD_DAT_REG = lcd_buffer[i];
    }
}

void lcdChar(uint16_t x, uint16_t y, uint8_t fid, uint8_t color, char c) {
    const uint8_t* font;
    uint8_t f_w, f_h;
    
    c -= ' ';
    font = fontGet(fid);
    fontSize(font, &f_w, &f_h);
    lcdBwp(x, y, f_w, f_h, color, &font[c * f_w * f_h / 8]);
}

void lcdString(uint16_t x, uint16_t y, uint8_t fid, uint8_t color, const char* str) {
    const uint8_t* font;
    uint8_t f_w, f_h, pos;

    font = fontGet(fid);
    fontSize(font, &f_w, &f_h);

    pos = 0;
    while (str[pos] != '\0') {
        if (y > LCD_HEIGHT - f_h) { x = 0; y = 0; lcdClear(color >> 2); }
        switch (str[pos]) {
            case '\n':
                x = 0; y += f_h;
                break;
            default:
                lcdChar(x, y, fid, color, str[pos]);
                x += f_w;
                if (x >= LCD_WIDTH - f_w) {
                    x = 0;
                    y += f_h;
                }
                break;
        }
        pos++;
    }
}

void lcdStringC(uint16_t x, uint16_t y, uint8_t fid, uint8_t color, const char* str) {
    uint8_t f_w, f_h, len;

    fontSize(fontGet(fid), &f_w, &f_h);
    len = strlen(str);
    
    lcdString(x - len * f_w / 2, y - f_h / 2, fid, color, str);
}

/* ---------------- Implemention of PrintFormat Function  ---------------- */
#define FONT_DEFAULT 0
#define COLOR_DEFAULT 0x3
static uint8_t color;
static uint16_t cur_x, cur_y;
static char io_buffer[256];
#define OFFSET_X 12
#define OFFSET_Y 0
#define TEXT_W 64
#define TEXT_H 20
static char text_buff[TEXT_H][TEXT_W];

typedef struct {
    int16_t x;
    int16_t y;
    uint8_t color;
} ColorInfo;

#define RING_CAP 20
typedef struct {
    ColorInfo buff[RING_CAP];
    uint8_t count;
    uint8_t pos;
} ColorBuffer;

void colorPut(ColorBuffer* this, uint16_t x, uint16_t y, uint32_t color) {
    if (this->count < RING_CAP) {
        this->buff[this->count].x = x;
        this->buff[this->count].y = y;
        this->buff[this->count].color = color;
        this->count += 1;
    } else {
        memmove(&this->buff[0], &this->buff[1], sizeof(ColorInfo) * (RING_CAP - 1));
        this->buff[RING_CAP - 1].x = x;
        this->buff[RING_CAP - 1].y = y;
        this->buff[RING_CAP - 1].color = color;
    }
}

void colorGet(ColorBuffer* this, uint8_t r, uint8_t c, uint32_t* color) {
    if (this->pos < this->count)
        if (this->buff[this->pos].x == c && this->buff[this->pos].y == r) {
            this->buff[this->pos].y -= 1;
            *color = this->buff[this->pos].color;
            this->pos += 1;
        }
}

void colorDel(ColorBuffer* this) {
    if (this->buff[0].y < 0 && this->count > 1) {
        this->count -= 1;
        memmove(&this->buff[0], &this->buff[1], sizeof(ColorInfo) * (this->count));
    }
}

static ColorBuffer color_buff;

void lcdInitEx() {
    color = COLOR_DEFAULT;
    cur_x = 0; cur_y = 0;
    memset(text_buff, ' ', TEXT_W * TEXT_H);
    memset(&color_buff, 0, sizeof(color_buff));
}

int lcdPrintf(const char* format, ...) {
    va_list args;
    va_start(args, format);
    int req = vsprintf(io_buffer, format, args);
    va_end(args);

    uint16_t cnt = 0, siz = strlen(io_buffer);
    const uint8_t* font = fontGet(FONT_DEFAULT);
    uint8_t f_w, f_h;
    fontSize(font, &f_w, &f_h);

    while (cnt < siz) {
        if (cur_y > LCD_HEIGHT - f_h) {
            cur_x = 0; cur_y -= f_h;
            memmove(text_buff[0], text_buff[1], TEXT_W * (TEXT_H - 1));
            memset(text_buff[TEXT_H - 1], ' ', TEXT_W);
            color_buff.pos = 0;
            uint32_t color = COLOR_DEFAULT;
            for (uint8_t r = 0; r < TEXT_H; r++)
                for (uint8_t c = 0; c < TEXT_W; c++) {
                    colorGet(&color_buff, r, c, &color);
                    lcdChar(c * f_w, r * f_h, FONT_DEFAULT, color, text_buff[r][c]);
                }
            colorDel(&color_buff);
        }
        switch (io_buffer[cnt]) {
        case '\x1B': // ESC, reset all
            color = COLOR_DEFAULT;
            colorPut(&color_buff, cur_x / f_w, cur_y / f_h, color);

            cur_x = 0; cur_y = 0;
            lcdClear(color >> 2);
            memset(text_buff, ' ', sizeof(text_buff));
            memset(&color_buff, 0, sizeof(color_buff));
            break;
        case '\x18': // CAN, reset color
            color = COLOR_DEFAULT;
            colorPut(&color_buff, cur_x / f_w, cur_y / f_h, color);
            break;
        case '\x14': // DC4, back color
            cnt += 1;
            color &= 0x3;
            color |= ((io_buffer[cnt] & 0x3) << 2);
            colorPut(&color_buff, cur_x / f_w, cur_y / f_h, color);
            break;
        case '\x12': // DC2, fore color
            cnt += 1;
            color &= 0xC;
            color |= (io_buffer[cnt] & 0x3);
            colorPut(&color_buff, cur_x / f_w, cur_y / f_h, color);
            break;
        case '\r':
            cur_x = 0;
            break;
        case '\n':
            cur_y += f_h;
            break;
        case '\f':
            cur_x = 0; cur_y = 0;
            lcdClear(color >> 2);
            memset(text_buff, ' ', sizeof(text_buff));
            memset(&color_buff, 0, sizeof(color_buff));
            break;
        case '\b':
            if (cur_x >= f_w)
                cur_x -= f_w;
            else {
                if (cur_y >= f_h) {
                    cur_x = LCD_WIDTH - f_w;
                    cur_y -= f_h;
                } else {
                    cur_x = 0;
                    cur_y = 0;
                }
            }
            lcdChar(cur_x, cur_y, FONT_DEFAULT, color, ' ');
            text_buff[cur_y / f_h][cur_x / f_w] = ' ';
            break;
        default:
            lcdChar(cur_x, cur_y, FONT_DEFAULT, color, io_buffer[cnt]);
            text_buff[cur_y / f_h][cur_x / f_w] = io_buffer[cnt];
            cur_x += f_w;
            if (cur_x >= LCD_WIDTH - f_w) {
                cur_x = 0;
                cur_y += f_h;
            }
            break;
        }
        cnt += 1;
    }

    return req;
}