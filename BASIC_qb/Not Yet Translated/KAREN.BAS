 VI = 0
 M = .0282
 D = .01
 g = 9.8
DATA 39.5,37.8,37.5,36.5,35.2,34,33.8,32,31.5,29.9,29,28.7,28.5,27.2,26.3
DATA 26,24.2,23.8,23,22.3,21.3,21,20,19.4,18.55,18.1,17.3,16.9,16.2,14.9,14
DATA 13.9,12.75,12.4,11.31,10.3,9.3,8.3,6.8,5.1,4.65,3.09,.83
DATA -3000000
DO
 DATA READ FORCE2
    IF FORCE2 = -3000000 THEN GOTO ANSWER
              F = (FORCE1 + FORCE2) / 2
              

  VF = SQR(VI ^ 2 + (2 * A * D))
 VI = VF
 FORCE1 = FORCE2
 LOOP
ANSWER:

 PRINT "THE FINAL MUZZLE VELOCITY="; VF; "  "; M / SEC



  HEIGHT = -28.5
  ANGLE = 12
  g = 9.8
 
 DO
   X = -B + SQR(B ^ 2 - 4 * A * C) / 2 * A
    HEIGHT = X * TAN(ANGLE) - gX ^ 2 / 2 * VF ^ 2 * (COS(ANGLE) ^ 2)
   -gX^2/2*VF^2*(COS(ANGLE)^2) + TAN(ANGLE) + HEIGHT = 0
    A = -g / 2 * VF ^ 2 * COS(ANGLE) ^ 2
    B = TAN(ANGLE)
    C = HEIGHT
 LOOP
        
 PRINT "X=      "




