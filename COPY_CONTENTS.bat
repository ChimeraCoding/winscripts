@ECHO off
REM This file copies the contents of the specified file to
::  the clipboard.

IF "%1" == "" (
	ECHO "The source file has not been specified!"
	ECHO "Usage: COPY_CONTENTS <source_file>"
	GOTO end
) ELSE (
	SET arg1=%1
)

IF NOT EXIST %arg1% (
	ECHO "Cannot find source file %arg1%"
	GOTO end
) ELSE (
	GOTO copy_process
)


REM This is the section of code responsible for copying/reading the contents
::	of our source file. A very simple method is used.
: copy_process
::TYPE %arg1% | CLIP --- Can use TYPE to acquire contents of the file
CLIP < %arg1%
ECHO Contents successfully copied!

: end