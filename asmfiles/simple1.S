// built on the libopencm3 template from 
// https://github.com/libopencm3/libopencm3-template
// code from here https://github.com/Moderin/Assembly_Blink/blob/master/start.S
// also helpful: https://www.youtube.com/watch?v=Zj4-fgRph1s

/*
.syntax unified
.thumb
.section .text
#include <libopencm3/stm32/gpio.h>
*/



.equ PORTC_ODR,     0x4001100C  @ .equ is like #define
.equ GPIOC_CHR,     0x40011004  @ These numbers are adresses of
.equ RCC_APB2ENR,   0x40021018  @ registers, that we will need

.equ LOOP_COMPARE,  0xfffff     @ How many times should wait: be called
                                @ before changing the LED state?


.cpu cortex-m3
.syntax unified

.thumb_func
.global _start
_start:
    stacktop: .word 0x20001000
    .word foobar

    
    
.thumb_func
.global foobar
foobar:
    ldr r1, = (1 << 4)       @ load to r1 value we want to write to RCC_APB2ENR
    ;ldr r2, = #RCC_APB2ENR   @ load to r2 RCC_APB2ENR address
    ;str r1, [r2]             @ store (1 << 4) in RCC_APB2ENR


.thumb_func
.global bobaz
bobaz:
    ldr r1, = (1 << 6)       
