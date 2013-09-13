

CLS
DATA 0,0,1,.64,2,1.9,3,2.4,4,2.8,5,3.2,6,3.6,7,4.2,8,4.6,9,4.8,10,5.2,11,5.8,12,6
DATA 13,6.2,14,6.2,15,6.2,16,6.3,17,6.4,18,7,19,7.2,20,7.6,21,7.6,22,7.8,23,8.1
DATA 24,8.2,25,9,26,9.2,27,9.2,28,9.7,29,10,30,10,31,10,32,10,33,10,34,10,35,10
DATA 36,10.2,37,11,38,11,39,12,40,12,41,12.5,42,12.5,43,12.5,44,13,45,13,46,14
DATA 47,14,48,14.5,49,15,50,15,51,15,52,15.5,53,15.5,54,16,55,16.5,56,17.5,57,17.5
DATA 58,17.5,59,18,60,18,61,19,62,19.5,63,20,64,18,65,20,66,21,67,21.5,68,22.5
DATA 69,22.5,70,23,71,23.5,72,24.5,73,25,74,25.5,75,26,76,27.5,77,27.5,78,27.5
DATA 79,27.5,80,28,-3000000,-3000000
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

