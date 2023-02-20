/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: Interface Export
 **/
#include "api.h"

void delay(uint16_t t) {
    API->sys.delay(t);
}
