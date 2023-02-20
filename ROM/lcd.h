/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: COG LCD Constant Definition and Driver Function
 **/
#ifndef __LCD_H_
#define __LCD_H_


#include <stdint.h>

#define LCD_WIDTH   384
#define LCD_HEIGHT  160

void lcdInit();
void lcdClear(uint8_t color);
void lcdLogo();
void lcdBmp(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t* bmp);
void lcdBmpC(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t* bmp);
void lcdBwp(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint8_t color, const uint8_t* buffer);
// 以下的color为前景背景组合参数, color[1:0]为前景, color[3:2]为背景
void lcdChar(uint16_t x, uint16_t y, uint8_t fid, uint8_t color, char c);
void lcdString(uint16_t x, uint16_t y, uint8_t fid, uint8_t color, const char* str);
void lcdStringC(uint16_t x, uint16_t y, uint8_t fid, uint8_t color, const char* str);

// 额外初始化函数
void lcdInitEx();
// 实现终端式文本输出
int lcdPrintf(const char* format, ...);

#endif
