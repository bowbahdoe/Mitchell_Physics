CLS
'this program reads a data list and sums, point to point, the area enclosed.

'data pairs are added as X,F , and the start values of both are
'preinitialized as ZERO.  Thus, start with first nonzero values in data.

'X data is inputed in cm and converted to meters later.

DATA 10,4.1,20,6,30,8.4,40,10,50,11.6,60,11.2,70,15.2,78,16.7,100000,100000

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


