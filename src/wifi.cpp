//
// Created by Mike Mitterer on 18.02.17.
//

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCDFAInspection"

#include "wifi.h"

#ifdef ESP32
    #include <WiFi.h>
#else
    #include <ESP8266WiFi.h>
#endif
#include <fauxmoESP.h>

//const String host = "192.168.0.42";
//const String url = "/api/dash/v1/hello";
//const uint16_t port = 8080;

void setupWIFI(const String& ssid, const String& pw, const uint8_t wifiIndicatorLED) {
    // Status-LED off
    digitalWrite(wifiIndicatorLED, LOW);
    
    // Explicitly set the ESP8266 to be a WiFi-client, otherwise, it by default,
    // would try to act as both a client and an access-point and could cause
    // network-issues with your other WiFi-devices on your WiFi-network.
    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid.c_str(), pw.c_str());

    while (WiFi.status() != WL_CONNECTED) {
        delay(300);
        digitalWrite(wifiIndicatorLED, HIGH);

        delay(200);
        digitalWrite(wifiIndicatorLED, LOW);

        Serial.print(".");
    }

    Serial.println("");
    Serial.println("WiFi connected!");
    
    Serial.print("IP address: ");
    Serial.println(WiFi.localIP());

    showMacAddress();

    // Status auf ON!
    digitalWrite(wifiIndicatorLED, HIGH);
}

void showMacAddress() {
    uint8_t address[6];

    WiFi.macAddress(address);

    Serial.print("MAC: ");
    for (int index = 0; index < sizeof(address); index++){
        Serial.print(address[index],HEX);

        if(index < sizeof(address) - 1) {
            Serial.print(":");
        }
    }
    Serial.println("");
}

/// Sendet den Request
/// Sample:
///     https://github.com/esp8266/Arduino/blob/master/doc/esp8266wifi/client-examples.md
///
void sendGetRequest(const String& host, const String& url, const uint16_t port) {
    // Use WiFiClient class to create TCP connections
    WiFiClient client;
    if (!client.connect(host.c_str(), port)) {
        Serial.println("connection failed");
        return;
    }

    Serial.print("Requesting URL: ");
    Serial.println(url);

    // This will send the request to the server
    client.print(String("GET ") + url + " HTTP/1.1\r\n" +
                 "Host: " + host + "\r\n" +
                 "Connection: close\r\n\r\n");

    unsigned long timeout = millis();
    while (client.available() == 0) {
        if (millis() - timeout > 5000) {
            Serial.println(">>> Client Timeout !");
            client.stop();
            return;
        }
    }

    // Read all the lines of the reply from server and print them to Serial
    while(client.available()){
        String line = client.readStringUntil('\r');
        Serial.print(line);
    }

    client.stop();
    Serial.println("\n[Disconnected]");
}

#pragma clang diagnostic pop