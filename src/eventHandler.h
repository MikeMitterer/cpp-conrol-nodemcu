//
// Created by Mike Mitterer on 02.07.17.
//

#ifndef CONTROLNANI_EVENTHANDLER_H
#define CONTROLNANI_EVENTHANDLER_H

#include <Arduino.h>
#include <fauxmoESP.h>
#include <ESPAsyncWebServer.h>

// In Main definiert!
extern AsyncWebServer server;

void handleNotFound(AsyncWebServerRequest *request);

#endif //CONTROLNANI_EVENTHANDLER_H
