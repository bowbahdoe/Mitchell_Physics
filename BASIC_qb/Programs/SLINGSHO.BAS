CLS
pi = 3.14
g = 9.8
d = .01
msling = .008
v1 = 0

'Lprint "the mass of the sling=" ; msling; " kg "

PRINT "input the ball's mass"
'Lprint "the ball's mass"
INPUT mball
'Lprint "the ball's mass=" ;mball;" kg"

PRINT "input the board's length (from vertex to shot origin)"
'Lprint "input the board's length (from vertex to shot origin)"
INPUT L
'Lprint  
PRINT "Input Lauch Angle"
INPUT Theta
'Lprint
angle = Theta * 2 * pi / 360
 gloss = g * (SIN(angle))

DATA 36.10, 34.82, 34.00, 32.96, 31.88, 31.24, 30.37, 29.71, 28.81, 28.24
DATA 27.32, 26.75, 25.93, 25.45, 24.82, 24.43, 23.90, 23.26, 22.74, 22.10
DATA 21.69, 21.24, 20.83, 20.30, 19.87, 19.40, 19.02, 18.53, 18.11, 17.68
DATA 17.32, 16.85, 16.38, 16.00, 15.64, 15.05, 14.85, 14.40, 14.06, 13.64
DATA 13.37, 12.93, 12.53, 12.09, 11.74, 11.23, 10.70, 10.32, 9.86, 9.41
DATA 8.32, 8.37, 7.63, 7.00, 6.35, 5.53, 4.64, 3.39, 1.91, 0.75, 100

READ f1
DO
READ f2
IF f2 = 100 THEN EXIT DO
fave = (f1 + f2) / 2
aave = fave / (mball + msling)
dA = aave - gloss
v2 = (v1 ^ 2 + 2 * dA * d) ^ .5
LET f1 = f2
LET v1 = v2
LOOP
PRINT "the launch speed is"; v2; "m/s"


y = L * SIN(angle)

a = (-g) / (v1 ^ 2 * 2 * (COS(angle)) ^ 2)
b = TAN(angle)
c = -(y)

z = (b ^ 2) + (4 * a * c)
v = z ^ .5
n = (-b) - v
xd1 = n / (2 * a)

q = (b ^ 2) + (4 * a * c)
w = q ^ .5
e = (-b) + w
xd2 = e / (2 * a)


PRINT "X = "; xd1; "and XD2  = "; xd2

DATA 36.10, 34.82, 34.00, 32.96, 31.88, 31.24, 30.37, 29.71, 28.81, 28.24
DATA 27.32, 26.75, 25.93, 25.45, 24.82, 24.43, 23.90, 23.26, 22.74, 22.10
DATA 21.69, 21.24, 20.83, 20.30, 19.87, 19.40, 19.02, 18.53, 18.11, 17.68
DATA 17.32, 16.85, 16.38, 16.00, 15.64, 15.05, 14.85, 14.40, 14.06, 13.64
DATA 13.37, 12.93, 12.53, 12.09, 11.74, 11.23, 10.70, 10.32, 9.86, 9.41
DATA 8.32, 8.37, 7.63, 7.00, 6.35, 5.53, 4.64, 3.39, 1.91, 0.75, 100



LET suma = 0
LET f1 = 0
DO
READ ff2
IF ff2 = 100 THEN EXIT DO
a = ((ff2 - f1) * (.01) / 2) + (f1 * (.01))
suma = a + suma
LET f1 = ff2
LOOP
PRINT "The total acceleration = "; suma
'lprint "The total acceleration = "; suma

speedcheck = (2 * suma / (mball + msling)) ^ .5

PRINT "speedcheck = "; speedcheck




              





















