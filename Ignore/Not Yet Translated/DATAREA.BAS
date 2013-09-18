'Program to approximate the area under a curve using the data (x,y) points
       
       
        'The program connects adjacent points with a straight line and then
        'computes the area under this straight line (usually triangle +
        'rectangle)
        '
        
        'A running sum of these individual areas is maintained until a total
        'is obtained.
CLS

AREASUM = 0
READ X1, Y1             'uses first data pair in data table
DATA 1.1,2,2.2,3,3.2,4,4,5,5,3,6,6.2,-3000000,0

        DO              'Starts loop
               
                READ X2, Y2: IF X1 = -3000000 THEN PRINT " AREASUM = "; AREASUM

                AREAPART = Y1 * (X2 - X1) + .5 * (Y2 - Y1) * (X2 - X1)
                AREASUM = AREASUM + AREAPART
                Y1 = Y2

                PRINT AREASUM:      SLEEP 2
                X1 = X2
        LOOP
      

PRINT "the area = "; AREASUM
      SLEEP 25





