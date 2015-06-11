@ECHO off

REM This batch file simply launches a command prompt, runs the setup batch file and then sets the working
::  directory to 'home' e.g. C:\Users\simon.harris
CMD /k "setup & cd C:\Users\simon.harris"