x1! = 100
x2! = 70
y1! = 60
y2! = 50

SCREEN 12

size% = 4 + INT(((PMAP(x2!, 0) - PMAP(x1!, 0) + 1) * (1) + 7) / 8) * 4 * (PMAP(y2!, 1) - PMAP(y1!, 1) + 1)

DIM a(size%)

LINE (100, 60)-(70, 50), 3, BF
GET (x1!, y1!)-(x2!, y2!), a(1)
FOR x! = 30 TO 300
 PUT (x!, 50), a(1), AND
NEXT x!
END

