#define LED 13

// TODO: retro synth sounds - saw, tri, square, sin, bitcrush, noise

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthNoisePink      pink1;          //xy=101,312
AudioSynthWaveform       waveform1;      //xy=109,222
AudioSynthWaveform       waveform2;      //xy=110,267
AudioMixer4              mixer1;         //xy=321,256
AudioFilterStateVariable filter1;        //xy=454,257
AudioEffectBitcrusher    bitcrusher1;    //xy=568,452
AudioEffectEnvelope      envelope1;      //xy=593,556
AudioOutputI2S           i2s1;           //xy=823,562
AudioConnection          patchCord1(pink1, 0, mixer1, 2);
AudioConnection          patchCord2(waveform1, 0, mixer1, 0);
AudioConnection          patchCord3(waveform2, 0, mixer1, 1);
AudioConnection          patchCord4(mixer1, 0, filter1, 0);
AudioConnection          patchCord5(filter1, 0, bitcrusher1, 0);
AudioConnection          patchCord6(bitcrusher1, envelope1);
AudioConnection          patchCord7(envelope1, 0, i2s1, 0);
AudioConnection          patchCord8(envelope1, 0, i2s1, 1);
AudioControlSGTL5000     sgtl5000_1;     //xy=110,173
// GUItool: end automatically generated code

const byte BUFFER_SIZE = 8;
const float frequencies[128] = {8.176, 8.662, 9.177, 9.723, 10.301, 10.913, 11.562, 12.25, 12.978, 13.75, 14.568, 15.434, 16.352, 17.324, 18.354, 19.445, 20.602, 21.827, 23.125, 24.5, 25.957, 27.5, 29.135, 30.868, 32.703, 34.648, 36.708, 38.891, 41.203, 43.654, 46.249, 48.999, 51.913, 55, 58.27, 61.735, 65.406, 69.296, 73.416, 77.782, 82.407, 87.307, 92.499, 97.999, 103.826, 110, 116.541, 123.471, 130.813, 138.591, 146.832, 155.563, 164.814, 174.614, 184.997, 195.998, 207.652, 220, 233.082, 246.942, 261.626, 277.183, 293.665, 311.127, 329.628, 349.228, 369.994, 391.995, 415.305, 440, 466.164, 493.883, 523.251, 554.365, 587.33, 622.254, 659.255, 698.456, 739.989, 783.991, 830.609, 880, 932.328, 987.767, 1046.502, 1108.731, 1174.659, 1244.508, 1318.51, 1396.913, 1479.978, 1567.982, 1661.219, 1760, 1864.655, 1975.533, 2093.005, 2217.461, 2349.318, 2489.016, 2637.02, 2793.826, 2959.955, 3135.963, 3322.438, 3520, 3729.31, 3951.066, 4186.009, 4434.922, 4698.636, 4978.032, 5274.041, 5587.652, 5919.911, 6271.927, 6644.875, 7040, 7458.62, 7902.133, 8372.018, 8869.844, 9397.273, 9956.063, 10548.08, 11175.3, 11839.82, 12543.85};

byte globalNote = 0;
byte globalVelocity = 0;

int octave = 0;
const float DIV127 = (1.0 / 127.0);

float detuneFactor = 1;

short waveConvert[] = {
  WAVEFORM_SINE,
  WAVEFORM_TRIANGLE,
  WAVEFORM_SAWTOOTH,
  WAVEFORM_PULSE
};

void setup() {
  Serial.begin(115200);
  AudioMemory(20);

  usbMIDI.setHandleControlChange(handleControlChange);
  usbMIDI.setHandleNoteOff(handleNoteOff);
  usbMIDI.setHandleNoteOn(handleNoteOn);

  sgtl5000_1.enable();
  sgtl5000_1.volume(0.33);

  waveform1.begin(WAVEFORM_SAWTOOTH);
  waveform1.amplitude(0.75);
  waveform1.frequency(82.41);
  waveform1.pulseWidth(0.15);

  waveform2.begin(WAVEFORM_SAWTOOTH);
  waveform2.amplitude(0.75);
  waveform2.frequency(123);
  waveform2.pulseWidth(0.15);

  pink1.amplitude(1.0);

  mixer1.gain(0, 1.0);
  mixer1.gain(1, 1.0);
  mixer1.gain(2, 1.0);

  envelope1.attack(0);
  envelope1.decay(0);
  envelope1.sustain(1);
  envelope1.release(500);
  
  pinMode(LED, OUTPUT);
}

void loop() {
  digitalWrite(LED, millis() % 1000 < 50);

  usbMIDI.read();
}

void handleControlChange(byte channel, byte control, byte value) {
  switch(control) {
    case 100:
      mixer1.gain(0, (value * DIV127));
      break;
      
    case 101:
      mixer1.gain(1, (value * DIV127));
      break;
      
    case 102:
      mixer1.gain(2, (value * DIV127));
      break;

    case 103:
      switch(value) {
        case 0:
          octave = 24;
          break;
        case 1:
          octave = 12;
          break;
        case 2:
          octave = 0;
        break;
        case 3:
          octave = -12;
          break;
        case 4:
          octave = -24;
          break;
      }
      break;

    case 104:
      envelope1.attack(3000 * (value * DIV127)); // max 3 seconds
      break;
      
    case 105:
      envelope1.decay(3000 * (value * DIV127)); // max 3 seconds
      break;
      
    case 106:
      envelope1.sustain((value * DIV127)); // volume
      break;
      
    case 107:
      envelope1.release(3000 * (value * DIV127)); // max 3 seconds
      break;

    case 108:
      if (value < 4) {
        waveform1.begin(waveConvert[value]);
      }
      break;

    case 109:
      if (value < 4) {
        waveform2.begin(waveConvert[value]);
      }
      break;

    case 110:
      detuneFactor = 1 - (0.5 * (value * DIV127));
      secondOscSet(globalNote);
      break;

    case 111:
      filter1.frequency(10000 * (value * DIV127));
      break;

    case 112:
      filter1.resonance((4.3 * (value * DIV127)) + 0.7);
      break;
      
      
    case 120:
      bitcrusher1.bits(16 * (value * DIV127));
      break;
      
    case 121:
      bitcrusher1.sampleRate(44100 * (value * DIV127));
      break;
  }
}

void handleNoteOff(byte channel, byte note, byte velocity) {
  if (note > 23 && note < 108) { // 23 is C0
    bufferKey(note, false);
  }
}

void handleNoteOn(byte channel, byte note, byte velocity) {
  if (note > 23 && note < 108) { // 23 is C0
    globalNote = note;
    globalVelocity = velocity;
    bufferKey(note, true);
  }
}

// keep track of keys to return to other note - mono synth - last note priority
void bufferKey(byte note, bool keyDown) {
  static byte buff[BUFFER_SIZE];
  static byte buffPointer = 0;

  if (keyDown == true && buffPointer < BUFFER_SIZE) {
    keyOn(note);
    buff[buffPointer] = note;
    buffPointer++;
    return;
  }
  
  if (keyDown == false && buffPointer != 0) {
    for (byte i = 0; i < BUFFER_SIZE; i++) {
      // found note released
      if (buff[i] == note) {
        // move queue one step on
        for (byte j = i; j < buffPointer - 1; j++) {
          buff[j] = buff[j+1];
        }
        buffPointer--;
        // reset found note to invalid value
        buff[buffPointer] = 255;
        if (buffPointer != 0) {
          // play next last note
          keyOn(buff[buffPointer - 1]);
          return;
        } else {
          keyOff();
          return;
        }
      }
    }
  }
}

void keyOn(byte note) {
  waveform1.frequency(frequencies[note]);
  secondOscSet(note);

  float v = globalVelocity * DIV127;
  waveform1.amplitude(v);
  waveform2.amplitude(v);
  pink1.amplitude(v);

  envelope1.noteOn();
}

void keyOff() {
  envelope1.noteOff();
}

void secondOscSet(byte note) {
  waveform2.frequency(frequencies[note + octave] * detuneFactor);
}
