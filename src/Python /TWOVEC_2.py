#'THIS MODULE PRODUCES TWO MUTUALLY PERPENDICULAR VECTORS AT ANY ORIENTATION"
#'THE ANGLES ARE POLAR EXPRESSIONS (+X = 0, +Y = 90, ETC.)
import random
def main():
        v1 = int((random.random()) * 1000)
        v2 = int((random.random() + .2) * 1000)
        a1 = int((random.random() + .5) * 100)
        a2 = a1 + 90
        print "Vector #1 has a magnitude of " + str(v1) + " and its direction is " + str(a1) + " degrees (polar)."
        print "vector #2 has a magnitude of " + str(v2) + " and its direction is" + str(a2) + " degrees (polar)." 
if __name__ == "__main__":
    main()
