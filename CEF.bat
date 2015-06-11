@ECHO off
REM This file uses the NUL file (device actually) in every directory to create
::  a new empty file. NUL is equivalent to UNIX'S /dev/null. /y is used to stop
::	COPY asking questions you can't see when output goes to NUL.

IF "%1" == "" (
	ECHO "The name of the file to create was not specified!"
	ECHO "Usage: CEF <filename>"
	GOTO end
) ELSE (
	SET arg1=%1
)


IF NOT EXIST %arg1% (
	COPY /y NUL %arg1% >NUL
	ECHO "%arg1% successfully created"
) ELSE (
	ECHO "File already exists!"
)

: end