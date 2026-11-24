#include "gsm_detect.h"

const int ADC_PIN = 34;
const int ALARM_PIN = 2;
const unsigned long SAMPLE_US = 125;

unsigned short buf[GSM_N];
float baseline = 0.0f;

void collectWindow(unsigned short *dst) {
  unsigned long next = micros();
  for (int i = 0; i < GSM_N; i++) {
    while ((long)(micros() - next) < 0) {}
    dst[i] = analogRead(ADC_PIN);
    next += SAMPLE_US;
  }
}

void setup() {
  Serial.begin(115200);
  pinMode(ALARM_PIN, OUTPUT);
  analogReadResolution(12);
  analogSetPinAttenuation(ADC_PIN, ADC_11db);
  collectWindow(buf);
  float s = 0.0f;
  for (int i = 0; i < GSM_N; i++) s += buf[i];
  baseline = s / GSM_N;
}

void loop() {
  collectWindow(buf);
  float level, frac;
  int d = classify_window(buf, baseline, &level, &frac);
  digitalWrite(ALARM_PIN, d == DET_GSM);
  Serial.printf("level=%.1f frac=%.3f state=%d\n", level, frac, d);
}
