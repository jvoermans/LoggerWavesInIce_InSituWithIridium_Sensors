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
LIBS:MOSFET-P
LIBS:MOSFET-N
LIBS:net-tie
LIBS:power_controller-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Power controller WIL"
Date "2017-11-28"
Rev "1.0"
Comp "UiO"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-P IC1
U 1 1 5A1C2877
P 2950 2800
F 0 "IC1" H 2200 4050 50  0000 L BNN
F 1 "ATMEGA328-P" H 3350 1400 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_LongPads" H 2950 2800 50  0001 C CIN
F 3 "" H 2950 2800 50  0000 C CNN
	1    2950 2800
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5A1C28D1
P 5650 2550
F 0 "Y1" H 5650 2700 50  0000 C CNN
F 1 "16MHz" H 5650 2400 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 5650 2550 50  0001 C CNN
F 3 "" H 5650 2550 50  0000 C CNN
	1    5650 2550
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 5A1C2A61
P 6000 2800
F 0 "C2" H 6025 2900 50  0000 L CNN
F 1 "20pF" H 6025 2700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6038 2650 50  0001 C CNN
F 3 "" H 6000 2800 50  0000 C CNN
	1    6000 2800
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A1C2AB0
P 5200 2800
F 0 "C1" H 5225 2900 50  0000 L CNN
F 1 "20pF" H 5225 2700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 5238 2650 50  0001 C CNN
F 3 "" H 5200 2800 50  0000 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5A1C2ED1
P 1750 1550
F 0 "#PWR01" H 1750 1400 50  0001 C CNN
F 1 "+5V" H 1750 1690 50  0000 C CNN
F 2 "" H 1750 1550 50  0000 C CNN
F 3 "" H 1750 1550 50  0000 C CNN
	1    1750 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5A1C2EF9
P 8150 1650
F 0 "P1" H 8150 1800 50  0000 C CNN
F 1 "SOLAR_PANEL" V 8250 1650 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.00mmDrill" H 8150 1650 50  0001 C CNN
F 3 "" H 8150 1650 50  0000 C CNN
	1    8150 1650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5A1C3104
P 8150 2400
F 0 "P2" H 8150 2550 50  0000 C CNN
F 1 "5V_pololu" V 8250 2400 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.00mmDrill" H 8150 2400 50  0001 C CNN
F 3 "" H 8150 2400 50  0000 C CNN
	1    8150 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 5A1C3146
P 8150 3100
F 0 "P3" H 8150 3250 50  0000 C CNN
F 1 "BATT" V 8250 3100 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.00mmDrill" H 8150 3100 50  0001 C CNN
F 3 "" H 8150 3100 50  0000 C CNN
	1    8150 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 5A1C317C
P 8150 3750
F 0 "P4" H 8150 3900 50  0000 C CNN
F 1 "SUPERCAPS" V 8250 3750 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.00mmDrill" H 8150 3750 50  0001 C CNN
F 3 "" H 8150 3750 50  0000 C CNN
	1    8150 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A1C31B8
P 7800 2550
F 0 "#PWR02" H 7800 2300 50  0001 C CNN
F 1 "GND" H 7800 2400 50  0000 C CNN
F 2 "" H 7800 2550 50  0000 C CNN
F 3 "" H 7800 2550 50  0000 C CNN
	1    7800 2550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5A1C322F
P 7800 2250
F 0 "#PWR03" H 7800 2100 50  0001 C CNN
F 1 "+5V" H 7800 2390 50  0000 C CNN
F 2 "" H 7800 2250 50  0000 C CNN
F 3 "" H 7800 2250 50  0000 C CNN
	1    7800 2250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5A1C3274
P 7800 3600
F 0 "#PWR04" H 7800 3450 50  0001 C CNN
F 1 "+5V" H 7800 3740 50  0000 C CNN
F 2 "" H 7800 3600 50  0000 C CNN
F 3 "" H 7800 3600 50  0000 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A1C3298
P 7800 3950
F 0 "#PWR05" H 7800 3700 50  0001 C CNN
F 1 "GND" H 7800 3800 50  0000 C CNN
F 2 "" H 7800 3950 50  0000 C CNN
F 3 "" H 7800 3950 50  0000 C CNN
	1    7800 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 5A1C3304
P 8150 4600
F 0 "P5" H 8150 4750 50  0000 C CNN
F 1 "PWR_MEGA" V 8250 4600 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.00mmDrill" H 8150 4600 50  0001 C CNN
F 3 "" H 8150 4600 50  0000 C CNN
	1    8150 4600
	1    0    0    -1  
$EndComp
Text Label 6900 1600 0    60   ~ 0
COMMON_BAT+_SOL+
Text Label 6900 3050 0    60   ~ 0
COMMON_BAT+_SOL+
Text Label 4300 2550 0    60   ~ 0
A0
Text Label 6900 2900 0    60   ~ 0
A0
$Comp
L GND #PWR06
U 1 1 5A1C3813
P 7800 3200
F 0 "#PWR06" H 7800 2950 50  0001 C CNN
F 1 "GND" H 7800 3050 50  0000 C CNN
F 2 "" H 7800 3200 50  0000 C CNN
F 3 "" H 7800 3200 50  0000 C CNN
	1    7800 3200
	1    0    0    -1  
$EndComp
Text Label 6900 3200 0    60   ~ 0
MSFT_SOLAR_D
Text Label 6900 1750 0    60   ~ 0
MSFT_SOLAR_S
Text Label 6900 1900 0    60   ~ 0
V_DVDR_SOL-
$Comp
L R R3
U 1 1 5A1C3B2C
P 4350 3150
F 0 "R3" V 4430 3150 50  0000 C CNN
F 1 "50k" V 4350 3150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4280 3150 50  0001 C CNN
F 3 "" H 4350 3150 50  0000 C CNN
	1    4350 3150
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 5A1C3B75
P 4600 3050
F 0 "#PWR07" H 4600 2900 50  0001 C CNN
F 1 "+5V" H 4600 3190 50  0000 C CNN
F 2 "" H 4600 3050 50  0000 C CNN
F 3 "" H 4600 3050 50  0000 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L MOSFET-N U1
U 1 1 5A1C3CAA
P 5850 4250
F 0 "U1" H 5880 4370 30  0000 L CNN
F 1 "IRLB-8721_SOL" H 5875 4135 30  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 5850 4200 60  0001 C CNN
F 3 "" H 5850 4200 60  0000 C CNN
	1    5850 4250
	1    0    0    -1  
$EndComp
Text Label 5850 3900 0    60   ~ 0
MSFT_SOLAR_D
Text Label 5850 4800 0    60   ~ 0
MSFT_SOLAR_S
Text Label 5350 4250 0    60   ~ 0
D3
Text Label 4250 3500 0    60   ~ 0
D3
$Comp
L R R5
U 1 1 5A1C4A75
P 5500 4500
F 0 "R5" V 5580 4500 50  0000 C CNN
F 1 "50k" V 5500 4500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5430 4500 50  0001 C CNN
F 3 "" H 5500 4500 50  0000 C CNN
	1    5500 4500
	1    0    0    -1  
$EndComp
$Comp
L MOSFET-N U2
U 1 1 5A1C4C0F
P 5850 5450
F 0 "U2" H 5880 5570 30  0000 L CNN
F 1 "IRLB-8721_MEGA" H 5875 5335 30  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 5850 5400 60  0001 C CNN
F 3 "" H 5850 5400 60  0000 C CNN
	1    5850 5450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 5A1C4CA7
P 7800 4400
F 0 "#PWR08" H 7800 4250 50  0001 C CNN
F 1 "+5V" H 7800 4540 50  0000 C CNN
F 2 "" H 7800 4400 50  0000 C CNN
F 3 "" H 7800 4400 50  0000 C CNN
	1    7800 4400
	1    0    0    -1  
$EndComp
Text Label 7350 4650 0    60   ~ 0
MEGA-
Text Label 5850 5150 0    60   ~ 0
MEGA-
Text Label 5350 5450 0    60   ~ 0
D5
Text Label 4250 3700 0    60   ~ 0
D5
$Comp
L GND #PWR09
U 1 1 5A1C4F56
P 5850 5850
F 0 "#PWR09" H 5850 5600 50  0001 C CNN
F 1 "GND" H 5850 5700 50  0000 C CNN
F 2 "" H 5850 5850 50  0000 C CNN
F 3 "" H 5850 5850 50  0000 C CNN
	1    5850 5850
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A1C5037
P 5550 5650
F 0 "R6" V 5630 5650 50  0000 C CNN
F 1 "50k" V 5550 5650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5480 5650 50  0001 C CNN
F 3 "" H 5550 5650 50  0000 C CNN
	1    5550 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 5A1C51F6
P 8150 5350
F 0 "P6" H 8150 5450 50  0000 C CNN
F 1 "FEEDBACK_MEGA" V 8250 5350 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 8150 5350 50  0001 C CNN
F 3 "" H 8150 5350 50  0000 C CNN
	1    8150 5350
	1    0    0    -1  
$EndComp
Text Label 7350 5350 0    60   ~ 0
MEGA_FBK
$Comp
L R R7
U 1 1 5A1C532B
P 7850 5650
F 0 "R7" V 7930 5650 50  0000 C CNN
F 1 "50k" V 7850 5650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 7780 5650 50  0001 C CNN
F 3 "" H 7850 5650 50  0000 C CNN
	1    7850 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A1C53D1
P 7850 6050
F 0 "#PWR010" H 7850 5800 50  0001 C CNN
F 1 "GND" H 7850 5900 50  0000 C CNN
F 2 "" H 7850 6050 50  0000 C CNN
F 3 "" H 7850 6050 50  0000 C CNN
	1    7850 6050
	1    0    0    -1  
$EndComp
Text Label 4250 3600 0    60   ~ 0
MEGA_FBK
$Comp
L R R2
U 1 1 5A1C563F
P 3700 5550
F 0 "R2" V 3780 5550 50  0000 C CNN
F 1 "3.9k" V 3700 5550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3630 5550 50  0001 C CNN
F 3 "" H 3700 5550 50  0000 C CNN
	1    3700 5550
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A1C567E
P 3700 5050
F 0 "R1" V 3780 5050 50  0000 C CNN
F 1 "5.6k" V 3700 5050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3630 5050 50  0001 C CNN
F 3 "" H 3700 5050 50  0000 C CNN
	1    3700 5050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 5A1C56C1
P 3700 4750
F 0 "#PWR011" H 3700 4600 50  0001 C CNN
F 1 "+5V" H 3700 4890 50  0000 C CNN
F 2 "" H 3700 4750 50  0000 C CNN
F 3 "" H 3700 4750 50  0000 C CNN
	1    3700 4750
	1    0    0    -1  
$EndComp
Text Label 3800 6050 0    60   ~ 0
V_DVDR_SOL-
Text Label 4000 5300 0    60   ~ 0
A1
Text Label 4300 2650 0    60   ~ 0
A1
$Comp
L R R4
U 1 1 5A1C609D
P 4500 2050
F 0 "R4" V 4580 2050 50  0000 C CNN
F 1 "220" V 4500 2050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4430 2050 50  0001 C CNN
F 3 "" H 4500 2050 50  0000 C CNN
	1    4500 2050
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5A1C6138
P 4700 1750
F 0 "D1" H 4700 1850 50  0000 C CNN
F 1 "LED" H 4700 1650 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4700 1750 50  0001 C CNN
F 3 "" H 4700 1750 50  0000 C CNN
	1    4700 1750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 5A1C6279
P 4900 1850
F 0 "#PWR012" H 4900 1600 50  0001 C CNN
F 1 "GND" H 4900 1700 50  0000 C CNN
F 2 "" H 4900 1850 50  0000 C CNN
F 3 "" H 4900 1850 50  0000 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
NoConn ~ 3950 4000
NoConn ~ 3950 3900
NoConn ~ 3950 3800
NoConn ~ 3950 3400
NoConn ~ 3950 3300
NoConn ~ 3950 3050
NoConn ~ 3950 2950
NoConn ~ 3950 2850
NoConn ~ 3950 2750
NoConn ~ 3950 2100
NoConn ~ 3950 2000
NoConn ~ 3950 1900
NoConn ~ 3950 1800
NoConn ~ 3950 1700
$Comp
L PWR_FLAG #FLG013
U 1 1 5A1C6663
P 1250 1600
F 0 "#FLG013" H 1250 1695 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1780 50  0000 C CNN
F 2 "" H 1250 1600 50  0000 C CNN
F 3 "" H 1250 1600 50  0000 C CNN
	1    1250 1600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG014
U 1 1 5A1C66B3
P 800 1600
F 0 "#FLG014" H 800 1695 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1780 50  0000 C CNN
F 2 "" H 800 1600 50  0000 C CNN
F 3 "" H 800 1600 50  0000 C CNN
	1    800  1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 5A1C66EF
P 800 1800
F 0 "#PWR015" H 800 1650 50  0001 C CNN
F 1 "+5V" H 800 1940 50  0000 C CNN
F 2 "" H 800 1800 50  0000 C CNN
F 3 "" H 800 1800 50  0000 C CNN
	1    800  1800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 5A1C672B
P 1250 1800
F 0 "#PWR016" H 1250 1550 50  0001 C CNN
F 1 "GND" H 1250 1650 50  0000 C CNN
F 2 "" H 1250 1800 50  0000 C CNN
F 3 "" H 1250 1800 50  0000 C CNN
	1    1250 1800
	1    0    0    -1  
$EndComp
NoConn ~ 2050 2300
Wire Wire Line
	5200 2400 5200 2650
Wire Wire Line
	5200 2550 5500 2550
Wire Wire Line
	5800 2550 6000 2550
Wire Wire Line
	6000 2300 6000 2650
Connection ~ 5200 2550
Connection ~ 6000 2550
Wire Wire Line
	3950 2400 5200 2400
Wire Wire Line
	3950 2300 6000 2300
Wire Wire Line
	5200 2950 5200 3250
Wire Wire Line
	6000 2950 6000 3250
Wire Wire Line
	1750 1700 2050 1700
Wire Wire Line
	1750 2000 2050 2000
Connection ~ 1750 1700
Connection ~ 1750 2000
Wire Wire Line
	1750 3900 1750 4250
Wire Wire Line
	1750 4000 2050 4000
Wire Wire Line
	2050 3900 1750 3900
Connection ~ 1750 4000
Wire Wire Line
	7800 2550 7800 2450
Wire Wire Line
	7800 2450 7950 2450
Wire Wire Line
	7800 2250 7800 2350
Wire Wire Line
	7800 2350 7950 2350
Wire Wire Line
	7800 3950 7800 3800
Wire Wire Line
	7800 3800 7950 3800
Wire Wire Line
	7800 3600 7800 3700
Wire Wire Line
	7800 3700 7950 3700
Wire Wire Line
	6900 1600 7950 1600
Wire Wire Line
	6900 3050 7950 3050
Wire Wire Line
	3950 2550 4300 2550
Wire Wire Line
	6900 2900 7900 2900
Wire Wire Line
	7900 2900 7900 3050
Connection ~ 7900 3050
Wire Wire Line
	7800 3200 7800 3150
Wire Wire Line
	7650 3150 7950 3150
Wire Wire Line
	6900 3200 7650 3200
Wire Wire Line
	7650 3200 7650 3150
Connection ~ 7800 3150
Wire Wire Line
	6900 1750 7850 1750
Wire Wire Line
	7850 1700 7850 1900
Wire Wire Line
	7850 1700 7950 1700
Wire Wire Line
	7850 1900 6900 1900
Connection ~ 7850 1750
Wire Wire Line
	3950 3150 4200 3150
Wire Wire Line
	4500 3150 4600 3150
Wire Wire Line
	4600 3150 4600 3050
Wire Wire Line
	5850 3900 5850 4050
Wire Wire Line
	5850 4450 5850 4800
Wire Wire Line
	5350 4250 5650 4250
Wire Wire Line
	4250 3500 3950 3500
Wire Wire Line
	5500 4350 5500 4250
Connection ~ 5500 4250
Wire Wire Line
	5500 4650 5850 4650
Connection ~ 5850 4650
Wire Wire Line
	7800 4400 7800 4550
Wire Wire Line
	7800 4550 7950 4550
Wire Wire Line
	7350 4650 7950 4650
Wire Wire Line
	5850 5250 5850 5150
Wire Wire Line
	5350 5450 5650 5450
Wire Wire Line
	4250 3700 3950 3700
Wire Wire Line
	5850 5650 5850 5850
Wire Wire Line
	5550 5500 5550 5450
Connection ~ 5550 5450
Wire Wire Line
	5550 5800 5850 5800
Connection ~ 5850 5800
Wire Wire Line
	7350 5350 7950 5350
Wire Wire Line
	7850 5500 7850 5350
Connection ~ 7850 5350
Wire Wire Line
	7850 5800 7850 6050
Wire Wire Line
	3950 3600 4250 3600
Wire Wire Line
	3700 4750 3700 4900
Wire Wire Line
	3700 5200 3700 5400
Wire Wire Line
	3700 5700 3700 6050
Wire Wire Line
	3700 6050 3800 6050
Wire Wire Line
	4000 5300 3700 5300
Connection ~ 3700 5300
Wire Wire Line
	3950 2650 4300 2650
Wire Wire Line
	3950 2200 4500 2200
Wire Wire Line
	4500 1900 4500 1750
Wire Wire Line
	4900 1850 4900 1750
Wire Wire Line
	1250 1800 1250 1600
Wire Wire Line
	800  1800 800  1600
Wire Wire Line
	1750 2000 1750 1550
Text Label 5200 3250 0    60   ~ 0
Ref_gnd
Text Label 6000 3250 0    60   ~ 0
Ref_gnd
Text Label 1750 4250 0    60   ~ 0
Ref_gnd
Text Label 800  2650 0    60   ~ 0
Ref_gnd
$Comp
L PWR_FLAG #FLG017
U 1 1 5A1DC4FC
P 800 2350
F 0 "#FLG017" H 800 2445 50  0001 C CNN
F 1 "PWR_FLAG" H 800 2530 50  0000 C CNN
F 2 "" H 800 2350 50  0000 C CNN
F 3 "" H 800 2350 50  0000 C CNN
	1    800  2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2350 800  2650
$Comp
L NET-TIE W1
U 1 1 5A1DD135
P 1600 5100
F 0 "W1" H 1600 5350 50  0000 C CNN
F 1 "NET-TIE" H 1600 5250 50  0000 C CNN
F 2 "conn-test:NET-TIE" H 1600 5000 50  0001 C CNN
F 3 "" H 1600 5100 60  0000 C CNN
	1    1600 5100
	1    0    0    -1  
$EndComp
Text Label 1950 5100 0    60   ~ 0
Ref_gnd
Wire Wire Line
	1700 5100 1950 5100
$Comp
L GND #PWR018
U 1 1 5A1DD272
P 1200 5100
F 0 "#PWR018" H 1200 4850 50  0001 C CNN
F 1 "GND" H 1200 4950 50  0000 C CNN
F 2 "" H 1200 5100 50  0000 C CNN
F 3 "" H 1200 5100 50  0000 C CNN
	1    1200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5100 1500 5100
$EndSCHEMATC
