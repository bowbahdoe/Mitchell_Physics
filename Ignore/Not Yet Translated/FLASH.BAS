CLS
DO
 FOR I = 400 TO 100 STEP -20
   SOUND I, I / 15000
 NEXT I
 FOR I = 400 TO 100 STEP -100
   SOUND I, I / 20000000
 NEXT I
 FOR I = 100 TO 400 STEP 20
  SOUND I, I / 15000
 NEXT I
  PALETTE 0, 1
    SCREEN 1
    FOR I% = 0 TO 4: a%(I%) = I%: NEXT I%
       FOR I% = 0 TO 4
       a%(I%) = (a%(I%) + 1) MOD 16
       NEXT I%
    LINE (118, 145)-(168, 15), 2, BF
    LINE (20, 100)-(160, 300), 1, BF
    LINE (10, 30)-(50, 60), 1, BF
       PALETTE USING a%(0)
 LOOP WHILE INKEY$ = ""
 


