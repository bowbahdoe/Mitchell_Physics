CLS

DO
  SCREEN 12
  FOR r = 1 TO 15
    DIM Box%(200)
    x1% = 0: x2% = 10: y1% = 0: y2% = 10
    LINE (x1%, y1%)-(x2%, y2%), r, BF
    GET (x1%, y1%)-(x2%, y2%), Box%
    x1% = x1% + 1
    x2% = x2% + 1
    FOR x = 1 TO 5
       PUT (x1%, y1%), Box%, AND
       x1% = RND * 300
       y1% = RND * 180
       PUT (x1%, y1%), Box%
    NEXT x
  NEXT r
LOOP WHILE INKEY$ = ""

DO
 SCREEN 7
  FOR r = 1 TO 12
     x1% = 50: x2% = 60: y1% = 40: y2% = 30
     LINE (x1%, y1%)-(x2%, y2%), r, BF
     GET (x1%, y1%)-(x2%, y2%), Box%
     x1% = x1% + 1
     x2% = x2% + 1
     FOR x = 1 TO 5
        PUT (x1%, y1%), Box%, AND
        x1% = RND * 300
        y1% = RND * 180
        PUT (x1%, y1%), Box%
     NEXT x
  NEXT r
LOOP WHILE INKEY$ = ""

DO
  SCREEN 1
  FOR r = 1 TO 11
    x1% = 30: x2% = 40: y1% = 0: y2% = 10
    LINE (x1%, y1%)-(x2%, y2%), r, BF
    GET (x1%, y1%)-(x2%, y2%), Box%
    x1% = x1% + 1
    x2% = x2% + 1
    FOR x = 1 TO 5
       PUT (x1%, y1%), Box%, AND
       x1% = RND * 300
       y1% = RND * 180
       PUT (x1%, y1%), Box%
    NEXT x
  NEXT r
LOOP WHILE INKEY$ = ""

DO
 SCREEN 7
  FOR r = 1 TO 13
     x1% = 10: x2% = 20: y1% = 30: y2% = 40
     LINE (x1%, y1%)-(x2%, y2%), r, BF
     GET (x1%, y1%)-(x2%, y2%), Box%
     x1% = x1% + 1
     x2% = x2% + 1
     FOR x = 1 TO 5
        PUT (x1%, y1%), Box%, AND
        x1% = RND * 300
        y1% = RND * 180
        PUT (x1%, y1%), Box%
     NEXT x
  NEXT r
LOOP WHILE INKEY$ = ""

 END

    

