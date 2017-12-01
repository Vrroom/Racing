import serial
import sys
from threading import Thread

ser = serial.Serial('/dev/ttyACM0',9600)
time = 0
data = ""
ser.flushInput()
ser.flushOutput()
flag = None
outputFile = input("output file name?\n")
f = open(outputFile, 'w')

def quit():
    global f
    while True:
        typed = sys.stdin.readline();
        if "stop" in typed:
            print("ok son")
            f.close()

t = Thread(target=quit)
t.daemon = True
t.start()

while True:    
    out = ser.read()
    if f.closed:
        break

    if out == b'\n':
        flag = True
    elif out == b'\r':
        flag = False
        t = str(time)
        f.write(t + ' ' + data + '\n')
        time = time + 5
        data = ""
    else:
        out = out.decode('ascii')
        data = data + out

