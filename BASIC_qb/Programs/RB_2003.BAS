'Part I:  gets launch velocity by iteration of force effects

CLS
pi = 3.14
g = 9.8
d = .01
msling = .005'a dummy value until actual measurement
        LPRINT "the mass of the sling = "; msling; " kg"
v1 = 0
PRINT "input the ball's mass"
        LPRINT "input the ball's mass"
INPUT mball
        LPRINT "the ball's mass = "; mball; " kg"
PRINT "input the board's length (from vertex to shot origin)"
        LPRINT "input the board's length (from vertex to shot origin)"
INPUT l
        LPRINT "Board length (vertex to shot origin) = "; l; " m"
PRINT "input the launch angle (elevation from horizontal)"
        LPRINT "input the launch angle (elevation from horizontal)"
INPUT theta
        LPRINT "launch angle (above the horizontal) = "; theta; " degrees"
angle = theta * 2 * pi / 360
gloss = g * (SIN(angle))

DATA 18.0,17.5,17.3,17.0,16.4,16.2,16.2,16.1,16.0
DATA 15.8,15.5,15.5,15.0,14.9,14.7,14.7,14.5,14.0
DATA 13.5,13.8,13.6,13.6,13.5,13.4,13.3,13.1,12.9
DATA 12.6,12.3,12.1,12.0,11.9,11.6,11.6,11.2,11.1
DATA 10.7,10.6,10.5,10.3,10.2,10.1,10.0,9.8,9.5,9.5
DATA 9.2,9.0,8.9,8.5,8.6,8.5,8.2,8.0,7.9,7.8,7.5,7.2
DATA 7.1,7.0,6.7,6.6,6.4,6.2,5.8,5.7,5.5,5.2,5.0,4.7
DATA 4.3,4.0,3.6,3.2,2.6,2.4,1.5,.5,0,-1000
        LPRINT : LPRINT "Data values": LPRINT
        LPRINT " 18.0,17.5,17.3,17.0,16.4,16.2,16.2,16.1,16.0"
        LPRINT " 15.8,15.5,15.5,15.0,14.9,14.7,14.7,14.5,14.0"
        LPRINT " 13.5,13.8,13.6,13.6,13.5,13.4,13.3,13.1,12.9"
        LPRINT " 12.6,12.3,12.1,12.0,11.9,11.6,11.6,11.2,11.1"
        LPRINT " 10.7,10.6,10.5,10.3,10.2,10.1,10.0,9.8,9.5,9.5"
        LPRINT " 9.2,9.0,8.9,8.5,8.6,8.5,8.2,8.0,7.9,7.8,7.5,7.2"
        LPRINT " 7.1,7.0,6.7,6.6,6.4,6.2,5.8,5.7,5.5,5.2,5.0,4.7"
        LPRINT " 4.3,4.0,3.6,3.2,2.6,2.4,1.5,.5,0,-1000  "



 READ f1
 DO
 READ f2
 IF f2 = -1000 THEN EXIT DO
 fave = (f1 + f2) / 2
 aave = fave / (mball + msling)
 da = aave - gloss

 v2 = (v1 ^ 2 + 2 * da * d) ^ .5
 LET f1 = f2
 LET v1 = v2
 LOOP
 PRINT : PRINT "     The Launch Speed is "; v2; " m/s"
        LPRINT : LPRINT "     The Launch Speed is "; v2; " m/s"

'****************** Part I works fine ****************************

'Part II:  Uses the launch speed above to calculate HORIZONTAL RANGE.

LET g = (-1) * g
y = (l * SIN(angle)) * (-1)
a = g / (2 * v2 ^ 2 * (COS(angle)) * (COS(angle)))
b = TAN(angle)
c = -y
x1 = (-b + (b ^ 2 - 4 * a * c) ^ .5) / (2 * a)
x2 = (-b - (b ^ 2 - 4 * a * c) ^ .5) / (2 * a)
PRINT
PRINT "     The Quadratic's Solution has Two Roots"
PRINT : PRINT "     Root #1:    x = "; x1; " meters"
PRINT "     Root #2:     x = "; x2; " meters"
        LPRINT
        LPRINT "     The Quadratic's Solution has Two Roots"
        LPRINT : LPRINT "     Root #1:    x = "; x1; " meters"
        LPRINT "     Root #2:     x = "; x2; " meters"


'***************** Part II works fine ***************************

'Part III:  Will ask for values of Launch speed given by Energy Calculation
PRINT
PRINT "Do you want to show maximum and minimum ranges found"
PRINT "from launch speeds determined by WORK/ENERGY (i.e. Areas)"
PRINT "calculations"
PRINT "          ***** SEE ATTACHMENTS #5, #6, AND #7 *****"
PRINT
PRINT "     Input Y for Yes .... or .... N for No"
        LPRINT "Do you want to show maximum and minimum ranges found"
        LPRINT "from launch speeds determined by WORK/ENERGY (i.e. Areas)"
        LPRINT "calculations"
        LPRINT "          ***** SEE ATTACHMENTS #5, #6, AND #7 *****"
        LPRINT
        LPRINT "     Input Y for Yes .... or .... N for No"

INPUT answer$
IF answer$ = "N" THEN END
PRINT
PRINT "Input value of Launch Speed from FIRST DATA RUN (see ATTachment #6)"
       LPRINT "Input value of Launch Speed from FIRST DATA RUN (see ATTachment #6)"
INPUT vmax

        LET g = -9.8
        y = (l * SIN(angle)) * (-1)
        a = g / (2 * vmax ^ 2 * (COS(angle)) * (COS(angle)))
        b = TAN(angle)
        c = -y
        x1 = (-b + (b ^ 2 - 4 * a * c) ^ .5) / (2 * a)
        x2 = (-b - (b ^ 2 - 4 * a * c) ^ .5) / (2 * a)
LET x1max = x1
LET x2max = x2
PRINT
PRINT "   TABLE #1'S DATA:---- X = "; x1max; " meters"
PRINT "                   ____ X = "; x2max; " meters"
PRINT "Input value of Launch Speed from SECOND DATA RUN (see ATTachment #6)"
        LPRINT
        LPRINT "   TABLE #1'S DATA:---- X = "; x1max; " meters"
        LPRINT "                   ____ X = "; x2max; " meters"
        LPRINT "Input value of Launch Speed from SECOND DATA RUN (see ATTachment #6)"

INPUT vmin
        LET g = -9.8

        y = (l * SIN(angle)) * (-1)
        a = g / (2 * vmin ^ 2 * (COS(angle)) * (COS(angle)))
        b = TAN(angle)
        c = -y
        x1 = (-b + (b ^ 2 - 4 * a * c) ^ .5) / (2 * a)
        x2 = (-b - (b ^ 2 - 4 * a * c) ^ .5) / (2 * a)
LET x1min = x1
LET x2min = x2
PRINT
PRINT "   TABLE #1'S DATA:---- X = "; x1min; " meters"
PRINT "                   ____ X = "; x2min; " meters"
        LPRINT
        LPRINT "   TABLE #1'S DATA:---- X = "; x1min; " meters"
        LPRINT "                   ____ X = "; x2min; " meters"













