'Program to approximate the area under a curve using the data (x,y) points
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
        'The program connects adjacent points with a straight line and then
        'computes the area under this straight line (usually triangle +
        'rectangle)
       'A running sum of these individual areas is maintained until a total
        'is obtained.
  'THE COMPUTATION CAN BE DONE WITH ANY DATA JUST BY ADDING DATA (AS BELOW) TO
  'THE COMPUTE KERNAL.  THIS PRODUCES A CUSTOM PROGRAM FOR ANY DATA TABLE.


DATA 0,0,1,1,2,4,3,9,4,16,5,25,6,36,7,49,8,64,9,81,10,100, -3000000,0
       'the data above is y = x*x,  real ans =333.3, program ans = 335


             '********START OF*************** COMPUTE KERNAL ************



CLS
AREASUM = 0
READ X1, Y1                                                 'uses first data pair in data table
DO                                                               'Starts loop
     
              READ X2, Y2:                                        ' READS A DADA PAIR
               
               IF X2 = -3000000 GOTO ANSWER                              'PHONY VALUE TO STOP LOOPING
                                                                         'NOTE THE Y2 VALUE IS ALSO GIVEN
                AREAPART = Y1 * (X2 - X1) + .5 * (Y2 - Y1) * (X2 - X1)   'AREA OF TRIANGLE +AREA OF RECTANGLE
                AREASUM = AREASUM + AREAPART                            'CALCULATES RUNNING SUM            
                Y1 = Y2                                                 'LAST Y2 BECOMES Y1 FOR THE NEXT LOOP
                 X1 = X2                                                'LAST X2 BECOMES X1 FOR THE NEXT LOOP
                PRINT AREASUM:    SLEEP 1                               'VISUAL EFFECT TO SLOW THE LOOP TO 1 CYCLE/SEC

               
        LOOP
      
ANSWER:                                                                 'NAME TAG OF A PROGRAMING LINE          
PRINT "the area = "; AREASUM
      SLEEP 8                                                           'TIMING DEVICE TO LEAVE ANSWER ON THE SCREEN 8 SEC BEFORE THE STANDARD ANY KEY CAN RETURN TO PROGRAM LIST



             '********************END**OF******COMPUTE KERNAL***********

