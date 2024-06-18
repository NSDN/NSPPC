/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: User Code
 **/
#include "api.h"
void user_main();
void main() { user_main(); }

#include <string.h>

__sfr __at (0x11) SB_KEY_REG_1;
__sfr __at (0x12) SB_KEY_REG_2;
__sfr __at (0x13) SB_KEY_REG_3;

uint8_t get_key(uint8_t row) {
    if (row < 1 || row > 5)
        return 0;
    if (row <= 2)
        return row == 1 ? SB_KEY_REG_1 & 0xF : SB_KEY_REG_1 >> 4;
    else if (row <= 4)
        return row == 3 ? SB_KEY_REG_2 & 0xF : SB_KEY_REG_2 >> 4;
    else
        return SB_KEY_REG_3 & 0xF;
}

void lcd_draw(uint16_t x, uint16_t y, char c) {
    API->lcd.chr(x, y, 0, 0x3, c);
}

void lcd_print(uint16_t x, uint16_t y, const char* str) {
    API->lcd.str(x, y, 0, 0x3, str);
}

void user_main() {
    API->sys.clock(1);

    while (1) {
        if (SB_KEY_REG_3 & 0x20) {
            lcd_print(8, 8, "C.!");
        } else {
            lcd_print(8, 8, "C..");
        }

        lcd_draw(16, 32, get_key(1) + '0');
        lcd_draw(16, 40, get_key(2) + '0');
        lcd_draw(16, 48, get_key(3) + '0');
        lcd_draw(16, 56, get_key(4) + '0');
        lcd_draw(16, 64, get_key(5) + '0');

    }
}
