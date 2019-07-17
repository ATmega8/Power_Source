EESchema Schematic File Version 4
LIBS:Power_Source-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L POWER:+3V3 #PWR?
U 1 1 5D355605
P 5150 3450
AR Path="/5D2F5414/5D355605" Ref="#PWR?"  Part="1" 
AR Path="/5D31AE1A/5D355605" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5150 3300 50  0001 C CNN
F 1 "+3V3" H 5165 3623 50  0000 C CNN
F 2 "" H 5150 3450 50  0001 C CNN
F 3 "" H 5150 3450 50  0001 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3450 5150 3550
$Comp
L Device:C C?
U 1 1 5D355606
P 5450 3550
AR Path="/5D2F5414/5D355606" Ref="C?"  Part="1" 
AR Path="/5D31AE1A/5D355606" Ref="C3"  Part="1" 
F 0 "C3" V 5198 3550 50  0000 C CNN
F 1 "0.1uF" V 5289 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5488 3400 50  0001 C CNN
F 3 "" H 5450 3550 50  0001 C CNN
	1    5450 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 3550 5150 3550
$Comp
L POWER:GND #PWR?
U 1 1 5D355607
P 5600 3850
AR Path="/5D2F5414/5D355607" Ref="#PWR?"  Part="1" 
AR Path="/5D31AE1A/5D355607" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 5600 3600 50  0001 C CNN
F 1 "GND" H 5605 3677 50  0000 C CNN
F 2 "" H 5600 3850 50  0001 C CNN
F 3 "" H 5600 3850 50  0001 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
$Comp
L POWER:GND #PWR?
U 1 1 5D355608
P 4800 4050
AR Path="/5D2F5414/5D355608" Ref="#PWR?"  Part="1" 
AR Path="/5D31AE1A/5D355608" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 4800 3800 50  0001 C CNN
F 1 "GND" H 4805 3877 50  0000 C CNN
F 2 "" H 4800 4050 50  0001 C CNN
F 3 "" H 4800 4050 50  0001 C CNN
	1    4800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3850 4800 3850
Wire Wire Line
	4800 3850 4800 4050
Wire Wire Line
	4650 2850 4900 2850
Wire Wire Line
	4650 3650 4900 3650
Text Label 4900 2850 2    50   ~ 0
SDA
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 5D355609
P 6850 3450
AR Path="/5D2F5414/5D355609" Ref="Q?"  Part="1" 
AR Path="/5D31AE1A/5D355609" Ref="Q2"  Part="1" 
F 0 "Q2" H 7041 3496 50  0000 L CNN
F 1 "Q_NPN_BEC" H 7041 3405 50  0000 L CNN
F 2 "SS8050:SOT-23" H 7050 3550 50  0001 C CNN
F 3 "" H 6850 3450 50  0001 C CNN
	1    6850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D35560A
P 6950 2950
AR Path="/5D2F5414/5D35560A" Ref="R?"  Part="1" 
AR Path="/5D31AE1A/5D35560A" Ref="R9"  Part="1" 
F 0 "R9" H 7020 2996 50  0000 L CNN
F 1 "10" H 7020 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6880 2950 50  0001 C CNN
F 3 "" H 6950 2950 50  0001 C CNN
	1    6950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3100 6950 3250
Wire Wire Line
	6950 2800 6950 2550
Text Label 6950 2550 3    50   ~ 0
LEDK
$Comp
L POWER:GND #PWR?
U 1 1 5D35560B
P 6950 4050
AR Path="/5D2F5414/5D35560B" Ref="#PWR?"  Part="1" 
AR Path="/5D31AE1A/5D35560B" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 6950 3800 50  0001 C CNN
F 1 "GND" H 6955 3877 50  0000 C CNN
F 2 "" H 6950 4050 50  0001 C CNN
F 3 "" H 6950 4050 50  0001 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3650 6950 4050
$Comp
L Device:R R?
U 1 1 5D35560C
P 6350 3450
AR Path="/5D2F5414/5D35560C" Ref="R?"  Part="1" 
AR Path="/5D31AE1A/5D35560C" Ref="R7"  Part="1" 
F 0 "R7" V 6143 3450 50  0000 C CNN
F 1 "1K" V 6234 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6280 3450 50  0001 C CNN
F 3 "" H 6350 3450 50  0001 C CNN
	1    6350 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D31194C
P 6600 2950
AR Path="/5D2F5414/5D31194C" Ref="R?"  Part="1" 
AR Path="/5D31AE1A/5D31194C" Ref="R8"  Part="1" 
F 0 "R8" H 6670 2996 50  0000 L CNN
F 1 "10K" H 6670 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6530 2950 50  0001 C CNN
F 3 "" H 6600 2950 50  0001 C CNN
	1    6600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3450 6600 3450
Wire Wire Line
	6600 3100 6600 3450
Connection ~ 6600 3450
Wire Wire Line
	6600 3450 6500 3450
Wire Wire Line
	6200 3450 5850 3450
$Comp
L POWER:+3V3 #PWR?
U 1 1 5D312D22
P 6600 2500
AR Path="/5D2F5414/5D312D22" Ref="#PWR?"  Part="1" 
AR Path="/5D31AE1A/5D312D22" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6600 2350 50  0001 C CNN
F 1 "+3V3" H 6615 2673 50  0000 C CNN
F 2 "" H 6600 2500 50  0001 C CNN
F 3 "" H 6600 2500 50  0001 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2500 6600 2800
Text Label 5850 3450 0    50   ~ 0
BLK
Wire Wire Line
	8000 2500 8500 2500
Wire Wire Line
	8000 2600 8500 2600
Wire Wire Line
	8000 2700 8500 2700
Wire Wire Line
	8000 2800 8500 2800
Wire Wire Line
	8000 2900 8500 2900
Wire Wire Line
	8000 3000 8500 3000
Text Label 8000 2500 0    50   ~ 0
SCL
Text Label 8000 2600 0    50   ~ 0
SDA
Text Label 8000 2700 0    50   ~ 0
DC
Text Label 8000 2800 0    50   ~ 0
RES
Text Label 8000 2900 0    50   ~ 0
CS
Text Label 8000 3000 0    50   ~ 0
BLK
Text HLabel 8500 2500 2    50   Input ~ 0
SCL
Text HLabel 8500 2600 2    50   Input ~ 0
SDA
Text HLabel 8500 2700 2    50   Input ~ 0
DC
Text HLabel 8500 2800 2    50   Input ~ 0
RES
Text HLabel 8500 2900 2    50   Input ~ 0
CS
Text HLabel 8500 3000 2    50   Input ~ 0
BLK
$Comp
L POWER:+3V3 #PWR?
U 1 1 5D318094
P 7750 3100
AR Path="/5D2F5414/5D318094" Ref="#PWR?"  Part="1" 
AR Path="/5D31AE1A/5D318094" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 7750 2950 50  0001 C CNN
F 1 "+3V3" H 7765 3273 50  0000 C CNN
F 2 "" H 7750 3100 50  0001 C CNN
F 3 "" H 7750 3100 50  0001 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
$Comp
L POWER:GND #PWR?
U 1 1 5D355610
P 7750 3600
AR Path="/5D2F5414/5D355610" Ref="#PWR?"  Part="1" 
AR Path="/5D31AE1A/5D355610" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 7750 3350 50  0001 C CNN
F 1 "GND" H 7755 3427 50  0000 C CNN
F 2 "" H 7750 3600 50  0001 C CNN
F 3 "" H 7750 3600 50  0001 C CNN
	1    7750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3100 7750 3300
Wire Wire Line
	7750 3300 8500 3300
Wire Wire Line
	7750 3400 7750 3600
Wire Wire Line
	7750 3400 8500 3400
Text HLabel 8500 3300 2    50   Input ~ 0
+3V3
Text HLabel 8500 3400 2    50   Output ~ 0
GND
$Comp
L LCD:IPS1.14'240x135 LCD2
U 1 1 5D31C154
P 4250 2600
F 0 "LCD2" H 4283 2775 50  0000 C CNN
F 1 "IPS1.14'240x135" H 4283 2684 50  0000 C CNN
F 2 "LCD:IPS1.14'240x135" H 4200 1200 50  0001 C CNN
F 3 "" H 3950 2650 50  0001 C CNN
	1    4250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3550 5600 3850
Wire Wire Line
	5150 3550 4650 3550
Connection ~ 5150 3550
Wire Wire Line
	5150 3750 5150 3550
Wire Wire Line
	4650 3750 5150 3750
Wire Wire Line
	4650 2950 4900 2950
Wire Wire Line
	4650 3050 4900 3050
Wire Wire Line
	4650 3150 4900 3150
Wire Wire Line
	4650 3250 4900 3250
Text Label 4900 2950 2    50   ~ 0
SCL
Text Label 4900 3050 2    50   ~ 0
DC
Text Label 4900 3150 2    50   ~ 0
RES
Text Label 4900 3250 2    50   ~ 0
CS
Text Label 4900 3650 2    50   ~ 0
LEDK
Wire Wire Line
	5000 3350 5000 3850
Wire Wire Line
	5000 3850 4800 3850
Wire Wire Line
	4650 3350 5000 3350
Connection ~ 4800 3850
$EndSCHEMATC
