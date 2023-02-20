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

__sfr __at (0x02) LCD_CMD_REG;
__sfr __at (0x03) LCD_DAT_REG;

void lcd_init() {
    LCD_CMD_REG = 0x38;
    LCD_CMD_REG = 0x08;
    LCD_CMD_REG = 0x06;
    LCD_CMD_REG = 0x01;
    LCD_CMD_REG = 0x0C;
    LCD_CMD_REG = 0x80;
}

void lcd_draw(uint8_t x, uint8_t y, char c) {
	LCD_CMD_REG = 0x80 + ((y > 0) ? 0x40 : 0) + x;
	LCD_DAT_REG = c;
}

void lcd_print(uint8_t x, uint8_t y, char* str) {
	uint8_t i; uint8_t tx = x, ty = y;
	for (i = 0; str[i] != '\0'; i++) {
		if (str[i] == '\n') {
			tx = x;
			ty = 1 - ty;
		} else {
			lcd_draw(tx + i, ty, str[i]);
		}
	}
}

void lcd_clear() {
	LCD_CMD_REG = 0x01;
	delay(10);
}

void user_main() {
    //print("Toggle Clock to 1MHz...\r\n");
    API->sys.clock(2);

    //print("Init LCD 1602...\r\n");
    lcd_init();

    //print("Print something...\r\n");
    lcd_print(1, 0, "Gensokyo World");
    lcd_print(1, 1, "Genshin Impact");

    print("User code OK.\r\n");
}
