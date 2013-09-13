    SCREEN 7
    
    PAINT (50, 50), 4, 4
    DIM Box%(1 TO 200)
    x1% = 0: x2% = 10: y1% = 0: y2% = 10
  FOR r = 1 TO 15

    LINE (x1%, y1%)-(x2%, y2%), r, B
    GET (x1%, y1%)-(x2%, y2%), Box%
    x1% = x1% + 1
    x2% = x2% + 1

  NEXT r
 
    DO

        PUT (x1%, y1%), Box%, AND
        x1% = RND * 300
        y1% = RND * 180
        PUT (x1%, y1%), Box%
   
    LOOP WHILE INKEY$ = ""

