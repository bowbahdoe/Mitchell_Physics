CLS
'this program reads a data list and sums, point to point, the area enclosed.

'data pairs are added as X,F , and the start values of both are
'preinitialized as ZERO.  Thus, start with first nonzero values in data.

'X data is inputed in cm and converted to meters later.
DATA 1,.5,2,1.5,3,2.4,4,2.6,5,3.2
DATA 6,3.6,7,4.0,8,4.3,9,4.7,10,5.0
DATA 11,5.2,12,5.5,13,5.7,14,5.8,15,6.2
DATA 16,6.4,17,6.6,18,6.7,19,7.0,20,7.1
DATA 21,7.2,22,7.5,23,7.8,24,7.9,25,8.0
DATA 26,8.2,27,8.5,28,8.6,29,8.5,30,8.9
DATA 31,9.0,32,9.2,33,9.5,34,9.5,35,9.8
DATA 36,10.0,37,10.1,38,10.2,39,10.3,40,10.5
DATA 41,10.6,42,10.7,43,11.1,44,11.2,45,16.6
DATA 46,11.6,47,11.9,48,12.0,49,12.1,50,12.3
DATA 51,12.6,52,12.9,53,13.1,54,13.3,55,13.4
DATA 56,13.5,57,13.6,58,13.6,59,13.8,60,13.5
DATA 61,14.0,62,14.5,63,14.7,64,14.7,65,14.9
DATA 66,15.0,67,15.5,68,15.5,69,15.8,70,16.0
DATA 71,16.1,72,16.2,73,16.2,74,16.4,75,17.0
DATA 76,17.3,77,17.5,78,18.0,100000,100000

AREATOTAL = 0
F1 = 0
X1 = 0
DO
READ X2, F2
        IF X2 = 100000 THEN EXIT DO
 'SLEEP 1

X2 = X2 / 100
AREATRIANGLE = (F2 - F1) * (X2 - X1) / 2
AREARECTANGLE = F1 * (X2 - X1)
AREA = AREATRIANGLE + AREARECTANGLE
AREATOTAL = AREA + AREATOTAL
        X1 = X2
        F1 = F2



        PRINT "THE AREA UNDER THE CURVE = "; AREATOTAL; " JOULES"
       ' LPRINT "THE AREA UNDER THE CURVE = "; AREATOTAL; " JOULES"
       
LOOP


