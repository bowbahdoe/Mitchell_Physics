#Computes the resultant of any number of vectors
from math import atan, sqrt, cos, sin
def main():
    print("How may vectors are you adding")
    numvec = input()
    counter = 0
    sumx = 0
    sumy = 0
    while counter != numvec:
        print "What is the MAGNITUDE of vector " + str(counter) + "?"
        mag = input()
        print "What is the POLAR ANGLE of vector " + str(counter) + "?"
        angle = input()
        angle = angle * 6.28 / 360
        xpart = mag * cos(angle)
        ypart = mag * sin(angle)
        sumx += xpart
        sumy += ypart
        ansang = atan((sumy/sumx)) * 360 / 6.28
        ansmag = sqrt(sumx ** 2 + sumy ** 2)
        counter += 1
    print "The resultant's magnitude is " + str(ansmag)
    print "and it's direction is " + str(ansang) + " degrees polar"
if __name__ == "__main__":
    main()
