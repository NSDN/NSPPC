/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: Disk (CH376) Function
 **/
#include "disk.h"

uint16_t i; uint8_t req;

#define BYTE(v, i) ((uint8_t*) &(v))[i]

#define WAIT_UNTIL(errno) do { \
    i = 0; while (!DISK_INT()) { \
        i++; \
        if (i > 2000) { \
            delay(1); \
            if (i > 5000) \
                return errno; \
        } \
    } \
} while (0)

uint8_t diskInit(uint8_t mode) {
    DISK_CMD_REG = DCMD_RESET_ALL;          __asm__("nop");
    delay(50);

    DISK_CMD_REG = DCMD_SET_USB_MODE;       __asm__("nop");
    DISK_DAT_REG = mode;                    __asm__("nop");
    delay(1);
    return DISK_DAT_REG;
}

uint8_t diskConnect() {
    DISK_CMD_REG = DCMD_DISK_CONNECT;       __asm__("nop");
    WAIT_UNTIL(0xFF);
    DISK_CMD_REG = DCMD_GET_STATUS;         __asm__("nop");
    req = DISK_DAT_REG;                     __asm__("nop");
    if (req != DUSB_INT_SUCCESS)
        return req;

    return 0;
}

uint8_t diskMount() {
    DISK_CMD_REG = DCMD_DISK_MOUNT;         __asm__("nop");
    WAIT_UNTIL(0xFF);
    DISK_CMD_REG = DCMD_GET_STATUS;         __asm__("nop");
    req = DISK_DAT_REG;                     __asm__("nop");
    if (req != DUSB_INT_SUCCESS)
        return req;
    
    return 0;
}

uint8_t diskFopen(const char* name) {
    DISK_CMD_REG = DCMD_SET_FILE_NAME;      __asm__("nop");
    for (i = 0; name[i] != '\0'; i++) {
        DISK_DAT_REG = name[i];             __asm__("nop");
    }
    DISK_DAT_REG = '\0';                    __asm__("nop");

    DISK_CMD_REG = DCMD_FILE_OPEN;          __asm__("nop");
    WAIT_UNTIL(0xFF);
    DISK_CMD_REG = DCMD_GET_STATUS;         __asm__("nop");
    req = DISK_DAT_REG;                     __asm__("nop");
    if (req != DUSB_INT_SUCCESS)
        return req;
    
    return 0;
}

uint32_t diskFsize() {
    DISK_CMD_REG = DCMD_GET_FILE_SIZE;      __asm__("nop");
    DISK_DAT_REG = 0x68;                    __asm__("nop");
    
    uint32_t size = 0;
    BYTE(size, 0) = DISK_DAT_REG;           __asm__("nop");
    BYTE(size, 1) = DISK_DAT_REG;           __asm__("nop");
    BYTE(size, 2) = DISK_DAT_REG;           __asm__("nop");
    BYTE(size, 3) = DISK_DAT_REG;           __asm__("nop");
    return size;
}

uint8_t diskFseek(uint32_t pos) {
    DISK_CMD_REG = DCMD_BYTE_READ;          __asm__("nop");
    DISK_DAT_REG = BYTE(pos, 0);            __asm__("nop");
    DISK_DAT_REG = BYTE(pos, 1);            __asm__("nop");
    DISK_DAT_REG = BYTE(pos, 2);            __asm__("nop");
    DISK_DAT_REG = BYTE(pos, 3);            __asm__("nop");
    WAIT_UNTIL(0xFF);
    DISK_CMD_REG = DCMD_GET_STATUS;         __asm__("nop");
    req = DISK_DAT_REG;                     __asm__("nop");
    if (req != DUSB_INT_SUCCESS)
        return req;

    return 0;
}

uint8_t diskFread(uint8_t* buff, uint16_t length) {
    DISK_CMD_REG = DCMD_BYTE_READ;          __asm__("nop");
    DISK_DAT_REG = BYTE(length, 0);         __asm__("nop");
    DISK_DAT_REG = BYTE(length, 1);         __asm__("nop");
    WAIT_UNTIL(0xFF);
    DISK_CMD_REG = DCMD_GET_STATUS;         __asm__("nop");
    req = DISK_DAT_REG;                     __asm__("nop");
    if (req == DUSB_INT_SUCCESS)
        return 0;
    if (req != DUSB_INT_DISK_READ)
        return req;

    while (length > 0) {
        DISK_CMD_REG = DCMD_RD_USB_DATA0;   __asm__("nop");
        i = DISK_DAT_REG;                   __asm__("nop");
        while (i > 0) {
            *buff = DISK_DAT_REG;           __asm__("nop");
            buff++;
            i--;
            length--;
        }

        DISK_CMD_REG = DCMD_BYTE_RD_GO;     __asm__("nop");
        WAIT_UNTIL(0xFF);
        DISK_CMD_REG = DCMD_GET_STATUS;     __asm__("nop");
        req = DISK_DAT_REG;                 __asm__("nop");
        if (req == DUSB_INT_SUCCESS)
            return 0;
        if (req != DUSB_INT_DISK_READ)
            return req;
    }

    return 0;
}

uint8_t diskFclose() {
    DISK_CMD_REG = DCMD_FILE_CLOSE;         __asm__("nop");
    DISK_DAT_REG = 0x00;                    __asm__("nop");
    WAIT_UNTIL(0xFF);
    DISK_CMD_REG = DCMD_GET_STATUS;         __asm__("nop");
    req = DISK_DAT_REG;                     __asm__("nop");
    if (req != DUSB_INT_SUCCESS)
        return req;
    
    return 0;
}
