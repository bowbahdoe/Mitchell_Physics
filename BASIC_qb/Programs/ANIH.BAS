DO
CLS
SCREEN 12
DIM a(112)
LINE (100, 60)-(70, 50), 3, BF
GET (100, 60)-(70, 50), a(1)
FOR x! = 30 TO 555 STEP 50
 FOR y! = 30 TO 400 STEP 50
 PUT (x!, y!), a(1)
 NEXT y!
NEXT x!

LOOP

RUN


