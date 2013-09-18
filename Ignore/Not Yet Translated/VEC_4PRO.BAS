
                       
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
    FOR I = 1 TO 14

        v1 = INT((RND(1)) * 1000)
        v2 = INT((RND(1) + .2) * 1000)
        a1 = INT((RND(1) + .5) * 100)
        a2 = a1 + 90
               LPRINT "Vector #1 has a magnitude of "; v1; " and its direction is "; a1; " degrees (polar)."
               LPRINT "vector #2 has a magnitude of "; v2; " and its direction is"; a2; " degrees (polar)."
 LPRINT : LPRINT : NEXT I


'THIS MODULE PRODUCES THREE RANDOM VECTORS.  THE ANGLES ARE POLAR.

        vv1 = INT((RND(1)) * 900)
        vv2 = INT((RND(1)) * 1000)
        vv3 = INT((RND(1)) * 500) + 100
        aa1 = INT((RND(1) + .1) * 100)
        aa2 = aa1 + 60
        aa3 = INT((RND(1)) * 200)
               LPRINT "Vector #1 has a magnitude of "; vv1; " and a direction of "; aa1; " degrees polar."
               LPRINT "Vector #2 has a magnitude of "; vv2; " and a direction of "; aa2; " degrees polar."
               LPRINT "Vector #3 has a magnitude of "; vv3; " and a direction of "; aa3; " degrees polar."

