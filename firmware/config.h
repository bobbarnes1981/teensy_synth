#ifndef _CONFIG_H
#define _CONFIG_H

#define PCB_0V5

#define USE_USBMIDI

#define LED 13

#define NOTE_MIN 23
#define NOTE_MAX 108

#define LFO_FREQ_MAX 50

#define FILTER_FREQ_MAX 10000
#define FILTER_RES_MIN 0.7
#define FILTER_RES_MAX 5.0

#define ADSR_ATTACK_MAX 3000
#define ADSR_DECAY_MAX 3000
#define ADSR_RELEASE_MAX 3000

#define MULTIPLEX_MAX 0x09
#define MULTIPLEX_S0 2
#define MULTIPLEX_S1 3
#define MULTIPLEX_S2 4
#if defined(PCB_0V3) || defined(PCB_0V4) 
#define MULTIPLEX_S3 5
#endif
#if defined(PCB_0V5)
#define MULTIPLEX_S3 8
#endif
#define MULTIPLEX_IN A2
#define MULTIPLEX_MICROS 1000
#define MULTIPLEX_CHANGE 5

#define CC_OSC1_WAVE 102
#define CC_FILTER_FREQ 103
#define CC_FILTER_RES 104
#define CC_ADSR_A 105
#define CC_ADSR_D 106
#define CC_ADSR_S 107
#define CC_ADSR_R 108
#define CC_LFO1_WAVE 109
#define CC_LFO1_AMP 110
#define CC_LFO1_FREQ 111

#define CC_CHANNEL_ALLSOUNDOFF 120
#define CC_CHANNEL_RESETALLCONTROLLERS 121
#define CC_CHANNEL_LOCALCONTROL 122
#define CC_CHANNEL_ALLNOTESOFF 123

#if defined(PCB_0V3) || defined(PCB_0V4) 
#define MUX_FILTER_FREQ 0
#define MUX_FILTER_RES 1
#define MUX_ADSR_A 2
#define MUX_ADSR_D 3
#define MUX_ADSR_S 4
#define MUX_ADSR_R 5
#define MUX_OSC1_WAVE 6
#define MUX_LFO1_AMP 7
#define MUX_LFO1_FREQ 8
#define MUX_LFO1_WAVE 9
#endif
#if defined(PCB_0V5)
#define MUX_FILTER_FREQ 3
#define MUX_FILTER_RES 4
#define MUX_ADSR_A 2
#define MUX_ADSR_D 1
#define MUX_ADSR_S 0
#define MUX_ADSR_R 6
#define MUX_OSC1_WAVE 5
#define MUX_LFO1_AMP 8
#define MUX_LFO1_FREQ 7
#define MUX_LFO1_WAVE 9
#endif

#define RGB_R 5
#define RGB_G 20
#define RGB_B 21

#endif
