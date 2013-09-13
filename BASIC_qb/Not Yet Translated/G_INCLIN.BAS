'TrigStuff
CLS
PI = 3.14
g = 9.8
angldeg = 0
FOR I = 1 TO 90
anglerad = (angledeg * 2 * PI) / 360


trigtrick = ABS(SIN(anglerad))
a = trigtrick * g
PRINT "At "; angledeg; " deg., acceleration parallel to incline =  "; a; " m/sec/sec"
LET angledeg = angledeg + 1
NEXT I











