'                           Major Lab
'
'       This lab will calculate the velocity of a ball bearing at the end
'   of a wooden ramp.  It will also predict the distance at which it will
'   land.

CLS

'                           DATA
CONST PI = 3.1415926#
CONST D2 = .22
CONST LENGTH = 1.215
CONST G = 9.8
CONST ANGLE = 10
CONST MASS = .3165

DATA 38.7, 0
DATA 36.8, .023
DATA 35.8, .022
DATA 30.9, .043
DATA 29.9, .016
DATA 27.9, .035
DATA 27, .012
DATA 25.4,
DATA 24, 3.2
DATA 22.1, 2
DATA 21.1,
DATA 18.6, .365
DATA 17.6, .354
DATA 13.7, .255
DATA 12.7, .214
DATA 10.8, .174
DATA 9.8, .143
DATA 7.84, .099
DATA 6.86, .088
DATA 4.9, .045
DATA 0, 0

ANGLE2 = ANGLE * (PI / 180)
HEIGHT = SIN(ANGLE) * LENGTH
F1 = 14.7
V1 = 0
FOR I = 1 TO 21
  READ F2, D
  AVERAGEFORCE = (F1 + F2) / 2
  A = AVERAGEFORCE / MASS
  V2 = SQR(V1 * V1 + 2 * A * D)
  PRINT "THE VELOCITY AT THE END OF THE INTERVAL WAS"; V2;
  PRINT "THE FORCE AT THE END OF THE INTERVAL WAS"; F2;
  V1 = V2
  F1 = F2
  NEXT I
VX = COS(ANGLE) * V1
PRINT VX
VY = SIN(ANGLE) * V1
PRINT VY
TIME = (VY / -9.8) * 2
X = V2 * SIN(ANLGE)
VF = SQR(V1 * V1 + 2 * G * D2)
T = ((X - VF) / G) + TIME
DISTANCE = VX * T
VIEW PRINT 1 TO 1
  FOR Q = 1 TO 1
   PRINT "THE BALL BEARING WILL HIT THE FLOOR AT"; DISTANCE; "METERS";
   NEXT Q

