@ECHO off
REM This batch script uses 7Zip to quickly archive a file specified through command line args
::  Note: This script relies on the alias '7z' having been defined to point to the
::  7zip executable.
::  Usage Note: Since the script relies on absolute file paths being provided, a simple way
::  to zip a file in the current working directory would be to do: 'zip %cd%\myDir'
::  where myDir is a folder in the working directory.

SET zippy="C:\Program Files\7-Zip\7z.exe"

IF "%1" == "" (
    ECHO "The name of the file to zip was not specified!"
    ECHO "Usage: zip <filename>"
) ELSE (
    SET arg1=%1
    %zippy% a -t7z %arg1%
)
