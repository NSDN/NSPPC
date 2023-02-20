/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: System Function
 **/
#include "sys.h"

static uint16_t delay_count;

void sysClockConfig(uint8_t fMHz) {
    SB_SAFE_REG = 0x55;
    if (fMHz == 0)
        SB_DIV_REG = 0x1F;
    else if (fMHz >= 24)
        SB_DIV_REG = 0x00;
    else
        SB_DIV_REG = 24 / fMHz - 1;
    delay_count = 1000 * fMHz / 109;
}

void sysLed(uint8_t a, uint8_t b) {
    SB_IO_REG &= 0x80;
    if (a == 0)
        SB_IO_REG |= 0x01;
    if (b == 0)
        SB_IO_REG |= 0x02;
}

void sysBeep(uint16_t fHz) {
    if (fHz == 0)
        SB_BEEP_REG = 0x00;
    else if (fHz >= 6250)
        SB_BEEP_REG = 0x01;
    else
        SB_BEEP_REG = (uint8_t) (12500 / fHz) - 1;
}

void delay(uint16_t t) {
    for (uint16_t j = 0; j < t; j++)
        for (uint16_t i = 0; i < delay_count; i++) // 27.25us@4MHz
            __asm__("nop");
}
