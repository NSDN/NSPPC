/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: Built-in Font Data
 **/
#ifndef __FONT_H_
#define __FONT_H_


#include <stdint.h>


#define FONT_MAX_WIDTH   18 // 用于建立一个8像素高的局部缓冲区

const uint8_t* fontGet(uint8_t id);
void fontSize(const uint8_t* font, uint8_t* w, uint8_t* h);


#endif
