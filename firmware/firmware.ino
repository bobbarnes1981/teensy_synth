#define USE_USBMIDI

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthWaveform       waveform1;      //xy=123,108
AudioSynthWaveformModulated waveformMod1;   //xy=219,279
AudioMixer4              mixer1;         //xy=433,133
AudioFilterStateVariable filter1;        //xy=443,250
AudioEffectEnvelope      envelope1;      //xy=622,238
AudioOutputI2S           i2s1;           //xy=790,212
AudioConnection          patchCord1(waveform1, 0, waveformMod1, 0);
AudioConnection          patchCord2(waveformMod1, 0, mixer1, 0);
AudioConnection          patchCord3(mixer1, 0, filter1, 0);
AudioConnection          patchCord4(filter1, 0, envelope1, 0);
AudioConnection          patchCord5(envelope1, 0, i2s1, 0);
AudioConnection          patchCord6(envelope1, 0, i2s1, 1);
AudioControlSGTL5000     sgtl5000_1;     //xy=693,421
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

short waveConvert[] = {
  WAVEFORM_SINE,
  WAVEFORM_TRIANGLE,
  WAVEFORM_SAWTOOTH,
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
}

void handleControlChange(byte channel, byte control, byte value) {
  switch(control) {
    case 102:
      if (value < 4) {
        waveformMod1.begin(waveConvert[value]); // oscillator waveform
      }
      break;

    case 103:
      filter1.frequency(FILTER_FREQ_MAX * (value * DIV127)); // filter frequency 0 - max
      break;

    case 104:
      filter1.resonance(((FILTER_RES_MAX - FILTER_RES_MIN) * (value * DIV127)) + FILTER_RES_MIN); // filter resonance
      break;

    case 105:
      envelope1.attack(ADSR_ATTACK_MAX * (value * DIV127)); // ADSR attack milliseconds
      break;

    case 106:
      envelope1.decay(ADSR_DECAY_MAX * (value * DIV127)); // ADSR decay milliseconds
      break;

    case 107:
      envelope1.sustain(value * DIV127); // ADSR sustain sustain level 0.0-1.0
      break;

    case 108:
      envelope1.release(ADSR_RELEASE_MAX * (value * DIV127)); // ADSR release milliseconds
      break;
      
    case 109:
      if (value < 4) {
        waveform1.begin(waveConvert[value]); // LFO waveform
      }
      break;
      
    case 110:
      waveform1.amplitude(value * DIV127); // LFO amplitude 0.0 - 1.0
      break;
      
    case 111:
      waveform1.frequency(LFO_FREQ_MAX * (value * DIV127)); // LFO frequency 0 - max
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
  
  envelope1.noteOn();
}

void setKeyOff() {
  envelope1.noteOff();
}

void handlePitchChange(byte channel, int bend) {
  // not handled
}
