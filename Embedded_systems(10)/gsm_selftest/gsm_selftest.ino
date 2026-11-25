#include "gsm_detect.h"

const int ADC_PIN = 34;
const int ALARM_PIN = 2;
const int PULSE_PIN = 25;               // jumper GPIO25 -> GPIO34
const unsigned long SAMPLE_US = 125;    // 8 kHz

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

void startPulses() {
  // 216.67 Hz, 12.5 % duty = 577 us pulse every 4.615 ms
#if defined(ESP_ARDUINO_VERSION_MAJOR) && ESP_ARDUINO_VERSION_MAJOR >= 3
  ledcAttach(PULSE_PIN, 216.67, 10);
  ledcWrite(PULSE_PIN, 128);
#else
  ledcSetup(0, 216.67, 10);
  ledcAttachPin(PULSE_PIN, 0);
  ledcWrite(0, 128);
#endif
}

void setup() {
  Serial.begin(115200);
  pinMode(ALARM_PIN, OUTPUT);
  pinMode(PULSE_PIN, OUTPUT);
  digitalWrite(PULSE_PIN, LOW);
  analogReadResolution(12);
  analogSetPinAttenuation(ADC_PIN, ADC_11db);
  delay(500);
  collectWindow(buf);                   // baseline taken with pulses OFF
  float s = 0.0f;
  for (int i = 0; i < GSM_N; i++) s += buf[i];
  baseline = s / GSM_N;
  Serial.printf("baseline=%.1f counts. Starting test pulses in 3 s\n", baseline);
  delay(3000);
  startPulses();
}

void loop() {
  collectWindow(buf);
  float level, frac;
  int d = classify_window(buf, baseline, &level, &frac);
  digitalWrite(ALARM_PIN, d == DET_GSM);
  Serial.printf("level=%.1f frac=%.3f state=%d\n", level, frac, d);
}
