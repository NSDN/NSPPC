/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer BIOS
 *
 * Part: Easter Egg
 **/
#include "egg.h"

#include "sys.h"

const static uint16_t PITCH[3][7] = {
    { 262, 294, 330, 349, 392, 440, 494 },
    { 523, 587, 659, 698, 784, 880, 988 },
    { 1047, 1175, 1319, 1397, 1568, 1760, 1976 }
};

#define Play(p, t) { sysBeep(PITCH[1][p - 1]); delay(t * 4 / 5); sysBeep(0); delay(t / 5); }

void egg() {
    sysLed(1, 0);
    Play(1, 1000);
    sysLed(0, 1);
    Play(5, 1000);
    sysLed(1, 0);
    Play(5, 1000);
    sysLed(0, 1);
    Play(4, 500);
    sysLed(1, 0);
    Play(3, 500);
    sysLed(0, 1);
    Play(2, 500);
    sysLed(1, 0);
    Play(1, 500);
    sysLed(0, 1);
    Play(2, 500);
    sysLed(1, 0);
    Play(3, 500);
    sysLed(0, 1);
    Play(1, 1000);

    sysLed(1, 0);
    sysBeep(0);
    delay(1000);

    sysLed(0, 1);
    Play(1, 1000);
    sysLed(1, 0);
    sysBeep(0);
    delay(500);

    sysLed(0, 1);
    Play(2, 500);
    sysLed(1, 0);
    Play(1, 1000);
    sysLed(0, 1);
    sysBeep(0);
    delay(1000);

    sysLed(1, 0);
    Play(1, 500);
    sysLed(0, 1);
    Play(2, 500);
    sysLed(1, 0);
    Play(3, 500);
    sysLed(0, 1);
    Play(4, 500);
    sysLed(1, 0);
    Play(2, 1000);
    sysLed(0, 1);
    sysBeep(0);
    delay(1000);
}