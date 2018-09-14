//
// Created by Mike Mitterer on 14.09.18.
//

#ifndef CONTROLNANI_WIFI_H
#define CONTROLNANI_WIFI_H

#include <Arduino.h>

void showMacAddress();
void setupWIFI(const String& ssid, const String& pw, const uint8_t wifiIndicatorLED);

/// Sendet den Request
/// Sample:
///     https://github.com/esp8266/Arduino/blob/master/doc/esp8266wifi/client-examples.md
///
void sendGetRequest(const String& host, const String& url, const uint16_t port);

#endif //CONTROLNANI_WIFI_H
