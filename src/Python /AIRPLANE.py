import sys
from sys import platform as _platform
import random
import os
import math
if _platform == "linux" or _platform == "linux2":
    clearscreen = "os.system('clear')"
    # linux
elif _platform == "darwin":
    clearscreen = "os.system('clear')"
    # OS X
elif _platform == "win32":
    clearscreen = "os.system('cls')"
def checkAnswer(windspeed=None,airspeed=None):
    if windspeed == None:
        print "What was the wind speed from the south?"
        windspeed = eval(raw_input())
        print "Wind speed = "+str(windspeed)
    
    if airspeed == None:
        print " "
        print "What was the air speed of the plane?"
        airspeed = eval(raw_input())
        print "Airspeed = "+str(airspeed)

    windspeed = -windspeed
    #sean please rename these variables to something
    #that makes sense in terms of the physics
    z = (2.0/3) * math.pi

    fb = math.sqrt((airspeed**2) - ((windspeed**2) * (math.sin((z)) ** 2)))
    j = fb
    y = math.atan(windspeed * math.sin(float(z)) / j)
    x = math.pi - (z + y)
    r = airspeed * (math.sin((x)) / math.sin((z)))
    m = 180 * x / math.pi
    print " "
    print "What is your calculated value for the resultant velocity?"
    resval = eval(raw_input())
    print "My calculated value for the resultant velocity = " + str(resval)
    print " "
    print "How many hours do you say the trip will last?"
    time = eval(raw_input())
    if abs(r-resval) < (.05 * r) or abs(time - 800/r) < (.05 * 800/r):
        report(r,m,True)
    else:
        
        report(r,m,False)
                        


                 
def printMenu():
    print "This program produces an airplane vector problem with random values"
    print "  of wind velocity and airplane velocity."
    print " "
    printOptions()

    
def printOptions():
    #menu1:
    print "          CHOOSE THE NUMBER FOR ONE OF THE FOLLOWING OPTIONS:      "
    print " "
    print "                  1    View a sample problem on the screen."
    print " "
    print "                  2    Print just one problem for yourself."
    print " "
    print "                  3    Print multiple problems."
    print " "
    print "                  4    Check the answer to a question"
    print " "
    print "                  5    QUIT"

                 
def showProblem(isSample, numberofproblems=1):
    ''' isSample is a bool telling whether or
        not the problem being shown expects an
        answer. if it is a sample it does not
        if it is it does.'''
    exec clearscreen
    w = ((random.random() + 1) * 40)
    x = ((random.random() + 3.5) * 125)
    #w = windspeed, x = airspeed
    for i in range(numberofproblems):
        print "An airplane has a still air speed of "+ str(round(x,2)) + " mi/hr and a pilot intends to"
        print "fly this plane from city A to city B which is 800 miles from city A"
        print "at a bearing direction of 300 degrees"
        print " "
        print "During his preflight check, the pilot learns that he must contend with a"
        print "wind of " + str(round(w,2)) + " mi/hr blowing from a direction of 180 degrees bearing."

        print " "
        print "At what HEADING must he pilot the plane and how much TIME will the trip"
        print "require if weather conditions remain constant? [in hours]"
        print " "
        print "Press enter to continue"
        pause = raw_input()
        if isSample !=True:
            checkAnswer(w,x)

               
    
    exec clearscreen
    main()

def report(r,m, isResponseCorrect):
    exec clearscreen
    print "  THE RESULTANT VELOCITY IS " +str(r)+ " mi/hr"
    print "                       at"
    print "  A HEADING OF "+ str(360 - m)+ " DEGREES BEARING"
    print "                        and"
    print "  THE TRIP WILL TAKE "+ str(800 / r)+ " HOURS"

    print "  THE RESULTANT VELOCITY IS " + str(r)+ " mi/hr"
    print "                       at"
    print "  A HEADING OF " + str(360-m) + " DEGREES BEARING"
    print "                        and"
    print "  THE TRIP WILL TAKE " + str(800 / r) + " HOURS"
    print " "
    if isResponseCorrect==True:
        print "You got the question correct"
        
    else:
        print "You got the question wrong"
    
    print " "

    print "Press enter to continue"
    x = raw_input()
    exec clearscreen
    
def handleChoice():
    choice = input()
    if choice == 1:
        showProblem(True)
    elif choice == 2:
        showProblem(False)
    elif choice == 3:
        print " "
        print "How many Problems do you want"
        problems = input()
        showProblem(False,problems)
    elif choice == 4:
        exec clearscreen
        checkAnswer()
    elif choice == 5:
        sys.exit()
def main():
    exec clearscreen
    printMenu()
    handleChoice()
    print "Press enter to end"
    x = raw_input()
    pass
main()
