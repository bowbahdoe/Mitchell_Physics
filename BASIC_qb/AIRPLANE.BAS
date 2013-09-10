

                               







'AIRPLANE PROBLEM       
'A I R P L A N E  P R O B L E M
'A  I  R  P  L  A  N  E    P  R  O  B  L  E  M
'A   I   R   P   L   A   N   E      P   R   O   B   L   E   M
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'

'
'
'
'
'
'
'
'
'
'


CLS


menu:


PRINT "This program produces an airplane vector problem with random values"
PRINT "  of wind velocity and airplane velocity."
PRINT
menu1:
PRINT "          CHOOSE THE NUMBER FOR ONE OF THE FOLLOWING OPTIONS:      "
PRINT
PRINT "                  1    View a sample problem on the screen."
PRINT
PRINT "                  2    Print just one problem for yourself."
PRINT
PRINT "                  3    Print multiple problems."
PRINT
PRINT "                  4    Check the answer you calculated"
PRINT
PRINT "                  5    QUIT"
     
     
        INPUT n

              
               IF n = 1 GOTO sample


                IF n = 2 GOTO oneprob



                IF n = 4 GOTO answer

                IF n = 5 THEN END
  CLS :    PRINT " HOW MANY COPIES DO YOU WANT?"
        INPUT cnum: GOTO multiprob

oneprob: cnum = 1

      
multiprob:
         FOR i = 1 TO cnum
                 w = (RND(1) + 1) * 40
                 x = (RND(1) + 3.5) * 125
 LPRINT "An airplane has a still air speed of "; x; " mi/hr and a pilot intends to"
 LPRINT "  to fly this plane from city A to city B which is 800 miles from city A"
 LPRINT "          at a bearing direction of 300 degrees"
 LPRINT "During his preflight check, the pilot learns that he must contend with a"
 LPRINT "  wind of "; w; " mi/hr blowing from a direction of 180 degrees bearing."

 LPRINT
 LPRINT "At what HEADING must he pilot the plane and how much TIME will the trip"
 LPRINT "  require if weather conditions remain constant?s"
  LPRINT
 LPRINT "_____________________________________________________________________________"
 LPRINT : LPRINT
        NEXT i
                GOTO menu1

    
sample:
CLS
                 w = (RND(1) + 1) * 40
                 x = (RND(1) + 3.5) * 125


PRINT "An airplane has a still air speed of "; x; " mi/hr and a pilot intends to"
PRINT "  to fly this plane from city A to city B which is 800 miles from city A"
PRINT "          at a bearing direction of 300 degrees"
PRINT "During his preflight check, the pilot learns that he must contend with a"
PRINT "  wind of "; w; " mi/hr blowing from a direction of 180 degrees bearing."

PRINT
PRINT "At what HEADING must he pilot the plane and how much TIME will the trip"
PRINT "  require if weather conditions remain constant?s"
PRINT : PRINT : PRINT


      GOTO menu1

answer:
        CLS :
                p = 3.1416
                PRINT "What was the wind speed from the south?"
                PRINT "What was the wind speed from the south?"
                INPUT w
                PRINT "wind speed = "; w

                     w = -w
                PRINT
                PRINT "What was the airspeed of the plane?"
             ' LPRINT "What was the airspeed of the plane?"
                INPUT a
                PRINT "airspeed = "; a

                z = .6666667 * p
                
                
                
                
                 j =

                 SQR((a * a) - (w * w * (SIN(z)) * (SIN(z))))
                y = ATN(w * (SIN(z)) / j)
                x = p - (z + y)
                r = a * (SIN(x)) / (SIN(z))
                m = 180 * x /hat is your calculated value for the resultant velocity?"
                      '    LPRINT "What is your calculated value for the resultant velocity?"
                        INPUT cal
                         PRINT "my calculated value for resultant velocity = "; cal

                        PRINT
                        PRINT "How many hours do you say the trip will last?"
                      ' LPRINT "How many hours do you say the trip will last?"
                        INPUT time
                         IF ABS(r - cal) > (.05 * r) OR ABS(time - 800 / r) > (.05 * 800 / r) THEN GOTO report



400 ' Siren - loop a sound from low to high to low
405    HTONE = 780: RANGE = 650
410    PRINT "Wailing . . ."
415    PRINT " . . . press any key to end."
420    WHILE INKEY$ = ""
425       FOR COUNT = RANGE TO -RANGE STEP -4
430          SOUND HTONE - ABS(COUNT), .3
435          COUNT = COUNT - 2 / RANGE
440       NEXT COUNT
445    WEND
CLS

report:

                PRINT "  THE RESULTANT VELOCITY IS "; r; " mi/hr"
                PRINT "                       at"
                PRINT "  A HEADING OF "; 360 - m; " DEGREES BEARING"
                PRINT "                        and"
                PRINT "  THE TRIP WILL TAKE "; 800 / r; " HOURS"

                PRINT "  THE RESULTANT VELOCITY IS "; r; " mi/hr"
                PRINT "                       at"
                PRINT "  A HEADING OF "; 360 - m; " DEGREES BEARING"
                PRINT "                        and"
                PRINT "  THE TRIP WILL TAKE "; 800 / r; " HOURS"


