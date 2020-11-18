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
L Connector:DIN-5_180degree J5
U 1 1 5FB453D9
P 8100 4250
F 0 "J5" H 8100 3975 50  0000 C CNN
F 1 "DIN-5_180degree" H 8100 3884 50  0000 C CNN
F 2 "hardware:SDS-50J" H 8100 4250 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 8100 4250 50  0001 C CNN
	1    8100 4250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J3
U 1 1 5FB4610C
P 4025 4250
F 0 "J3" H 4025 3975 50  0000 C CNN
F 1 "DIN-5_180degree" H 4025 3884 50  0000 C CNN
F 2 "hardware:SDS-50J" H 4025 4250 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 4025 4250 50  0001 C CNN
	1    4025 4250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5FB467C1
P 1225 4050
F 0 "J1" H 1333 4331 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1333 4240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1225 4050 50  0001 C CNN
F 3 "~" H 1225 4050 50  0001 C CNN
F 4 "LCD" H 1225 4050 50  0000 R CNN "Name"
	1    1225 4050
	1    0    0    -1  
$EndComp
$Comp
L Isolator:6N139 U1
U 1 1 5FB479F7
P 5300 4200
F 0 "U1" H 5300 4667 50  0000 C CNN
F 1 "6N139" H 5300 4576 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 5590 3900 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 5590 3900 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
$Comp
L hardware:Teensy3.2 J2
U 1 1 5FB4EEE5
P 3000 2025
F 0 "J2" H 3050 2842 50  0000 C CNN
F 1 "Teensy3.2" H 3050 2751 50  0000 C CNN
F 2 "hardware:Teensy3.2" H 3000 2025 50  0001 C CNN
F 3 "~" H 3000 2025 50  0001 C CNN
	1    3000 2025
	1    0    0    -1  
$EndComp
$Comp
L hardware:TeensyAudioShield3.2 J4
U 1 1 5FB51D0C
P 5225 2025
F 0 "J4" H 5275 2842 50  0000 C CNN
F 1 "TeensyAudioShield3.2" H 5275 2751 50  0000 C CNN
F 2 "hardware:TeensyArduinoShield3.2" H 5225 2025 50  0001 C CNN
F 3 "~" H 5225 2025 50  0001 C CNN
	1    5225 2025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FB63777
P 2625 1250
F 0 "#PWR0101" H 2625 1000 50  0001 C CNN
F 1 "GND" H 2630 1077 50  0000 C CNN
F 2 "" H 2625 1250 50  0001 C CNN
F 3 "" H 2625 1250 50  0001 C CNN
	1    2625 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FB6415E
P 4775 1250
F 0 "#PWR0102" H 4775 1000 50  0001 C CNN
F 1 "GND" H 4780 1077 50  0000 C CNN
F 2 "" H 4775 1250 50  0001 C CNN
F 3 "" H 4775 1250 50  0001 C CNN
	1    4775 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2625 1250 2625 1425
Wire Wire Line
	2625 1425 2800 1425
Wire Wire Line
	4775 1250 4775 1425
Wire Wire Line
	4775 1425 5025 1425
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
Text Label 2625 2125 2    50   ~ 0
MEMCS
Wire Wire Line
	2625 2125 2800 2125
Text Label 4775 2125 2    50   ~ 0
MEMCS
Wire Wire Line
	4775 2125 5025 2125
Text Label 2625 2225 2    50   ~ 0
MOSI
Text Label 4775 2225 2    50   ~ 0
MOSI
Text Label 2625 2425 2    50   ~ 0
BCLK
Text Label 4775 2425 2    50   ~ 0
BCLK
Text Label 2625 2525 2    50   ~ 0
SDCS
Text Label 4775 2525 2    50   ~ 0
SDCS
Text Label 2625 2625 2    50   ~ 0
MCLK
Text Label 4775 2625 2    50   ~ 0
MCLK
Text Label 2625 2725 2    50   ~ 0
MISO
Text Label 4775 2725 2    50   ~ 0
MISO
Wire Wire Line
	2625 2225 2800 2225
Wire Wire Line
	4775 2225 5025 2225
Wire Wire Line
	5025 2425 4775 2425
Wire Wire Line
	2625 2425 2800 2425
Wire Wire Line
	2625 2525 2800 2525
Wire Wire Line
	2625 2625 2800 2625
Wire Wire Line
	2625 2725 2800 2725
Wire Wire Line
	4775 2725 5025 2725
Wire Wire Line
	5025 2625 4775 2625
Wire Wire Line
	4775 2525 5025 2525
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
$Comp
L power:GND #PWR0109
U 1 1 5FB78D65
P 1750 3950
F 0 "#PWR0109" H 1750 3700 50  0001 C CNN
F 1 "GND" V 1755 3822 50  0000 R CNN
F 2 "" H 1750 3950 50  0001 C CNN
F 3 "" H 1750 3950 50  0001 C CNN
	1    1750 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5FB79112
P 1750 4050
F 0 "#PWR0110" H 1750 3900 50  0001 C CNN
F 1 "+5V" V 1765 4178 50  0000 L CNN
F 2 "" H 1750 4050 50  0001 C CNN
F 3 "" H 1750 4050 50  0001 C CNN
	1    1750 4050
	0    1    1    0   
$EndComp
Text Label 1750 4150 0    50   ~ 0
SDA
Text Label 1750 4250 0    50   ~ 0
SCL
Wire Wire Line
	1425 3950 1750 3950
Wire Wire Line
	1750 4050 1425 4050
Wire Wire Line
	1425 4150 1750 4150
Wire Wire Line
	1750 4250 1425 4250
Text Label 2625 1525 2    50   ~ 0
MIDI_IN
Text Label 2625 1625 2    50   ~ 0
MIDI_OUT
Wire Wire Line
	2625 1525 2800 1525
Wire Wire Line
	2625 1625 2800 1625
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
$Comp
L power:GND #PWR0115
U 1 1 5FB9ADFE
P 8100 3550
F 0 "#PWR0115" H 8100 3300 50  0001 C CNN
F 1 "GND" H 8105 3377 50  0000 C CNN
F 2 "" H 8100 3550 50  0001 C CNN
F 3 "" H 8100 3550 50  0001 C CNN
	1    8100 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 3550 8100 3950
$Comp
L power:+3.3V #PWR0116
U 1 1 5FB9E85A
P 8400 3550
F 0 "#PWR0116" H 8400 3400 50  0001 C CNN
F 1 "+3.3V" H 8415 3723 50  0000 C CNN
F 2 "" H 8400 3550 50  0001 C CNN
F 3 "" H 8400 3550 50  0001 C CNN
	1    8400 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FB9EBAF
P 8400 3825
F 0 "R4" H 8330 3779 50  0000 R CNN
F 1 "47" H 8330 3870 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 3825 50  0001 C CNN
F 3 "~" H 8400 3825 50  0001 C CNN
	1    8400 3825
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 3550 8400 3675
Wire Wire Line
	8400 3975 8400 4150
Text Label 7800 3550 1    50   ~ 0
MIDI_OUT
$Comp
L Device:R R3
U 1 1 5FBA2CF8
P 7800 3825
F 0 "R3" H 7730 3779 50  0000 R CNN
F 1 "47" H 7730 3870 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 3825 50  0001 C CNN
F 3 "~" H 7800 3825 50  0001 C CNN
	1    7800 3825
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 3550 7800 3675
Wire Wire Line
	7800 3975 7800 4150
Text Label 3525 2425 0    50   ~ 0
A2
Text Label 3525 2325 0    50   ~ 0
A3
Text Label 3525 2025 0    50   ~ 0
A6
Text Label 3525 1925 0    50   ~ 0
A7
Wire Wire Line
	3300 1925 3525 1925
Wire Wire Line
	3300 2025 3525 2025
Wire Wire Line
	3300 2325 3525 2325
Wire Wire Line
	3300 2425 3525 2425
Text Label 2625 1725 2    50   ~ 0
D2
Text Label 2625 1825 2    50   ~ 0
D3
Text Label 2625 1925 2    50   ~ 0
D4
Text Label 2625 2025 2    50   ~ 0
D5
Text Label 2625 2325 2    50   ~ 0
D8
Wire Wire Line
	2625 1725 2800 1725
Wire Wire Line
	2800 1825 2625 1825
Wire Wire Line
	2625 1925 2800 1925
Wire Wire Line
	2800 2025 2625 2025
Wire Wire Line
	2800 2325 2625 2325
$Comp
L Device:R_POT RV1
U 1 1 5FB51B6F
P 7750 1900
F 0 "RV1" H 7681 1946 50  0000 R CNN
F 1 "R_POT" H 7681 1855 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical_CircularHoles" H 7750 1900 50  0001 C CNN
F 3 "~" H 7750 1900 50  0001 C CNN
	1    7750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5FB51FC5
P 8350 1900
F 0 "RV2" H 8281 1946 50  0000 R CNN
F 1 "R_POT" H 8281 1855 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical_CircularHoles" H 8350 1900 50  0001 C CNN
F 3 "~" H 8350 1900 50  0001 C CNN
	1    8350 1900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FB524E6
P 9900 1550
F 0 "SW1" H 9900 1835 50  0000 C CNN
F 1 "SW_Push" H 9900 1744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 9900 1750 50  0001 C CNN
F 3 "~" H 9900 1750 50  0001 C CNN
	1    9900 1550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5FB52DA0
P 9900 2150
F 0 "SW2" H 9900 2435 50  0000 C CNN
F 1 "SW_Push" H 9900 2344 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 9900 2350 50  0001 C CNN
F 3 "~" H 9900 2350 50  0001 C CNN
	1    9900 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FB52F86
P 10325 1400
F 0 "R5" H 10255 1354 50  0000 R CNN
F 1 "10k" H 10255 1445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10255 1400 50  0001 C CNN
F 3 "~" H 10325 1400 50  0001 C CNN
	1    10325 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5FB55E00
P 10325 2000
F 0 "R6" H 10255 1954 50  0000 R CNN
F 1 "10k" H 10255 2045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10255 2000 50  0001 C CNN
F 3 "~" H 10325 2000 50  0001 C CNN
	1    10325 2000
	-1   0    0    1   
$EndComp
Text Label 10600 1550 0    50   ~ 0
D2
Text Label 10600 2150 0    50   ~ 0
D3
$Comp
L power:+3.3V #PWR0117
U 1 1 5FB56925
P 9500 1550
F 0 "#PWR0117" H 9500 1400 50  0001 C CNN
F 1 "+3.3V" V 9515 1678 50  0000 L CNN
F 2 "" H 9500 1550 50  0001 C CNN
F 3 "" H 9500 1550 50  0001 C CNN
	1    9500 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5FB56D78
P 9500 2150
F 0 "#PWR0118" H 9500 2000 50  0001 C CNN
F 1 "+3.3V" V 9515 2278 50  0000 L CNN
F 2 "" H 9500 2150 50  0001 C CNN
F 3 "" H 9500 2150 50  0001 C CNN
	1    9500 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5FB5718C
P 10325 1200
F 0 "#PWR0119" H 10325 950 50  0001 C CNN
F 1 "GND" H 10330 1027 50  0000 C CNN
F 2 "" H 10325 1200 50  0001 C CNN
F 3 "" H 10325 1200 50  0001 C CNN
	1    10325 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5FB5776F
P 10325 1800
F 0 "#PWR0120" H 10325 1550 50  0001 C CNN
F 1 "GND" H 10330 1627 50  0000 C CNN
F 2 "" H 10325 1800 50  0001 C CNN
F 3 "" H 10325 1800 50  0001 C CNN
	1    10325 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 1550 9700 1550
Wire Wire Line
	10100 1550 10325 1550
Wire Wire Line
	10600 1550 10325 1550
Connection ~ 10325 1550
Wire Wire Line
	10325 1200 10325 1250
Wire Wire Line
	10325 1800 10325 1850
Wire Wire Line
	9500 2150 9700 2150
Wire Wire Line
	10100 2150 10325 2150
Wire Wire Line
	10600 2150 10325 2150
Connection ~ 10325 2150
$Comp
L power:+3.3V #PWR0121
U 1 1 5FB6CE55
P 7750 2200
F 0 "#PWR0121" H 7750 2050 50  0001 C CNN
F 1 "+3.3V" H 7765 2373 50  0000 C CNN
F 2 "" H 7750 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0001 C CNN
	1    7750 2200
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 5FB6D865
P 8350 2200
F 0 "#PWR0122" H 8350 2050 50  0001 C CNN
F 1 "+3.3V" H 8365 2373 50  0000 C CNN
F 2 "" H 8350 2200 50  0001 C CNN
F 3 "" H 8350 2200 50  0001 C CNN
	1    8350 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5FB6DAFA
P 7750 1550
F 0 "#PWR0123" H 7750 1300 50  0001 C CNN
F 1 "GND" H 7755 1377 50  0000 C CNN
F 2 "" H 7750 1550 50  0001 C CNN
F 3 "" H 7750 1550 50  0001 C CNN
	1    7750 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5FB6DE82
P 8350 1550
F 0 "#PWR0124" H 8350 1300 50  0001 C CNN
F 1 "GND" H 8355 1377 50  0000 C CNN
F 2 "" H 8350 1550 50  0001 C CNN
F 3 "" H 8350 1550 50  0001 C CNN
	1    8350 1550
	-1   0    0    1   
$EndComp
Text Label 7975 1900 0    50   ~ 0
A2
Text Label 8575 1900 0    50   ~ 0
A3
Wire Wire Line
	7900 1900 7975 1900
Wire Wire Line
	7750 1550 7750 1750
Wire Wire Line
	7750 2200 7750 2050
Wire Wire Line
	8350 2200 8350 2050
Wire Wire Line
	8350 1750 8350 1550
Wire Wire Line
	8575 1900 8500 1900
$EndSCHEMATC
