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
L Connector:DIN-5_180degree J?
U 1 1 5FB453D9
P 8100 4250
F 0 "J?" H 8100 3975 50  0000 C CNN
F 1 "DIN-5_180degree" H 8100 3884 50  0000 C CNN
F 2 "" H 8100 4250 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 8100 4250 50  0001 C CNN
	1    8100 4250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J?
U 1 1 5FB4610C
P 4025 4250
F 0 "J?" H 4025 3975 50  0000 C CNN
F 1 "DIN-5_180degree" H 4025 3884 50  0000 C CNN
F 2 "" H 4025 4250 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 4025 4250 50  0001 C CNN
	1    4025 4250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5FB467C1
P 1225 4050
F 0 "J?" H 1333 4331 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1333 4240 50  0000 C CNN
F 2 "" H 1225 4050 50  0001 C CNN
F 3 "~" H 1225 4050 50  0001 C CNN
F 4 "LCD" H 1225 4050 50  0000 R CNN "Name"
	1    1225 4050
	1    0    0    -1  
$EndComp
$Comp
L Isolator:6N139 U?
U 1 1 5FB479F7
P 5300 4200
F 0 "U?" H 5300 4667 50  0000 C CNN
F 1 "6N139" H 5300 4576 50  0000 C CNN
F 2 "" H 5590 3900 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 5590 3900 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
$Comp
L hardware:Teensy3.2 J?
U 1 1 5FB4EEE5
P 3000 2025
F 0 "J?" H 3050 2842 50  0000 C CNN
F 1 "Teensy3.2" H 3050 2751 50  0000 C CNN
F 2 "" H 3000 2025 50  0001 C CNN
F 3 "~" H 3000 2025 50  0001 C CNN
	1    3000 2025
	1    0    0    -1  
$EndComp
$Comp
L hardware:TeensyAudioShield3.2 J?
U 1 1 5FB51D0C
P 5225 2025
F 0 "J?" H 5275 2842 50  0000 C CNN
F 1 "TeensyAudioShield3.2" H 5275 2751 50  0000 C CNN
F 2 "" H 5225 2025 50  0001 C CNN
F 3 "~" H 5225 2025 50  0001 C CNN
	1    5225 2025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB63777
P 2625 1250
F 0 "#PWR?" H 2625 1000 50  0001 C CNN
F 1 "GND" H 2630 1077 50  0000 C CNN
F 2 "" H 2625 1250 50  0001 C CNN
F 3 "" H 2625 1250 50  0001 C CNN
	1    2625 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB6415E
P 4775 1250
F 0 "#PWR?" H 4775 1000 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5FB64F21
P 3525 1250
F 0 "#PWR?" H 3525 1100 50  0001 C CNN
F 1 "+5V" H 3540 1423 50  0000 C CNN
F 2 "" H 3525 1250 50  0001 C CNN
F 3 "" H 3525 1250 50  0001 C CNN
	1    3525 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FB65428
P 5825 1250
F 0 "#PWR?" H 5825 1100 50  0001 C CNN
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
L power:GNDA #PWR?
U 1 1 5FB660E2
P 3725 1250
F 0 "#PWR?" H 3725 1000 50  0001 C CNN
F 1 "GNDA" H 3730 1077 50  0000 C CNN
F 2 "" H 3725 1250 50  0001 C CNN
F 3 "" H 3725 1250 50  0001 C CNN
	1    3725 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FB66E74
P 6025 1250
F 0 "#PWR?" H 6025 1000 50  0001 C CNN
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
L power:+3.3V #PWR?
U 1 1 5FB67F50
P 3950 1250
F 0 "#PWR?" H 3950 1100 50  0001 C CNN
F 1 "+3.3V" H 3965 1423 50  0000 C CNN
F 2 "" H 3950 1250 50  0001 C CNN
F 3 "" H 3950 1250 50  0001 C CNN
	1    3950 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FB68784
P 6250 1250
F 0 "#PWR?" H 6250 1100 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FB78D65
P 1750 3950
F 0 "#PWR?" H 1750 3700 50  0001 C CNN
F 1 "GND" V 1755 3822 50  0000 R CNN
F 2 "" H 1750 3950 50  0001 C CNN
F 3 "" H 1750 3950 50  0001 C CNN
	1    1750 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FB79112
P 1750 4050
F 0 "#PWR?" H 1750 3900 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FB808FE
P 5825 4400
F 0 "#PWR?" H 5825 4150 50  0001 C CNN
F 1 "GND" V 5830 4272 50  0000 R CNN
F 2 "" H 5825 4400 50  0001 C CNN
F 3 "" H 5825 4400 50  0001 C CNN
	1    5825 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 4400 5825 4400
$Comp
L Device:D D?
U 1 1 5FB8347D
P 4725 4200
F 0 "D?" V 4679 4280 50  0000 L CNN
F 1 "1N4148" V 4770 4280 50  0000 L CNN
F 2 "" H 4725 4200 50  0001 C CNN
F 3 "~" H 4725 4200 50  0001 C CNN
	1    4725 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FB83CFF
P 4500 4050
F 0 "R?" V 4293 4050 50  0000 C CNN
F 1 "220" V 4384 4050 50  0000 C CNN
F 2 "" V 4430 4050 50  0001 C CNN
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
L Device:R R?
U 1 1 5FB8CE40
P 5975 4175
F 0 "R?" V 5768 4175 50  0000 C CNN
F 1 "470" V 5859 4175 50  0000 C CNN
F 2 "" V 5905 4175 50  0001 C CNN
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
L power:+3.3V #PWR?
U 1 1 5FB8EAF6
P 6250 4175
F 0 "#PWR?" H 6250 4025 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5FB92461
P 6250 4000
F 0 "#PWR?" H 6250 3850 50  0001 C CNN
F 1 "+5V" V 6265 4128 50  0000 L CNN
F 2 "" H 6250 4000 50  0001 C CNN
F 3 "" H 6250 4000 50  0001 C CNN
	1    6250 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4000 5800 4000
$Comp
L Device:CP C?
U 1 1 5FB958A4
P 5800 3750
F 0 "C?" H 5682 3704 50  0000 R CNN
F 1 "0.1uF" H 5682 3795 50  0000 R CNN
F 2 "" H 5838 3600 50  0001 C CNN
F 3 "~" H 5800 3750 50  0001 C CNN
	1    5800 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB96646
P 5800 3525
F 0 "#PWR?" H 5800 3275 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FB9ADFE
P 8100 3550
F 0 "#PWR?" H 8100 3300 50  0001 C CNN
F 1 "GND" H 8105 3377 50  0000 C CNN
F 2 "" H 8100 3550 50  0001 C CNN
F 3 "" H 8100 3550 50  0001 C CNN
	1    8100 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 3550 8100 3950
$Comp
L power:+3.3V #PWR?
U 1 1 5FB9E85A
P 8400 3550
F 0 "#PWR?" H 8400 3400 50  0001 C CNN
F 1 "+3.3V" H 8415 3723 50  0000 C CNN
F 2 "" H 8400 3550 50  0001 C CNN
F 3 "" H 8400 3550 50  0001 C CNN
	1    8400 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FB9EBAF
P 8400 3825
F 0 "R?" H 8330 3779 50  0000 R CNN
F 1 "47" H 8330 3870 50  0000 R CNN
F 2 "" V 8330 3825 50  0001 C CNN
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
L Device:R R?
U 1 1 5FBA2CF8
P 7800 3825
F 0 "R?" H 7730 3779 50  0000 R CNN
F 1 "47" H 7730 3870 50  0000 R CNN
F 2 "" V 7730 3825 50  0001 C CNN
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
$EndSCHEMATC
