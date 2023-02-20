/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: SFRs Definition and System Function
 **/
#ifndef __SYS_H_
#define __SYS_H_


#include <stdint.h>

__sfr __at (0x00) DISK_DAT_REG;
__sfr __at (0x01) DISK_CMD_REG;

__sfr __at (0x10) SB_IO_REG;
__sfr __at (0x11) SB_KEY_REG_1;
__sfr __at (0x12) SB_KEY_REG_2;
__sfr __at (0x13) SB_KEY_REG_3;
__sfr __at (0x14) SB_BEEP_REG;

__sfr __at (0x20) LCD_CMD_REG;
__sfr __at (0x21) LCD_DAT_REG;

__sfr __at (0xAA) SB_SAFE_REG;
__sfr __at (0xFE) SB_DIV_REG;

void sysClockConfig(uint8_t fMHz);
void sysLed(uint8_t a, uint8_t b);
void sysBeep(uint16_t fHz);
void delay(uint16_t t);


#endif
