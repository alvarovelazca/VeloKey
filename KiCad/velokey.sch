EESchema Schematic File Version 2
LIBS:velokey
LIBS:power
LIBS:PiPower_sch
LIBS:velokey-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "VeloKey"
Date "2016-01-24"
Rev "rev 1"
Comp "WyoLum"
Comment1 "A Strava Keyboard"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R_Small R1
U 1 1 565719DA
P 1800 1600
F 0 "R1" H 1850 1600 40  0000 L CNB
F 1 "1M" V 1800 1600 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 1800 1600 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/301010151.pdf" H 1800 1600 40  0001 C CNB
F 4 "RC0603FR-071ML" H 1800 1600 60  0001 C CNN "manf#"
	1    1800 1600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 56571A23
P 1475 1600
F 0 "C5" H 1550 1600 40  0000 L CNB
F 1 "4.7nF" H 1550 1525 40  0000 L CNN
F 2 "hack-footprints:C_0603_HandSoldering" H 1475 1600 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0100850P1.pdf" H 1475 1600 40  0001 C CNB
F 4 "CC0603KRX7R9BB472" H 1475 1600 60  0001 C CNN "manf#"
	1    1475 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 56573EBE
P 2000 1625
F 0 "#PWR01" H 2000 1375 40  0001 C CNB
F 1 "GND" H 2000 1475 40  0000 C CNB
F 2 "" H 2000 1625 40  0000 C CNB
F 3 "" H 2000 1625 40  0000 C CNB
	1    2000 1625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5657449C
P 2950 1625
F 0 "#PWR02" H 2950 1375 40  0001 C CNB
F 1 "GND" H 2950 1475 40  0000 C CNB
F 2 "" H 2950 1625 40  0000 C CNB
F 3 "" H 2950 1625 40  0000 C CNB
	1    2950 1625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56575AA6
P 1875 4625
F 0 "#PWR03" H 1875 4375 40  0001 C CNB
F 1 "GND" H 1875 4475 40  0000 C CNB
F 2 "" H 1875 4625 40  0000 C CNB
F 3 "" H 1875 4625 40  0000 C CNB
	1    1875 4625
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 56575F2E
P 1275 4425
F 0 "C6" H 1350 4425 40  0000 L CNB
F 1 "22pF" H 1350 4350 40  0000 L CNN
F 2 "hack-footprints:C_0603_HandSoldering" H 1275 4425 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/302010097.pdf" H 1275 4425 40  0001 C CNB
F 4 "CC0603JRNPO9BN100" H 1275 4425 60  0001 C CNN "manf#"
	1    1275 4425
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D1
U 1 1 56587FAD
P 6175 5575
F 0 "D1" V 6175 5525 40  0000 R CNB
F 1 "LED_BLINK" V 6100 5525 40  0000 R CNN
F 2 "hack-footprints:LED_0603_HandSoldering" V 6175 5575 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/S_110_LTST-C190KRKT.pdf" V 6175 5575 40  0001 C CNB
F 4 "LTST-C190KRKT" V 6175 5575 60  0001 C CNN "manf#"
	1    6175 5575
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R2
U 1 1 56588562
P 6175 5350
F 0 "R2" H 6225 5350 40  0000 L CNB
F 1 "330" V 6175 5350 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 6175 5350 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011330P1.pdf" H 6175 5350 40  0001 C CNB
F 4 "RC0603FR-07330RL" H 6175 5350 60  0001 C CNN "manf#"
	1    6175 5350
	1    0    0    -1  
$EndComp
$Comp
L SPST-M S1
U 1 1 5658420D
P 8475 2300
F 0 "S1" V 8475 2475 40  0000 L CNB
F 1 "RST" V 8400 2475 40  0000 L CNN
F 2 "hack-footprints:SPST-PTS_810" H 8475 2300 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/311020045.pdf" H 8475 2300 40  0001 C CNB
F 4 "PTS810 SJM 250 SMTR LFS" V 8475 2300 60  0001 C CNN "manf#"
	1    8475 2300
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 56587427
P 8100 2775
F 0 "#PWR05" H 8100 2525 40  0001 C CNB
F 1 "GND" H 8100 2625 40  0000 C CNB
F 2 "" H 8100 2775 40  0000 C CNB
F 3 "" H 8100 2775 40  0000 C CNB
	1    8100 2775
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 565868F0
P 6175 6350
F 0 "#PWR06" H 6175 6100 40  0001 C CNB
F 1 "GND" H 6175 6200 40  0000 C CNB
F 2 "" H 6175 6350 40  0000 C CNB
F 3 "" H 6175 6350 40  0000 C CNB
	1    6175 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56599C96
P 1975 3775
F 0 "#PWR07" H 1975 3525 40  0001 C CNB
F 1 "GND" H 1975 3625 40  0000 C CNB
F 2 "" H 1975 3775 40  0000 C CNB
F 3 "" H 1975 3775 40  0000 C CNB
	1    1975 3775
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 5659B02E
P 8100 1525
F 0 "R3" H 8150 1525 40  0000 L CNB
F 1 "10k" V 8100 1525 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 8100 1525 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011240P1.pdf" H 8100 1525 40  0001 C CNB
F 4 "RC0603FR-0710KL" H 8100 1525 60  0001 C CNN "manf#"
	1    8100 1525
	1    0    0    1   
$EndComp
$Comp
L C_Small C1
U 1 1 567ADE21
P 925 3575
F 0 "C1" H 1000 3575 40  0000 L CNB
F 1 "10uF" H 1000 3500 40  0000 L CNN
F 2 "hack-footprints:C_0603_HandSoldering" H 925 3575 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/UPY-GPHC_X5R_4V-to-50V_14_0717-202131.pdf" H 925 3575 40  0001 C CNB
F 4 "CC0603MRX5R5BB225" H 925 3575 60  0001 C CNN "manf#"
	1    925  3575
	1    0    0    -1  
$EndComp
$Comp
L FIDUCIAL FID1
U 1 1 567C2921
P 8950 6850
F 0 "FID1" H 8950 7000 40  0000 C CNB
F 1 "FIDUCIAL" H 8950 6700 40  0000 C CNB
F 2 "hack-footprints:FIDUCIAL" H 8950 6850 40  0001 C CNB
F 3 "" H 8950 6850 40  0000 C CNB
	1    8950 6850
	1    0    0    -1  
$EndComp
$Comp
L FIDUCIAL FID2
U 1 1 567C2A0D
P 9375 6850
F 0 "FID2" H 9375 7000 40  0000 C CNB
F 1 "FIDUCIAL" H 9375 6700 40  0000 C CNB
F 2 "hack-footprints:FIDUCIAL" H 9375 6850 40  0001 C CNB
F 3 "" H 9375 6850 40  0000 C CNB
	1    9375 6850
	1    0    0    -1  
$EndComp
$Comp
L FIDUCIAL FID3
U 1 1 567C2EF2
P 9800 6850
F 0 "FID3" H 9800 7000 40  0000 C CNB
F 1 "FIDUCIAL" H 9800 6700 40  0000 C CNB
F 2 "hack-footprints:FIDUCIAL" H 9800 6850 40  0001 C CNB
F 3 "" H 9800 6850 40  0000 C CNB
	1    9800 6850
	1    0    0    -1  
$EndComp
NoConn ~ 1425 1225
Text Label 975  1775 0    40   ~ 0
shield
$Comp
L PWR_FLAG #FLG010
U 1 1 56824C17
P 2425 3150
F 0 "#FLG010" H 2425 3245 50  0001 C CNN
F 1 "PWR_FLAG" H 2425 3330 40  0000 C CNN
F 2 "" H 2425 3150 50  0000 C CNN
F 3 "" H 2425 3150 50  0000 C CNN
	1    2425 3150
	1    0    0    -1  
$EndComp
$Comp
L OSHW LOGO1
U 1 1 56826CD5
P 10775 7000
F 0 "LOGO1" H 10775 6950 40  0001 C CNN
F 1 "OSHW" H 10775 7100 40  0001 C CNN
F 2 "hack-footprints:OSHW-LOGO" H 10775 7000 60  0001 C CNN
F 3 "" H 10775 7000 60  0000 C CNN
F 4 "mfr_pn" H 10775 7000 60  0001 C CNN "manf#"
	1    10775 7000
	1    0    0    -1  
$EndComp
Text Notes 600  650  0    40   ~ 8
USB_IN + FILTER
Text Notes 600  2950 0    40   ~ 8
LDO VOLTAGE REGULATOR
Text Notes 600  4150 0    40   ~ 8
CRYSTAL
Text Notes 600  5000 0    40   ~ 8
INTERFACES
Text Notes 3525 700  0    40   ~ 8
MICRO CONTROLLER
NoConn ~ 8425 2150
NoConn ~ 8425 2450
$Comp
L USB_micro P1
U 1 1 568DEDE0
P 1025 775
F 0 "P1" H 1025 825 40  0000 C CNB
F 1 "USB_micro" H 1025 725 40  0000 C CNB
F 2 "hack-footprints:ST-USB-001G" H 1025 775 60  0001 C CNN
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/10118193.pdf" H 1025 825 60  0001 C CNN
F 4 "10118193-0001LF" H 1125 925 60  0001 C CNN "manf#"
	1    1025 775 
	1    0    0    -1  
$EndComp
$Comp
L STF202 U2
U 1 1 568E01AF
P 2100 775
F 0 "U2" H 1850 825 40  0000 C CNB
F 1 "STF202" H 2100 825 40  0000 C CNB
F 2 "hack-footprints:TSOP-6" H 1750 725 60  0001 C CNN
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/STF202-22T1-D-117165.pdf" H 1850 825 60  0001 C CNN
F 4 "STF202-22T1G" H 1950 925 60  0001 C CNN "manf#"
	1    2100 775 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 568E114E
P 2425 3575
F 0 "C2" H 2500 3575 40  0000 L CNB
F 1 "10uF" H 2500 3500 40  0000 L CNN
F 2 "hack-footprints:C_0603_HandSoldering" H 2425 3575 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/UPY-GPHC_X5R_4V-to-50V_14_0717-202131.pdf" H 2425 3575 40  0001 C CNB
F 4 "CC0603MRX5R5BB225" H 2425 3575 60  0001 C CNN "manf#"
	1    2425 3575
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 568E1524
P 2475 4425
F 0 "C7" H 2550 4425 40  0000 L CNB
F 1 "22pF" H 2550 4350 40  0000 L CNN
F 2 "hack-footprints:C_0603_HandSoldering" H 2475 4425 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/302010097.pdf" H 2475 4425 40  0001 C CNB
F 4 "CC0603JRNPO9BN100" H 2475 4425 60  0001 C CNN "manf#"
	1    2475 4425
	1    0    0    -1  
$EndComp
$Comp
L ABS07 X1
U 1 1 568E18BC
P 1875 4275
F 0 "X1" H 1875 4425 40  0000 C CNB
F 1 "ABS07" H 1875 4275 40  0000 C CNB
F 2 "hack-footprints:xtal_3.2x1.5mm" H 1875 4275 60  0001 C CNN
F 3 "" H 1875 4125 60  0001 C CNN
F 4 "ABS07-32.768KHZ-7-T" H 1975 4225 60  0001 C CNN "manf#"
	1    1875 4275
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 568E44C5
P 8475 1975
F 0 "R4" H 8525 1975 40  0000 L CNB
F 1 "39" V 8475 1975 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 8475 1975 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011330P1.pdf" H 8475 1975 40  0001 C CNB
F 4 "RC0603FR-07330RL" H 8475 1975 60  0001 C CNN "manf#"
	1    8475 1975
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 568E4FE1
P 8100 2300
F 0 "C11" H 8025 2300 40  0000 R CNB
F 1 "100nF" H 8025 2225 40  0000 R CNN
F 2 "hack-footprints:C_0603_HandSoldering" H 8100 2300 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0100020P1.pdf" H 8100 2300 40  0001 C CNB
F 4 "CC0603KRX7R9BB104" H 8100 2300 60  0001 C CNN "manf#"
	1    8100 2300
	-1   0    0    -1  
$EndComp
$Comp
L SAMD21G18A U?
U 1 1 56A63B98
P 5725 1175
AR Path="/56A50B22/56A63B98" Ref="U?"  Part="1" 
AR Path="/56A63B98" Ref="U?"  Part="1" 
F 0 "U?" H 4975 1375 40  0000 L CNB
F 1 "SAMD21G18A" H 5325 1375 40  0000 L CNB
F 2 "" H 5075 1175 60  0000 C CNN
F 3 "https://github.com/Wyolum/VeloKey/tree/master/kicad/data/Atmel-42181-SAM-D21_Datasheet.pdf" H 6925 1575 60  0001 C CNN
F 4 "SAMD21G18A-AUT" H 4975 1475 60  0001 C CNN "manf#"
	1    5725 1175
	1    0    0    -1  
$EndComp
Text Label 3975 2575 0    40   ~ 8
D0
Text Label 3975 2475 0    40   ~ 8
D1
Text Label 3975 2275 0    40   ~ 8
TX_BT
Text Label 3975 2375 0    40   ~ 8
D3
Text Label 3975 3075 0    40   ~ 8
D2
Text Label 3975 3175 0    40   ~ 8
RX_BT
Text Label 7475 2775 0    40   ~ 8
D6
Text Label 7475 2675 0    40   ~ 8
D7
Text Label 7475 2875 0    40   ~ 8
D12
Text Label 3975 1375 0    40   ~ 8
A0
Text Label 3975 1575 0    40   ~ 8
A1
Text Label 3975 1675 0    40   ~ 8
A2
Text Label 3975 1775 0    40   ~ 8
A3
Text Label 3975 1875 0    40   ~ 8
A4
Text Label 7475 1275 0    40   ~ 8
A5
Text Label 3975 1475 0    40   ~ 8
AREF
Text Label 7475 2575 0    40   ~ 8
SDA
Text Label 7475 2475 0    40   ~ 8
SCL
Text Label 7475 2375 0    40   ~ 8
USB_N
Text Label 7475 2275 0    40   ~ 8
USB_P
Text Label 3975 1175 0    40   ~ 8
XIN32
Text Label 3975 1275 0    40   ~ 8
XOUT32
Text Label 1850 5150 0    40   ~ 8
MISO
Text Label 3975 2775 0    40   ~ 8
SCK
Text Label 3975 2875 0    40   ~ 8
MISO
$Comp
L SAMD21G18A U?
U 2 1 56A64203
P 5450 5500
AR Path="/56A50B22/56A64203" Ref="U?"  Part="2" 
AR Path="/56A64203" Ref="U?"  Part="2" 
F 0 "U?" H 4700 5700 40  0000 L CNB
F 1 "SAMD21G18A" H 5050 5700 40  0000 L CNB
F 2 "" H 4800 5500 60  0000 C CNN
F 3 "https://github.com/Wyolum/VeloKey/tree/master/kicad/data/Atmel-42181-SAM-D21_Datasheet.pdf" H 6650 5900 60  0001 C CNN
F 4 "SAMD21G18A-AUT" H 4700 5800 60  0001 C CNN "manf#"
	2    5450 5500
	1    0    0    -1  
$EndComp
$Comp
L FERRITE_BEAD L?
U 1 1 56A6420B
P 3700 5500
F 0 "L?" H 3665 5590 40  0000 L CNB
F 1 "FERRITE_BEAD" H 3515 5405 40  0000 L CNN
F 2 "" H 3700 5500 60  0000 C CNN
F 3 "" H 3665 5590 60  0000 C CNN
F 4 "BLM18EG221SN1D" H 3765 5690 40  0000 C CNN "manf#"
	1    3700 5500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 56A64212
P 4350 5600
F 0 "C?" H 4375 5650 40  0000 L CNB
F 1 "100nF" H 4375 5525 40  0000 L CNN
F 2 "" H 4350 5600 50  0000 C CNN
F 3 "" H 4350 5600 50  0000 C CNN
	1    4350 5600
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C?
U 1 1 56A64219
P 4050 5600
F 0 "C?" H 4075 5650 40  0000 L CNB
F 1 "10uF" H 4060 5520 40  0000 L CNN
F 2 "" H 4050 5600 50  0000 C CNN
F 3 "" H 4050 5600 50  0000 C CNN
	1    4050 5600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 56A64220
P 4050 7100
F 0 "C?" H 4075 7150 40  0000 L CNB
F 1 "100nF" H 4075 7025 40  0000 L CNN
F 2 "" H 4050 7100 50  0000 C CNN
F 3 "" H 4050 7100 50  0000 C CNN
	1    4050 7100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 56A64227
P 4350 7100
F 0 "C?" H 4375 7150 40  0000 L CNB
F 1 "100nF" H 4375 7025 40  0000 L CNN
F 2 "" H 4350 7100 50  0000 C CNN
F 3 "" H 4350 7100 50  0000 C CNN
	1    4350 7100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 56A6422E
P 4350 6500
F 0 "C?" H 4375 6550 40  0000 L CNB
F 1 "100nF" H 4375 6425 40  0000 L CNN
F 2 "" H 4350 6500 50  0000 C CNN
F 3 "" H 4350 6500 50  0000 C CNN
	1    4350 6500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 56A64235
P 4350 6100
F 0 "C?" H 4375 6150 40  0000 L CNB
F 1 "100nF" H 4375 6025 40  0000 L CNN
F 2 "" H 4350 6100 50  0000 C CNN
F 3 "" H 4350 6100 50  0000 C CNN
	1    4350 6100
	1    0    0    -1  
$EndComp
Text Label 3225 5700 0    40   ~ 8
GND
Text Label 4350 7400 0    40   ~ 8
GND
Text Label 4350 6200 2    40   ~ 8
GND
Text Label 4350 6600 2    40   ~ 8
GND
$Comp
L CP_Small C?
U 1 1 56A64252
P 3750 7100
F 0 "C?" H 3760 7170 40  0000 L CNB
F 1 "CP_Small" H 3750 7025 40  0000 L CNN
F 2 "" H 3750 7100 50  0000 C CNN
F 3 "" H 3750 7100 50  0000 C CNN
	1    3750 7100
	1    0    0    -1  
$EndComp
$Comp
L L_Small L?
U 1 1 56A6425D
P 3550 6800
F 0 "L?" V 3625 6800 40  0000 C CNB
F 1 "L_Small" V 3500 6800 40  0000 C CNN
F 2 "" H 3550 6800 50  0000 C CNN
F 3 "" H 3580 6840 50  0000 C CNN
F 4 "ELL-VFG100MC" V 3425 6850 40  0000 C CNN "manf#"
	1    3550 6800
	0    -1   -1   0   
$EndComp
Text Label 3225 6800 0    40   ~ 8
3V3
Text Label 4350 6400 2    40   ~ 8
3V3
Text Label 4350 6000 2    40   ~ 8
3V3
Text Label 3225 5500 0    40   ~ 8
3V3
$Comp
L R_Small R?
U 1 1 56A6573A
P 7925 1675
F 0 "R?" H 7975 1675 40  0000 L CNB
F 1 "330" V 7925 1675 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 7925 1675 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011330P1.pdf" H 7925 1675 40  0001 C CNB
F 4 "RC0603FR-07330RL" H 7925 1675 60  0001 C CNN "manf#"
	1    7925 1675
	0    1    1    0   
$EndComp
Text Label 8100 1225 0    40   ~ 8
3V3
Text Label 7475 1975 0    40   ~ 8
TXD
Text Label 7475 1875 0    40   ~ 8
RXD
Text Label 7475 1775 0    40   ~ 8
TX_LED
Text Label 7475 1175 0    40   ~ 8
RX_LED
Text Label 7475 1575 0    40   ~ 8
USB_HOST_EN
Text Label 7475 1475 0    40   ~ 8
SWCLK
Text Label 7475 1375 0    40   ~ 8
SWDIO
Text Label 2550 1125 0    40   ~ 8
USB_P
Text Label 2550 1025 0    40   ~ 8
USB_N
Text Label 1475 925  0    40   ~ 8
VBUS
Text Label 1475 1025 0    40   ~ 8
D_N
Text Label 1475 1125 0    40   ~ 8
D_P
$Comp
L MMBF170 Q?
U 1 1 56A69564
P 6275 5925
F 0 "Q?" H 6475 6000 40  0000 L CNB
F 1 "MMBF170" H 6475 5925 40  0000 L CNN
F 2 "SOT-23" H 6475 5850 40  0001 L CIN
F 3 "" H 6275 5925 50  0000 L CNN
	1    6275 5925
	-1   0    0    -1  
$EndComp
Text Label 6175 5150 0    40   ~ 8
3V3
$Comp
L Led_Small D?
U 1 1 56A6A71E
P 6825 5575
F 0 "D?" V 6825 5525 40  0000 R CNB
F 1 "LED_RX" V 6750 5525 40  0000 R CNN
F 2 "hack-footprints:LED_0603_HandSoldering" V 6825 5575 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/S_110_LTST-C190KRKT.pdf" V 6825 5575 40  0001 C CNB
F 4 "LTST-C190KRKT" V 6825 5575 60  0001 C CNN "manf#"
	1    6825 5575
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 56A6A725
P 6825 5350
F 0 "R?" H 6875 5350 40  0000 L CNB
F 1 "330" V 6825 5350 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 6825 5350 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011330P1.pdf" H 6825 5350 40  0001 C CNB
F 4 "RC0603FR-07330RL" H 6825 5350 60  0001 C CNN "manf#"
	1    6825 5350
	1    0    0    -1  
$EndComp
Text Label 6825 5150 0    40   ~ 8
3V3
$Comp
L Led_Small D?
U 1 1 56A6A918
P 7225 5575
F 0 "D?" V 7225 5525 40  0000 R CNB
F 1 "LED_TX" V 7150 5525 40  0000 R CNN
F 2 "hack-footprints:LED_0603_HandSoldering" V 7225 5575 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/S_110_LTST-C190KRKT.pdf" V 7225 5575 40  0001 C CNB
F 4 "LTST-C190KRKT" V 7225 5575 60  0001 C CNN "manf#"
	1    7225 5575
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 56A6A91F
P 7225 5350
F 0 "R?" H 7275 5350 40  0000 L CNB
F 1 "330" V 7225 5350 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 7225 5350 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011330P1.pdf" H 7225 5350 40  0001 C CNB
F 4 "RC0603FR-07330RL" H 7225 5350 60  0001 C CNN "manf#"
	1    7225 5350
	1    0    0    -1  
$EndComp
Text Label 7225 5150 0    40   ~ 8
3V3
Text Label 6825 5975 0    40   ~ 8
RX_LED
Text Label 7225 5975 0    40   ~ 8
TX_LED
$Comp
L R_Small R?
U 1 1 56A6AEDB
P 6500 6150
F 0 "R?" H 6550 6150 40  0000 L CNB
F 1 "330" V 6500 6150 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 6500 6150 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011330P1.pdf" H 6500 6150 40  0001 C CNB
F 4 "RC0603FR-07330RL" H 6500 6150 60  0001 C CNN "manf#"
	1    6500 6150
	-1   0    0    1   
$EndComp
$Comp
L CONN_02X5 P?
U 1 1 56A6DCF0
P 1225 5350
F 0 "P?" H 1225 5650 40  0000 C CNB
F 1 "SWD" H 1225 5050 40  0000 C CNB
F 2 "" H 1175 5300 50  0000 C CNN
F 3 "" H 1175 5300 50  0000 C CNN
	1    1225 5350
	-1   0    0    -1  
$EndComp
$Comp
L CONN_02X3 P?
U 1 1 56A6DE71
P 2425 5250
F 0 "P?" H 2425 5450 40  0000 C CNB
F 1 "SPI" H 2425 5050 40  0000 C CNB
F 2 "" H 2375 5100 50  0000 C CNN
F 3 "" H 2375 5100 50  0000 C CNN
	1    2425 5250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P?
U 1 1 56A6E6FD
P 1175 6300
F 0 "P?" H 1250 6675 40  0000 L CNB
F 1 "POWER" V 1275 6150 40  0000 L CNB
F 2 "" H 1175 6050 50  0000 C CNN
F 3 "" H 1175 6050 50  0000 C CNN
	1    1175 6300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P?
U 1 1 56A6E864
P 1175 7275
F 0 "P?" H 1250 7550 40  0000 L CNB
F 1 "ANALOG" V 1275 7100 40  0000 L CNB
F 2 "" H 1175 7275 50  0000 C CNN
F 3 "" H 1175 7275 50  0000 C CNN
	1    1175 7275
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P?
U 1 1 56A6EAD7
P 2475 7175
F 0 "P?" H 2550 7550 40  0000 L CNB
F 1 "DIGITAL_01" V 2575 7025 40  0000 L CNB
F 2 "" H 2475 6925 50  0000 C CNN
F 3 "" H 2475 6925 50  0000 C CNN
	1    2475 7175
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X10 P?
U 1 1 56A6F095
P 2475 6200
F 0 "P?" H 2550 6675 40  0000 L CNB
F 1 "DIGITAL_02" V 2575 6000 40  0000 L CNB
F 2 "" H 2475 6050 50  0000 C CNN
F 3 "" H 2475 6050 50  0000 C CNN
	1    2475 6200
	-1   0    0    1   
$EndComp
Text Label 750  5150 0    40   ~ 8
SWDIO
Text Label 750  5250 0    40   ~ 8
SWCLK
NoConn ~ 975  5350
NoConn ~ 975  5450
Text Label 7475 1675 0    40   ~ 8
RESET
Text Label 8475 1675 0    40   ~ 8
RST
Text Label 750  5550 0    40   ~ 8
RST
NoConn ~ 1475 5450
Text Label 1600 5150 2    40   ~ 8
3V3
Text Label 1600 5250 2    40   ~ 8
GND
Text Label 3000 5150 2    40   ~ 8
3V3
Text Label 3975 2675 0    40   ~ 8
MOSI
Text Label 1850 5250 0    40   ~ 8
SCK
Text Label 3000 5250 2    40   ~ 8
MISO
Text Label 1850 5350 0    40   ~ 8
RST
Text Label 3000 5350 2    40   ~ 8
GND
Text Label 800  3325 2    40   ~ 8
VBUS
Text Label 800  3725 2    40   ~ 8
GND
Text Label 2550 3325 0    40   ~ 8
3V3
Text Label 1150 4275 2    40   ~ 8
XIN32
Text Label 2600 4275 0    40   ~ 8
XOUT32
Text Label 750  7025 0    40   ~ 8
A0
Text Label 750  7125 0    40   ~ 8
A1
Text Label 750  7225 0    40   ~ 8
A2
Text Label 750  7325 0    40   ~ 8
A3
Text Label 750  7425 0    40   ~ 8
A4
Text Label 750  7525 0    40   ~ 8
A5
Text Label 3000 7525 2    40   ~ 8
D0
Text Label 3000 7425 2    40   ~ 8
D1
Text Label 3000 7325 2    40   ~ 8
D2
Text Label 3000 7225 2    40   ~ 8
D3
Text Label 3000 7125 2    40   ~ 8
D4
Text Label 3000 7025 2    40   ~ 8
D5
Text Label 3000 6925 2    40   ~ 8
D6
Text Label 3000 6825 2    40   ~ 8
D7
Text Label 3000 6650 2    40   ~ 8
D8
Text Label 3000 6550 2    40   ~ 8
D9
Text Label 3000 6450 2    40   ~ 8
SS
Text Label 3000 6350 2    40   ~ 8
MOSI
Text Label 3000 6250 2    40   ~ 8
MISO
Text Label 3000 6150 2    40   ~ 8
SCK
Text Label 3000 6050 2    40   ~ 8
GND
Text Label 3000 5950 2    40   ~ 8
AREF
Text Label 3000 5850 2    40   ~ 8
SDA
Text Label 3000 5750 2    40   ~ 8
SCL
Text Label 750  6650 0    40   ~ 8
VIN
Text Label 750  6550 0    40   ~ 8
GND
Text Label 750  6450 0    40   ~ 8
GND
Text Label 750  6350 0    40   ~ 8
5V
Text Label 750  6250 0    40   ~ 8
3V3
Text Label 750  6150 0    40   ~ 8
RST
Text Label 750  6050 0    40   ~ 8
3V3
NoConn ~ 750  5950
$Comp
L C_Small C?
U 1 1 56A65A15
P 3650 1575
F 0 "C?" H 3675 1625 40  0000 L CNB
F 1 "100nF" H 3675 1500 40  0000 L CNB
F 2 "" H 3650 1575 50  0000 C CNN
F 3 "" H 3650 1575 50  0000 C CNN
	1    3650 1575
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C?
U 1 1 56A65A1B
P 3350 1575
F 0 "C?" H 3375 1625 40  0000 L CNB
F 1 "10uF" H 3360 1495 40  0000 L CNB
F 2 "" H 3350 1575 50  0000 C CNN
F 3 "" H 3350 1575 50  0000 C CNN
	1    3350 1575
	1    0    0    -1  
$EndComp
Text Label 3350 1675 2    40   ~ 8
GND
Text Notes 1700 4475 0    40   ~ 0
32.768kHz
NoConn ~ 4475 2975
Text Label 6550 5975 0    40   ~ 8
D13
$Comp
L SPX3819-3V3 U?
U 1 1 56A6D9C2
P 1925 3375
F 0 "U?" H 1925 3625 40  0000 C CNB
F 1 "SPX3819-3V3" H 1925 3525 40  0000 C CNB
F 2 "" H 1925 3575 60  0000 C CNN
F 3 "" H 1925 3575 60  0000 C CNN
F 4 "SPX3819M5-L-3-3" H 2025 3725 40  0001 C CNN "manf#"
	1    1925 3375
	1    0    0    -1  
$EndComp
NoConn ~ 2275 3425
$Comp
L C_Small C?
U 1 1 56A6E523
P 2700 3575
F 0 "C?" H 2775 3575 40  0000 L CNB
F 1 "1uF" H 2775 3500 40  0000 L CNN
F 2 "hack-footprints:C_0603_HandSoldering" H 2700 3575 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/UPY-GPHC_X5R_4V-to-50V_14_0717-202131.pdf" H 2700 3575 40  0001 C CNB
F 4 "CC0603MRX5R5BB225" H 2700 3575 60  0001 C CNN "manf#"
	1    2700 3575
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 56A6ECC0
P 1400 3425
F 0 "R?" V 1475 3400 40  0000 L CNB
F 1 "100k" V 1400 3425 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 1400 3425 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/301010151.pdf" H 1400 3425 40  0001 C CNB
F 4 "RC0603FR-071ML" H 1400 3425 60  0001 C CNN "manf#"
	1    1400 3425
	0    1    1    0   
$EndComp
$Comp
L Led_Schottky D?
U 1 1 56A6F9A1
P 1025 3175
F 0 "D?" H 900 3225 40  0000 L CNB
F 1 "MBR120" H 1025 3100 40  0000 C CNN
F 2 "" V 1025 3175 50  0000 C CNN
F 3 "" V 1025 3175 50  0000 C CNN
	1    1025 3175
	-1   0    0    1   
$EndComp
Text Label 800  3175 2    40   ~ 8
VBAT
$Comp
L MCP73831 U?
U 1 1 56A71AA1
P 1625 2350
F 0 "U?" H 1625 2525 40  0000 C BNB
F 1 "MCP73831" H 1625 2150 40  0000 C TNN
F 2 "" H 1625 2400 60  0000 C CNN
F 3 "" H 1625 2400 60  0000 C CNN
	1    1625 2350
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D?
U 1 1 56A7224C
P 850 2450
F 0 "D?" H 925 2500 40  0000 C CNB
F 1 "LED_CHG" H 850 2375 40  0000 C CNN
F 2 "hack-footprints:LED_0603_HandSoldering" V 850 2450 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/S_110_LTST-C190KRKT.pdf" V 850 2450 40  0001 C CNB
F 4 "LTST-C190KRKT" V 850 2450 60  0001 C CNN "manf#"
	1    850  2450
	-1   0    0    1   
$EndComp
$Comp
L R_Small R?
U 1 1 56A72566
P 1125 2450
F 0 "R?" V 1200 2450 40  0000 C CNB
F 1 "330" V 1125 2450 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 1125 2450 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011330P1.pdf" H 1125 2450 40  0001 C CNB
F 4 "RC0603FR-07330RL" H 1125 2450 60  0001 C CNN "manf#"
	1    1125 2450
	0    1    1    0   
$EndComp
Text Label 700  2250 0    40   ~ 8
VBUS
$Comp
L R_Small R?
U 1 1 56A746F6
P 2125 2350
F 0 "R?" V 2200 2350 40  0000 C CNB
F 1 "10k" V 2125 2350 40  0000 C CNN
F 2 "hack-footprints:R_0603_HandSoldering" H 2125 2350 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/0011330P1.pdf" H 2125 2350 40  0001 C CNB
F 4 "RC0603FR-07330RL" H 2125 2350 60  0001 C CNN "manf#"
	1    2125 2350
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 56A74CAA
P 2450 2350
F 0 "C?" H 2525 2350 40  0000 L CNB
F 1 "10uF" H 2525 2275 40  0000 L CNN
F 2 "hack-footprints:C_0603_HandSoldering" H 2450 2350 40  0001 C CNB
F 3 "https://github.com/MickMad/HACK/tree/master/kicad/datasheets/UPY-GPHC_X5R_4V-to-50V_14_0717-202131.pdf" H 2450 2350 40  0001 C CNB
F 4 "CC0603MRX5R5BB225" H 2450 2350 60  0001 C CNN "manf#"
	1    2450 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56A753F4
P 2450 2525
F 0 "#PWR?" H 2450 2275 50  0001 C CNN
F 1 "GND" H 2450 2375 40  0000 C CNB
F 2 "" H 2450 2525 50  0000 C CNN
F 3 "" H 2450 2525 50  0000 C CNN
	1    2450 2525
	1    0    0    -1  
$EndComp
Text Label 2575 2250 0    40   ~ 8
VBAT
$Comp
L +BATT #PWR?
U 1 1 56A75C1D
P 2450 2200
F 0 "#PWR?" H 2450 2050 50  0001 C CNN
F 1 "+BATT" H 2450 2350 40  0000 C CNB
F 2 "" H 2450 2200 50  0000 C CNN
F 3 "" H 2450 2200 50  0000 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 56A77170
P 2900 2350
F 0 "P?" H 2900 2500 40  0000 C CNB
F 1 "JSTPH" V 3000 2350 40  0000 C CNN
F 2 "" H 2900 2350 50  0000 C CNN
F 3 "" H 2900 2350 50  0000 C CNN
	1    2900 2350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 56A7998E
P 2700 3125
F 0 "#PWR?" H 2700 2975 50  0001 C CNN
F 1 "+3.3V" H 2700 3265 40  0000 C CNB
F 2 "" H 2700 3125 50  0000 C CNN
F 3 "" H 2700 3125 50  0000 C CNN
	1    2700 3125
	1    0    0    -1  
$EndComp
Text Notes 600  2050 0    40   ~ 8
LIPO CHARGER
Text Notes 1900 2750 0    40   ~ 0
10k = 100mA\n5.0k = 200mA\n2.0k = 500mA\n1.0k = 1000mA
Connection ~ 925  3325
Wire Wire Line
	925  3675 925  3725
Wire Wire Line
	2425 3725 2425 3675
Wire Wire Line
	2275 3325 2700 3325
Wire Wire Line
	2425 3150 2425 3475
Connection ~ 2425 3325
Wire Wire Line
	1425 1025 1700 1025
Wire Wire Line
	1425 1125 1700 1125
Wire Wire Line
	1425 1325 2000 1325
Wire Wire Line
	1475 1325 1475 1500
Wire Wire Line
	1800 1325 1800 1500
Connection ~ 1475 1325
Wire Wire Line
	1800 1775 1800 1700
Wire Wire Line
	875  1775 1800 1775
Wire Wire Line
	875  1475 875  1775
Wire Wire Line
	1475 1700 1475 1775
Connection ~ 1475 1775
Connection ~ 1800 1325
Wire Wire Line
	2000 1325 2000 1625
Wire Wire Line
	2500 1025 2550 1025
Wire Wire Line
	2500 1125 2550 1125
Wire Wire Line
	2500 925  2950 925 
Wire Wire Line
	1275 4525 1275 4575
Wire Wire Line
	1275 4575 2475 4575
Wire Wire Line
	2475 4575 2475 4525
Wire Wire Line
	1150 4275 1575 4275
Wire Wire Line
	1275 4275 1275 4325
Connection ~ 1275 4275
Wire Wire Line
	2175 4275 2600 4275
Wire Wire Line
	2475 4275 2475 4325
Connection ~ 2475 4275
Wire Wire Line
	1875 4625 1875 4575
Connection ~ 1875 4575
Wire Wire Line
	6175 5450 6175 5475
Wire Wire Line
	6175 5675 6175 5725
Wire Wire Line
	8475 2525 8100 2525
Wire Wire Line
	8100 2400 8100 2775
Wire Wire Line
	8100 1625 8100 2200
Connection ~ 8100 1675
Connection ~ 8100 2525
Wire Wire Line
	8100 1225 8100 1425
Wire Wire Line
	8475 2075 8475 2150
Wire Wire Line
	8475 1675 8475 1875
Wire Wire Line
	800  3325 1575 3325
Wire Wire Line
	925  3325 925  3475
Wire Wire Line
	800  3725 2700 3725
Connection ~ 1975 3725
Wire Wire Line
	1425 925  1700 925 
Wire Wire Line
	8475 2450 8475 2525
Connection ~ 925  3725
Wire Wire Line
	6175 5250 6175 5150
Wire Notes Line
	575  575  3075 575 
Wire Notes Line
	575  2875 3075 2875
Wire Notes Line
	3075 3975 575  3975
Wire Notes Line
	575  4075 3075 4075
Wire Notes Line
	3075 4075 3075 4825
Wire Notes Line
	3075 4825 575  4825
Wire Notes Line
	575  4825 575  4075
Wire Wire Line
	2950 925  2950 1625
Wire Notes Line
	575  4925 3075 4925
Wire Bus Line
	875  1775 1800 1775
Wire Bus Line
	800  3725 2700 3725
Wire Bus Line
	1275 4575 2475 4575
Wire Wire Line
	4475 1175 3975 1175
Wire Wire Line
	3975 1275 4475 1275
Wire Wire Line
	3975 1375 4475 1375
Wire Wire Line
	3350 1475 4475 1475
Wire Wire Line
	3975 1575 4475 1575
Wire Wire Line
	3975 1675 4475 1675
Wire Wire Line
	3975 1775 4475 1775
Wire Wire Line
	3975 1875 4475 1875
Wire Wire Line
	3975 1975 4475 1975
Wire Wire Line
	3975 2075 4475 2075
Wire Wire Line
	3975 2275 4475 2275
Wire Wire Line
	3975 2375 4475 2375
Wire Wire Line
	3975 2475 4475 2475
Wire Wire Line
	3975 2575 4475 2575
Wire Wire Line
	3975 2675 4475 2675
Wire Wire Line
	3975 2775 4475 2775
Wire Wire Line
	3975 2875 4475 2875
Wire Wire Line
	3975 3075 4475 3075
Wire Wire Line
	3975 3175 4475 3175
Wire Wire Line
	7475 1175 6975 1175
Wire Wire Line
	6975 1275 7475 1275
Wire Wire Line
	6975 1375 7475 1375
Wire Wire Line
	6975 1475 7475 1475
Wire Wire Line
	6975 1575 7475 1575
Wire Wire Line
	6975 1675 7825 1675
Wire Wire Line
	6975 1775 7475 1775
Wire Wire Line
	6975 1875 7475 1875
Wire Wire Line
	6975 1975 7475 1975
Wire Wire Line
	6975 2275 7475 2275
Wire Wire Line
	6975 2375 7475 2375
Wire Wire Line
	6975 2475 7475 2475
Wire Wire Line
	6975 2575 7475 2575
Wire Wire Line
	6975 2675 7475 2675
Wire Wire Line
	6975 2775 7475 2775
Wire Wire Line
	6975 2875 7475 2875
Wire Wire Line
	6975 2975 7475 2975
Wire Wire Line
	6975 3075 7475 3075
Wire Wire Line
	6975 3175 7475 3175
Wire Wire Line
	3850 5500 4600 5500
Connection ~ 4350 5500
Connection ~ 4050 5500
Wire Wire Line
	3225 5700 4600 5700
Connection ~ 4350 5700
Connection ~ 4050 5700
Wire Wire Line
	3550 5500 3225 5500
Wire Wire Line
	4600 6000 4350 6000
Wire Wire Line
	4350 6200 4600 6200
Wire Wire Line
	4350 6400 4600 6400
Wire Wire Line
	4350 6600 4600 6600
Wire Wire Line
	4050 6800 4050 7000
Wire Wire Line
	3650 6800 4600 6800
Wire Wire Line
	4350 7000 4600 7000
Wire Wire Line
	3750 7400 4600 7400
Wire Wire Line
	3750 7000 3750 6800
Connection ~ 4050 6800
Connection ~ 3750 6800
Wire Wire Line
	3450 6800 3225 6800
Wire Wire Line
	8025 1675 8475 1675
Wire Wire Line
	6175 6125 6175 6350
Wire Wire Line
	6475 5975 6550 5975
Wire Wire Line
	6825 5450 6825 5475
Wire Wire Line
	6825 5250 6825 5150
Wire Wire Line
	6825 5675 6825 5975
Wire Wire Line
	7225 5450 7225 5475
Wire Wire Line
	7225 5250 7225 5150
Wire Wire Line
	7225 5675 7225 5975
Wire Wire Line
	6500 6050 6500 5975
Connection ~ 6500 5975
Wire Wire Line
	6500 6250 6500 6300
Wire Wire Line
	6500 6300 6175 6300
Connection ~ 6175 6300
Wire Wire Line
	750  5150 975  5150
Wire Wire Line
	750  5250 975  5250
Wire Wire Line
	750  5550 975  5550
Wire Wire Line
	1475 5150 1600 5150
Wire Wire Line
	1475 5250 1600 5250
Wire Wire Line
	1600 5250 1600 5550
Wire Wire Line
	1600 5550 1475 5550
Wire Wire Line
	1475 5350 1600 5350
Connection ~ 1600 5350
Wire Wire Line
	1850 5150 2175 5150
Wire Wire Line
	1850 5250 2175 5250
Wire Wire Line
	1850 5350 2175 5350
Wire Wire Line
	3000 5150 2675 5150
Wire Wire Line
	3000 5250 2675 5250
Wire Wire Line
	3000 5350 2675 5350
Wire Wire Line
	750  7025 975  7025
Wire Wire Line
	750  7125 975  7125
Wire Wire Line
	750  7225 975  7225
Wire Wire Line
	750  7325 975  7325
Wire Wire Line
	750  7425 975  7425
Wire Wire Line
	750  7525 975  7525
Wire Wire Line
	3000 7525 2675 7525
Wire Wire Line
	3000 7425 2675 7425
Wire Wire Line
	3000 7325 2675 7325
Wire Wire Line
	3000 7225 2675 7225
Wire Wire Line
	3000 7125 2675 7125
Wire Wire Line
	3000 7025 2675 7025
Wire Wire Line
	3000 6925 2675 6925
Wire Wire Line
	3000 6825 2675 6825
Wire Wire Line
	3000 6650 2675 6650
Wire Wire Line
	3000 6550 2675 6550
Wire Wire Line
	3000 6450 2675 6450
Wire Wire Line
	3000 6350 2675 6350
Wire Wire Line
	3000 6250 2675 6250
Wire Wire Line
	3000 6150 2675 6150
Wire Wire Line
	3000 6050 2675 6050
Wire Wire Line
	3000 5950 2675 5950
Wire Wire Line
	3000 5850 2675 5850
Wire Wire Line
	2675 5750 3000 5750
Wire Wire Line
	750  6650 975  6650
Wire Wire Line
	975  6550 750  6550
Wire Wire Line
	750  6450 975  6450
Wire Wire Line
	975  6350 750  6350
Wire Wire Line
	750  6250 975  6250
Wire Wire Line
	975  6150 750  6150
Wire Wire Line
	750  6050 975  6050
Wire Wire Line
	975  5950 750  5950
Wire Wire Line
	3350 1675 3650 1675
Connection ~ 3650 1475
Wire Wire Line
	1975 3775 1975 3725
Wire Wire Line
	2700 3125 2700 3475
Wire Wire Line
	2700 3725 2700 3675
Connection ~ 2425 3725
Wire Wire Line
	1500 3425 1575 3425
Wire Wire Line
	1200 3425 1300 3425
Wire Wire Line
	1200 3175 1200 3425
Connection ~ 1200 3325
Wire Wire Line
	1125 3175 1200 3175
Wire Wire Line
	925  3175 800  3175
Wire Wire Line
	1275 2250 700  2250
Wire Wire Line
	700  2250 700  2450
Wire Wire Line
	700  2450 750  2450
Wire Wire Line
	950  2450 1025 2450
Wire Wire Line
	1225 2450 1275 2450
Wire Wire Line
	1975 2350 2025 2350
Wire Wire Line
	2225 2350 2325 2350
Wire Wire Line
	2325 2350 2325 2450
Wire Wire Line
	1975 2450 2700 2450
Wire Wire Line
	1975 2250 2700 2250
Connection ~ 2325 2450
Wire Wire Line
	2450 2250 2450 2175
Connection ~ 2450 2250
Wire Wire Line
	2700 2250 2700 2300
Wire Wire Line
	2700 2450 2700 2400
Connection ~ 2450 2450
Wire Notes Line
	575  1975 3075 1975
Wire Notes Line
	3075 1975 3075 2775
Wire Notes Line
	3075 2775 575  2775
Wire Notes Line
	575  2775 575  1975
Connection ~ 2700 3325
Wire Notes Line
	575  1875 3075 1875
Wire Wire Line
	2450 2525 2450 2450
Wire Notes Line
	575  4925 575  7725
Wire Notes Line
	575  7725 3075 7725
Wire Notes Line
	3075 7725 3075 4925
Wire Notes Line
	3175 7725 3175 4925
Wire Wire Line
	3750 7200 4600 7200
Connection ~ 4350 7200
Wire Wire Line
	3750 7400 3750 7200
Connection ~ 4050 7200
Connection ~ 3750 7200
Wire Notes Line
	3175 4925 5675 4925
Wire Notes Line
	5675 4925 5675 7725
Wire Notes Line
	5675 7725 3175 7725
Text Notes 3200 5000 0    40   ~ 8
MICRO CONTROLLER POWER
Wire Notes Line
	3075 1875 3075 575 
Wire Notes Line
	575  575  575  1875
Wire Notes Line
	3075 2875 3075 3975
Wire Notes Line
	575  3975 575  2875
Wire Notes Line
	5775 4925 7575 4925
Wire Notes Line
	7575 4925 7575 6525
Wire Notes Line
	7575 6525 5775 6525
Wire Notes Line
	5775 6525 5775 4925
Text Notes 5800 5000 0    40   ~ 8
INDICATORS
$Comp
L CONN_01X10 P?
U 1 1 56A88FAF
P 10625 1625
F 0 "P?" H 10700 2100 40  0000 L CNB
F 1 "LCD_DISPLAY" V 10725 1425 40  0000 L CNB
F 2 "" H 10625 1475 50  0000 C CNN
F 3 "" H 10625 1475 50  0000 C CNN
	1    10625 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	10425 1175 10100 1175
Wire Wire Line
	10100 1275 10425 1275
Wire Wire Line
	10100 1375 10425 1375
Wire Wire Line
	10100 1475 10425 1475
Wire Wire Line
	10100 1575 10425 1575
Wire Wire Line
	10100 1675 10425 1675
Wire Wire Line
	10100 1775 10425 1775
Wire Wire Line
	10100 1875 10425 1875
Wire Wire Line
	10100 1975 10425 1975
Wire Wire Line
	10100 2075 10425 2075
Text Label 10100 1175 0    40   ~ 8
GND
Text Label 10100 1275 0    40   ~ 8
3V3
Text Label 10100 1375 0    40   ~ 8
RST_LCD
Text Label 10100 1475 0    40   ~ 8
D/C
Text Label 10100 1575 0    40   ~ 8
CS_CARD
Text Label 10100 1675 0    40   ~ 8
CS_LCD
Text Label 10100 1775 0    40   ~ 8
MISO_LCD
Text Label 10100 1875 0    40   ~ 8
SCK_LCD
Text Label 10100 1975 0    40   ~ 8
PWM_LCD
NoConn ~ 10100 2075
Text Label 3975 2075 0    40   ~ 8
RST_LCD
Text Label 3975 1975 0    40   ~ 8
D/C
NoConn ~ 10100 1575
Text Label 7475 2975 0    40   ~ 8
CS_LCD
Text Label 7475 3175 0    40   ~ 8
MISO_LCD
Text Label 7475 3075 0    40   ~ 8
SCK_LCD
Text Notes 10025 2375 0    60   ~ 12
where do CS_CARD and\nPWM_LCD connect ?
Wire Wire Line
	10425 2775 10100 2775
Wire Wire Line
	10100 2875 10425 2875
Wire Wire Line
	10100 2975 10425 2975
Wire Wire Line
	10100 3075 10425 3075
Text Label 10100 2775 0    40   ~ 8
STS
Text Label 10100 2875 0    40   ~ 8
GND
Text Label 10100 2975 0    40   ~ 8
DSR
Text Label 10100 3075 0    40   ~ 8
VIN
$Comp
L CONN_01X08 P?
U 1 1 56A8CF3E
P 10625 3125
F 0 "P?" H 10700 3500 40  0000 L CNB
F 1 "Bluefruit" V 10725 2975 40  0000 L CNB
F 2 "" H 10625 2875 50  0000 C CNN
F 3 "" H 10625 2875 50  0000 C CNN
	1    10625 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	10425 3175 10100 3175
Wire Wire Line
	10100 3275 10425 3275
Wire Wire Line
	10100 3375 10425 3375
Wire Wire Line
	10100 3475 10425 3475
Text Label 10100 3175 0    40   ~ 8
TX_BT
Text Label 10100 3275 0    40   ~ 8
RX_BT
Text Label 10100 3375 0    40   ~ 8
DTR
Text Label 10100 3475 0    40   ~ 8
3V3
NoConn ~ 10100 2775
NoConn ~ 10100 2975
NoConn ~ 10100 3075
NoConn ~ 10100 3375
$EndSCHEMATC
