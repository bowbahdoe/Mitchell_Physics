PRINT "     This programs prints copies of the first vector problem:"
PRINT "              ADDING TWO RANDOM VECTORS"

PRINT ""
PRINT "     How many copies do you want to print?"
INPUT n
PRINT ""


'THIS MODULE GENERATES 2 MUTUALLY PERPENDICULAR VECTORS ALIGNED WITH
'ONE OF THE COORDINATE AXIS.
 FOR i = 1 TO n
        vx = INT((RND(1)) * 1000)
        vy = INT((RND(1) + .2) * 1000)
        THETA = (RND(1)) * 10
        IF THETA <= 2.5 THEN GOTO EAST
        IF THETA > 2.5 <= 5 THEN GOTO NORTH
        IF THETA > 5 <= 7.5 THEN GOTO WEST
        IF THETA > 7.5 THEN GOTO SOUTH
EAST:                      
               LPRINT "Vector #1 has a magnitude of "; vx; " and is in the +X direction."
               LPRINT "Vector #2 has a magnitude of "; vy; " and is in the +Y direction."
                        GOTO CYCLE

NORTH:
               LPRINT "Vector #1 has a magnitude of "; vx; " and is in the +Y direction."
               LPRINT "Vector #2 has a magnitude of "; vy; " and is in the -X direction."
                        GOTO CYCLE
WEST:
               LPRINT "Vector #1 has a magnitude of "; vx; " and is in the -X direction."
               PRINT "Vector #2 has a magnitude of "; vy; " and is in the -Y direction."
                        GOTO CYCLE
SOUTH:
               LPRINT "Vector #1 has a magnitude of "; vx; " and is in the +X direction."
               LPRINT "Vector #2 has a magnitude of "; vy; " and is in the -Y direction."

      
CYCLE: LPRINT : LPRINT

                                                             NEXT i

