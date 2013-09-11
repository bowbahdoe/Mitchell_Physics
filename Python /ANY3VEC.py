import random
#'THIS MODULE PRODUCES THREE RANDOM VECTORS.  THE ANGLES ARE POLAR.
def main():
    vv1 = int((random.random() * 900))
    vv2 = int((random.random() * 1000))
    vv3 = int((random.random() * 500) + 100)
    aa1 = int((random.random() + .1) * 100)
    aa2 = aa1 + 60
    aa3 = int((random.random() * 200))

    print("Vector #1 has a magnitude of " + str(vv1) + " and a direction of " + str(aa1) + " degrees polar.")
    print("Vector #1 has a magnitude of " + str(vv2) + " and a direction of " + str(aa2) + " degrees polar.")
    print("Vector #1 has a magnitude of " + str(vv3) + " and a direction of " + str(aa3) + " degrees polar.")

   
    
if __name__ == "__main__":
    main()
