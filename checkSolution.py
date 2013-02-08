#!/usr/bin/python
from sys import argv
import csv
import subprocess

def middle(x):
    return { 1 : '00', 2 : '0', 3 : ''}[x]

def getAnswer():
    progName = 'bin/euler' + middle(len(argv[1])) + argv[1]
    program = subprocess.Popen(progName, shell=True, stdout=subprocess.PIPE)
    answer = int(program.stdout.readline())
    return answer

def getSolution():
    with open('solutions.txt') as solFile:
        reader = csv.reader(solFile, delimiter=':')
        for row in reader:
            if reader.line_num == int(argv[1]):
                if row[1] == " NaN":
                    print "Not solved yet!"
                    sys.exit(0)
                solution = int(row[1])
                return solution

answer = getAnswer()
solution = getSolution()
if answer == solution:
    print "Correct!"
else:
    print "Sorry, you're wrong!"
