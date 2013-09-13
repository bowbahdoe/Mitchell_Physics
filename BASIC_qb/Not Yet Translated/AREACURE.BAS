CLS
area = 0
PRINT "input the initial x range value"
INPUT x1
PRINT "input the ending x range value"
INPUT xf

        y1 = 3 * x1 ^ 5 - 1000       'TYPE YOUR EQUATION FOR Y1


PRINT "input the differential increment dx"
INPUT DX

n = (xf - x1) / DX: PRINT "n raw = "; n
 n = CINT(n): PRINT "rounded up = "; n         'ok

FOR I = 1 TO n:

        Y2 = (x1 + DX) ^ 2:          ' PRINT "Y2 = "; Y2

        ATRI = .5 * DX * (Y2 - y1):  ' PRINT "ATRIANGLE = "; ATRI

        AREC = DX * y1:              ' PRINT "ARECTANGLE = "; AREC
        A = ATRI + AREC
        area = area + A:   SLEEP 1:    PRINT "area = "; area

        y1 = Y2
        x1 = x1 + DX

NEXT I

PRINT "AREA = "; area



