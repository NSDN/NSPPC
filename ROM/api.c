/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: Interface Export
 **/
#include "api.h"

#include "sys.h"
#include "lcd.h"
#include "egg.h"
#include "disk.h"

const static NSPPC __at (API_ADDR) nsppc = {
    .sys.beep = &sysBeep,
    .sys.clock = &sysClockConfig,
    .sys.delay = &delay,
    .sys.led = &sysLed,
    .lcd.bmp = &lcdBmp,
    .lcd.bwp = &lcdBwp,
    .lcd.chr = &lcdChar,
    .lcd.clear = &lcdClear,
    .lcd.printf = &lcdPrintf,
    .lcd.str = &lcdString,
    .disk.INIT_SD = DISK_INIT_SD,
    .disk.INIT_USB = DISK_INIT_USB,
    .disk.init = &diskInit,
    .disk.mount = &diskMount,
    .disk.fopen = &diskFopen,
    .disk.fsize = &diskFsize,
    .disk.fseek = &diskFseek,
    .disk.fread = &diskFread,
    .disk.fclose = &diskFclose,
    .egg = &egg
};
