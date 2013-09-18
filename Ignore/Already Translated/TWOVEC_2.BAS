'THIS MODULE PRODUCES TWO MUTUALLY PERPENDICULAR VECTORS AT ANY ORIENTATION"
'THE ANGLES ARE POLAR EXPRESSIONS (+X = 0, +Y = 90, ETC.)
    FOR I = 1 TO 15

        v1 = INT((RND(1)) * 1000)
        v2 = INT((RND(1) + .2) * 1000)
        a1 = INT((RND(1) + .5) * 100)
        a2 = a1 + 90
               LPRINT "Vector #1 has a magnitude of "; v1; " and its direction is "; a1; " degrees (polar)."
               LPRINT "vector #2 has a magnitude of "; v2; " and its direction is"; a2; " degrees (polar)."
 PRINT : PRINT : NEXT I

