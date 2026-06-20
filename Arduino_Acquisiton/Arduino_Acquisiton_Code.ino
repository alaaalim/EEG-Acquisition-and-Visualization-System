#include <Wire.h>
#include <Adafruit_ADS1X15.h>

Adafruit_ADS1115 ads;

void setup() {
  Serial.begin(9600);
  Wire.begin();
  if (!ads.begin()) {
    Serial.println("Failed to find ADS1115!");
    while (1);
  }
  ads.setGain(GAIN_ONE); // ±4.096V
}

void loop() {
  int16_t value = ads.readADC_SingleEnded(1);
  float voltage = value * 0.125 / 1000; // GAIN_ONE: 0.125 mV per bit
  Serial.print("Raw: "); Serial.print(value);
  Serial.print("\tVoltage: "); Serial.println(voltage);
  delay(100);
}