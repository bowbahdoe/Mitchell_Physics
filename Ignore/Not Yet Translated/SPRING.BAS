 CLS
g = -9.8
PRINT "How far away horizontally is the target?"
INPUT x
PRINT
PRINT "DON'T HIT THE CEILING!"
PRINT

PRINT "What launch angle do you want?"
INPUT angle
        anglerad = 2 * 3.14 * angle / 360       'converts degrees to radians
PRINT                                           'print a blank line

PRINT "What is the vertical height at launch?"
INPUT y
        y = (-1) * y
PRINT

'THE FOLLOWING SECTION BREAKS THE COMPLICATED EQATION FOR V INTO
'SMALL PIECES WHICH ARE THEN COMBINED  TO MAKE THE BIG EXPRESSION
        a = g * x ^ 2
        b = COS(anglerad)
        c = x * TAN(anglerad)

vsquared = g * x ^ 2 / (2 * b ^ 2 * (y - c))

v = vsquared ^ .5
PRINT "the required exit velocity is "; v; " m/s"
PRINT

PRINT "In Newtons/meter, what is the spring's stiffness constant?"
INPUT K
PRINT "In Kilograms, what is the mass of  the spring?"
INPUT m
PRINT

d = (m * v ^ 2 / K) ^ .5

PRINT "PULL THE SPRING BACK "; d; " METERS"
PRINT
200 ' Fall - loop down from a high sound to a low sound
205    HTONE = 2000: LTONE = 550: DELAY = 500
210    PRINT "Falling . . ."
215    FOR COUNT = HTONE TO LTONE STEP -10
220       SOUND COUNT, DELAY / COUNT
225    NEXT COUNT



PRINT "              HOW FAR IN METERS DID YOU MISS?"
INPUT miss
PRINT
       PRINT " grade = "; ((x - miss) / x) * 100; " %"








