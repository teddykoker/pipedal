EESchema Schematic File Version 4
LIBS:practicum-cache
EELAYER 26 0
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
L custom_symbols:Non-Latching_DPDT_Relay U1
U 1 1 5C461B01
P 3150 2800
F 0 "U1" H 3450 2750 60  0000 L CNN
F 1 "Non-Latching_DPDT_Relay" H 2850 2850 39  0000 L CNN
F 2 "custom_footprints:EC2-5NU_KEMET_Relay" H 3100 2900 60  0001 C CNN
F 3 "" H 3100 2900 60  0001 C CNN
	1    3150 2800
	0    1    -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C461D36
P 3700 4600
F 0 "R1" V 3600 4600 50  0000 C CNN
F 1 "100K" V 3700 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3630 4600 50  0001 C CNN
F 3 "~" H 3700 4600 50  0001 C CNN
	1    3700 4600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5C4620E5
P 2800 3600
F 0 "#PWR0101" H 2800 3450 50  0001 C CNN
F 1 "+5V" H 2815 3773 50  0000 C CNN
F 2 "" H 2800 3600 50  0001 C CNN
F 3 "" H 2800 3600 50  0001 C CNN
	1    2800 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C4621E6
P 3300 4700
F 0 "#PWR0102" H 3300 4450 50  0001 C CNN
F 1 "GND" H 3305 4527 50  0000 C CNN
F 2 "" H 3300 4700 50  0001 C CNN
F 3 "" H 3300 4700 50  0001 C CNN
	1    3300 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 4700 3300 4600
Text GLabel 2600 3050 0    50   Input ~ 0
PASS
Text GLabel 3700 3050 2    50   Input ~ 0
PASS
Text GLabel 2600 2550 0    50   Input ~ 0
FUZZ_IN
Text GLabel 3700 2550 2    50   Input ~ 0
FUZZ_OUT
$Comp
L power:+5V #PWR0103
U 1 1 5C4629C3
P 5300 1350
F 0 "#PWR0103" H 5300 1200 50  0001 C CNN
F 1 "+5V" H 5315 1523 50  0000 C CNN
F 2 "" H 5300 1350 50  0001 C CNN
F 3 "" H 5300 1350 50  0001 C CNN
	1    5300 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0104
U 1 1 5C4629D8
P 4300 1350
F 0 "#PWR0104" H 4300 1200 50  0001 C CNN
F 1 "+9V" H 4315 1523 50  0000 C CNN
F 2 "" H 4300 1350 50  0001 C CNN
F 3 "" H 4300 1350 50  0001 C CNN
	1    4300 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C462B0E
P 4300 1700
F 0 "C7" H 4150 1800 50  0000 L CNN
F 1 "1u" H 4150 1600 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4338 1550 50  0001 C CNN
F 3 "~" H 4300 1700 50  0001 C CNN
F 4 "Ceramic-Blue" V 4450 1700 30  0000 C CNN "Type"
	1    4300 1700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U3
U 1 1 5C462BFD
P 4800 1450
F 0 "U3" H 4800 1692 50  0000 C CNN
F 1 "L7805" H 4800 1601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4825 1300 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4800 1400 50  0001 C CNN
	1    4800 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C462CF9
P 4800 1950
F 0 "#PWR0105" H 4800 1700 50  0001 C CNN
F 1 "GND" H 4805 1777 50  0000 C CNN
F 2 "" H 4800 1950 50  0001 C CNN
F 3 "" H 4800 1950 50  0001 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1750 4800 1900
Wire Wire Line
	4800 1900 5300 1900
Wire Wire Line
	5300 1900 5300 1850
Connection ~ 4800 1900
Wire Wire Line
	4800 1900 4800 1950
Wire Wire Line
	4300 1850 4300 1900
Wire Wire Line
	4300 1900 4800 1900
Wire Wire Line
	5300 1550 5300 1450
Wire Wire Line
	5100 1450 5300 1450
Connection ~ 5300 1450
Wire Wire Line
	5300 1450 5300 1350
Wire Wire Line
	4500 1450 4300 1450
Wire Wire Line
	4300 1450 4300 1350
Wire Wire Line
	4300 1550 4300 1450
Connection ~ 4300 1450
$Comp
L Device:C C9
U 1 1 5C46340F
P 5650 1700
F 0 "C9" H 5765 1746 50  0000 L CNN
F 1 "47u" H 5765 1655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 5688 1550 50  0001 C CNN
F 3 "~" H 5650 1700 50  0001 C CNN
	1    5650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1850 5650 1900
Wire Wire Line
	5650 1900 5300 1900
Connection ~ 5300 1900
Wire Wire Line
	5300 1450 5650 1450
Wire Wire Line
	5650 1450 5650 1550
$Comp
L Device:C C8
U 1 1 5C4639A9
P 5300 1700
F 0 "C8" H 5350 1800 50  0000 L CNN
F 1 "1u" H 5350 1600 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5338 1550 50  0001 C CNN
F 3 "~" H 5300 1700 50  0001 C CNN
F 4 "Ceramic-Blue" V 5150 1700 30  0000 C CNN "Type"
	1    5300 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C463A3E
P 3950 1700
F 0 "C6" H 3750 1750 50  0000 L CNN
F 1 "47u" H 3700 1650 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 3988 1550 50  0001 C CNN
F 3 "~" H 3950 1700 50  0001 C CNN
	1    3950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1850 3950 1900
Wire Wire Line
	3950 1900 4300 1900
Connection ~ 4300 1900
Wire Wire Line
	4300 1450 3950 1450
Wire Wire Line
	3950 1450 3950 1550
Text GLabel 4050 4400 2    50   Input ~ 0
ON-OFF
$Comp
L Device:Q_NPN_CBE Q2
U 1 1 5C465B07
P 6300 2600
F 0 "Q2" H 6491 2646 50  0000 L CNN
F 1 "BC548C" H 6491 2555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6500 2700 50  0001 C CNN
F 3 "~" H 6300 2600 50  0001 C CNN
	1    6300 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q3
U 1 1 5C465B95
P 6850 2300
F 0 "Q3" H 7041 2346 50  0000 L CNN
F 1 "BC548C" H 7041 2255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 7050 2400 50  0001 C CNN
F 3 "~" H 6850 2300 50  0001 C CNN
	1    6850 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5C465BDF
P 6400 2800
F 0 "#PWR0107" H 6400 2550 50  0001 C CNN
F 1 "GND" V 6500 2750 50  0000 C CNN
F 2 "" H 6400 2800 50  0001 C CNN
F 3 "" H 6400 2800 50  0001 C CNN
	1    6400 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C465C45
P 6400 2050
F 0 "R4" V 6300 2050 50  0000 C CNN
F 1 "33K" V 6400 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6330 2050 50  0001 C CNN
F 3 "~" H 6400 2050 50  0001 C CNN
	1    6400 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5C465CA0
P 6150 2300
F 0 "C3" V 6050 2350 50  0000 L CNN
F 1 "150p" V 6300 2250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6188 2150 50  0001 C CNN
F 3 "~" H 6150 2300 50  0001 C CNN
	1    6150 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5C466141
P 5550 2600
F 0 "C2" V 5400 2600 50  0000 C CNN
F 1 "4.7u" V 5711 2600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5550 2600 50  0001 C CNN
F 3 "~" H 5550 2600 50  0001 C CNN
	1    5550 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C4661F8
P 5200 2900
F 0 "R2" V 5100 2900 50  0000 C CNN
F 1 "1M" V 5200 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5130 2900 50  0001 C CNN
F 3 "~" H 5200 2900 50  0001 C CNN
	1    5200 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5C466391
P 6300 3050
F 0 "R3" V 6200 3050 50  0000 C CNN
F 1 "100K" V 6300 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6230 3050 50  0001 C CNN
F 3 "~" H 6300 3050 50  0001 C CNN
	1    6300 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3050 5950 3050
Wire Wire Line
	5950 3050 5950 2600
Wire Wire Line
	5950 2300 6000 2300
Wire Wire Line
	5950 2600 6100 2600
Connection ~ 5950 2600
Wire Wire Line
	5950 2600 5700 2600
Wire Wire Line
	5400 2600 5200 2600
Wire Wire Line
	5200 2600 5200 2750
$Comp
L power:GND #PWR0108
U 1 1 5C467E95
P 5200 3050
F 0 "#PWR0108" H 5200 2800 50  0001 C CNN
F 1 "GND" H 5200 2900 50  0000 C CNN
F 2 "" H 5200 3050 50  0001 C CNN
F 3 "" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3050 6950 3050
Wire Wire Line
	6950 3050 6950 2500
Wire Wire Line
	6400 2400 6400 2300
Wire Wire Line
	6300 2300 6400 2300
Connection ~ 6400 2300
Wire Wire Line
	6400 2300 6400 2200
Wire Wire Line
	6400 2300 6650 2300
Wire Wire Line
	5950 2300 5950 2600
Connection ~ 6950 3050
$Comp
L power:+9V #PWR0109
U 1 1 5C46C964
P 6400 1550
F 0 "#PWR0109" H 6400 1400 50  0001 C CNN
F 1 "+9V" H 6415 1723 50  0000 C CNN
F 2 "" H 6400 1550 50  0001 C CNN
F 3 "" H 6400 1550 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5C46CA47
P 6950 1850
F 0 "RV1" H 7150 2000 50  0000 R CNN
F 1 "25K" V 6950 1900 50  0000 R CNN
F 2 "custom_footprints:3362P" H 6950 1850 50  0001 C CNN
F 3 "~" H 6950 1850 50  0001 C CNN
F 4 "TRIM" V 6850 1850 50  0000 C CNN "Type"
	1    6950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2100 6950 2000
Wire Wire Line
	7100 1850 7150 1850
Wire Wire Line
	7150 1850 7150 1650
Wire Wire Line
	7150 1650 6950 1650
Wire Wire Line
	6950 1650 6950 1700
Text GLabel 5200 2500 1    50   Input ~ 0
FUZZ_IN
$Comp
L Device:R R5
U 1 1 5C4727C2
P 6650 1650
F 0 "R5" V 6550 1650 50  0000 C CNN
F 1 "330" V 6650 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6580 1650 50  0001 C CNN
F 3 "~" H 6650 1650 50  0001 C CNN
	1    6650 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 1650 6950 1650
Connection ~ 6950 1650
Wire Wire Line
	6500 1650 6400 1650
Wire Wire Line
	6400 1650 6400 1900
Wire Wire Line
	6400 1550 6400 1650
Connection ~ 6400 1650
$Comp
L Device:C C5
U 1 1 5C477CCF
P 7400 1850
F 0 "C5" V 7300 1900 50  0000 L CNN
F 1 "10n" V 7550 1750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7438 1700 50  0001 C CNN
F 3 "~" H 7400 1850 50  0001 C CNN
	1    7400 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 1850 7150 1850
Connection ~ 7150 1850
$Comp
L Device:CP1 C4
U 1 1 5C46B529
P 6950 4500
F 0 "C4" V 6800 4500 50  0000 C CNN
F 1 "22u" V 7111 4500 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6950 4500 50  0001 C CNN
F 3 "~" H 6950 4500 50  0001 C CNN
	1    6950 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5C46B659
P 6950 4650
F 0 "#PWR0111" H 6950 4400 50  0001 C CNN
F 1 "GND" H 6955 4477 50  0000 C CNN
F 2 "" H 6950 4650 50  0001 C CNN
F 3 "" H 6950 4650 50  0001 C CNN
	1    6950 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5C470B31
P 6300 3400
F 0 "#PWR0112" H 6300 3250 50  0001 C CNN
F 1 "+5V" H 6300 3550 50  0000 C CNN
F 2 "" H 6300 3400 50  0001 C CNN
F 3 "" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C4738E6
P 6300 4400
F 0 "#PWR0113" H 6300 4150 50  0001 C CNN
F 1 "GND" H 6305 4227 50  0000 C CNN
F 2 "" H 6300 4400 50  0001 C CNN
F 3 "" H 6300 4400 50  0001 C CNN
	1    6300 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C489FCF
P 7500 4100
F 0 "R7" V 7400 4100 50  0000 C CNN
F 1 "1K" V 7500 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7430 4100 50  0001 C CNN
F 3 "~" H 7500 4100 50  0001 C CNN
	1    7500 4100
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5C48A056
P 7500 3950
F 0 "#PWR0114" H 7500 3800 50  0001 C CNN
F 1 "+5V" H 7515 4123 50  0000 C CNN
F 2 "" H 7500 3950 50  0001 C CNN
F 3 "" H 7500 3950 50  0001 C CNN
	1    7500 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_DGS Q4
U 1 1 5C490598
P 3400 4400
F 0 "Q4" H 3605 4446 50  0000 L CNN
F 1 "BS170" H 3605 4355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3600 4500 50  0001 C CNN
F 3 "~" H 3400 4400 50  0001 C CNN
	1    3400 4400
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 5C4907FD
P 2150 4400
F 0 "Q1" H 2356 4446 50  0000 L CNN
F 1 "BS170" H 2356 4355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 2350 4500 50  0001 C CNN
F 3 "~" H 2150 4400 50  0001 C CNN
	1    2150 4400
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 5C4A9A7B
P 2050 4050
F 0 "D1" H 2041 4266 50  0000 C CNN
F 1 "LED_ALT" H 2041 4175 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2050 4050 50  0001 C CNN
F 3 "~" H 2050 4050 50  0001 C CNN
	1    2050 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5C4A9B1D
P 2050 3750
F 0 "R6" V 1950 3750 50  0000 C CNN
F 1 "1K" V 2050 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1980 3750 50  0001 C CNN
F 3 "~" H 2050 3750 50  0001 C CNN
	1    2050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5C4B5EFD
P 2050 4600
F 0 "#PWR0115" H 2050 4350 50  0001 C CNN
F 1 "GND" H 2055 4427 50  0000 C CNN
F 2 "" H 2050 4600 50  0001 C CNN
F 3 "" H 2050 4600 50  0001 C CNN
	1    2050 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5C4B6008
P 2050 3600
F 0 "#PWR0116" H 2050 3450 50  0001 C CNN
F 1 "+5V" H 2065 3773 50  0000 C CNN
F 2 "" H 2050 3600 50  0001 C CNN
F 3 "" H 2050 3600 50  0001 C CNN
	1    2050 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5C4C5205
P 3700 4800
F 0 "#PWR0117" H 3700 4550 50  0001 C CNN
F 1 "GND" H 3705 4627 50  0000 C CNN
F 2 "" H 3700 4800 50  0001 C CNN
F 3 "" H 3700 4800 50  0001 C CNN
	1    3700 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 4800 3700 4750
Wire Wire Line
	3700 4450 3700 4400
Wire Wire Line
	3700 4400 3600 4400
Text GLabel 8700 1850 2    50   Input ~ 0
FUZZ_OUT
Wire Wire Line
	6700 3800 6950 3800
Wire Wire Line
	6300 4400 6300 4350
Wire Wire Line
	6300 4350 6750 4350
Wire Wire Line
	6750 4350 6750 4000
Wire Wire Line
	6750 4000 6700 4000
Connection ~ 6300 4350
Wire Wire Line
	6300 4350 6300 4300
Wire Wire Line
	6700 3900 6950 3900
Wire Wire Line
	6950 3900 6950 4350
Text GLabel 2350 4400 2    50   Input ~ 0
ON-OFF
$Comp
L Potentiometer_Digital:MCP4161 U2
U 1 1 5C48B671
P 6300 3900
F 0 "U2" H 6500 4150 50  0000 C CNN
F 1 "MCP4161" H 6550 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6300 3900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11195c.pdf" H 6300 3900 50  0001 C CNN
F 4 "5K Fuzz Digipot" H 5900 3500 50  0000 C CNN "Variant"
	1    6300 3900
	1    0    0    -1  
$EndComp
Text GLabel 5900 3750 0    50   Input ~ 0
SCK
Text GLabel 5900 3900 0    50   Input ~ 0
SDIO
Text GLabel 5900 4050 0    50   Input ~ 0
CS_FUZZ
$Comp
L Connector:Jack-DC J1
U 1 1 5C492EF2
P 3200 1550
F 0 "J1" H 3255 1875 50  0000 C CNN
F 1 "Jack-DC" H 3255 1784 50  0000 C CNN
F 2 "custom_footprints:BarrelJack_Horizontal" H 3250 1510 50  0001 C CNN
F 3 "~" H 3250 1510 50  0001 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5C495850
P 3550 1700
F 0 "#PWR0118" H 3550 1450 50  0001 C CNN
F 1 "GND" H 3555 1527 50  0000 C CNN
F 2 "" H 3550 1700 50  0001 C CNN
F 3 "" H 3550 1700 50  0001 C CNN
	1    3550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1450 3950 1450
Connection ~ 3950 1450
Wire Wire Line
	3500 1650 3550 1650
Wire Wire Line
	3550 1650 3550 1700
Wire Wire Line
	2800 3600 2800 3650
Wire Wire Line
	2800 3650 3000 3650
Wire Wire Line
	3000 3650 3000 3550
Connection ~ 3700 4400
Wire Wire Line
	3300 3550 3300 4200
Text GLabel 7900 2900 3    50   Input ~ 0
SCK
Text GLabel 8050 2900 3    50   Input ~ 0
SDIO
Text GLabel 8200 2900 3    50   Input ~ 0
CS_VOL
$Comp
L power:+5V #PWR0121
U 1 1 5C539778
P 7550 2450
F 0 "#PWR0121" H 7550 2300 50  0001 C CNN
F 1 "+5V" H 7550 2600 50  0000 C CNN
F 2 "" H 7550 2450 50  0001 C CNN
F 3 "" H 7550 2450 50  0001 C CNN
	1    7550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5C539A6F
P 8550 2550
F 0 "#PWR0122" H 8550 2300 50  0001 C CNN
F 1 "GND" H 8555 2377 50  0000 C CNN
F 2 "" H 8550 2550 50  0001 C CNN
F 3 "" H 8550 2550 50  0001 C CNN
	1    8550 2550
	1    0    0    -1  
$EndComp
$Comp
L Potentiometer_Digital:MCP4161 U4
U 1 1 5C539ABF
P 8050 2500
F 0 "U4" H 8250 2750 50  0000 C CNN
F 1 "MCP4161" V 8400 2850 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8050 2500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11195c.pdf" H 8050 2500 50  0001 C CNN
F 4 "100K Fuzz Digipot" V 7700 1950 50  0000 C CNN "Variant"
	1    8050 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 2500 7550 2500
Wire Wire Line
	7550 2500 7550 2450
Wire Wire Line
	8550 2550 8550 2500
Wire Wire Line
	8450 2500 8550 2500
Wire Wire Line
	7950 1850 7950 2100
Wire Wire Line
	8050 2100 8050 1850
Wire Wire Line
	8150 2100 8550 2100
Wire Wire Line
	8550 2100 8550 2500
Connection ~ 8550 2500
Text GLabel 4250 3700 3    50   Input ~ 0
CS_FUZZ
Text GLabel 4650 3700 3    50   Input ~ 0
SDIO
Text GLabel 4450 3700 3    50   Input ~ 0
SCK
Text GLabel 4900 4600 3    50   Input ~ 0
FUZZ_IN
Text GLabel 5100 4600 3    50   Input ~ 0
FUZZ_OUT
Text GLabel 4050 3700 3    50   Input ~ 0
CS_VOL
Text GLabel 7500 4700 3    50   Input ~ 0
ON-OFF
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5C4C3967
P 8200 3700
F 0 "J4" V 8166 3512 50  0000 R CNN
F 1 "Conn_01x03" V 8300 3900 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8200 3700 50  0001 C CNN
F 3 "~" H 8200 3700 50  0001 C CNN
	1    8200 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0123
U 1 1 5C4C3D68
P 7950 3500
F 0 "#PWR0123" H 7950 3350 50  0001 C CNN
F 1 "+9V" H 8000 3650 50  0000 C CNN
F 2 "" H 7950 3500 50  0001 C CNN
F 3 "" H 7950 3500 50  0001 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 5C4C3DBF
P 7950 3900
F 0 "#PWR0124" H 7950 3750 50  0001 C CNN
F 1 "+5V" H 8000 4050 50  0000 C CNN
F 2 "" H 7950 3900 50  0001 C CNN
F 3 "" H 7950 3900 50  0001 C CNN
	1    7950 3900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5C4C3E62
P 7750 3750
F 0 "#PWR0125" H 7750 3500 50  0001 C CNN
F 1 "GND" H 7750 3600 50  0000 C CNN
F 2 "" H 7750 3750 50  0001 C CNN
F 3 "" H 7750 3750 50  0001 C CNN
	1    7750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3800 8000 3800
Wire Wire Line
	7950 3500 7950 3600
Wire Wire Line
	7950 3600 8000 3600
$Comp
L power:GND #PWR0127
U 1 1 5C5E7C08
P 4850 3700
F 0 "#PWR0127" H 4850 3450 50  0001 C CNN
F 1 "GND" H 4855 3527 50  0000 C CNN
F 2 "" H 4850 3700 50  0001 C CNN
F 3 "" H 4850 3700 50  0001 C CNN
	1    4850 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 2500 5200 2600
Connection ~ 5200 2600
Wire Wire Line
	6950 3050 6950 3800
Wire Wire Line
	7550 1850 7950 1850
Wire Wire Line
	8050 1850 8700 1850
Text GLabel 4350 2650 1    50   Input ~ 0
OUT_T
Text GLabel 2050 2550 1    50   Input ~ 0
IN_T
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5C62B340
P 4700 2800
F 0 "J3" H 4650 2600 50  0000 L CNN
F 1 "Conn_01x02" V 4850 2500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 2800 50  0001 C CNN
F 3 "~" H 4700 2800 50  0001 C CNN
	1    4700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2800 4350 2800
Wire Wire Line
	4350 2650 4350 2800
Connection ~ 4350 2800
Wire Wire Line
	4350 2800 3700 2800
$Comp
L power:GND #PWR0106
U 1 1 5C64AA73
P 4400 2950
F 0 "#PWR0106" H 4400 2700 50  0001 C CNN
F 1 "GND" H 4405 2777 50  0000 C CNN
F 2 "" H 4400 2950 50  0001 C CNN
F 3 "" H 4400 2950 50  0001 C CNN
	1    4400 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 2950 4400 2900
Wire Wire Line
	4400 2900 4500 2900
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5C64F12E
P 1800 2800
F 0 "J2" H 1750 2600 50  0000 L CNN
F 1 "Conn_01x02" V 1950 2500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1800 2800 50  0001 C CNN
F 3 "~" H 1800 2800 50  0001 C CNN
	1    1800 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 2800 2050 2800
Wire Wire Line
	2050 2550 2050 2800
Connection ~ 2050 2800
Wire Wire Line
	2050 2800 2600 2800
$Comp
L power:GND #PWR0110
U 1 1 5C65C0BD
P 2100 2950
F 0 "#PWR0110" H 2100 2700 50  0001 C CNN
F 1 "GND" H 2105 2777 50  0000 C CNN
F 2 "" H 2100 2950 50  0001 C CNN
F 3 "" H 2100 2950 50  0001 C CNN
	1    2100 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2100 2950 2100 2900
Wire Wire Line
	2100 2900 2000 2900
$Comp
L Mechanical:MountingHole H1
U 1 1 5C662B87
P 8600 3650
F 0 "H1" H 8700 3696 50  0000 L CNN
F 1 "MountingHole" H 8700 3605 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 8600 3650 50  0001 C CNN
F 3 "~" H 8600 3650 50  0001 C CNN
	1    8600 3650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C662DC0
P 8600 4250
F 0 "H4" H 8700 4296 50  0000 L CNN
F 1 "MountingHole" H 8700 4205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 8600 4250 50  0001 C CNN
F 3 "~" H 8600 4250 50  0001 C CNN
	1    8600 4250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C60ABF5
P 8600 4050
F 0 "H3" H 8700 4096 50  0000 L CNN
F 1 "MountingHole" H 8700 4005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 8600 4050 50  0001 C CNN
F 3 "~" H 8600 4050 50  0001 C CNN
	1    8600 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C60AC4F
P 8600 3850
F 0 "H2" H 8700 3896 50  0000 L CNN
F 1 "MountingHole" H 8700 3805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 8600 3850 50  0001 C CNN
F 3 "~" H 8600 3850 50  0001 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3700 8000 3700
Wire Wire Line
	7950 3800 7950 3900
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5C651299
P 4950 4300
F 0 "J6" V 4916 4112 50  0000 R CNN
F 1 "Conn_01x02" V 5100 4450 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4950 4300 50  0001 C CNN
F 3 "~" H 4950 4300 50  0001 C CNN
	1    4950 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 4600 5100 4550
Wire Wire Line
	5100 4550 5050 4550
Wire Wire Line
	5050 4550 5050 4500
Wire Wire Line
	4900 4600 4900 4550
Wire Wire Line
	4900 4550 4950 4550
Wire Wire Line
	4950 4550 4950 4500
Wire Wire Line
	3700 4400 4050 4400
Wire Wire Line
	7500 4350 7500 4250
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5C6898E6
P 7800 4450
F 0 "J5" H 7750 4700 50  0000 L CNN
F 1 "Conn_01x03" V 7950 4250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7800 4450 50  0001 C CNN
F 3 "~" H 7800 4450 50  0001 C CNN
	1    7800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4450 7600 4450
Wire Wire Line
	7500 4450 7500 4550
Wire Wire Line
	7600 4550 7500 4550
Connection ~ 7500 4550
Wire Wire Line
	7500 4350 7600 4350
Wire Wire Line
	7500 4550 7500 4700
Wire Wire Line
	7750 3750 7750 3700
$Comp
L Device:C C1
U 1 1 5C614B71
P 7450 2700
F 0 "C1" H 7500 2800 50  0000 L CNN
F 1 "1u" H 7500 2600 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7488 2550 50  0001 C CNN
F 3 "~" H 7450 2700 50  0001 C CNN
F 4 "Ceramic-Blue" V 7300 2700 30  0000 C CNN "Type"
	1    7450 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 2550 7450 2500
Wire Wire Line
	7450 2500 7550 2500
Connection ~ 7550 2500
$Comp
L power:GND #PWR0120
U 1 1 5C6251DA
P 7450 2900
F 0 "#PWR0120" H 7450 2650 50  0001 C CNN
F 1 "GND" H 7455 2727 50  0000 C CNN
F 2 "" H 7450 2900 50  0001 C CNN
F 3 "" H 7450 2900 50  0001 C CNN
	1    7450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2900 7450 2850
Wire Wire Line
	6300 3400 6300 3500
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 5C63732C
P 4450 3350
F 0 "J7" V 4416 3062 50  0000 R CNN
F 1 "Conn_01x05" V 4325 3062 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4450 3350 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
	1    4450 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 3700 4450 3550
Wire Wire Line
	4650 3700 4650 3650
Wire Wire Line
	4650 3650 4550 3650
Wire Wire Line
	4550 3650 4550 3550
Wire Wire Line
	4650 3550 4650 3600
Wire Wire Line
	4650 3600 4850 3600
Wire Wire Line
	4850 3600 4850 3700
Wire Wire Line
	4250 3700 4250 3650
Wire Wire Line
	4250 3650 4350 3650
Wire Wire Line
	4350 3650 4350 3550
Wire Wire Line
	4050 3700 4050 3600
Wire Wire Line
	4050 3600 4250 3600
Wire Wire Line
	4250 3600 4250 3550
$EndSCHEMATC
