/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: Enrty Port
 **/
#include "sys.h"
#include "lcd.h"
#include "api.h"
#include "disk.h"

#define LITE_BIOS

#include <string.h>

// user region at 0x8800, 30KiB
uint8_t __at (0x8800) USER_CODE[0x7800];

uint8_t res; uint32_t size;

void main() {
    sysBeep(0);
    sysLed(0, 0);
    sysClockConfig(8);
    delay(10);
    
    lcdInit();
    lcdInitEx();
    lcdClear(0);
    API->sys.delay(50); // Dummy call, and wait for screen

#ifdef LITE_BIOS
    sysLed(1, 0);

    res = diskInit(DISK_INIT_SD);
    if (res != DCMD_RET_SUCCESS)
        lcdPrintf("DI:%02Xh\r\n", res);

    res = diskMount();
    if (res != 0)
        lcdPrintf("DM:%02Xh\r\n", res);
    
    if (res == 0) {
        // load user code
        res = diskFopen("/USER.BIN");
        if (res != 0)
            lcdPrintf("DF:%02Xh\r\n", res);

        if (res == 0) {
            if (size > sizeof(USER_CODE))
                size = sizeof(USER_CODE);
            memset(USER_CODE, 0, sizeof(USER_CODE));
            res = diskFread(USER_CODE, size);
            diskFclose();
            if (res != 0)
                lcdPrintf("DR:%02Xh\r\n", res);
            
            if (res == 0)
                ((void (*)()) 0x8800)();
        }
    }
#else
    lcdLogo();
    delay(1000);

    sysLed(0, 1);
    lcdClear(0);
    lcdPrintf("NyaSama Pocket Personal Computer BIOS\r\n"); delay(500);
    lcdPrintf("The Yakumo PC Project, 2022\r\n\r\n"); delay(500);

    lcdPrintf("Init disk... ");
    res = diskInit(DISK_INIT_SD);
    if (res != DCMD_RET_SUCCESS)
        lcdPrintf("res: %02Xh\r\n", res);
    else
        lcdPrintf("OK.\r\n");
    delay(500);

    lcdPrintf("Mount disk... ");
    res = diskMount();
    if (res != 0)
        lcdPrintf("res: %02Xh\r\n", res);
    else
        lcdPrintf("OK.\r\n");
    delay(500);
    
    if (res == 0) {
        // load user code
        lcdPrintf("Load program... ");
        res = diskFopen("/USER.BIN");
        if (res != 0)
            lcdPrintf("res: %02Xh\r\n", res);
        else
            lcdPrintf("OK.\r\n");
        delay(500);

        if (res == 0) {
            lcdPrintf("Program size: %08Xh\r\n", size = diskFsize()); delay(500);
            if (size > sizeof(USER_CODE))
                size = sizeof(USER_CODE);
            memset(USER_CODE, 0, sizeof(USER_CODE));
            res = diskFread(USER_CODE, size);
            diskFclose();
            if (res == 0) {
                lcdPrintf("Booting...\r\n\r\n"); delay(500);
                ((void (*)()) 0x8800)();
            } else
                lcdPrintf("\r\nRead program error!\r\n");
        } else
            lcdPrintf("\r\nFile \"USER.BIN\" error!\r\n");
    } else
        lcdPrintf("\r\nDisk error!\r\n");
#endif
    delay(500);
    lcdPrintf("\r\nSYSTEM HALTED\r\n");
    while (1);
}
