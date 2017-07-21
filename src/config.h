//
// Created by Mike Mitterer on 10.03.17.
//
// cmake-Template für config.h
//

#ifndef XCTEST_CONFIG_H_IN_H
#define XCTEST_CONFIG_H_IN_H

#include <Arduino.h>

// the configured options and settings for HelloWorld
const String ControlNani_VERSION_MAJOR = "0";
const String ControlNani_VERSION_MINOR = "1";

// Password compiled into source
// Set in .config/passwords.cmake (or via ENV-VAR)
const String ControlNani_PASSWORD_LS = "123";
const String ControlNani_PASSWORD_TPL = "123";

#endif //XCTEST_CONFIG_H_IN_H
