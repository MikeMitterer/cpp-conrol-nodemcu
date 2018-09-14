//
// Created by Mike Mitterer on 14.09.18.
//

#include "callbacks.h"
#include <Arduino.h>

enum class Relay {
    Relay1, Relay2, Relay3
};

std::map<Relay,bool> stateMap;

void callbackSetState(unsigned char device_id, const char* device_name, bool state, unsigned char value) {
    Serial.printf("[MAIN] Device #%d (%s) state: %s value: %d\n",
            device_id, device_name, state ? "ON" : "OFF", value);

    auto device = static_cast<Relay>(device_id);
    stateMap[device] = state;
    
    delay(50);
}

