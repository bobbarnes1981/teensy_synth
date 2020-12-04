#define USE_USBMIDI

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthWaveform       waveform1;      //xy=343,231
AudioSynthNoiseWhite     noise1;         //xy=349,170
AudioSynthWaveformModulated waveformMod1;   //xy=439,402
AudioMixer4              mixer1;         //xy=653,256
AudioFilterStateVariable filter1;        //xy=663,373
AudioEffectEnvelope      envelope1;      //xy=842,361
AudioOutputI2S           i2s1;           //xy=1010,335
AudioConnection          patchCord1(waveform1, 0, waveformMod1, 0);
AudioConnection          patchCord2(noise1, 0, mixer1, 1);
AudioConnection          patchCord3(waveformMod1, 0, mixer1, 0);
AudioConnection          patchCord4(mixer1, 0, filter1, 0);
AudioConnection          patchCord5(filter1, 0, envelope1, 0);
AudioConnection          patchCord6(envelope1, 0, i2s1, 0);
AudioConnection          patchCord7(envelope1, 0, i2s1, 1);
AudioControlSGTL5000     sgtl5000_1;     //xy=913,544
// GUItool: end automatically generated code

#ifdef USE_MIDI
#include <MIDI.h>
#endif

const byte BUFFER_SIZE = 8;
static byte keyBuffer[BUFFER_SIZE];
static byte keyBufferPointer = 0;

const float frequencies[128] = { 8.176, 8.662, 9.177, 9.723, 10.301, 10.913, 11.562, 12.25, 12.978, 13.75, 14.568, 15.434, 16.352, 17.324, 18.354, 19.445, 20.602, 21.827, 23.125, 24.5, 25.957, 27.5, 29.135, 30.868, 32.703, 34.648, 36.708, 38.891, 41.203, 43.654, 46.249, 48.999, 51.913, 55, 58.27, 61.735, 65.406, 69.296, 73.416, 77.782, 82.407, 87.307, 92.499, 97.999, 103.826, 110, 116.541, 123.471, 130.813, 138.591, 146.832, 155.563, 164.814, 174.614, 184.997, 195.998, 207.652, 220, 233.082, 246.942, 261.626, 277.183, 293.665, 311.127, 329.628, 349.228, 369.994, 391.995, 415.305, 440, 466.164, 493.883, 523.251, 554.365, 587.33, 622.254, 659.255, 698.456, 739.989, 783.991, 830.609, 880, 932.328, 987.767, 1046.502, 1108.731, 1174.659, 1244.508, 1318.51, 1396.913, 1479.978, 1567.982, 1661.219, 1760, 1864.655, 1975.533, 2093.005, 2217.461, 2349.318, 2489.016, 2637.02, 2793.826, 2959.955, 3135.963, 3322.438, 3520, 3729.31, 3951.066, 4186.009, 4434.922, 4698.636, 4978.032, 5274.041, 5587.652, 5919.911, 6271.927, 6644.875, 7040, 7458.62, 7902.133, 8372.018, 8869.844, 9397.273, 9956.063, 10548.08, 11175.3, 11839.82, 12543.85 };

const float DIV127 = (1.0 / 127.0);

byte lastVelocity = 0;
bool localControlEnabled = true;
byte multiplexAddress = 0x00;
unsigned long lastMicros = 0;
int lastData[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

int lfoIndex = 0;
int oscIndex = 0;

#ifdef USE_MIDI
MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);
#endif

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
#define MULTIPLEX_S3 5  // 8
#define MULTIPLEX_IN A2
#define MULTIPLEX_MICROS 1000
#define MULTIPLEX_CHANGE 10

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

short oscConvert[] = {
  WAVEFORM_SINE,
  WAVEFORM_TRIANGLE,
  WAVEFORM_SAWTOOTH,
  WAVEFORM_PULSE
};

short lfoConvert[] = {
  WAVEFORM_SINE,
  WAVEFORM_TRIANGLE,
  WAVEFORM_SAWTOOTH,
  WAVEFORM_SAWTOOTH_REVERSE,
  WAVEFORM_PULSE
};

void setup() {
  Serial.begin(115200);
  AudioMemory(20);

  #ifdef USE_USBMIDI
  usbMIDI.setHandleControlChange(handleControlChange);
  usbMIDI.setHandleNoteOff(handleNoteOff);
  usbMIDI.setHandleNoteOn(handleNoteOn);
  usbMIDI.setHandlePitchChange(handlePitchChange);
  #endif

  #ifdef USE_MIDI
  MIDI.begin();

  MIDI.setHandleControlChange(handleControlChange);
  MIDI.setHandleNoteOff(handleNoteOff);
  MIDI.setHandleNoteOn(handleNoteOn);
  MIDI.setHandlePitchBend(handlePitchChange);
  #endif
  
  sgtl5000_1.enable();
  sgtl5000_1.volume(0.33);

  waveform1.begin(WAVEFORM_SINE);
  waveform1.pulseWidth(0.15);
  waveform1.frequency(0);
  waveform1.amplitude(0);

  waveformMod1.begin(WAVEFORM_SINE);

  mixer1.gain(0, 1.0);
  mixer1.gain(1, 0.0);
  mixer1.gain(2, 0.0);
  mixer1.gain(3, 0.0);

  envelope1.attack(10.5); // millis max 11880
  envelope1.decay(35);    // millis max 11880
  envelope1.sustain(1.0); // 0.0 - 1.0
  envelope1.release(300); // millis max 11880

  filter1.frequency(FILTER_FREQ_MAX); // 10khz
  filter1.resonance(FILTER_RES_MIN);  // 0.7 - 5.0
  
  pinMode(LED, OUTPUT);

  pinMode(MULTIPLEX_S0, OUTPUT);
  pinMode(MULTIPLEX_S1, OUTPUT);
  pinMode(MULTIPLEX_S2, OUTPUT);
  pinMode(MULTIPLEX_S3, OUTPUT);
  pinMode(MULTIPLEX_IN, INPUT);

  // TODO: pinmodes for audio pcb?

  // C4
  //handleNoteOn(0x00, 71, 0xFF);
}

void loop() {
  digitalWrite(LED, millis() % 1000 < 50);

  #ifdef USE_USBMIDI
  usbMIDI.read();
  #endif

  #ifdef USE_MIDI
  MIDI.read();
  #endif

  // possibly some sort of display?

  if (localControlEnabled) {
    unsigned long currentMicros = micros();
    if (currentMicros - lastMicros > MULTIPLEX_MICROS) {
      lastMicros = currentMicros;
      localControl();
    }
  }
}

void handleControlChange(byte channel, byte control, byte value) {
  switch(control) {

    // custom Oscillator Waveform message
    
    case CC_OSC1_WAVE:
      if (value < 4) {
        waveformMod1.begin(oscConvert[value]); // oscillator waveform
        mixer1.gain(0, 1.0);
        mixer1.gain(1, 0.0);
      }
      if (value == 4) {
        mixer1.gain(0, 0.0);
        mixer1.gain(1, 1.0);
      }
      break;

    // custom Filter messages

    case CC_FILTER_FREQ:
      filter1.frequency(FILTER_FREQ_MAX * (value * DIV127)); // filter frequency 0 - max
      break;

    case CC_FILTER_RES:
      filter1.resonance(((FILTER_RES_MAX - FILTER_RES_MIN) * (value * DIV127)) + FILTER_RES_MIN); // filter resonance
      break;

    // custom ADSR messages

    case CC_ADSR_A:
      envelope1.attack(ADSR_ATTACK_MAX * (value * DIV127)); // ADSR attack milliseconds
      break;

    case CC_ADSR_D:
      envelope1.decay(ADSR_DECAY_MAX * (value * DIV127)); // ADSR decay milliseconds
      break;

    case CC_ADSR_S:
      envelope1.sustain(value * DIV127); // ADSR sustain sustain level 0.0-1.0
      break;

    case CC_ADSR_R:
      envelope1.release(ADSR_RELEASE_MAX * (value * DIV127)); // ADSR release milliseconds
      break;

    // custom LFO messages
      
    case CC_LFO1_WAVE:
      if (value < 5) {
        waveform1.begin(lfoConvert[value]); // LFO waveform
      }
      break;
      
    case CC_LFO1_AMP:
      waveform1.amplitude(value * DIV127); // LFO amplitude 0.0 - 1.0
      break;
      
    case CC_LFO1_FREQ:
      waveform1.frequency(LFO_FREQ_MAX * (value * DIV127)); // LFO frequency 0 - max
      break;

    // channel messages

    case CC_CHANNEL_ALLSOUNDOFF:
      // All Sound Off. When All Sound Off is received all oscillators will turn off, and their volume envelopes are set to zero as soon as possible.
      allNotesOff();
      break;

    case CC_CHANNEL_RESETALLCONTROLLERS:
      // Reset All Controllers. When Reset All Controllers is received, all controller values are reset to their default values.
      break;

    case CC_CHANNEL_LOCALCONTROL:
      // Local Control. When Local Control is Off, all devices on a given channel will respond only to data received over MIDI. Played data, etc. will be ignored. Local Control On restores the functions of the normal controllers.
      switch (value) {
        case 0:
          localControlEnabled = false;
          break;

        case 127:
          localControlEnabled = true;
          break;
      }
      break;

    case CC_CHANNEL_ALLNOTESOFF:
      // All Notes Off. When an All Notes Off is received, all oscillators will turn off.
      allNotesOff();
      break;
  }
}

void handleNoteOff(byte channel, byte note, byte velocity) {
  if (note > NOTE_MIN && note < NOTE_MAX) {
    bufferDelKey(note);
  }
}

void handleNoteOn(byte channel, byte note, byte velocity) {
  if (note > NOTE_MIN && note < NOTE_MAX) {
    bufferAddKey(note, velocity);
  }
}

void bufferReset() {
  for (int i = 0; i < BUFFER_SIZE; i++) {
    keyBuffer[i] = 255;
  }

  keyBufferPointer = 0;
}

void bufferAddKey(byte note, byte velocity) {
  if (keyBufferPointer < BUFFER_SIZE) {
    lastVelocity = velocity;

    setKeyOn(note);

    keyBuffer[keyBufferPointer] = note;
    keyBufferPointer++;
  }
}

void bufferDelKey(byte note) {
  if (keyBufferPointer != 0) {
    for (byte i = 0; i < BUFFER_SIZE; i++) {
      // found note released
      if (keyBuffer[i] == note) {
        // move queue one step on
        for (byte j = i; j < keyBufferPointer - 1; j++) {
          keyBuffer[j] = keyBuffer[j+1];
        }
        keyBufferPointer--;
        // reset found note to invalid value
        keyBuffer[keyBufferPointer] = 255;
        if (keyBufferPointer != 0) {
          // play next last note
          setKeyOn(keyBuffer[keyBufferPointer - 1]);
        } else {
          // stop playing note
          setKeyOff();
        }
        return;
      }
    }
  }
}

void setKeyOn(byte note) {
  waveformMod1.frequency(frequencies[note]);

  float v = lastVelocity * DIV127;
  waveformMod1.amplitude(v);
  noise1.amplitude(v);
  
  envelope1.noteOn();
}

void setKeyOff() {
  envelope1.noteOff();
}

void handlePitchChange(byte channel, int bend) {
  // not handled
}

void allNotesOff() {
  bufferReset();
  setKeyOff();
}

void localControl() {
  // read multiplexer data
  int data = analogRead(MULTIPLEX_IN);

  // process multiplexer data

  // only process data if significant change occurred
  if (lastData[multiplexAddress] + MULTIPLEX_CHANGE < data || lastData[multiplexAddress] - MULTIPLEX_CHANGE > data) {
    
    data = data >> 3; // change to 0-127 insetad of 0-1023
  
    switch (multiplexAddress) {
      
      case 0:
        // 0x0 filter freq
        handleControlChange(0x00, CC_FILTER_FREQ, data);
        break;
        
      case 1:
        // 0x1 filter res
        handleControlChange(0x00, CC_FILTER_RES, data);
        break;
        
      case 2:
        // 0x2 adsr attack
        handleControlChange(0x00, CC_ADSR_A, data);
        break;
        
      case 3:
        // 0x3 adsr decay
        handleControlChange(0x00, CC_ADSR_D, data);
        break;
        
      case 4:
        // 0x4 adsr sustain
        handleControlChange(0x00, CC_ADSR_S, data);
        break;
        
      case 5:
        // 0x5 adsr release
        handleControlChange(0x00, CC_ADSR_R, data);
        break;
        
      case 6:
        // 0x6 osc1 waveform button
        if (data > 64 && lastData[multiplexAddress] < 256) {
          oscIndex++;
          if (oscIndex > 4) {
            oscIndex = 0;
          }
          handleControlChange(0x00, CC_OSC1_WAVE, oscIndex);
        }
        break;
        
      case 7:
        // 0x7 lfo1 amp
        handleControlChange(0x00, CC_LFO1_AMP, data);
        break;
        
      case 8:
        // 0x8 lfo1 freq
        handleControlChange(0x00, CC_LFO1_FREQ, data);
        break;
        
      case 9:
        // 0x9 lfo1 waveform button
        if (data > 64 && lastData[multiplexAddress] < 256) {
          lfoIndex++;
          if (lfoIndex > 4) {
            lfoIndex = 0;
          }
          handleControlChange(0x00, CC_LFO1_WAVE, lfoIndex);
        }
        break;
    }
    
    lastData[multiplexAddress] = data << 3;
  }
  
  // update multiplexer address
  multiplexAddress += 1;
  if (multiplexAddress > MULTIPLEX_MAX) {
    multiplexAddress = 0x00;
  }

  // output multiplexer address
  digitalWrite(MULTIPLEX_S0, multiplexAddress & 0x01);
  digitalWrite(MULTIPLEX_S1, multiplexAddress & 0x02);
  digitalWrite(MULTIPLEX_S2, multiplexAddress & 0x04);
  digitalWrite(MULTIPLEX_S3, multiplexAddress & 0x08);
}
