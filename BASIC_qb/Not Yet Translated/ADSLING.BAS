CLS
F1 = 0
X = .01
Ms = .0059
REM Sling in kilograms
PRINT "What is the mass of the ball in kilograms? "
INPUT Mball
Totalm = Ms + Mball

DATA .5, .75, 1, 1.5, 1.75, 1.92, 2.1, 2.3, 2.95, 2.6, 2.7, 2.8, 2.9, 3, 3.2
DATA 3.4, 3.5, 3.6, 3.7, 3.8, 3.95, 3.99, 4.05, 4.1, 4.2, 4.4, 4.5, 4.6,4.7
DATA 4.75, 4.8, 5, 5.1, 5.35, 5.45, 5.5, 5.55, 5.65, 5.8, 5.95, 6, 6.1, 6.3
DATA 6.45, 6.55, 6.6, 6.75, 6.95, 7, 1000

TotalA = 0
DO UNTIL F2 = 1000

READ F2
AREA = .5 * .01 * (F2 - F1) + .01 * F1
TotalA = TotalA + AREA
LET F1 = F2
IF F2 = 1000 THEN EXIT DO
LOOP
PRINT "The total area/Work is"; TotalA; "joules"
VF = SQR(2 * TotalA / Totalm)
PRINT "The exit velocity from area = "; VF

DATA 7, 6.95, 6.75, 6.6, 6.55, 6.45, 6.3, 6.1, 6, 6, 5.95, 5.8, 5.65, 5.55
DATA 5.5, 5.45, 5.35, 5.1, 5, 4.8, 4.75, 4.7, 4.6, 4.5, 4.4, 4.2, 4.1, 4.05
DATA 3.99, 3.95, 3.8, 3.7, 3.6, 3.5, 3.4, 3.2, 3, 2.9, 2.8, 2.7, 2.6, 2.95
DATA 2.3, 2.1, 1.92, 1.75, 1.5, 1, .75, .5, -1000

PRINT "What is the angle of launch in degrees"
INPUT Degree
Angle = (Degree * 2 * 3.14) / 360
g = 9.8
VI = 0
Fopposing = Totalm * g * SIN(Angle)
READ F3
DO
READ F4
IF F4 = -1000 THEN EXIT DO

Faverage = ((F3 + F4) / 2)
Aaverage = (Faverage - Fopposing) / Totalm

LengthR = .8
REM Ramp length in meters
Vexit = VI + (2 * Aaverage * X)
LET VI = VF
LET F3 = F4

LOOP
PRINT "The exit velocity from iteration is "; Vexit

Height = (SIN(Angle) * LengthR) * -1
a = g / (2 * (VF ^ 2) * (COS(Angle) ^ 2))
PRINT "a is"; a
b = TAN(Angle)
PRINT "b is"; b
c = -Height
PRINT "c is "; c
Distance1 = -b + (((b ^ 2) - 4 * a * c) ^ .5) / (2 * a)
Distance2 = -b - (((b ^ 2) - 4 * a * c) ^ .5) / (2 * a)

PRINT "Answer 1: The distance of the ball is"; Distance1; "meters"
PRINT "Answer 2: Or, the distance is"; Distance2; "meters"


