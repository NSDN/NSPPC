/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: Interface Export
 **/
#ifndef __NSPPC_API_H_
#define __NSPPC_API_H_


#include <stdint.h>

typedef struct {
    struct {
        void (*clock)(uint8_t fMHz);
        void (*led)(uint8_t a, uint8_t b);
        void (*beep)(uint16_t fHz);
        void (*delay)(uint16_t t);
    } sys;
    struct {
        void (*clear)(uint8_t color);
        void (*bmp)(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t* bmp);
        void (*bwp)(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint8_t color, const uint8_t* buffer);
        void (*chr)(uint16_t x, uint16_t y, uint8_t fid, uint8_t color, char c);
        void (*str)(uint16_t x, uint16_t y, uint8_t fid, uint8_t color, const char* str);
        int (*printf)(const char* format, ...);
    } lcd;
    struct {
        const uint8_t INIT_SD;
        const uint8_t INIT_USB;
        uint8_t (*init)(uint8_t mode);
        uint8_t (*mount)();
        uint8_t (*fopen)(const char* name);
        uint32_t (*fsize)();
        uint8_t (*fseek)(uint32_t pos);
        uint8_t (*fread)(uint8_t* buff, uint16_t length);
        uint8_t (*fclose)();
    } disk;
    void (*egg)();
} NSPPC;

#define API_ADDR 0x4000
#define API ((NSPPC*) (API_ADDR))

#define print(...) API->lcd.printf(__VA_ARGS__)
void delay(uint16_t t);

#endif
