CLS




' THIS MODULE WILL  COMPUTE THE RESULTANT OF ANY NUMBER OF VECTORS.
        PRINT "How many vectors are you adding together?"
                INPUT numvec
                count = 1
                FOR i = 1 TO numvec
                        PRINT "What is the MAGNITUDE of vector "; count; "?"
                        INPUT mag
                        PRINT "What is the POLAR ANGLE of vector "; count; "?"
                        INPUT angle
                        angle = angle * 6.28 / 360
                        xpart = mag * COS(angle): PRINT "x"; i; "="; xpart
                        ypart = mag * SIN(angle): PRINT "y"; i; "="; ypart

                        sumx = sumx + xpart
                        sumy = sumy + ypart
                                count = count + 1
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                        ansang = ATN(sumy / sumx) * 360 / 6.28
                        ansmag = SQR(sumx ^ 2 + sumy ^ 2)
                NEXT i
        PRINT
        PRINT "The resultant's magnitude is "; ansmag; " and its direction is "; ansang; " degrees polar."

