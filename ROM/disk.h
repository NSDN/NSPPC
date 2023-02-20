/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: Disk (CH376) Function
 **/
#ifndef __DISK_H_
#define __DISK_H_


#include "sys.h"

#define DISK_INT()  ((DISK_CMD_REG & 0x80) == 0)
#define DISK_BUSY() ((DISK_CMD_REG & 0x10) != 0)

#define DISK_INIT_SD        0x03
#define DISK_INIT_USB       0x04

#define DCMD_GET_IC_VER     0x01
#define DCMD_SET_BAUDRATE   0x02
#define DCMD_ENTER_SLEEP    0x03
#define DCMD_RESET_ALL      0x05
#define DCMD_CHECK_EXIST    0x06
#define DCMD_SET_SDO_INT    0x0B
#define DCMD_GET_FILE_SIZE  0x0C
#define DCMD_SET_USB_MODE   0x15
#define DCMD_GET_STATUS     0x22
#define DCMD_RD_USB_DATA0   0x27
#define DCMD_WR_HOST_DATA   0x2C
#define DCMD_WR_REQ_DATA    0x2D
#define DCMD_WR_OFS_DATA    0x2E
#define DCMD_SET_FILE_NAME  0x2F
#define DCMD_DISK_CONNECT   0x30
#define DCMD_DISK_MOUNT     0x31
#define DCMD_FILE_OPEN      0x32
#define DCMD_FILE_ENUM_GO   0x33
#define DCMD_FILE_CREATE    0x34
#define DCMD_FILE_ERASE     0x35
#define DCMD_FILE_CLOSE     0x36
#define DCMD_DIR_INFO_READ  0x37
#define DCMD_DIR_INFO_SAVE  0x38
#define DCMD_BYTE_LOCATE    0x39
#define DCMD_BYTE_READ      0x3A
#define DCMD_BYTE_RD_GO     0x3B
#define DCMD_BYTE_WRITE     0x3C
#define DCMD_BYTE_WR_GO     0x3D
#define DCMD_DISK_CAPACITY  0x3E
#define DCMD_DISK_QUERY     0x3F
#define DCMD_DIR_CREATE     0x40
#define DCMD_SEC_LOCATE     0x4A
#define DCMD_SEC_READ       0x4B
#define DCMD_SEC_WRITE      0x4C
#define DCMD_DISK_BOC_CMD   0x50
#define DCMD_DISK_READ      0x54
#define DCMD_DISK_RD_GO     0x55
#define DCMD_DISK_WRITE     0x56
#define DCMD_DISK_WR_GO     0x57

#define DCMD_RET_SUCCESS    0x51
#define DCMD_RET_ABORT      0x5F

#define DUSB_INT_SUCCESS    0x14
#define DUSB_INT_CONNECT    0x15
#define DUSB_INT_DISCONNECT 0x16
#define DUSB_INT_BUF_OVER   0x17
#define DUSB_INT_USB_READY  0x18
#define DUSB_INT_DISK_READ  0x1D
#define DUSB_INT_DISK_WRITE 0x1E
#define DUSB_INT_DISK_ERR   0x1F

#define DERR_OPEN_DIR       0x41
#define DERR_MISS_FILE      0x42
#define DERR_FOUND_NAME     0x43
#define DERR_DISK_DISCON    0x82
#define DERR_LARGE_SECTOR   0x84
#define DERR_TYPE_ERROR     0x92
#define DERR_BPB_ERROR      0xA1
#define DERR_DISK_FULL      0xB1
#define DERR_FDT_OVER       0xB2
#define DERR_FILE_CLOSE     0xB4

uint8_t diskInit(uint8_t mode);
uint8_t diskConnect();
uint8_t diskMount();
uint8_t diskFopen(const char* name);
uint32_t diskFsize();
uint8_t diskFseek(uint32_t pos);
uint8_t diskFread(uint8_t* buff, uint16_t length);
uint8_t diskFclose();


#endif
