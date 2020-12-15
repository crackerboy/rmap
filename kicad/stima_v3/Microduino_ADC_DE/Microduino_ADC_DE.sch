EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Microduino ADC DE"
Date "07 dicembre 2019"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 9400 3150
NoConn ~ 9500 3150
NoConn ~ 9100 3150
NoConn ~ 8700 3150
NoConn ~ 10150 3700
NoConn ~ 10150 3800
NoConn ~ 10150 4000
NoConn ~ 10150 4100
NoConn ~ 10150 4400
$Comp
L power:GND #PWR01
U 1 1 58D4FFFC
P 9900 4650
F 0 "#PWR01" H 9900 4400 50  0001 C CNN
F 1 "GND" H 9900 4500 50  0000 C CNN
F 2 "" H 9900 4650 50  0000 C CNN
F 3 "" H 9900 4650 50  0000 C CNN
	1    9900 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 58D50BEE
P 7750 4500
F 0 "#PWR02" H 7750 4350 50  0001 C CNN
F 1 "+5V" H 7750 4640 50  0000 C CNN
F 2 "" H 7750 4500 50  0000 C CNN
F 3 "" H 7750 4500 50  0000 C CNN
	1    7750 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 58D50CA7
P 7950 4400
F 0 "#PWR03" H 7950 4250 50  0001 C CNN
F 1 "+3.3V" H 7950 4540 50  0000 C CNN
F 2 "" H 7950 4400 50  0000 C CNN
F 3 "" H 7950 4400 50  0000 C CNN
	1    7950 4400
	1    0    0    -1  
$EndComp
Text Label 8150 4300 0    60   ~ 0
D7
Text Label 8150 4200 0    60   ~ 0
D8
Text Label 8150 4100 0    60   ~ 0
D9
Text Label 8150 4000 0    60   ~ 0
D10
Text Label 8150 3900 0    60   ~ 0
D11
Text Label 8150 3800 0    60   ~ 0
D12
Text Label 8150 3700 0    60   ~ 0
D13
NoConn ~ 8150 4300
Text Label 8700 3150 3    60   ~ 0
AREF
Text Label 8800 3150 3    60   ~ 0
A0
Text Label 8900 3150 3    60   ~ 0
A1
Text Label 9000 3150 3    60   ~ 0
A2
Text Label 9100 3150 3    60   ~ 0
A3
Text Label 9200 3150 3    60   ~ 0
SDA
Text Label 9300 3150 3    60   ~ 0
SCL
Text Label 9400 3150 3    60   ~ 0
A6
Text Label 9500 3150 3    60   ~ 0
A7
Text Label 10150 3700 2    60   ~ 0
RX0
Text Label 10150 3800 2    60   ~ 0
TX0
Text Label 10150 3900 2    60   ~ 0
D2
Text Label 10150 4000 2    60   ~ 0
D3
Text Label 10150 4100 2    60   ~ 0
D4
Text Label 10150 4200 2    60   ~ 0
D5
Text Label 10150 4300 2    60   ~ 0
D6
Text Label 10150 4400 2    60   ~ 0
RESET
Text Notes 8750 4900 0    118  ~ 24
UPIN 27
$Comp
L Microduino_ADC_DE-rescue:CONN_1x27-Libreria_SCH_mia1 P1
U 1 1 58E8C7EF
P 8600 4500
F 0 "P1" H 8600 4400 50  0000 C CNN
F 1 "CONN_1x27" V 9500 4900 50  0001 C CNN
F 2 "Libreria_PCB_mia:Upin_27" H 9600 4900 50  0001 C CNN
F 3 "" H 9600 4900 50  0000 C CNN
	1    8600 4500
	1    0    0    -1  
$EndComp
Text Notes 7150 6950 0    236  Italic 47
DigitEco s.r.l.
$Comp
L power:+3.3V #PWR04
U 1 1 5A3F7B13
P 8800 5500
F 0 "#PWR04" H 8800 5350 50  0001 C CNN
F 1 "+3.3V" H 8800 5640 50  0000 C CNN
F 2 "" H 8800 5500 50  0001 C CNN
F 3 "" H 8800 5500 50  0001 C CNN
	1    8800 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5A3F7B2B
P 9350 5500
F 0 "#PWR05" H 9350 5350 50  0001 C CNN
F 1 "+5V" H 9350 5640 50  0000 C CNN
F 2 "" H 9350 5500 50  0001 C CNN
F 3 "" H 9350 5500 50  0001 C CNN
	1    9350 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5A3F7B43
P 9900 5700
F 0 "#PWR06" H 9900 5450 50  0001 C CNN
F 1 "GND" H 9900 5550 50  0000 C CNN
F 2 "" H 9900 5700 50  0001 C CNN
F 3 "" H 9900 5700 50  0001 C CNN
	1    9900 5700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG07
U 1 1 5A3F7B5B
P 9900 5500
F 0 "#FLG07" H 9900 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 9900 5650 50  0000 C CNN
F 2 "" H 9900 5500 50  0001 C CNN
F 3 "" H 9900 5500 50  0001 C CNN
	1    9900 5500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG08
U 1 1 5A3F7B73
P 9350 5700
F 0 "#FLG08" H 9350 5775 50  0001 C CNN
F 1 "PWR_FLAG" H 9350 5850 50  0000 C CNN
F 2 "" H 9350 5700 50  0001 C CNN
F 3 "" H 9350 5700 50  0001 C CNN
	1    9350 5700
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG09
U 1 1 5A3F7B8B
P 8800 5700
F 0 "#FLG09" H 8800 5775 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 5850 50  0000 C CNN
F 2 "" H 8800 5700 50  0001 C CNN
F 3 "" H 8800 5700 50  0001 C CNN
	1    8800 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 4300 9800 4300
Wire Wire Line
	9900 5500 9900 5700
Wire Wire Line
	9350 5500 9350 5700
Wire Wire Line
	8800 5500 8800 5700
Wire Wire Line
	9800 3700 10150 3700
Wire Wire Line
	9000 3150 9000 3400
Wire Wire Line
	9200 2750 9200 3400
Wire Wire Line
	9400 3150 9400 3400
Wire Wire Line
	8700 3150 8700 3400
Wire Wire Line
	9100 3150 9100 3400
Wire Wire Line
	9300 2650 9300 3400
Wire Wire Line
	9500 3400 9500 3150
Wire Wire Line
	8400 4300 8150 4300
Wire Wire Line
	7750 4500 8400 4500
Wire Wire Line
	9900 4500 9900 4650
Wire Wire Line
	10150 4400 9800 4400
Wire Wire Line
	10150 3800 9800 3800
Wire Wire Line
	8400 4400 7950 4400
Wire Wire Line
	10150 3900 9800 3900
Wire Wire Line
	10150 4000 9800 4000
Wire Wire Line
	9900 4500 9800 4500
NoConn ~ 10150 3900
Wire Wire Line
	10150 4100 9800 4100
Wire Wire Line
	8150 4100 8400 4100
Wire Wire Line
	8150 4200 8400 4200
NoConn ~ 8150 4200
Wire Wire Line
	8150 3700 8400 3700
Wire Wire Line
	8400 3800 8150 3800
Wire Wire Line
	8150 3900 8400 3900
Wire Wire Line
	8400 4000 8150 4000
NoConn ~ 8150 3700
NoConn ~ 8150 3800
NoConn ~ 8150 3900
NoConn ~ 8150 4000
$Comp
L Microduino_ADC_DE-rescue:GS3-conn J7
U 1 1 5D25E1A3
P 3050 3800
F 0 "J7" H 3050 4000 50  0000 C CNN
F 1 "GS3" H 3100 3601 50  0001 C CNN
F 2 "Connectors:GS3" V 3138 3726 50  0001 C CNN
F 3 "" H 3050 3800 50  0000 C CNN
	1    3050 3800
	-1   0    0    -1  
$EndComp
$Comp
L Microduino_ADC_DE-rescue:CONN_01X03-conn P2
U 1 1 5D25E20E
P 1900 2000
F 0 "P2" H 1900 2200 50  0000 C CNN
F 1 "CONN_01X03" V 2000 2000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1900 2000 50  0001 C CNN
F 3 "" H 1900 2000 50  0000 C CNN
	1    1900 2000
	-1   0    0    -1  
$EndComp
Text Notes 1700 1950 2    60   Italic 12
A0-EXT
Text Notes 1700 2050 2    60   Italic 12
A1-EXT
Text Notes 1700 2150 2    60   Italic 12
A2-EXT
NoConn ~ 10150 4300
Wire Wire Line
	8900 3150 8900 3400
Wire Wire Line
	2100 1900 2250 1900
Wire Wire Line
	2250 2000 2100 2000
Wire Wire Line
	2100 2100 2250 2100
Wire Wire Line
	8800 3150 8800 3400
NoConn ~ 8800 3150
NoConn ~ 8900 3150
NoConn ~ 9000 3150
Wire Wire Line
	9800 4200 10150 4200
NoConn ~ 10150 4200
NoConn ~ 8150 4100
$Comp
L Device:R R5
U 1 1 5DB67828
P 3800 4300
F 0 "R5" V 3880 4300 50  0000 C CNN
F 1 "82" V 3800 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3730 4300 50  0001 C CNN
F 3 "" H 3800 4300 50  0001 C CNN
	1    3800 4300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DB67889
P 3550 3700
F 0 "R4" V 3630 3700 50  0000 C CNN
F 1 "110k" V 3550 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3480 3700 50  0001 C CNN
F 3 "" H 3550 3700 50  0001 C CNN
	1    3550 3700
	0    1    -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5DB678D8
P 4200 4300
F 0 "R6" V 4280 4300 50  0000 C CNN
F 1 "20k" V 4200 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4130 4300 50  0001 C CNN
F 3 "" H 4200 4300 50  0001 C CNN
	1    4200 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DB67917
P 4900 4250
F 0 "C3" H 4925 4350 50  0000 L CNN
F 1 "100nF" H 4925 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4938 4100 50  0001 C CNN
F 3 "" H 4900 4250 50  0001 C CNN
	1    4900 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Zener_ALT D2
U 1 1 5DB67958
P 5300 4250
F 0 "D2" V 5300 4350 50  0000 C CNN
F 1 "BZV55-B4V7,115" H 5300 4150 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 5300 4250 50  0001 C CNN
F 3 "" H 5300 4250 50  0001 C CNN
	1    5300 4250
	0    1    1    0   
$EndComp
$Comp
L Microduino_ADC_DE-rescue:GS3-conn J8
U 1 1 5DB67BEE
P 4550 3800
F 0 "J8" H 4550 4000 50  0000 C CNN
F 1 "GS3" H 4600 3601 50  0001 C CNN
F 2 "Connectors:GS3" V 4638 3726 50  0001 C CNN
F 3 "" H 4550 3800 50  0001 C CNN
	1    4550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3700 3400 3700
Wire Wire Line
	3700 3700 4200 3700
Wire Wire Line
	3200 3900 3800 3900
Wire Wire Line
	3800 4150 3800 3900
Connection ~ 3800 3900
Wire Wire Line
	4200 4150 4200 3700
Connection ~ 4200 3700
Wire Wire Line
	4700 3800 4900 3800
Wire Wire Line
	5300 4100 5300 3800
Connection ~ 5300 3800
Wire Wire Line
	4900 4100 4900 3800
Connection ~ 4900 3800
Wire Wire Line
	3800 4450 3800 4700
Wire Wire Line
	3800 4700 4200 4700
Wire Wire Line
	5300 4700 5300 4400
Wire Wire Line
	4900 4400 4900 4700
Connection ~ 4900 4700
Wire Wire Line
	4200 4450 4200 4700
Connection ~ 4200 4700
Connection ~ 5300 4700
Wire Wire Line
	6600 4700 6600 4200
Wire Wire Line
	7300 3600 7900 3600
Wire Wire Line
	7900 3600 7900 2750
Wire Wire Line
	7600 2750 7900 2750
Wire Wire Line
	7500 2650 7800 2650
Wire Wire Line
	7800 2650 7800 3500
$Comp
L Device:C C2
U 1 1 5DB687AB
P 6300 2750
F 0 "C2" H 6325 2850 50  0000 L CNN
F 1 "100nF" H 6325 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6338 2600 50  0001 C CNN
F 3 "" H 6300 2750 50  0001 C CNN
	1    6300 2750
	-1   0    0    -1  
$EndComp
$Comp
L Microduino_ADC_DE-rescue:GS3-conn J4
U 1 1 5DB687D8
P 6600 2050
F 0 "J4" V 6600 2250 50  0000 C CNN
F 1 "GS3" H 6650 1851 50  0001 C CNN
F 2 "Connectors:GS3" V 6688 1976 50  0001 C CNN
F 3 "" H 6600 2050 50  0001 C CNN
	1    6600 2050
	0    -1   1    0   
$EndComp
Wire Wire Line
	6600 2200 6600 2300
Wire Wire Line
	6300 2600 6300 2500
Wire Wire Line
	6300 2500 6600 2500
Connection ~ 6600 2500
$Comp
L power:GND #PWR010
U 1 1 5DB6898F
P 6300 2950
F 0 "#PWR010" H 6300 2700 50  0001 C CNN
F 1 "GND" H 6300 2800 50  0000 C CNN
F 2 "" H 6300 2950 50  0001 C CNN
F 3 "" H 6300 2950 50  0001 C CNN
	1    6300 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5DB689CA
P 4900 4800
F 0 "#PWR011" H 4900 4550 50  0001 C CNN
F 1 "GND" H 4900 4650 50  0000 C CNN
F 2 "" H 4900 4800 50  0001 C CNN
F 3 "" H 4900 4800 50  0001 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 5DB689F8
P 6400 1700
F 0 "#PWR012" H 6400 1550 50  0001 C CNN
F 1 "+3.3V" H 6400 1840 50  0000 C CNN
F 2 "" H 6400 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5DB68A26
P 6800 1700
F 0 "#PWR013" H 6800 1550 50  0001 C CNN
F 1 "+5V" H 6800 1840 50  0000 C CNN
F 2 "" H 6800 1700 50  0001 C CNN
F 3 "" H 6800 1700 50  0001 C CNN
	1    6800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2900 6300 2950
Wire Wire Line
	6400 1700 6400 1800
Wire Wire Line
	6400 1800 6500 1800
Wire Wire Line
	6500 1800 6500 1900
Wire Wire Line
	6800 1700 6800 1800
Wire Wire Line
	6800 1800 6700 1800
Wire Wire Line
	6700 1800 6700 1900
$Comp
L power:PWR_FLAG #FLG014
U 1 1 5DB69191
P 6700 2500
F 0 "#FLG014" H 6700 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 2650 50  0001 C CNN
F 2 "" H 6700 2500 50  0001 C CNN
F 3 "" H 6700 2500 50  0001 C CNN
	1    6700 2500
	0    1    1    0   
$EndComp
$Comp
L Microduino_ADC_DE-rescue:ADS1115-Libreria_SCH_mia1 U1
U 1 1 5DBA6D30
P 6600 3700
F 0 "U1" H 6000 4150 50  0000 L CNN
F 1 "ADS1115" H 6850 4150 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 6550 3650 50  0001 C CNN
F 3 "" H 5700 4100 50  0001 C CNN
	1    6600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3500 7300 3500
$Comp
L Microduino_ADC_DE-rescue:GS4_b-Libreria_SCH_mia1 J6
U 1 1 5DBA714E
P 7500 3000
F 0 "J6" V 7500 2800 50  0000 C CNN
F 1 "GS4_b" H 7500 2800 50  0001 C CNN
F 2 "Libreria_PCB_mia:GS4" V 7650 2850 50  0001 C CNN
F 3 "" H 7650 3000 50  0000 C CNN
	1    7500 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 2850 7600 2750
Connection ~ 7800 2650
Wire Wire Line
	7500 2850 7500 2650
Connection ~ 7900 2750
Wire Wire Line
	7500 3300 7500 3400
Wire Wire Line
	7500 3400 7300 3400
$Comp
L Microduino_ADC_DE-rescue:GS3-conn J5
U 1 1 5DBA73E7
P 7200 2500
F 0 "J5" V 7200 2700 50  0000 C CNN
F 1 "GS3" H 7250 2301 50  0001 C CNN
F 2 "Connectors:GS3" V 7288 2426 50  0001 C CNN
F 3 "" H 7200 2500 50  0001 C CNN
	1    7200 2500
	0    -1   1    0   
$EndComp
Wire Wire Line
	7100 2300 6600 2300
Connection ~ 6600 2300
Wire Wire Line
	7300 2300 7600 2300
Wire Wire Line
	7600 2300 7600 2350
Wire Wire Line
	7200 2650 7200 2750
Wire Wire Line
	7200 2750 7400 2750
Wire Wire Line
	7400 2750 7400 2850
$Comp
L power:GND #PWR015
U 1 1 5DBA7623
P 7600 2350
F 0 "#PWR015" H 7600 2100 50  0001 C CNN
F 1 "GND" H 7600 2200 50  0000 C CNN
F 2 "" H 7600 2350 50  0001 C CNN
F 3 "" H 7600 2350 50  0001 C CNN
	1    7600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2300 7100 2350
Wire Wire Line
	7300 2300 7300 2350
$Comp
L Microduino_ADC_DE-rescue:GS3-conn J2
U 1 1 5DBA79AC
P 3050 2000
F 0 "J2" H 3050 2200 50  0000 C CNN
F 1 "GS3" H 3100 1801 50  0001 C CNN
F 2 "Connectors:GS3" V 3138 1926 50  0001 C CNN
F 3 "" H 3050 2000 50  0000 C CNN
	1    3050 2000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DBA79B2
P 3800 2500
F 0 "R2" V 3880 2500 50  0000 C CNN
F 1 "82" V 3800 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3730 2500 50  0001 C CNN
F 3 "" H 3800 2500 50  0001 C CNN
	1    3800 2500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DBA79B8
P 3550 1900
F 0 "R1" V 3630 1900 50  0000 C CNN
F 1 "110k" V 3550 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3480 1900 50  0001 C CNN
F 3 "" H 3550 1900 50  0001 C CNN
	1    3550 1900
	0    1    -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5DBA79BE
P 4200 2500
F 0 "R3" V 4280 2500 50  0000 C CNN
F 1 "20k" V 4200 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4130 2500 50  0001 C CNN
F 3 "" H 4200 2500 50  0001 C CNN
	1    4200 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DBA79C4
P 4900 2450
F 0 "C1" H 4925 2550 50  0000 L CNN
F 1 "100nF" H 4925 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4938 2300 50  0001 C CNN
F 3 "" H 4900 2450 50  0001 C CNN
	1    4900 2450
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Zener_ALT D1
U 1 1 5DBA79CA
P 5300 2450
F 0 "D1" V 5300 2550 50  0000 C CNN
F 1 "BZV55-B4V7,115" H 5300 2350 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 5300 2450 50  0001 C CNN
F 3 "" H 5300 2450 50  0001 C CNN
	1    5300 2450
	0    1    1    0   
$EndComp
$Comp
L Microduino_ADC_DE-rescue:GS3-conn J3
U 1 1 5DBA79D0
P 4550 2000
F 0 "J3" H 4550 2200 50  0000 C CNN
F 1 "GS3" H 4600 1801 50  0001 C CNN
F 2 "Connectors:GS3" V 4638 1926 50  0001 C CNN
F 3 "" H 4550 2000 50  0001 C CNN
	1    4550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2000 2900 2000
Wire Wire Line
	3200 1900 3400 1900
Wire Wire Line
	3700 1900 4200 1900
Wire Wire Line
	3200 2100 3800 2100
Wire Wire Line
	3800 2350 3800 2100
Connection ~ 3800 2100
Wire Wire Line
	4200 2350 4200 1900
Connection ~ 4200 1900
Wire Wire Line
	4700 2000 4900 2000
Wire Wire Line
	5300 2300 5300 2000
Connection ~ 5300 2000
Wire Wire Line
	4900 2300 4900 2000
Connection ~ 4900 2000
Wire Wire Line
	3800 2650 3800 2900
Wire Wire Line
	5300 2900 5300 2600
Wire Wire Line
	4900 2600 4900 2900
Connection ~ 4900 2900
Wire Wire Line
	4200 2650 4200 2900
Connection ~ 4200 2900
$Comp
L power:GND #PWR016
U 1 1 5DBA79EB
P 4900 3000
F 0 "#PWR016" H 4900 2750 50  0001 C CNN
F 1 "GND" H 4900 2850 50  0000 C CNN
F 2 "" H 4900 3000 50  0001 C CNN
F 3 "" H 4900 3000 50  0001 C CNN
	1    4900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2000 5700 3500
Wire Wire Line
	5700 3500 5900 3500
Wire Wire Line
	3800 2900 4200 2900
$Comp
L Microduino_ADC_DE-rescue:CONN_01X04-conn P3
U 1 1 5DBA7F3D
P 1900 3550
F 0 "P3" H 1900 3800 50  0000 C CNN
F 1 "CONN_01X04" V 2000 3550 50  0001 C CNN
F 2 "Libreria_PCB_mia:WHURT_4pin_90°_61900411021" H 1900 3550 50  0001 C CNN
F 3 "" H 1900 3550 50  0001 C CNN
	1    1900 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 3600 4750 3600
Wire Wire Line
	4750 3600 4750 3400
Wire Wire Line
	4750 3400 2100 3400
Wire Wire Line
	2900 3800 2700 3800
Wire Wire Line
	2700 3800 2700 3500
Wire Wire Line
	2700 3500 2100 3500
Wire Wire Line
	5900 3900 5700 3900
Wire Wire Line
	5700 3900 5700 5100
Wire Wire Line
	5700 5100 2400 5100
Wire Wire Line
	2400 5100 2400 3600
Wire Wire Line
	2400 3600 2100 3600
Wire Wire Line
	2100 3700 2100 3850
$Comp
L power:GND #PWR017
U 1 1 5DBA827F
P 2100 3850
F 0 "#PWR017" H 2100 3600 50  0001 C CNN
F 1 "GND" H 2100 3700 50  0000 C CNN
F 2 "" H 2100 3850 50  0001 C CNN
F 3 "" H 2100 3850 50  0001 C CNN
	1    2100 3850
	1    0    0    -1  
$EndComp
Text Notes 1700 3450 2    60   Italic 12
AIN1
Text Notes 1700 3550 2    60   Italic 12
AIN2
Text Notes 1700 3650 2    60   Italic 12
AIN3
Text Notes 1700 3750 2    60   Italic 12
GND
NoConn ~ 7300 3700
$Comp
L Microduino_ADC_DE-rescue:GS4_b-Libreria_SCH_mia1 J1
U 1 1 5DEB695C
P 2400 2000
F 0 "J1" H 2400 1800 50  0000 C CNN
F 1 "GS4_b" H 2400 1800 50  0001 C CNN
F 2 "Libreria_PCB_mia:GS4" H 2550 1850 50  0001 C CNN
F 3 "" H 2550 2000 50  0000 C CNN
	1    2400 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	3800 3900 4400 3900
Wire Wire Line
	4200 3700 4400 3700
Wire Wire Line
	5300 3800 5900 3800
Wire Wire Line
	4900 3800 5300 3800
Wire Wire Line
	4900 4700 5300 4700
Wire Wire Line
	4900 4700 4900 4800
Wire Wire Line
	4200 4700 4900 4700
Wire Wire Line
	5300 4700 6600 4700
Wire Wire Line
	6600 2500 6600 3200
Wire Wire Line
	6600 2500 6700 2500
Wire Wire Line
	7800 2650 9300 2650
Wire Wire Line
	7900 2750 9200 2750
Wire Wire Line
	6600 2300 6600 2500
Wire Wire Line
	3800 2100 4400 2100
Wire Wire Line
	4200 1900 4400 1900
Wire Wire Line
	5300 2000 5700 2000
Wire Wire Line
	4900 2000 5300 2000
Wire Wire Line
	4900 2900 4900 3000
Wire Wire Line
	4900 2900 5300 2900
Wire Wire Line
	4200 2900 4900 2900
$EndSCHEMATC
