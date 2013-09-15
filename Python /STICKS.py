#Sticks game
#Is it useful - no
#did i port it - sure why not

from sys import platform as _platform
import os
print _platform
if _platform == "linux" or _platform == "linux2":
    clearscreen = "os.system('clear')"
    # linux
elif _platform == "darwin":
    clearscreen = "os.system('clear')"
    # OS X
elif _platform == "win32":
    clearscreen = "os.system('cls')"

def main(n = 15):  #< ------ change this line to change the # of sticks
    exec clearscreen
    print "To Win you must take the last stick"
    p = 0
    for y in range(15):
        print "there are " +str(n) +" sticks
    while n != 0:
        label
        print " "

        print "How many do you want to take? 1, 2, OR 3"
        pick = input()
        if type(pick)!= int or pick > 3 or pick < 1 or (n-pick) < 0:
            print "No good,pick again"
            
            main(n)
        else:
            n -= pick
         
if __name__ =="__main__":


    main()
