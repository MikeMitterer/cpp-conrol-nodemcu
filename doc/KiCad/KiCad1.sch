EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESP8266
LIBS:switches
LIBS:nodemcu
LIBS:Mike
LIBS:KiCad1-cache
EELAYER 26 0
EELAYER END
$Descr User 7874 5906
encoding utf-8
Sheet 1 1
Title "Dash-Button"
Date "2017-02-10"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR3
U 1 1 588DBF35
P 1400 4550
F 0 "#PWR3" H -3700 3100 50  0001 C CNN
F 1 "GND" H 1405 4377 50  0000 C CNN
F 2 "" H -3700 3350 50  0001 C CNN
F 3 "" H -3700 3350 50  0001 C CNN
	1    1400 4550
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 588DBFB7
P 2950 2850
F 0 "D1" H 2950 2750 50  0000 C CNN
F 1 "LED" H 2950 2650 50  0000 C CNN
F 2 "" H -2650 650 50  0001 C CNN
F 3 "" H -2650 650 50  0001 C CNN
	1    2950 2850
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 588DC6A2
P 3850 3600
F 0 "R4" H 3920 3646 50  0000 L CNN
F 1 "4.7K" H 3920 3555 50  0000 L CNN
F 2 "" V -4270 1150 50  0001 C CNN
F 3 "" H -4200 1150 50  0001 C CNN
F 4 "Pull down" V 3750 3550 60  0000 C CNN "Remark"
	1    3850 3600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 588F7E89
P 1400 4450
F 0 "#FLG1" H 1450 4500 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 4624 50  0000 C CNN
F 2 "" H -7700 2500 50  0001 C CNN
F 3 "" H -7700 2500 50  0001 C CNN
	1    1400 4450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 588F840C
P 2500 1550
F 0 "SW1" H 2500 1835 50  0000 C CNN
F 1 "SW_Push" H 2500 1744 50  0000 C CNN
F 2 "" H -5850 -50 50  0001 C CNN
F 3 "" H -5850 -50 50  0001 C CNN
	1    2500 1550
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 588F847B
P 6500 1550
F 0 "SW2" H 6500 1835 50  0000 C CNN
F 1 "SW_Push" H 6500 1750 50  0000 C CNN
F 2 "" H -1850 -50 50  0001 C CNN
F 3 "" H -1850 -50 50  0001 C CNN
	1    6500 1550
	1    0    0    -1  
$EndComp
$Comp
L NodeMCU_Amica_R2 U1
U 1 1 589DA17C
P 6050 2800
F 0 "U1" V 6096 2022 50  0000 R CNN
F 1 "NodeMCU V3" V 6050 3050 50  0000 R CNN
F 2 "" H -950 650 50  0000 C CNN
F 3 "" H -950 650 50  0000 C CNN
	1    6050 2800
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 589DA5D3
P 4350 2500
F 0 "R5" H 4420 2546 50  0000 L CNN
F 1 "100" H 4420 2455 50  0000 L CNN
F 2 "" V -3770 50  50  0001 C CNN
F 3 "" H -3700 50  50  0001 C CNN
	1    4350 2500
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 589DA60B
P 4350 2850
F 0 "D3" H 4350 2750 50  0000 C CNN
F 1 "LED" H 4350 2650 50  0000 C CNN
F 2 "" H -1250 650 50  0001 C CNN
F 3 "" H -1250 650 50  0001 C CNN
	1    4350 2850
	0    -1   -1   0   
$EndComp
Text Notes 3200 4300 0    60   ~ 0
Dash-Button
$Comp
L 30N06L Q2
U 1 1 589DCA52
P 4250 3400
F 0 "Q2" H 4485 3499 50  0000 L CNN
F 1 "30N06L" H 4485 3408 50  0000 L CNN
F 2 "TO-220" H -2250 2525 50  0001 L CIN
F 3 "https://www.sparkfun.com/products/10213" H -2250 2350 50  0001 L CNN
F 4 "N-Channel MOSFET 60V 30A" H 4485 3309 60  0000 L CNN "Description"
	1    4250 3400
	1    0    0    -1  
$EndComp
$Comp
L IRF5305 Q1
U 1 1 589DC601
P 1950 3400
F 0 "Q1" H 2185 3499 50  0000 L CNN
F 1 "IRF5305" H 2185 3408 50  0000 L CNN
F 2 "TO-220" H -4400 2425 50  0001 L CIN
F 3 "" H -4400 2350 50  0001 L CNN
F 4 "P-Channel MOSFET 55V 31A" H 2185 3309 60  0000 L CNN "Description"
	1    1950 3400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 589DCB7F
P 1900 4450
F 0 "#FLG2" H -100 225 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 4624 50  0000 C CNN
F 2 "" H -100 150 50  0001 C CNN
F 3 "" H -100 150 50  0001 C CNN
	1    1900 4450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR4
U 1 1 589DCBBD
P 1900 4550
F 0 "#PWR4" H -750 2300 50  0001 C CNN
F 1 "+5V" H 1915 4723 50  0000 C CNN
F 2 "" H -750 2450 50  0001 C CNN
F 3 "" H -750 2450 50  0001 C CNN
	1    1900 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 1450 1950 1550
Wire Wire Line
	1400 4450 1400 4550
Wire Wire Line
	1950 1550 2300 1550
Wire Wire Line
	2700 1550 5350 1550
Wire Wire Line
	5350 1550 5350 2350
Wire Wire Line
	1900 4550 1900 4450
Wire Wire Line
	4000 1700 4000 3450
$Comp
L GND #PWR11
U 1 1 589DCE2C
P 4350 3750
F 0 "#PWR11" H 700 -100 50  0001 C CNN
F 1 "GND" H 4355 3577 50  0000 C CNN
F 2 "" H 700 150 50  0001 C CNN
F 3 "" H 700 150 50  0001 C CNN
	1    4350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2350 5450 1700
Wire Wire Line
	3850 3450 4050 3450
$Comp
L GND #PWR9
U 1 1 589DD01A
P 3850 3750
F 0 "#PWR9" H 200 -100 50  0001 C CNN
F 1 "GND" H 3855 3577 50  0000 C CNN
F 2 "" H 200 150 50  0001 C CNN
F 3 "" H 200 150 50  0001 C CNN
	1    3850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3750 4350 3600
Wire Wire Line
	4350 3000 4350 3200
$Comp
L PWR_FLAG #FLG3
U 1 1 589DD2A6
P 2400 4450
F 0 "#FLG3" H 50  -325 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 4624 50  0000 C CNN
F 2 "" H 50  -400 50  0001 C CNN
F 3 "" H 50  -400 50  0001 C CNN
	1    2400 4450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR6
U 1 1 589DD2E6
P 2400 4550
F 0 "#PWR6" H 0   -50 50  0001 C CNN
F 1 "+3.3V" H 2415 4723 50  0000 C CNN
F 2 "" H 0   100 50  0001 C CNN
F 3 "" H 0   100 50  0001 C CNN
	1    2400 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 4550 2400 4450
$Comp
L +3.3V #PWR10
U 1 1 589DD34D
P 4350 2300
F 0 "#PWR10" H 900 -300 50  0001 C CNN
F 1 "+3.3V" H 4365 2473 50  0000 C CNN
F 2 "" H 900 -150 50  0001 C CNN
F 3 "" H 900 -150 50  0001 C CNN
	1    4350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2300 4350 2350
Wire Wire Line
	5450 1700 4000 1700
Wire Wire Line
	5550 2350 5550 1850
Wire Wire Line
	5550 1850 1750 1850
$Comp
L +5V #PWR1
U 1 1 589DD868
P 1400 3050
F 0 "#PWR1" H 200 -450 50  0001 C CNN
F 1 "+5V" H 1415 3223 50  0000 C CNN
F 2 "" H 200 -300 50  0001 C CNN
F 3 "" H 200 -300 50  0001 C CNN
	1    1400 3050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 589DD908
P 1400 3300
F 0 "R1" H 1470 3346 50  0000 L CNN
F 1 "10K" H 1470 3255 50  0000 L CNN
F 2 "" V -6720 850 50  0001 C CNN
F 3 "" H -6650 850 50  0001 C CNN
F 4 "Pull up" V 1300 3300 60  0000 C CNN "Remark"
	1    1400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3150 1400 3050
Wire Wire Line
	1750 3450 1400 3450
Wire Wire Line
	6750 3250 6750 4050
$Comp
L GND #PWR7
U 1 1 589DDBA2
P 2950 3000
F 0 "#PWR7" H 900 400 50  0001 C CNN
F 1 "GND" H 2955 2827 50  0000 C CNN
F 2 "" H 900 650 50  0001 C CNN
F 3 "" H 900 650 50  0001 C CNN
	1    2950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1550 7000 1550
Wire Wire Line
	7000 1550 7000 3650
Wire Wire Line
	7000 3650 6750 3650
$Comp
L +5V #PWR13
U 1 1 589DDF71
P 5950 1450
F 0 "#PWR13" H 0   -50 50  0001 C CNN
F 1 "+5V" H 5965 1623 50  0000 C CNN
F 2 "" H 0   100 50  0001 C CNN
F 3 "" H 0   100 50  0001 C CNN
	1    5950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1450 5950 1550
Wire Wire Line
	5950 1550 6300 1550
Connection ~ 4000 3450
Connection ~ 1750 3450
$Comp
L +5V #PWR2
U 1 1 589DE239
P 1400 3800
F 0 "#PWR2" H -650 -100 50  0001 C CNN
F 1 "+5V" H 1415 3973 50  0000 C CNN
F 2 "" H -650 50  50  0001 C CNN
F 3 "" H -650 50  50  0001 C CNN
	1    1400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4050 2050 3600
$Comp
L LED D2
U 1 1 589DE2B3
P 3550 2850
F 0 "D2" H 3550 2750 50  0000 C CNN
F 1 "LED" H 3550 2650 50  0000 C CNN
F 2 "" H -2050 650 50  0001 C CNN
F 3 "" H -2050 650 50  0001 C CNN
	1    3550 2850
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 589DE2F8
P 3550 2500
F 0 "R3" H 3620 2546 50  0000 L CNN
F 1 "100" H 3620 2455 50  0000 L CNN
F 2 "" V -4570 50  50  0001 C CNN
F 3 "" H -4500 50  50  0001 C CNN
	1    3550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2700 3550 2650
Wire Wire Line
	3900 2050 5750 2050
Wire Wire Line
	5750 2050 5750 2350
Wire Wire Line
	2050 4050 1400 4050
Wire Wire Line
	1400 4050 1400 3800
Wire Wire Line
	2050 2300 2050 3200
Connection ~ 2050 3100
Wire Wire Line
	2050 3100 2600 3100
Wire Wire Line
	2600 3100 2600 4050
Wire Wire Line
	2600 4050 6750 4050
Connection ~ 6750 3650
$Comp
L R R2
U 1 1 589DEB4F
P 2950 2500
F 0 "R2" H 3050 2550 50  0000 L CNN
F 1 "100" H 3050 2450 50  0000 L CNN
F 2 "" V -5170 50  50  0001 C CNN
F 3 "" H -5100 50  50  0001 C CNN
	1    2950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2650 2950 2700
Wire Wire Line
	2050 2300 2950 2300
Wire Wire Line
	2950 2300 2950 2350
$Comp
L +3.3V #PWR5
U 1 1 589DEDF2
P 1950 1450
F 0 "#PWR5" H 0   -150 50  0001 C CNN
F 1 "+3.3V" H 1965 1623 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 589DEE3A
P 6250 3750
F 0 "#PWR14" H -350 1400 50  0001 C CNN
F 1 "GND" H 6255 3577 50  0000 C CNN
F 2 "" H -350 1650 50  0001 C CNN
F 3 "" H -350 1650 50  0001 C CNN
	1    6250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3750 6250 3250
$Comp
L +3.3V #PWR15
U 1 1 589DF0BC
P 6750 2300
F 0 "#PWR15" H 50  100 50  0001 C CNN
F 1 "+3.3V" H 6765 2473 50  0000 C CNN
F 2 "" H 50  250 50  0001 C CNN
F 3 "" H 50  250 50  0001 C CNN
	1    6750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2300 6750 2350
$Comp
L R R6
U 1 1 589DF55F
P 4900 2500
F 0 "R6" H 4970 2546 50  0000 L CNN
F 1 "10K" H 4970 2455 50  0000 L CNN
F 2 "" V -3220 50  50  0001 C CNN
F 3 "" H -3150 50  50  0001 C CNN
F 4 "Pull down" V 4800 2500 60  0000 C CNN "Remark"
	1    4900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2350 4900 2300
Wire Wire Line
	4900 2300 5350 2300
Connection ~ 5350 2300
$Comp
L GND #PWR12
U 1 1 589DF64B
P 4900 2750
F 0 "#PWR12" H 0   -250 50  0001 C CNN
F 1 "GND" H 4905 2577 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    4900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2750 4900 2650
Wire Wire Line
	4350 2650 4350 2700
$Comp
L +3.3V #PWR8
U 1 1 58A726E6
P 3550 2300
F 0 "#PWR8" H 100 -300 50  0001 C CNN
F 1 "+3.3V" H 3565 2473 50  0000 C CNN
F 2 "" H 100 -150 50  0001 C CNN
F 3 "" H 100 -150 50  0001 C CNN
	1    3550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2050 3900 3100
Wire Wire Line
	3900 3100 3550 3100
Wire Wire Line
	3550 3100 3550 3000
Wire Wire Line
	3550 2300 3550 2350
Text Notes 2850 3100 1    60   ~ 0
Power \nindikator ON/Off
Text Notes 4250 3100 1    60   ~ 0
SW1 Indikator
Text Notes 3450 3100 1    60   ~ 0
Tooglet durch SW1
$Comp
L D_Small D4
U 1 1 58A73C1D
P 1750 2850
F 0 "D4" H 1700 2950 50  0000 L CNN
F 1 "Diod small" H 1400 3050 50  0000 L CNN
F 2 "" V -2450 1850 50  0001 C CNN
F 3 "" V -2450 1850 50  0001 C CNN
	1    1750 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 3450 1750 2950
Wire Wire Line
	1750 1850 1750 2750
Text Notes 6300 1700 0    60   ~ 0
Power ON
$EndSCHEMATC