#pragma once
#include <math.h>

#define GSM_N 480
#define GSM_K 13
#define LEVEL_THR_COUNTS 3.0f
#define FRAC_THR 0.08f

enum Detection { DET_NONE = 0, DET_LEVEL = 1, DET_GSM = 2 };

static float goertzel_power(const float *x, int n, int k) {
  float c = 2.0f * cosf(2.0f * (float)M_PI * k / n);
  float s1 = 0.0f, s2 = 0.0f;
  for (int i = 0; i < n; i++) {
    float s0 = x[i] + c * s1 - s2;
    s2 = s1;
    s1 = s0;
  }
  return s1 * s1 + s2 * s2 - c * s1 * s2;
}

static int classify_window(const unsigned short *raw, float baseline, float *level_out, float *frac_out) {
  static float ac[GSM_N];
  float mean = 0.0f;
  for (int i = 0; i < GSM_N; i++) mean += raw[i];
  mean /= GSM_N;
  float p_tot = 0.0f;
  for (int i = 0; i < GSM_N; i++) {
    ac[i] = raw[i] - mean;
    p_tot += ac[i] * ac[i];
  }
  float level = mean - baseline;
  float frac = 0.0f;
  if (p_tot > 0.0f) frac = (2.0f * goertzel_power(ac, GSM_N, GSM_K) / GSM_N) / p_tot;
  if (level_out) *level_out = level;
  if (frac_out) *frac_out = frac;
  if (level > LEVEL_THR_COUNTS && frac > FRAC_THR) return DET_GSM;
  if (level > LEVEL_THR_COUNTS) return DET_LEVEL;
  return DET_NONE;
}
