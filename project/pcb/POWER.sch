EESchema Schematic File Version 4
LIBS:Power_Source-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LDO:AMS1117 U2
U 1 1 5D34CC59
P 5200 3450
F 0 "U2" H 5450 3965 50  0000 C CNN
F 1 "AMS1117" H 5450 3874 50  0000 C CNN
F 2 "AMS1117:SOT-223" H 5200 3850 50  0001 C CNN
F 3 "" H 5200 3850 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3200 5900 3200
Wire Wire Line
	5800 3350 5900 3350
Wire Wire Line
	5900 3350 5900 3200
Wire Wire Line
	5450 3550 5450 3650
$Comp
L POWER:GND #PWR023
U 1 1 5D34D662
P 5450 3800
F 0 "#PWR023" H 5450 3550 50  0001 C CNN
F 1 "GND" H 5455 3627 50  0000 C CNN
F 2 "" H 5450 3800 50  0001 C CNN
F 3 "" H 5450 3800 50  0001 C CNN
	1    5450 3800
	1    0    0    -1  
$EndComp
$Comp
L POWER:VCC #PWR022
U 1 1 5D34DB9B
P 4650 3050
F 0 "#PWR022" H 4650 2900 50  0001 C CNN
F 1 "VCC" H 4667 3223 50  0000 C CNN
F 2 "" H 4650 3050 50  0001 C CNN
F 3 "" H 4650 3050 50  0001 C CNN
	1    4650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3050 4650 3200
$Comp
L POWER:+3V3 #PWR024
U 1 1 5D34E2FC
P 6300 3050
F 0 "#PWR024" H 6300 2900 50  0001 C CNN
F 1 "+3V3" H 6315 3223 50  0000 C CNN
F 2 "" H 6300 3050 50  0001 C CNN
F 3 "" H 6300 3050 50  0001 C CNN
	1    6300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3050 6300 3200
Text HLabel 4650 3200 0    50   Input ~ 0
VCC
Text HLabel 6300 3200 2    50   Output ~ 0
+3V3
Text HLabel 5450 3750 2    50   Output ~ 0
GND
$Comp
L Device:C C4
U 1 1 5D34E8D1
P 4650 3500
F 0 "C4" H 4765 3546 50  0000 L CNN
F 1 "10uF" H 4765 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4688 3350 50  0001 C CNN
F 3 "" H 4650 3500 50  0001 C CNN
	1    4650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5D34F0C6
P 4950 3500
F 0 "C5" H 5065 3546 50  0000 L CNN
F 1 "1uF" H 5065 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4988 3350 50  0001 C CNN
F 3 "" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3200 5100 3200
Wire Wire Line
	5900 3200 6300 3200
Connection ~ 5900 3200
$Comp
L Device:C C6
U 1 1 5D3537A5
P 6000 3500
F 0 "C6" H 6115 3546 50  0000 L CNN
F 1 "10uF" H 6115 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6038 3350 50  0001 C CNN
F 3 "" H 6000 3500 50  0001 C CNN
	1    6000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5D3537AB
P 6300 3500
F 0 "C7" H 6415 3546 50  0000 L CNN
F 1 "1uF" H 6415 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6338 3350 50  0001 C CNN
F 3 "" H 6300 3500 50  0001 C CNN
	1    6300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3350 4650 3200
Connection ~ 4650 3200
Wire Wire Line
	4950 3350 4650 3350
Connection ~ 4650 3350
Wire Wire Line
	4650 3650 4950 3650
Wire Wire Line
	4950 3650 5450 3650
Connection ~ 4950 3650
Connection ~ 5450 3650
Wire Wire Line
	5450 3650 5450 3800
Wire Wire Line
	6000 3350 6300 3350
Wire Wire Line
	6300 3350 6300 3200
Connection ~ 6300 3350
Connection ~ 6300 3200
Wire Wire Line
	6300 3650 6000 3650
Wire Wire Line
	6000 3650 5450 3650
Connection ~ 6000 3650
$EndSCHEMATC
