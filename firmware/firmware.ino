#define LED 13

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthWaveform       waveform1;      //xy=172,266
AudioOutputI2S           i2s1;           //xy=741,314
AudioConnection          patchCord1(waveform1, 0, i2s1, 0);
AudioConnection          patchCord2(waveform1, 0, i2s1, 1);
AudioControlSGTL5000     sgtl5000_1;     //xy=411,445
// GUItool: end automatically generated code

void setup() {
  Serial.begin(115200);
  AudioMemory(20);

  sgtl5000_1.enable();
  sgtl5000_1.volume(0.33);

  waveform1.begin(WAVEFORM_SAWTOOTH);
  waveform1.amplitude(0.75);
  waveform1.frequency(50);
  waveform1.pulseWidth(0.15);
  
  pinMode(LED, OUTPUT);
}

void loop() {
  digitalWrite(LED, millis() % 1000 < 50);

  int f = millis() % 450;
  waveform1.frequency(f + 50);
}
