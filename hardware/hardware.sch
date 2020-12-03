EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:DIN-5_180degree J2
U 1 1 5FB4610C
P 4025 4250
F 0 "J2" H 4025 3975 50  0000 C CNN
F 1 "DIN-5_180degree" H 4025 3884 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4025 4250 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 4025 4250 50  0001 C CNN
	1    4025 4250
	-1   0    0    -1  
$EndComp
$Comp
L hardware:Teensy3.2 U1
U 1 1 5FB4EEE5
P 2800 2025
F 0 "U1" H 2850 2842 50  0000 C CNN
F 1 "Teensy3.2" H 2850 2751 50  0000 C CNN
F 2 "hardware:Teensy3.2" H 2800 2025 50  0001 C CNN
F 3 "~" H 2800 2025 50  0001 C CNN
	1    2800 2025
	1    0    0    -1  
$EndComp
$Comp
L hardware:TeensyAudioShield3.2 U2
U 1 1 5FB51D0C
P 5025 2025
F 0 "U2" H 5075 2842 50  0000 C CNN
F 1 "TeensyAudioShield3.2" H 5075 2751 50  0000 C CNN
F 2 "hardware:TeensyArduinoShield3.2" H 5025 2025 50  0001 C CNN
F 3 "~" H 5025 2025 50  0001 C CNN
	1    5025 2025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FB63777
P 2125 1250
F 0 "#PWR0101" H 2125 1000 50  0001 C CNN
F 1 "GND" H 2130 1077 50  0000 C CNN
F 2 "" H 2125 1250 50  0001 C CNN
F 3 "" H 2125 1250 50  0001 C CNN
	1    2125 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FB6415E
P 4275 1250
F 0 "#PWR0102" H 4275 1000 50  0001 C CNN
F 1 "GND" H 4280 1077 50  0000 C CNN
F 2 "" H 4275 1250 50  0001 C CNN
F 3 "" H 4275 1250 50  0001 C CNN
	1    4275 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2125 1250 2125 1425
Wire Wire Line
	2125 1425 2300 1425
Wire Wire Line
	4275 1250 4275 1425
Wire Wire Line
	4275 1425 4525 1425
$Comp
L power:+5V #PWR0103
U 1 1 5FB64F21
P 3525 1250
F 0 "#PWR0103" H 3525 1100 50  0001 C CNN
F 1 "+5V" H 3540 1423 50  0000 C CNN
F 2 "" H 3525 1250 50  0001 C CNN
F 3 "" H 3525 1250 50  0001 C CNN
	1    3525 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5FB65428
P 5825 1250
F 0 "#PWR0104" H 5825 1100 50  0001 C CNN
F 1 "+5V" H 5840 1423 50  0000 C CNN
F 2 "" H 5825 1250 50  0001 C CNN
F 3 "" H 5825 1250 50  0001 C CNN
	1    5825 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 1250 5825 1425
Wire Wire Line
	5825 1425 5525 1425
Wire Wire Line
	3300 1425 3525 1425
Wire Wire Line
	3525 1425 3525 1250
$Comp
L power:GNDA #PWR0105
U 1 1 5FB660E2
P 3725 1250
F 0 "#PWR0105" H 3725 1000 50  0001 C CNN
F 1 "GNDA" H 3730 1077 50  0000 C CNN
F 2 "" H 3725 1250 50  0001 C CNN
F 3 "" H 3725 1250 50  0001 C CNN
	1    3725 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR0106
U 1 1 5FB66E74
P 6025 1250
F 0 "#PWR0106" H 6025 1000 50  0001 C CNN
F 1 "GNDA" H 6030 1077 50  0000 C CNN
F 2 "" H 6025 1250 50  0001 C CNN
F 3 "" H 6025 1250 50  0001 C CNN
	1    6025 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 1525 3725 1525
Wire Wire Line
	3725 1525 3725 1250
Wire Wire Line
	5525 1525 6025 1525
Wire Wire Line
	6025 1525 6025 1250
$Comp
L power:+3.3V #PWR0107
U 1 1 5FB67F50
P 3950 1250
F 0 "#PWR0107" H 3950 1100 50  0001 C CNN
F 1 "+3.3V" H 3965 1423 50  0000 C CNN
F 2 "" H 3950 1250 50  0001 C CNN
F 3 "" H 3950 1250 50  0001 C CNN
	1    3950 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5FB68784
P 6250 1250
F 0 "#PWR0108" H 6250 1100 50  0001 C CNN
F 1 "+3.3V" H 6265 1423 50  0000 C CNN
F 2 "" H 6250 1250 50  0001 C CNN
F 3 "" H 6250 1250 50  0001 C CNN
	1    6250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 1625 6250 1625
Wire Wire Line
	6250 1625 6250 1250
Wire Wire Line
	3300 1625 3950 1625
Wire Wire Line
	3950 1625 3950 1250
Text Label 2125 2125 2    50   ~ 0
MEMCS
Wire Wire Line
	2125 2125 2300 2125
Text Label 4275 2125 2    50   ~ 0
MEMCS
Wire Wire Line
	4275 2125 4525 2125
Text Label 2125 2225 2    50   ~ 0
MOSI
Text Label 4275 2225 2    50   ~ 0
MOSI
Text Label 2125 2425 2    50   ~ 0
BCLK
Text Label 4275 2425 2    50   ~ 0
BCLK
Text Label 2125 2525 2    50   ~ 0
SDCS
Text Label 4275 2525 2    50   ~ 0
SDCS
Text Label 2125 2625 2    50   ~ 0
MCLK
Text Label 4275 2625 2    50   ~ 0
MCLK
Text Label 2125 2725 2    50   ~ 0
MISO
Text Label 4275 2725 2    50   ~ 0
MISO
Wire Wire Line
	2125 2225 2300 2225
Wire Wire Line
	4275 2225 4525 2225
Wire Wire Line
	4525 2425 4275 2425
Wire Wire Line
	2125 2425 2300 2425
Wire Wire Line
	2125 2525 2300 2525
Wire Wire Line
	2125 2625 2300 2625
Wire Wire Line
	2125 2725 2300 2725
Wire Wire Line
	4275 2725 4525 2725
Wire Wire Line
	4525 2625 4275 2625
Wire Wire Line
	4275 2525 4525 2525
Text Label 3525 2725 0    50   ~ 0
DOUT
Text Label 3525 2625 0    50   ~ 0
SCK
Text Label 3525 2525 0    50   ~ 0
Vol
Text Label 3525 2225 0    50   ~ 0
SDA
Text Label 3525 2125 0    50   ~ 0
SCL
Text Label 3525 1825 0    50   ~ 0
DIN
Text Label 3525 1725 0    50   ~ 0
LRCLK
Text Label 5825 1725 0    50   ~ 0
LRCLK
Text Label 5825 1825 0    50   ~ 0
DIN
Text Label 5825 2125 0    50   ~ 0
SCL
Text Label 5825 2225 0    50   ~ 0
SDA
Text Label 5825 2525 0    50   ~ 0
Vol
Text Label 5825 2625 0    50   ~ 0
SCK
Text Label 5825 2725 0    50   ~ 0
DOUT
Wire Wire Line
	3300 1725 3525 1725
Wire Wire Line
	3525 1825 3300 1825
Wire Wire Line
	3300 2125 3525 2125
Wire Wire Line
	3525 2225 3300 2225
Wire Wire Line
	3300 2525 3525 2525
Wire Wire Line
	3300 2625 3525 2625
Wire Wire Line
	3525 2725 3300 2725
Wire Wire Line
	5525 2725 5825 2725
Wire Wire Line
	5825 2625 5525 2625
Wire Wire Line
	5525 2525 5825 2525
Wire Wire Line
	5825 2225 5525 2225
Wire Wire Line
	5525 2125 5825 2125
Wire Wire Line
	5825 1825 5525 1825
Wire Wire Line
	5525 1725 5825 1725
Text Label 2125 1525 2    50   ~ 0
MIDI_IN
Text Label 2125 1625 2    50   ~ 0
MIDI_OUT
Wire Wire Line
	2125 1525 2300 1525
Wire Wire Line
	2125 1625 2300 1625
$Comp
L power:GND #PWR0111
U 1 1 5FB808FE
P 5825 4400
F 0 "#PWR0111" H 5825 4150 50  0001 C CNN
F 1 "GND" V 5830 4272 50  0000 R CNN
F 2 "" H 5825 4400 50  0001 C CNN
F 3 "" H 5825 4400 50  0001 C CNN
	1    5825 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 4400 5825 4400
$Comp
L Device:D D1
U 1 1 5FB8347D
P 4725 4200
F 0 "D1" V 4679 4280 50  0000 L CNN
F 1 "1N4148" V 4770 4280 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 4725 4200 50  0001 C CNN
F 3 "~" H 4725 4200 50  0001 C CNN
	1    4725 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FB83CFF
P 4500 4050
F 0 "R1" V 4293 4050 50  0000 C CNN
F 1 "220" V 4384 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 4050 50  0001 C CNN
F 3 "~" H 4500 4050 50  0001 C CNN
	1    4500 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4300 5000 4350
Wire Wire Line
	5000 4350 4725 4350
Wire Wire Line
	4725 4350 3625 4350
Wire Wire Line
	3625 4350 3625 4150
Wire Wire Line
	3625 4150 3725 4150
Connection ~ 4725 4350
Wire Wire Line
	5000 4100 5000 4050
Wire Wire Line
	5000 4050 4725 4050
Wire Wire Line
	4650 4050 4725 4050
Connection ~ 4725 4050
Wire Wire Line
	4350 4050 4325 4050
Wire Wire Line
	4325 4050 4325 4150
$Comp
L Device:R R2
U 1 1 5FB8CE40
P 5975 4175
F 0 "R2" V 5768 4175 50  0000 C CNN
F 1 "470" V 5859 4175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5905 4175 50  0001 C CNN
F 3 "~" H 5975 4175 50  0001 C CNN
	1    5975 4175
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4300 5800 4300
Wire Wire Line
	5800 4300 5800 4175
Wire Wire Line
	5800 4175 5825 4175
$Comp
L power:+3.3V #PWR0112
U 1 1 5FB8EAF6
P 6250 4175
F 0 "#PWR0112" H 6250 4025 50  0001 C CNN
F 1 "+3.3V" V 6265 4303 50  0000 L CNN
F 2 "" H 6250 4175 50  0001 C CNN
F 3 "" H 6250 4175 50  0001 C CNN
	1    6250 4175
	0    1    1    0   
$EndComp
Wire Wire Line
	6125 4175 6250 4175
Text Label 6250 4300 0    50   ~ 0
MIDI_IN
Wire Wire Line
	5800 4300 6250 4300
Connection ~ 5800 4300
$Comp
L power:+5V #PWR0113
U 1 1 5FB92461
P 6250 4000
F 0 "#PWR0113" H 6250 3850 50  0001 C CNN
F 1 "+5V" V 6265 4128 50  0000 L CNN
F 2 "" H 6250 4000 50  0001 C CNN
F 3 "" H 6250 4000 50  0001 C CNN
	1    6250 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4000 5800 4000
$Comp
L Device:CP C1
U 1 1 5FB958A4
P 5800 3750
F 0 "C1" H 5682 3704 50  0000 R CNN
F 1 "0.1uF" H 5682 3795 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 5838 3600 50  0001 C CNN
F 3 "~" H 5800 3750 50  0001 C CNN
	1    5800 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FB96646
P 5800 3525
F 0 "#PWR0114" H 5800 3275 50  0001 C CNN
F 1 "GND" H 5805 3352 50  0000 C CNN
F 2 "" H 5800 3525 50  0001 C CNN
F 3 "" H 5800 3525 50  0001 C CNN
	1    5800 3525
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 3900 5800 4000
Connection ~ 5800 4000
Wire Wire Line
	5800 4000 6250 4000
Wire Wire Line
	5800 3600 5800 3525
Text Label 3525 2425 0    50   ~ 0
MULT_SIG
Text Label 3525 2325 0    50   ~ 0
A3
Text Label 3525 2025 0    50   ~ 0
RGB_G
Text Label 3525 1925 0    50   ~ 0
RGB_B
Wire Wire Line
	3300 1925 3525 1925
Wire Wire Line
	3300 2025 3525 2025
Wire Wire Line
	3300 2325 3525 2325
Wire Wire Line
	3300 2425 3525 2425
Text Label 2125 1725 2    50   ~ 0
MULT_S0
Text Label 2125 1825 2    50   ~ 0
MULT_S1
Text Label 2125 1925 2    50   ~ 0
MULT_S2
Text Label 2125 2025 2    50   ~ 0
RGB_R
Text Label 2125 2325 2    50   ~ 0
MULT_S3
Wire Wire Line
	2125 1725 2300 1725
Wire Wire Line
	2300 1825 2125 1825
Wire Wire Line
	2125 1925 2300 1925
Wire Wire Line
	2300 2025 2125 2025
Wire Wire Line
	2300 2325 2125 2325
$Comp
L Device:R_POT RV1
U 1 1 5FB51B6F
P 7000 1850
F 0 "RV1" H 6931 1896 50  0000 R CNN
F 1 "R_POT" H 6931 1805 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7000 1850 50  0001 C CNN
F 3 "~" H 7000 1850 50  0001 C CNN
	1    7000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5FB51FC5
P 7600 1850
F 0 "RV2" H 7531 1896 50  0000 R CNN
F 1 "R_POT" H 7531 1805 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7600 1850 50  0001 C CNN
F 3 "~" H 7600 1850 50  0001 C CNN
	1    7600 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0121
U 1 1 5FB6CE55
P 7000 2150
F 0 "#PWR0121" H 7000 2000 50  0001 C CNN
F 1 "+3.3V" H 7015 2323 50  0000 C CNN
F 2 "" H 7000 2150 50  0001 C CNN
F 3 "" H 7000 2150 50  0001 C CNN
	1    7000 2150
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 5FB6D865
P 7600 2150
F 0 "#PWR0122" H 7600 2000 50  0001 C CNN
F 1 "+3.3V" H 7615 2323 50  0000 C CNN
F 2 "" H 7600 2150 50  0001 C CNN
F 3 "" H 7600 2150 50  0001 C CNN
	1    7600 2150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5FB6DAFA
P 7000 1500
F 0 "#PWR0123" H 7000 1250 50  0001 C CNN
F 1 "GND" H 7005 1327 50  0000 C CNN
F 2 "" H 7000 1500 50  0001 C CNN
F 3 "" H 7000 1500 50  0001 C CNN
	1    7000 1500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5FB6DE82
P 7600 1500
F 0 "#PWR0124" H 7600 1250 50  0001 C CNN
F 1 "GND" H 7605 1327 50  0000 C CNN
F 2 "" H 7600 1500 50  0001 C CNN
F 3 "" H 7600 1500 50  0001 C CNN
	1    7600 1500
	-1   0    0    1   
$EndComp
Text Label 7225 1850 0    50   ~ 0
Filter_Freq
Text Label 7825 1850 0    50   ~ 0
Filter_Res
Wire Wire Line
	7150 1850 7225 1850
Wire Wire Line
	7000 1500 7000 1700
Wire Wire Line
	7000 2150 7000 2000
Wire Wire Line
	7600 2150 7600 2000
Wire Wire Line
	7600 1700 7600 1500
Wire Wire Line
	7825 1850 7750 1850
$Comp
L Device:R_POT RV3
U 1 1 5FBB9BC9
P 8200 1850
F 0 "RV3" H 8131 1896 50  0000 R CNN
F 1 "R_POT" H 8131 1805 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8200 1850 50  0001 C CNN
F 3 "~" H 8200 1850 50  0001 C CNN
	1    8200 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5FBB9BCF
P 8800 1850
F 0 "RV4" H 8731 1896 50  0000 R CNN
F 1 "R_POT" H 8731 1805 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8800 1850 50  0001 C CNN
F 3 "~" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5FBB9BD5
P 8200 2150
F 0 "#PWR0117" H 8200 2000 50  0001 C CNN
F 1 "+3.3V" H 8215 2323 50  0000 C CNN
F 2 "" H 8200 2150 50  0001 C CNN
F 3 "" H 8200 2150 50  0001 C CNN
	1    8200 2150
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5FBB9BDB
P 8800 2150
F 0 "#PWR0118" H 8800 2000 50  0001 C CNN
F 1 "+3.3V" H 8815 2323 50  0000 C CNN
F 2 "" H 8800 2150 50  0001 C CNN
F 3 "" H 8800 2150 50  0001 C CNN
	1    8800 2150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5FBB9BE1
P 8200 1500
F 0 "#PWR0119" H 8200 1250 50  0001 C CNN
F 1 "GND" H 8205 1327 50  0000 C CNN
F 2 "" H 8200 1500 50  0001 C CNN
F 3 "" H 8200 1500 50  0001 C CNN
	1    8200 1500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5FBB9BE7
P 8800 1500
F 0 "#PWR0120" H 8800 1250 50  0001 C CNN
F 1 "GND" H 8805 1327 50  0000 C CNN
F 2 "" H 8800 1500 50  0001 C CNN
F 3 "" H 8800 1500 50  0001 C CNN
	1    8800 1500
	-1   0    0    1   
$EndComp
Text Label 8425 1850 0    50   ~ 0
ADSR_Attack
Text Label 9025 1850 0    50   ~ 0
ADSR_Decay
Wire Wire Line
	8350 1850 8425 1850
Wire Wire Line
	8200 1500 8200 1700
Wire Wire Line
	8200 2150 8200 2000
Wire Wire Line
	8800 2150 8800 2000
Wire Wire Line
	8800 1700 8800 1500
Wire Wire Line
	9025 1850 8950 1850
$Comp
L Device:R_POT RV5
U 1 1 5FBBED52
P 9400 1850
F 0 "RV5" H 9331 1896 50  0000 R CNN
F 1 "R_POT" H 9331 1805 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9400 1850 50  0001 C CNN
F 3 "~" H 9400 1850 50  0001 C CNN
	1    9400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV6
U 1 1 5FBBED58
P 10000 1850
F 0 "RV6" H 9931 1896 50  0000 R CNN
F 1 "R_POT" H 9931 1805 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10000 1850 50  0001 C CNN
F 3 "~" H 10000 1850 50  0001 C CNN
	1    10000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0125
U 1 1 5FBBED5E
P 9400 2150
F 0 "#PWR0125" H 9400 2000 50  0001 C CNN
F 1 "+3.3V" H 9415 2323 50  0000 C CNN
F 2 "" H 9400 2150 50  0001 C CNN
F 3 "" H 9400 2150 50  0001 C CNN
	1    9400 2150
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0126
U 1 1 5FBBED64
P 10000 2150
F 0 "#PWR0126" H 10000 2000 50  0001 C CNN
F 1 "+3.3V" H 10015 2323 50  0000 C CNN
F 2 "" H 10000 2150 50  0001 C CNN
F 3 "" H 10000 2150 50  0001 C CNN
	1    10000 2150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5FBBED6A
P 9400 1500
F 0 "#PWR0127" H 9400 1250 50  0001 C CNN
F 1 "GND" H 9405 1327 50  0000 C CNN
F 2 "" H 9400 1500 50  0001 C CNN
F 3 "" H 9400 1500 50  0001 C CNN
	1    9400 1500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5FBBED70
P 10000 1500
F 0 "#PWR0128" H 10000 1250 50  0001 C CNN
F 1 "GND" H 10005 1327 50  0000 C CNN
F 2 "" H 10000 1500 50  0001 C CNN
F 3 "" H 10000 1500 50  0001 C CNN
	1    10000 1500
	-1   0    0    1   
$EndComp
Text Label 9625 1850 0    50   ~ 0
ADSR_Sustain
Text Label 10225 1850 0    50   ~ 0
ADSR_Release
Wire Wire Line
	9550 1850 9625 1850
Wire Wire Line
	9400 1500 9400 1700
Wire Wire Line
	9400 2150 9400 2000
Wire Wire Line
	10000 2150 10000 2000
Wire Wire Line
	10000 1700 10000 1500
Wire Wire Line
	10225 1850 10150 1850
Text Label 1550 6950 2    50   ~ 0
MULT_SIG
Wire Wire Line
	1550 6950 1700 6950
Text Label 1550 4750 2    50   ~ 0
MULT_S0
Text Label 1550 4850 2    50   ~ 0
MULT_S1
Text Label 1550 4950 2    50   ~ 0
MULT_S2
Text Label 1550 5050 2    50   ~ 0
MULT_S3
Wire Wire Line
	1550 4750 1700 4750
Wire Wire Line
	1700 4850 1550 4850
Wire Wire Line
	1550 4950 1700 4950
Wire Wire Line
	1700 5050 1550 5050
Text Label 1550 5250 2    50   ~ 0
Filter_Freq
Text Label 1550 5350 2    50   ~ 0
Filter_Res
Text Label 1550 5450 2    50   ~ 0
ADSR_Attack
Text Label 1550 5550 2    50   ~ 0
ADSR_Decay
Text Label 1550 5650 2    50   ~ 0
ADSR_Sustain
Text Label 1550 5750 2    50   ~ 0
ADSR_Release
$Comp
L Switch:SW_Push SW1
U 1 1 5FBF826F
P 6750 5450
F 0 "SW1" H 6750 5735 50  0000 C CNN
F 1 "SW_Push" H 6750 5644 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6750 5650 50  0001 C CNN
F 3 "~" H 6750 5650 50  0001 C CNN
	1    6750 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0131
U 1 1 5FBF851C
P 6400 5450
F 0 "#PWR0131" H 6400 5300 50  0001 C CNN
F 1 "+3.3V" V 6415 5578 50  0000 L CNN
F 2 "" H 6400 5450 50  0001 C CNN
F 3 "" H 6400 5450 50  0001 C CNN
	1    6400 5450
	0    -1   -1   0   
$EndComp
Text Label 1550 5850 2    50   ~ 0
OSC1_WAV
Text Label 7100 5450 0    50   ~ 0
OSC1_WAV
Wire Wire Line
	6400 5450 6550 5450
Wire Wire Line
	6950 5450 7000 5450
$Comp
L BOB-09056:BOB-09056 TB1
U 1 1 5FC108A3
P 2200 5850
F 0 "TB1" H 2200 7617 50  0000 C CNN
F 1 "BOB-09056" H 2200 7526 50  0000 C CNN
F 2 "XDCR_BOB-09056" H 2200 5850 50  0001 L BNN
F 3 "" H 2200 5850 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 2200 5850 50  0001 L BNN "STANDARD"
F 5 "N/A" H 2200 5850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "SparkFun Electronics" H 2200 5850 50  0001 L BNN "MANUFACTURER"
F 7 "N/A" H 2200 5850 50  0001 L BNN "PARTREV"
	1    2200 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5FC17AFF
P 2900 7350
F 0 "#PWR0129" H 2900 7100 50  0001 C CNN
F 1 "GND" V 2905 7222 50  0000 R CNN
F 2 "" H 2900 7350 50  0001 C CNN
F 3 "" H 2900 7350 50  0001 C CNN
	1    2900 7350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5FC184AB
P 1500 4550
F 0 "#PWR0130" H 1500 4300 50  0001 C CNN
F 1 "GND" V 1505 4422 50  0000 R CNN
F 2 "" H 1500 4550 50  0001 C CNN
F 3 "" H 1500 4550 50  0001 C CNN
	1    1500 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 4550 1500 4550
Wire Wire Line
	2900 7350 2700 7350
$Comp
L power:+3.3V #PWR0132
U 1 1 5FC260F2
P 2900 4350
F 0 "#PWR0132" H 2900 4200 50  0001 C CNN
F 1 "+3.3V" V 2915 4478 50  0000 L CNN
F 2 "" H 2900 4350 50  0001 C CNN
F 3 "" H 2900 4350 50  0001 C CNN
	1    2900 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 4350 2700 4350
Wire Wire Line
	1550 5250 1700 5250
Wire Wire Line
	1700 5350 1550 5350
Wire Wire Line
	1550 5450 1700 5450
Wire Wire Line
	1700 5550 1550 5550
Wire Wire Line
	1550 5650 1700 5650
Wire Wire Line
	1700 5750 1550 5750
Wire Wire Line
	1550 5850 1700 5850
$Comp
L Switch:SW_Push SW2
U 1 1 5FBF55B0
P 6750 5825
F 0 "SW2" H 6750 6110 50  0000 C CNN
F 1 "SW_Push" H 6750 6019 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6750 6025 50  0001 C CNN
F 3 "~" H 6750 6025 50  0001 C CNN
	1    6750 5825
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0133
U 1 1 5FBF60CB
P 6400 5825
F 0 "#PWR0133" H 6400 5675 50  0001 C CNN
F 1 "+3.3V" V 6415 5953 50  0000 L CNN
F 2 "" H 6400 5825 50  0001 C CNN
F 3 "" H 6400 5825 50  0001 C CNN
	1    6400 5825
	0    -1   -1   0   
$EndComp
Text Label 7100 5825 0    50   ~ 0
LFO1_WAV
Wire Wire Line
	6400 5825 6550 5825
Wire Wire Line
	6950 5825 7000 5825
Text Label 1550 6150 2    50   ~ 0
LFO1_WAV
Text Label 1550 5950 2    50   ~ 0
LFO1_Amp
Text Label 1550 6050 2    50   ~ 0
LFO1_Freq
Wire Wire Line
	1550 5950 1700 5950
Wire Wire Line
	1550 6050 1700 6050
Wire Wire Line
	1550 6150 1700 6150
$Comp
L Device:R_POT RV7
U 1 1 5FC14CF2
P 9425 3075
F 0 "RV7" H 9356 3121 50  0000 R CNN
F 1 "R_POT" H 9356 3030 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9425 3075 50  0001 C CNN
F 3 "~" H 9425 3075 50  0001 C CNN
	1    9425 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV8
U 1 1 5FC14CF8
P 10025 3075
F 0 "RV8" H 9956 3121 50  0000 R CNN
F 1 "R_POT" H 9956 3030 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10025 3075 50  0001 C CNN
F 3 "~" H 10025 3075 50  0001 C CNN
	1    10025 3075
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0134
U 1 1 5FC14CFE
P 9425 3375
F 0 "#PWR0134" H 9425 3225 50  0001 C CNN
F 1 "+3.3V" H 9440 3548 50  0000 C CNN
F 2 "" H 9425 3375 50  0001 C CNN
F 3 "" H 9425 3375 50  0001 C CNN
	1    9425 3375
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0135
U 1 1 5FC14D04
P 10025 3375
F 0 "#PWR0135" H 10025 3225 50  0001 C CNN
F 1 "+3.3V" H 10040 3548 50  0000 C CNN
F 2 "" H 10025 3375 50  0001 C CNN
F 3 "" H 10025 3375 50  0001 C CNN
	1    10025 3375
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5FC14D0A
P 9425 2725
F 0 "#PWR0136" H 9425 2475 50  0001 C CNN
F 1 "GND" H 9430 2552 50  0000 C CNN
F 2 "" H 9425 2725 50  0001 C CNN
F 3 "" H 9425 2725 50  0001 C CNN
	1    9425 2725
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5FC14D10
P 10025 2725
F 0 "#PWR0137" H 10025 2475 50  0001 C CNN
F 1 "GND" H 10030 2552 50  0000 C CNN
F 2 "" H 10025 2725 50  0001 C CNN
F 3 "" H 10025 2725 50  0001 C CNN
	1    10025 2725
	-1   0    0    1   
$EndComp
Text Label 9650 3075 0    50   ~ 0
LFO1_Amp
Text Label 10250 3075 0    50   ~ 0
LFO1_Freq
Wire Wire Line
	9575 3075 9650 3075
Wire Wire Line
	9425 2725 9425 2925
Wire Wire Line
	9425 3375 9425 3225
Wire Wire Line
	10025 3375 10025 3225
Wire Wire Line
	10025 2925 10025 2725
Wire Wire Line
	10250 3075 10175 3075
$Comp
L Device:R R6
U 1 1 5FC596A5
P 7250 5225
F 0 "R6" V 7043 5225 50  0000 C CNN
F 1 "10k" V 7134 5225 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7180 5225 50  0001 C CNN
F 3 "~" H 7250 5225 50  0001 C CNN
	1    7250 5225
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FC59B0F
P 7225 5625
F 0 "R5" V 7018 5625 50  0000 C CNN
F 1 "10k" V 7109 5625 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7155 5625 50  0001 C CNN
F 3 "~" H 7225 5625 50  0001 C CNN
	1    7225 5625
	0    1    1    0   
$EndComp
$Comp
L Isolator:6N138 U3
U 1 1 5FC5ACDD
P 5300 4200
F 0 "U3" H 5300 4667 50  0000 C CNN
F 1 "6N138" H 5300 4576 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 5590 3900 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 5590 3900 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5450 7000 5225
Wire Wire Line
	7000 5225 7100 5225
Connection ~ 7000 5450
Wire Wire Line
	7000 5450 7100 5450
Wire Wire Line
	7000 5825 7000 5625
Wire Wire Line
	7000 5625 7075 5625
Connection ~ 7000 5825
Wire Wire Line
	7000 5825 7100 5825
$Comp
L power:GND #PWR0138
U 1 1 5FC7A329
P 7550 5225
F 0 "#PWR0138" H 7550 4975 50  0001 C CNN
F 1 "GND" V 7555 5097 50  0000 R CNN
F 2 "" H 7550 5225 50  0001 C CNN
F 3 "" H 7550 5225 50  0001 C CNN
	1    7550 5225
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5FC7A6DB
P 7550 5625
F 0 "#PWR0139" H 7550 5375 50  0001 C CNN
F 1 "GND" V 7555 5497 50  0000 R CNN
F 2 "" H 7550 5625 50  0001 C CNN
F 3 "" H 7550 5625 50  0001 C CNN
	1    7550 5625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 5225 7550 5225
Wire Wire Line
	7375 5625 7550 5625
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5FC915AD
P 1525 3450
F 0 "J1" H 1633 3831 50  0000 C CNN
F 1 "Conn_01x05_Male" H 1633 3740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1525 3450 50  0001 C CNN
F 3 "~" H 1525 3450 50  0001 C CNN
	1    1525 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FC9263B
P 1900 3250
F 0 "#PWR0109" H 1900 3000 50  0001 C CNN
F 1 "GND" V 1905 3122 50  0000 R CNN
F 2 "" H 1900 3250 50  0001 C CNN
F 3 "" H 1900 3250 50  0001 C CNN
	1    1900 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5FC92D02
P 1900 3350
F 0 "#PWR0110" H 1900 3200 50  0001 C CNN
F 1 "+5V" V 1915 3478 50  0000 L CNN
F 2 "" H 1900 3350 50  0001 C CNN
F 3 "" H 1900 3350 50  0001 C CNN
	1    1900 3350
	0    1    1    0   
$EndComp
Text Label 1900 3450 0    50   ~ 0
RGB_R
Text Label 1900 3550 0    50   ~ 0
RGB_G
Text Label 1900 3650 0    50   ~ 0
RGB_B
Wire Wire Line
	1725 3250 1900 3250
Wire Wire Line
	1900 3350 1725 3350
Wire Wire Line
	1725 3450 1900 3450
Wire Wire Line
	1900 3550 1725 3550
Wire Wire Line
	1725 3650 1900 3650
$EndSCHEMATC
