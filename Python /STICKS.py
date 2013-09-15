#Sticks game
#Is it useful - no
#did i port it - sure why not

from sys import platform as _platform
import os
if _platform == "linux" or _platform == "linux2":
    clearscreen = "os.system('clear')"
    # linux
elif _platform == "darwin":
    clearscreen = "os.system('clear')"
    # OS X
elif _platform == "win32":
    clearscreen = "os.system('cls')"
def stickGame(n):
    pass
def main(n):  

    
    print "There are " +str(n) +" sticks"

    if n != 0:

        print " "

        print "How many do you want to take? 1, 2, OR 3"
        pick = input()
        if type(pick)!= int or pick > 3 or pick < 1 or (n-pick) < 0:
            print "No good,pick again"
            
            main(n)
        else:
            n -= pick
            main(n)
    if n==0:
 
        return 0
         
if __name__ =="__main__":
    exec clearscreen
    print "To Win you must take the last stick"
    x = main(15)#< ------ change this line to change the # of sticks
    print "You Win!!"
