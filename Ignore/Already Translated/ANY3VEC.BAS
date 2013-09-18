'THIS MODULE PRODUCES THREE RANDOM VECTORS.  THE ANGLES ARE POLAR.

       FOR i = 1 TO 100
       LPRINT : LPRINT



       vv1 = INT((RND(1)) * 900)
        vv2 = INT((RND(1)) * 1000)
        vv3 = INT((RND(1)) * 500) + 100
        aa1 = INT((RND(1) + .1) * 100)
        aa2 = aa1 + 60
        aa3 = INT((RND(1)) * 200)
                LPRINT "Vector #1 has a magnitude of "; vv1; " and a direction of "; aa1; " degrees polar."
                LPRINT "Vector #2 has a magnitude of "; vv2; " and a direction of "; aa2; " degrees polar."
                LPRINT "Vector #3 has a magnitude of "; vv3; " and a direction of "; aa3; " degrees polar."
                 NEXT i

