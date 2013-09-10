'                        Peter Zaval John Jankowski Brian Schier
'        Sling shot lab
'Through the program the final velocity and distance it will travel will be calculated.

CLS

PRINT "what is the projectile mass?  (grams)"
INPUT mass
LPRINT "MASS="; mass
mass2 = mass / 1000
slingmass = .01321
mass = mass + slingmass
PRINT "what is the projectile angle?"

INPUT ANGLE
LPRINT "ANGLE="; ANGLE
PI = 3.1415926#
ANGLE = ANGLE * (PI / 180)
PRINT "Angle in radians ="; ANGLE
LPRINT "Angle in radians ="; ANGLE

D = .01
LENGTH = .81
g = 9.8
FOR J = 1 TO 30000
NEXT J

'Data points
DATA 15.759,14.843,14.935,14.142,13.989,14.569,14.874,14.325,14.63,14.508,13.684,13.47,14.264,13.836,13.653,13.47,13.562,13.379,13.165,12.951,13.012,12.463,12.31,11.7,12.371,11.761,12.158,11.975,11.212,11.486,11.517,10.479,11.547,11.09,10.662,9.190
DATA 10.907,10.357,9.777,9.625,9.96,9.381,8.74,9.716,8.862,9.136,9.167,8.312,7.794,7.244,8.16,7.672,7.427,8.282,7.763,6.97,7.214,7.275,7.0761,6.237,6.603,6.085,6.115,5.261,5.444,5.08,4.925,5.627,5.322,4.65,3.826,4.04,3.582,3.796,3.277,2.85,2.88,2.728,1.934,1.354,0

HT = (SIN(ANGLE)) * LENGTH
F1 = 15.21
V1 = 0
FOR I = 1 TO 80

PRINT I

READ F2
AvgF = (F1 + F2) / 2
PRINT "AvgF="; AvgF
Acc = AvgF / mass2
PRINT "Acc="; Acc
V2 = SQR(V1 * V1 + 2 * Acc * D)
V1 = V2
F1 = F2
NEXT I
PRINT "EXIT VELOCITY = "; V2;
LPRINT "EXIT VELOCITY = "; V2;
A = (-g) / (2 * (V2 ^ 2) * (COS(ANGLE) ^ 2))
B = (TAN(ANGLE))
C = HT
X = (-B) - SQR((B ^ 2) - (4 * A * C)) / (2 * (A))
PRINT "the horizontal range = "; X; " m"
LPRINT "the horizontal range = "; X; " m"


