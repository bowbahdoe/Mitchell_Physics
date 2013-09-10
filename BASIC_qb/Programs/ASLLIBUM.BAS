CLS
g = 980
leatherpocketmass = 25
PRINT "What is the mass of the projectile?"
INPUT mass
mass = mass + leatherpocketmass
PRINT
PRINT "What is the firing angle for the shot?"
INPUT angledeg
anglerad = 2 * 3.14 * angledeg / 360:            REM changes deg. to rad.

PRINT
PRINT "What is the vertical elevation of the shot?"
INPUT height

DATA 2205000,20.4,2107000,18.2,2009000,17.3,1911000,15.9,1813000,14.5
DATA 1715000,13.1,1617000,11.6,1519000,11.2,1421000,9.2,1323000,8.1
DATA 1225000,6.9,1127000,6.2,1029000,6.0,931000,4.4,833000,3.7,735000,3.5
DATA 637000,2.5,539000,1.9,441000,1.0,0,0
DATA -3000,0

READ FORCE1, STRETCH1
initvelocity = 0

    DO

        READ FORCE2, STRETCH2
              IF FORCE2 = -3000 THEN GOTO ANSWER

        forceave = (FORCE2 + FORCE1) / 2
        acceleration = forceave / mass
    Vfinal = SQR(initvelocity ^ 2 + 2 * acceleration * (STRETCH1 - STRETCH2))
        
        
      initvelocity = Vfinal
                FORCE1 = FORCE2
                STRETCH1 = STRETCH2
    LOOP

ANSWER:
PRINT "the final exit velocity = "; Vfinal; " cm/sec"



                           

DATA O,O,441000,1,539000,1.9,637000,2.5,735000,3.5,833000,3.7,931000,4.4
DATA 1029000,6,1127000,6.2,1225000,6.9,1323000,8.1,1421000,9.2,1519000,11.2
DATA 1617000,11.6,1715000,13.1,1813000,14.5,1911000,15.9,2009000,17.3
DATA 2107000,18.2,2205000,20.4
AREASUM = 0
READ FORCE1, STRETCH1                                                 'uses first data pair in data table
DO                                                               'Starts loop
    
              READ FORCE2, STRETCH2:                                       ' READS A DADA PAIR
              
               IF FORCE2 = -3000 GOTO FIGURE                              'PHONY VALUE TO STOP LOOPING
                                                                         'NOTE THE Y2 VALUE IS ALSO GIVEN
   AREAPART = FORCE1 * (STRETCH2 - STRETCH1) + .5 * (FORCE2 - FORCE1) * (STRETCH2 - STRETCH1)   'AREA OF TRIANGLE +AREA OF RECTANGLE
                AREASUM = AREASUM + AREAPART                            'CALCULATES RUNNING SUM          
                FORCE1 = FORCE2                                                 'LAST Y2 BECOMES Y1 FOR THE NEXT LOOP
               STRETCH1 = STRETCH2                                                'LAST X2 BECOMES X1 FOR THE NEXT LOOP
                PRINT AREASUM:    SLEEP 1                               'VISUAL EFFECT TO SLOW THE LOOP TO 1 CYCLE/SEC

              
        LOOP
     
FIGURE:                                                                 'NAME TAG OF A PROGRAMING LINE   
PRINT "the area = "; AREASUM

