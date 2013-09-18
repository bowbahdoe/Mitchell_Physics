REM             This program has several components:
REM                     1. produces 2 perpendicular vectors along the
REM                         coordinate axis
REM                     2.  produces 2 mutually perpendicular vectors at
REM                         any orientation to the coordinate axis.
REM                     3.  produces 3 vectors with random orientation.
REM                     4.  AND SUMS ANY NUMBER OR VECTORS.
REM
REM             When run by students, the summing function will be default.
REM
REM             To print problems, simply cut proper module and place in a
REM             FOR NEXT LOOP to print the required # of copies.

REM*************************************************************************



RANDOMIZE (1)


                        
        CLS

'THIS MODULE GENERATES 2 MUTUALLY PERPENDICULAR VECTORS ALIGNED WITH
'ONE OF THE COORDINATE AXIS.
        
        vx = INT((RND(1)) * 1000)
        vy = INT((RND(1) + .2) * 1000)
        THETA = (RND(1)) * 10
        IF THETA <= 2.5 THEN GOTO EAST
        IF THETA > 2.5 <= 5 THEN GOTO NORTH
        IF THETA > 5 <= 7.5 THEN GOTO WEST
        IF THETA > 7.5 THEN GOTO SOUTH
EAST:                          
                PRINT "Vector #1 has a magnitude of "; vx; " and is in the +X direction."
                PRINT "Vector #2 has a magnitude of "; vy; " and is in the +Y direction."
                        GOTO CYCLE

NORTH:
                PRINT "Vector #1 has a magnitude of "; vx; " and is in the +Y direction."
                PRINT "Vector #2 has a magnitude of "; vy; " and is in the -X direction."
                        GOTO CYCLE
WEST:
                PRINT "Vector #1 has a magnitude of "; vx; " and is in the -X direction."
                PRINT "Vector #2 has a magnitude of "; vy; " and is in the -Y direction."
                        GOTO CYCLE
SOUTH:
                PRINT "Vector #1 has a magnitude of "; vx; " and is in the +X direction."
                PRINT "Vector #2 has a magnitude of "; vy; " and is in the -Y direction."

       
CYCLE:
                            
'THIS MODULE PRODUCES TWO MUTUALLY PERPENDICULAR VECTORS AT ANY ORIENTATION"
'THE ANGLES ARE POLAR EXPRESSIONS (+X = 0, +Y = 90, ETC.)

        v1 = INT((RND(1)) * 1000)
        v2 = INT((RND(1) + .2) * 1000)
        a1 = INT((RND(1) + .5) * 100)
        a2 = a1 + 90
                PRINT "Vector #1 has a magnitude of "; v1; " and its direction is "; a1; " degrees (polar)."
                PRINT "vector #2 has a magnitude of "; v2; " and its direction is"; a2; " degrees (polar)."


'THIS MODULE PRODUCES THREE RANDOM VECTORS.  THE ANGLES ARE POLAR.

        vv1 = INT((RND(1)) * 900)
        vv2 = INT((RND(1)) * 1000)
        vv3 = INT((RND(1)) * 500) + 100
        aa1 = INT((RND(1) + .1) * 100)
        aa2 = aa1 + 60
        aa3 = INT((RND(1)) * 200)
                PRINT "Vector #1 has a magnitude of "; vv1; " and a direction of "; aa1; " degrees polar."
                PRINT "Vector #2 has a magnitude of "; vv2; " and a direction of "; aa2; " degrees polar."
                PRINT "Vector #3 has a magnitude of "; vv3; " and a direction of "; aa3; " degrees polar."

'THIS MODULE WILL COMPUTE THE RESULTANT OF ANY NUMBER OF VECTORS.
        PRINT "How many vectors are you adding together?"
                INPUT numvec
                count = 1
                FOR i = 1 TO numvec
                        PRINT "What is the MAGNITUDE of vector "; count; "?"
                        INPUT mag
                        PRINT "What is the POLAR ANGLE of vector "; count; "?"
                        INPUT angle
                        angle = angle * 6.28 / 360
                        xpart = mag * COS(angle)
                        ypart = mag * SIN(angle)
                        sumx = sumx + xpart
                        sumy = sumy + ypart
                                count = count + 1
                        ansang = ATN(sumy / sumx) * 360 / 6.28
                        ansmag = SQR(sumx ^ 2 + sumy ^ 2)
                NEXT i
        PRINT
        PRINT "The resultant's magnitude is "; ansmag; " and its direction is "; ansang; " degrees polar."

