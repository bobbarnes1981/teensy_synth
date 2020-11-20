#define LED 13

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthNoisePink      pink1;          //xy=158,384
AudioSynthWaveform       waveform2;      //xy=171,323
AudioSynthWaveform       waveform1;      //xy=172,266
AudioMixer4              mixer1;         //xy=321,256
AudioOutputI2S           i2s1;           //xy=476,266
AudioConnection          patchCord1(pink1, 0, mixer1, 2);
AudioConnection          patchCord2(waveform2, 0, mixer1, 1);
AudioConnection          patchCord3(waveform1, 0, mixer1, 0);
AudioConnection          patchCord4(mixer1, 0, i2s1, 0);
AudioConnection          patchCord5(mixer1, 0, i2s1, 1);
AudioControlSGTL5000     sgtl5000_1;     //xy=176,180
// GUItool: end automatically generated code

void setup() {
  Serial.begin(115200);
  AudioMemory(20);

  usbMIDI.setHandleControlChange(handleControlChange);

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
  
  pinMode(LED, OUTPUT);
}

void loop() {
  digitalWrite(LED, millis() % 1000 < 50);

  usbMIDI.read();
}

void handleControlChange(byte channel, byte control, byte value) {
  switch(control) {
    case 100:
      mixer1.gain(0, ((float)value / 127));
      break;
      
    case 101:
      mixer1.gain(1, ((float)value / 127));
      break;
      
    case 102:
      mixer1.gain(2, ((float)value / 127));
      break;
  }
}
