EESchema Schematic File Version 2
LIBS:velokey
LIBS:power
LIBS:velokey-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "VeloKey"
Date "2016-01-24"
Rev "rev 1"
Comp "WyoLum"
Comment1 "A Strava Keyboard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1900 6800 0    40   ~ 0
MCP1700T-3302E/TT
Wire Wire Line
	3400 2750 4450 2750
Connection ~ 2875 6900
Wire Wire Line
	550  3050 750  3050
Connection ~ 900  3275
Wire Wire Line
	900  3250 900  3550
Wire Wire Line
	900  3550 700  3550
Wire Wire Line
	700  3550 700  3425
Connection ~ 700  3050
Wire Wire Line
	1500 2950 1400 2950
Wire Wire Line
	1400 2950 1400 2800
Wire Wire Line
	1400 2800 900  2800
Wire Wire Line
	1500 2250 1075 2250
Wire Notes Line
	5950 7750 5950 6300
Wire Notes Line
	5950 7750 6825 7750
Wire Notes Line
	6825 7750 6825 6300
Wire Notes Line
	6825 6300 5950 6300
Wire Notes Line
	3300 7750 3300 6300
Wire Notes Line
	4150 7750 4150 6300
Wire Wire Line
	4400 6800 4900 6800
Wire Wire Line
	5300 7000 4400 7000
Wire Wire Line
	5100 7300 5100 7200
Wire Wire Line
	2875 6650 2875 7050
Wire Wire Line
	1600 6900 1600 7050
Wire Wire Line
	6225 6650 6225 6450
Connection ~ 6375 7500
Wire Wire Line
	6375 7550 6375 7500
Wire Wire Line
	6525 6850 6525 7050
Connection ~ 5100 7300
Connection ~ 1600 6900
Wire Wire Line
	6050 3350 3400 3350
Wire Wire Line
	3400 3550 5750 3550
Connection ~ 1075 800 
Wire Wire Line
	1075 1350 1075 800 
Wire Wire Line
	2875 7450 2875 7250
Connection ~ 4050 800 
Wire Wire Line
	4050 800  4050 1350
Wire Wire Line
	3400 2650 4450 2650
Connection ~ 1075 4975
Connection ~ 1250 2450
Wire Wire Line
	1250 4975 1250 1550
Connection ~ 2350 800 
Wire Wire Line
	975  2650 1500 2650
Wire Wire Line
	975  2650 975  800 
Wire Wire Line
	2350 4975 2350 4850
Wire Wire Line
	2350 800  2350 1950
Wire Wire Line
	2450 800  2450 1950
Connection ~ 2450 800 
Connection ~ 2450 4975
Wire Wire Line
	1500 2450 1250 2450
Connection ~ 2350 4975
Wire Wire Line
	1250 800  1250 1350
Connection ~ 1250 800 
Wire Wire Line
	1075 4500 1075 4975
Connection ~ 1250 4975
Wire Wire Line
	2225 7400 2225 7525
Wire Wire Line
	4250 2650 4250 1550
Wire Wire Line
	4050 2750 4050 1550
Wire Wire Line
	4250 800  4250 1350
Wire Wire Line
	6250 3450 3400 3450
Wire Wire Line
	3400 3250 3975 3250
Wire Wire Line
	3400 3150 3975 3150
Wire Wire Line
	3400 2450 4450 2450
Wire Wire Line
	3400 2350 4450 2350
Wire Wire Line
	3400 2250 4450 2250
Wire Wire Line
	3400 2950 4450 2950
Wire Wire Line
	3400 4150 3625 4150
Wire Wire Line
	3400 4050 3625 4050
Wire Wire Line
	3400 3850 7425 3850
Wire Wire Line
	7925 3750 3400 3750
Wire Wire Line
	7725 3650 3400 3650
Wire Wire Line
	3400 2850 4450 2850
Wire Wire Line
	1600 7450 1600 7250
Connection ~ 2225 7450
Wire Wire Line
	5100 7200 5300 7200
Wire Wire Line
	6225 7050 6225 6850
Wire Wire Line
	6525 7500 6525 7450
Wire Wire Line
	6225 7500 6525 7500
Wire Wire Line
	6225 7500 6225 7450
Wire Wire Line
	6525 6650 6525 6450
Wire Wire Line
	5300 7100 4400 7100
Wire Wire Line
	1100 6900 1675 6900
Wire Wire Line
	2775 6900 2875 6900
Wire Wire Line
	975  800  8075 800 
Wire Wire Line
	4400 7300 5300 7300
Wire Wire Line
	5300 6900 4400 6900
Wire Wire Line
	5100 6800 5300 6800
Wire Notes Line
	5850 6300 4250 6300
Wire Notes Line
	5850 6300 5850 7750
Wire Notes Line
	5850 7750 4250 7750
Wire Notes Line
	4250 7750 4250 6300
Wire Wire Line
	1075 1550 1075 4200
Connection ~ 1075 2250
Wire Wire Line
	900  3275 1400 3275
Wire Wire Line
	1400 3275 1400 3150
Wire Wire Line
	1400 3150 1500 3150
Wire Wire Line
	1100 7450 2875 7450
Wire Wire Line
	700  2875 700  3225
Wire Wire Line
	700  2675 700  2550
Wire Wire Line
	700  2550 900  2550
Wire Wire Line
	900  2550 900  2850
Connection ~ 900  2800
Wire Wire Line
	550  3050 550  4975
Wire Wire Line
	550  4975 2450 4975
Wire Wire Line
	2450 4850 2450 5100
Text Label 1400 3275 0    40   ~ 8
PB7
Text Label 1400 2800 0    40   ~ 8
PB6
$Comp
L GND #PWR014
U 1 1 4F5AFC62
P 2450 5100
F 0 "#PWR014" H 2450 5100 30  0001 C CNN
F 1 "GND" H 2450 5030 30  0001 C CNN
F 2 "" H 2450 5100 60  0001 C CNN
F 3 "" H 2450 5100 60  0001 C CNN
	1    2450 5100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C20
U 1 1 4EC1290E
P 700 3325
F 0 "C20" H 725 3250 40  0000 L CNB
F 1 "22p" H 725 3175 40  0000 L CNN
F 2 "velokey-footprints:C_0603_HandSoldering" H 700 3325 60  0001 C CNN
F 3 "" H 700 3325 60  0001 C CNN
F 4 "mfr_pn" H 700 3325 60  0001 C CNN "manf#"
F 5 "490-1734-1-ND" H 700 3525 60  0001 C CNN "Digikey"
	1    700  3325
	1    0    0    -1  
$EndComp
$Comp
L C_Small C19
U 1 1 4EC128EB
P 700 2775
F 0 "C19" H 725 2850 40  0000 L CNB
F 1 "22p" H 725 2925 40  0000 L CNN
F 2 "velokey-footprints:C_0603_HandSoldering" H 700 2775 60  0001 C CNN
F 3 "" H 700 2775 60  0001 C CNN
F 4 "mfr_pn" H 700 2775 60  0001 C CNN "manf#"
F 5 "490-1734-1-ND" H 700 2975 60  0001 C CNN "Digikey"
	1    700  2775
	1    0    0    -1  
$EndComp
Text Notes 5950 6300 0    60   Italic 12
INDICATORS
Text Notes 4250 6300 0    60   Italic 12
FTDI Header
Text Notes 3300 6300 0    60   Italic 12
ISP/PROG Header
Text Label 3825 6425 3    40   ~ 8
GND
$Comp
L C_Small C23
U 1 1 4E1ECFB8
P 1600 7150
F 0 "C23" H 1675 7150 40  0000 L CNB
F 1 "1uF" H 1675 7100 40  0000 L CNN
F 2 "velokey-footprints:C_0603_HandSoldering" H 1600 7150 60  0001 C CNN
F 3 "" H 1600 7150 60  0001 C CNN
F 4 "mfr_pn" H 1600 7150 60  0001 C CNN "manf#"
	1    1600 7150
	1    0    0    -1  
$EndComp
Text Label 4400 7100 0    40   ~ 8
ENC_3V3
Text Label 6525 6450 0    40   ~ 8
ENC_D9~~
$Comp
L GND #PWR015
U 1 1 4DCFFB44
P 6375 7550
F 0 "#PWR015" H 6375 7550 30  0001 C CNN
F 1 "GND" H 6375 7480 30  0001 C CNN
F 2 "" H 6375 7550 60  0001 C CNN
F 3 "" H 6375 7550 60  0001 C CNN
	1    6375 7550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R16
U 1 1 4DCFFB11
P 6525 6750
F 0 "R16" H 6625 6750 40  0000 C CNB
F 1 "750E" V 6525 6750 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 6525 6750 60  0001 C CNN
F 3 "" H 6525 6750 60  0001 C CNN
F 4 "mfr_pn" H 6525 6750 60  0001 C CNN "manf#"
	1    6525 6750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 4DCFFAF9
P 6225 6750
F 0 "R15" H 6325 6750 40  0000 C CNB
F 1 "750E" V 6225 6750 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 6225 6750 60  0001 C CNN
F 3 "" H 6225 6750 60  0001 C CNN
F 4 "mfr_pn" H 6225 6750 60  0001 C CNN "manf#"
	1    6225 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 4DCFFADF
P 6525 7250
F 0 "D7" V 6525 7350 40  0000 C CNB
F 1 "LED" V 6625 7325 40  0000 C CNN
F 2 "velokey-footprints:C_0603" H 6525 7250 60  0001 C CNN
F 3 "" H 6525 7250 60  0001 C CNN
	1    6525 7250
	0    1    1    0   
$EndComp
$Comp
L LED D6
U 1 1 4DCFFACF
P 6225 7250
F 0 "D6" V 6225 7350 40  0000 C CNB
F 1 "LED" V 6325 7325 40  0000 C CNN
F 2 "velokey-footprints:C_0603" H 6225 7250 60  0001 C CNN
F 3 "" H 6225 7250 60  0001 C CNN
	1    6225 7250
	0    1    1    0   
$EndComp
Text Label 3625 7650 1    40   ~ 8
ENC_MISO
Text Label 3625 6425 3    40   ~ 8
ENC_3V3
Text Label 3725 7650 1    40   ~ 8
ENC_SCK
Text Label 3725 6425 3    40   ~ 8
ENC_MOSI
Text Label 3825 7650 1    40   ~ 8
ENC_RESET
$Comp
L CONN_02X3 P12
U 1 1 4DCD1997
P 3725 7025
F 0 "P12" V 3800 6800 40  0000 C CNB
F 1 "ISP" V 3725 6800 40  0000 C CNN
F 2 "velokey-footprints:Pin_Castellated_1x01" H 3725 7025 60  0001 C CNN
F 3 "" H 3725 7025 60  0001 C CNN
F 4 "mfr_pn" H 3725 7025 60  0001 C CNN "manf#"
	1    3725 7025
	0    -1   -1   0   
$EndComp
Text Label 4400 7300 0    40   ~ 8
GND
Text Label 4400 6900 0    40   ~ 8
ENC_TXD
Text Label 4400 7000 0    40   ~ 8
ENC_RXD
Text Label 4400 6800 0    40   ~ 8
ENC_RESET
$Comp
L C_Small C21
U 1 1 4DCB9774
P 5000 6800
F 0 "C21" V 4900 6800 40  0000 C CNB
F 1 "100n" V 4825 6800 40  0000 C CNN
F 2 "velokey-footprints:C_0603_HandSoldering" H 5000 6800 60  0001 C CNN
F 3 "" H 5000 6800 60  0001 C CNN
F 4 "mfr_pn" H 5000 6800 60  0001 C CNN "manf#"
	1    5000 6800
	0    1    1    0   
$EndComp
$Comp
L CONN_01X06 P13
U 1 1 4DCB971F
P 5500 7050
F 0 "P13" H 5500 6625 40  0000 C CNB
F 1 "FTDI" H 5500 6700 40  0000 C CNN
F 2 "velokey-footprints:Pin_Castellated_1x01" H 5500 7050 60  0001 C CNN
F 3 "" H 5500 7050 60  0001 C CNN
F 4 "mfr_pn" H 5500 7050 60  0001 C CNN "manf#"
	1    5500 7050
	1    0    0    1   
$EndComp
Text Label 1075 2250 1    40   ~ 8
RESET
Text Label 3625 2850 0    40   ~ 8
ENC_A6
Text Label 3625 3750 0    40   ~ 8
ENC_D6~~
Text Label 3625 3450 0    40   ~ 8
ENC_D3~~
Text Label 3625 4050 0    40   ~ 8
ENC_D8
Text Label 3625 4150 0    40   ~ 8
ENC_D9~~
Text Label 3625 2250 0    40   ~ 8
ENC_A0
Text Label 3625 2350 0    40   ~ 8
ENC_A1
Text Label 3625 2450 0    40   ~ 8
ENC_A2
Text Label 3625 2550 0    40   ~ 8
ENC_A3
Text Label 3625 3150 0    40   ~ 8
ENC_RXD
Text Label 3625 3250 0    40   ~ 8
ENC_TXD
Text Label 3625 3350 0    40   ~ 8
ENC_D2
Text Label 2300 7450 0    40   ~ 8
GND
$Comp
L GND #PWR016
U 1 1 4DCAC327
P 2225 7525
F 0 "#PWR016" H 2225 7525 30  0001 C CNN
F 1 "GND" H 2225 7455 30  0001 C CNN
F 2 "" H 2225 7525 60  0001 C CNN
F 3 "" H 2225 7525 60  0001 C CNN
	1    2225 7525
	1    0    0    -1  
$EndComp
$Comp
L MCP_1700 U6
U 1 1 4DCAC2D1
P 2225 7000
F 0 "U6" H 2075 6850 40  0000 C CNB
F 1 "3V3" H 2375 6850 40  0000 C CNN
F 2 "velokey-footprints:TSOP-6" H 2225 7000 60  0001 C CNN
F 3 "" H 2225 7000 60  0001 C CNN
F 4 "MCP1700T-3302E/TT" H 2225 7000 60  0001 C CNN "Part No"
	1    2225 7000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 4DCAC172
P 4250 1450
F 0 "R14" H 4300 1550 40  0000 C CNB
F 1 "10k" V 4250 1450 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 4250 1450 60  0001 C CNN
F 3 "" H 4250 1450 60  0001 C CNN
F 4 "mfr_pn" H 4250 1450 60  0001 C CNN "manf#"
	1    4250 1450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R13
U 1 1 4DCAC161
P 4050 1450
F 0 "R13" H 4100 1550 40  0000 C CNB
F 1 "10k" V 4050 1450 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 4050 1450 60  0001 C CNN
F 3 "" H 4050 1450 60  0001 C CNN
F 4 "mfr_pn" H 4050 1450 60  0001 C CNN "manf#"
	1    4050 1450
	1    0    0    -1  
$EndComp
$Comp
L SPST-M SW1
U 1 1 4DCA7D67
P 1075 4350
F 0 "SW1" V 1075 4600 40  0000 C CNB
F 1 "ENC_RST" V 975 4550 40  0000 C CNN
F 2 "velokey-footprints:SPST-PTS_810" H 1075 4350 60  0001 C CNN
F 3 "" H 1075 4350 60  0001 C CNN
F 4 "mfr_pn" H 1075 4350 60  0001 C CNN "manf#"
	1    1075 4350
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R12
U 1 1 4DCA7BFC
P 1075 1450
F 0 "R12" H 1125 1550 40  0000 C CNB
F 1 "10k" V 1075 1450 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 1075 1450 60  0001 C CNN
F 3 "" H 1075 1450 60  0001 C CNN
F 4 "mfr_pn" H 1075 1450 60  0001 C CNN "manf#"
	1    1075 1450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 4DCA7BAC
P 1250 1450
F 0 "C18" H 1325 1450 40  0000 L CNB
F 1 "100n" H 1325 1400 40  0000 L CNN
F 2 "velokey-footprints:C_0603_HandSoldering" H 1250 1450 60  0001 C CNN
F 3 "" H 1250 1450 60  0001 C CNN
F 4 "mfr_pn" H 1250 1450 60  0001 C CNN "manf#"
	1    1250 1450
	1    0    0    -1  
$EndComp
Text Label 3625 2650 0    40   ~ 8
ENC_SDA
Text Label 3625 2750 0    40   ~ 8
ENC_SCL
Text Label 3625 4250 0    40   ~ 8
ENC_SS
Text Label 3625 4350 0    40   ~ 8
ENC_MOSI
Text Label 3625 4550 0    40   ~ 8
ENC_SCK
Text Label 3625 4450 0    40   ~ 8
ENC_MISO
$Comp
L C_Small C24
U 1 1 4DCA5F1E
P 2875 7150
F 0 "C24" H 2950 7150 40  0000 L CNB
F 1 "1uF" H 2950 7100 40  0000 L CNN
F 2 "velokey-footprints:C_0603_HandSoldering" H 2875 7150 60  0001 C CNN
F 3 "" H 2875 7150 60  0001 C CNN
F 4 "mfr_pn" H 2875 7150 60  0001 C CNN "manf#"
	1    2875 7150
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P U5
U 1 1 4DCA5EC5
P 2400 3250
F 0 "U5" H 1700 4450 40  0000 L BNB
F 1 "ATMEGA328P" H 1700 4375 40  0000 L BNN
F 2 "SMD_Packages:PLCC-32" H 2925 1675 50  0001 C CNN
F 3 "" H 2400 3250 60  0001 C CNN
F 4 "mfr_pn" H 2400 3250 60  0001 C CNN "manf#"
	1    2400 3250
	1    0    0    -1  
$EndComp
Text Label 3625 3650 0    40   ~ 8
ENC_D5~~
Wire Notes Line
	4150 6300 3300 6300
Wire Notes Line
	4150 7750 3300 7750
$Comp
L CRYSTAL X2
U 1 1 5313C3B2
P 900 3050
F 0 "X2" V 750 3100 40  0000 C CNB
F 1 "8MHz" V 1050 3125 40  0000 C CNN
F 2 "velokey-footprints:xtal_3.2x1.5mm" H 900 3050 60  0001 C CNN
F 3 "" H 900 3050 60  0000 C CNN
	1    900  3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2550 1400 2550
Wire Wire Line
	1400 2550 1400 2650
$Comp
L CP_Small C22
U 1 1 536B66B9
P 1225 7150
F 0 "C22" H 1300 7150 40  0000 L CNB
F 1 "47uF,25V" H 1250 7075 40  0000 L CNN
F 2 "velokey-footprints:c_elec_3x5.3" H 1225 7150 60  0001 C CNN
F 3 "" H 1225 7150 60  0000 C CNN
F 4 "mfr_pn" H 1225 7150 60  0001 C CNN "manf#"
	1    1225 7150
	1    0    0    -1  
$EndComp
Text Label 3625 2950 0    40   ~ 8
ENC_A7
NoConn ~ 1125 4500
NoConn ~ 1125 4200
Wire Wire Line
	3625 6775 3625 6425
Wire Wire Line
	3725 6425 3725 6775
Wire Wire Line
	3825 6775 3825 6425
Wire Wire Line
	3825 7275 3825 7650
Wire Wire Line
	3725 7275 3725 7650
Wire Wire Line
	3625 7275 3625 7650
Wire Wire Line
	3400 4250 3925 4250
Wire Wire Line
	3400 4350 3625 4350
Wire Wire Line
	3400 4450 3625 4450
Wire Wire Line
	3400 4550 3625 4550
Connection ~ 1400 2650
Wire Wire Line
	3400 2550 4450 2550
Text Label 1575 800  0    40   ~ 8
ENC_3V3
Text Label 2875 6650 2    40   ~ 8
ENC_3V3
Text Label 1225 6650 0    40   ~ 8
VBUS
$Comp
L ROT E1
U 1 1 56A8236D
P 6150 1875
F 0 "E1" H 6000 2225 40  0000 L CNB
F 1 "ROT" H 6200 2225 40  0000 L CNN
F 2 "" H 6150 1875 40  0001 C CNN
F 3 "" H 6150 1875 40  0000 C CNN
F 4 "mfr_pn" H 6150 1875 40  0001 C CNN "manf#"
	1    6150 1875
	1    0    0    -1  
$EndComp
$Comp
L ROT E2
U 1 1 56A824EE
P 7825 1875
F 0 "E2" H 7675 2225 40  0000 L CNB
F 1 "ROT" H 7875 2225 40  0000 L CNN
F 2 "" H 7825 1875 40  0001 C CNN
F 3 "" H 7825 1875 40  0000 C CNN
F 4 "mfr_pn" H 7825 1875 40  0001 C CNN "manf#"
	1    7825 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1725 6550 1725
Wire Wire Line
	6550 1725 6550 2675
Wire Wire Line
	5900 2675 8225 2675
Wire Wire Line
	6150 2675 6150 2125
Wire Wire Line
	8075 1725 8225 1725
Wire Wire Line
	8225 1725 8225 2675
Wire Wire Line
	7825 2675 7825 2125
Connection ~ 6550 2675
Connection ~ 7825 2675
Wire Wire Line
	6050 2125 6050 3350
Wire Wire Line
	6250 2125 6250 3450
Wire Wire Line
	5750 3550 5750 1725
Wire Wire Line
	5750 1725 5900 1725
Wire Wire Line
	7725 2125 7725 3650
Wire Wire Line
	7925 2125 7925 3750
Wire Wire Line
	7575 1725 7425 1725
Wire Wire Line
	7425 1725 7425 3850
Text Label 6675 2675 0    40   ~ 8
GND
Text Label 3625 3550 0    40   ~ 8
ENC_D4
Text Label 3625 3850 0    40   ~ 8
ENC_D7~~
Text Label 6225 6450 0    40   ~ 8
ENC_D8
Text HLabel 3975 3150 2    40   Input ~ 8
ENC_RXD
Text HLabel 3975 3250 2    40   Input ~ 8
ENC_TXD
Wire Wire Line
	1225 6650 1225 7050
Wire Wire Line
	1225 7250 1225 7450
Connection ~ 1600 7450
Connection ~ 1225 6900
Text HLabel 1100 6900 0    40   Input ~ 8
VBUS
Connection ~ 1225 7450
Text HLabel 1100 7450 0    40   Input ~ 8
GND
$Comp
L CONN_01X08 P11
U 1 1 56A88001
P 4650 2600
F 0 "P11" H 4725 2975 40  0000 L CNB
F 1 "CONN_01X08" V 4750 2450 40  0000 L CNB
F 2 "" H 4650 2350 50  0001 C CNN
F 3 "" H 4650 2350 50  0000 C CNN
	1    4650 2600
	1    0    0    -1  
$EndComp
Connection ~ 4250 2650
Connection ~ 4050 2750
Text Label 1850 4975 0    40   ~ 8
GND
Wire Notes Line
	3200 7750 3200 6300
Wire Notes Line
	3200 6300 800  6300
Wire Notes Line
	800  6300 800  7750
Wire Notes Line
	800  7750 3200 7750
Text Notes 800  6300 0    60   Italic 12
ENCODER POWER SUPPLY
$Comp
L CONN_01X01 P14
U 1 1 56A99E56
P 4125 4250
F 0 "P14" H 4200 4250 40  0000 L CNB
F 1 "ENC_SS" H 4200 4225 40  0001 L CNB
F 2 "" H 4125 4250 50  0001 C CNN
F 3 "" H 4125 4250 50  0000 C CNN
	1    4125 4250
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C25
U 1 1 56A75B87
P 5900 2550
F 0 "C25" H 5975 2550 40  0000 L CNB
F 1 "1uF" H 5925 2475 40  0000 L CNN
F 2 "velokey-footprints:c_elec_3x5.3" H 5900 2550 60  0001 C CNN
F 3 "" H 5900 2550 60  0000 C CNN
F 4 "mfr_pn" H 5900 2550 60  0001 C CNN "manf#"
	1    5900 2550
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C26
U 1 1 56A7615B
P 6400 2550
F 0 "C26" H 6475 2550 40  0000 L CNB
F 1 "1uF" H 6425 2475 40  0000 L CNN
F 2 "velokey-footprints:c_elec_3x5.3" H 6400 2550 60  0001 C CNN
F 3 "" H 6400 2550 60  0000 C CNN
F 4 "mfr_pn" H 6400 2550 60  0001 C CNN "manf#"
	1    6400 2550
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C27
U 1 1 56A7636B
P 7575 2550
F 0 "C27" H 7650 2550 40  0000 L CNB
F 1 "1uF" H 7600 2475 40  0000 L CNN
F 2 "velokey-footprints:c_elec_3x5.3" H 7575 2550 60  0001 C CNN
F 3 "" H 7575 2550 60  0000 C CNN
F 4 "mfr_pn" H 7575 2550 60  0001 C CNN "manf#"
	1    7575 2550
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C28
U 1 1 56A76452
P 8075 2550
F 0 "C28" H 8150 2550 40  0000 L CNB
F 1 "1uF" H 8100 2475 40  0000 L CNN
F 2 "velokey-footprints:c_elec_3x5.3" H 8075 2550 60  0001 C CNN
F 3 "" H 8075 2550 60  0000 C CNN
F 4 "mfr_pn" H 8075 2550 60  0001 C CNN "manf#"
	1    8075 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7575 2350 7575 2450
Wire Wire Line
	7575 2400 7725 2400
Connection ~ 7725 2400
Wire Wire Line
	7925 2400 8075 2400
Wire Wire Line
	8075 2350 8075 2450
Connection ~ 7925 2400
Wire Wire Line
	8075 2650 8075 2675
Connection ~ 8075 2675
Wire Wire Line
	7575 2650 7575 2675
Connection ~ 7575 2675
Wire Wire Line
	6400 2350 6400 2450
Wire Wire Line
	6400 2400 6250 2400
Connection ~ 6250 2400
Wire Wire Line
	5900 2350 5900 2450
Wire Wire Line
	5900 2400 6050 2400
Connection ~ 6050 2400
Wire Wire Line
	5900 2650 5900 2675
Connection ~ 6150 2675
Wire Wire Line
	6400 2650 6400 2675
Connection ~ 6400 2675
$Comp
L R_Small R17
U 1 1 56A76C80
P 5900 2250
F 0 "R17" H 5950 2350 40  0000 C CNB
F 1 "10k" V 5900 2250 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 5900 2250 60  0001 C CNN
F 3 "" H 5900 2250 60  0001 C CNN
F 4 "mfr_pn" H 5900 2250 60  0001 C CNN "manf#"
	1    5900 2250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R18
U 1 1 56A77454
P 6400 2250
F 0 "R18" H 6450 2350 40  0000 C CNB
F 1 "10k" V 6400 2250 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 6400 2250 60  0001 C CNN
F 3 "" H 6400 2250 60  0001 C CNN
F 4 "mfr_pn" H 6400 2250 60  0001 C CNN "manf#"
	1    6400 2250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R19
U 1 1 56A774E4
P 7575 2250
F 0 "R19" H 7625 2350 40  0000 C CNB
F 1 "10k" V 7575 2250 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 7575 2250 60  0001 C CNN
F 3 "" H 7575 2250 60  0001 C CNN
F 4 "mfr_pn" H 7575 2250 60  0001 C CNN "manf#"
	1    7575 2250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R20
U 1 1 56A77700
P 8075 2250
F 0 "R20" H 8125 2350 40  0000 C CNB
F 1 "10k" V 8075 2250 40  0000 C CNN
F 2 "velokey-footprints:R_0603_HandSoldering" H 8075 2250 60  0001 C CNN
F 3 "" H 8075 2250 60  0001 C CNN
F 4 "mfr_pn" H 8075 2250 60  0001 C CNN "manf#"
	1    8075 2250
	1    0    0    -1  
$EndComp
Connection ~ 8075 2400
Connection ~ 7575 2400
Connection ~ 6400 2400
Connection ~ 5900 2400
Wire Wire Line
	8075 800  8075 2150
Connection ~ 4250 800 
Wire Wire Line
	7575 2150 7575 800 
Connection ~ 7575 800 
Wire Wire Line
	6400 2150 6400 800 
Connection ~ 6400 800 
Wire Wire Line
	5900 2150 5900 800 
Connection ~ 5900 800 
$EndSCHEMATC
