#include "pins.h"
#include "wifi.h"
#include "eventHandler.h"
#include <Arduino.h>
#include <fauxmoESP.h>

const uint8_t PORT = 80;

int buttonState = LOW;
bool isButtonPressed = false;
bool prevButtonState = isButtonPressed;

bool toggleRelay = false;

enum class States {
    Idle,
    ButtonPressed,
    LedOn, LedOff,
    Relay1On, Relay1Off,
    Relay2On, Relay2Off,
    Relay3On, Relay3Off,
};

/// Hauptstatus
States currentState = States::Idle;

// LED-Status
States ledState = States::LedOff;

AsyncWebServer server(PORT);

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
void setup() {
    // Power - ON über den Mosfet!


    // Setup Pins
    pinMode(pinButton, INPUT);
    pinMode(pinButtonIndicatorLED, OUTPUT);
    pinMode(wifiIndicatorLED, OUTPUT);
    pinMode(pinRelay1, OUTPUT);
    pinMode(pinRelay2, OUTPUT);
    pinMode(pinRelay3, OUTPUT);

    digitalWrite(pinButtonIndicatorLED, static_cast<uint8_t>(ledState == States::LedOff ? LOW : HIGH));
    digitalWrite(wifiIndicatorLED, LOW);

    // Mosfet - umgekehrte Logik
    digitalWrite(pinRelay1, LOW);
    digitalWrite(pinRelay2, LOW);
    digitalWrite(pinRelay3, LOW);

    // Setup Serial
    Serial.begin(115200);
    delay(10);

    // Setup WIFI
    setupWIFI(ssid, password, wifiIndicatorLED);

    // Setup Server
    server.onNotFound(handleNotFound);

    server.on("/relay/1/on", HTTP_GET, [&](AsyncWebServerRequest *request) {
        currentState = States::Relay1On; request->send(204); });

    server.on("/relay/1/off", [&](AsyncWebServerRequest *request) {
        currentState = States::Relay1Off; request->send(204); });

    server.on("/relay/2/on", [&](AsyncWebServerRequest *request) {
        currentState = States::Relay2On; request->send(204); });

    server.on("/relay/2/off", [&](AsyncWebServerRequest *request) {
        currentState = States::Relay2Off; request->send(204); });

    server.on("/relay/3/on", [&](AsyncWebServerRequest *request) {
        currentState = States::Relay3On; request->send(204); });

    server.on("/relay/3/off", [&](AsyncWebServerRequest *request) {
        currentState = States::Relay3Off; request->send(204); });

    server.begin();
}
#pragma clang diagnostic pop

int switchCounter = 0;

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
void loop() {
    buttonState = digitalRead(pinButton) == HIGH;

    // debounce Button
    delay(30);
    if(digitalRead(pinButton) == buttonState) {
        isButtonPressed = buttonState == HIGH;
    }

    // Button changed
    if(prevButtonState != isButtonPressed) {
        prevButtonState = isButtonPressed;

        currentState = isButtonPressed ? States::ButtonPressed : States::Idle;
    }

    switch(currentState){
        case States::ButtonPressed:
            currentState = (ledState == States::LedOn ? States::LedOff : States::LedOn);
            break;

        case States::LedOn:
            digitalWrite(pinButtonIndicatorLED, HIGH);
            ledState = States::LedOn;
            currentState = States::Idle;
            break;

        case States::LedOff:
            digitalWrite(pinButtonIndicatorLED, LOW);
            ledState = States::LedOff;
            currentState = States::Idle;
            break;

        case States::Relay1On:
            digitalWrite(pinRelay1, HIGH);
            currentState = States::Idle;
            break;

        case States::Relay1Off:
            digitalWrite(pinRelay1, LOW);
            currentState = States::Idle;
            break;

        case States::Relay2On:
            digitalWrite(pinRelay2, HIGH);
            currentState = States::Idle;
            break;

        case States::Relay2Off:
            digitalWrite(pinRelay2, LOW);
            currentState = States::Idle;
            break;
            
        case States::Relay3On:
            digitalWrite(pinRelay3, HIGH);
            currentState = States::Idle;
            break;

        case States::Relay3Off:
            digitalWrite(pinRelay3, LOW);
            currentState = States::Idle;
            break;

        case States::Idle :
            yield();
    }

    //server.handleClient();
    yield();
}

#pragma clang diagnostic pop