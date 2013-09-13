XLEFT = 110
YUP = 70
XRIGHT = 190
YDOWN = 120
FOR i = 1 TO 5
CLS
SCREEN 1
LOCATE 11, 18
PRINT "Matt"
LOCATE 13, 18
PRINT "and"
LOCATE 15, 18
PRINT "Sean"

LINE (XLEFT, YUP)-(XRIGHT, YDOWN), , B

    'Play scale in 2 different octaves
    scale$ = "gagegage"
    PLAY "L16"
    FOR i% = 0 TO 6
        PLAY "O" + STR$(i%)
        PLAY "X" + VARPTR$(scale$)
    NEXT i%
SLEEP 1
XLEFT = XLEFT - 10
YUP = YUP - 10
XRIGHT = XRIGHT + 10
YDOWN = YDOWN + 10
NEXT i



 
 CLS
DO
n = n + 1
PRINT n
LOOP UNTIL n = 1000


