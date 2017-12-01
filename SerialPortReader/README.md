Serial data logger for Arduino
------------------------------

Since Arduino IDE doesn't have access to the Local Files,
the data that an arduino writes into the serial port of the
computer can't be stored in a file. 
To get around this problem, one can do one of the following:
    * Copy-paste data from the serial monitor into a file.
    * Download a cool serial monitor (such as coolterm/putty). But the problem is that data isn't formatted properly and is hard to read.
    * Write a program which reads from the serial port and writes to file/stdout/whatever other resource.

**NOTE:**
    1. Will only work on Linux machines.
    2. Currently, the resource from which data is read is '/dev/ttyACM0'.So you will have to change that accordingly.
