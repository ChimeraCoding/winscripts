;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto end
;= rem ******************************************************************
;= rem *   Filename: aliases.bat
;= rem *    Version: 1.0
;= rem *     Author: Simon Harris
;= rem *    Purpose: Simple, but useful aliases; this can be done by
;= rem *             other means--of course--but this is dead simple and 
;= rem *             works on EVERY Windows machine on the planet.
;= rem *    History: 
;= rem * 22/01/2002: File Created.
;= rem * 01/05/2007: Added new macros, a history and some new helpful 
;= rem *             comments.
;= rem * 19/06/2007: Added Notepad, Explorer and Emacs macros.
;= rem * 20/06/2007: Fixed doskey macrofile= path problem: it is now not 
;= rem *             a relative path, so it can be called from anywhere.
;= rem ******************************************************************

;= Doskey aliases
h=doskey /history

;= File listing enhancements
ls=dir /x $*
l=dir /x $*
ll=dir /w $*
la=dir /x /a $*
pwd=cd

;= Directory navigation
up=cd ..
pd=pushd
home=cd C:\Users\simon.harris

;= Copy and move macros
cp=COPY $*
mv=MOVE $*
cpall=C:\Users\simon.harris\Scripts\cpall.bat
mvall=C:\Users\simon.harris\Scripts\mvall.bat

;= Delete macros
rm=del /p $*
rmf=del /q $*
rmtmp=del /q *~ *# 2>nul

;= Fast access to Notepad and Notepad++
n=notepad $* 
np="C:\Program Files (x86)\Notepad++\notepad++.exe" $*

;= Launch application
;= rem texmaker="C:\Program Files (x86)\Texmaker\texmaker.exe"
remote=mstsc
vim="C:\Program Files (x86)\Vim\vim74\vim.exe" $*

;= Fast access to Explorer
c=explorer .

;= 7Zip access and commands
7z="C:\Program Files\7-Zip\7z.exe"
zip=C:\Users\simon.harris\Scripts\zip.bat $*

;= Custom batch files
cef=C:\Users\simon.harris\Scripts\CEF.bat $*
cc=C:\Users\simon.harris\Scripts\COPY_CONTENTS.bat $*

;= Custom Shortcuts
;= rem imag_proj=svn co https://flamingbeta.unfuddle.com/svn/flamingbeta_imagination/


;= :end
;= rem ******************************************************************
;= rem * EOF - Don't remove the following line.  It clears out the ';' 
;= rem * macro. We're using it because there is no support for comments
;= rem * in a DOSKEY macro file.
;= rem ******************************************************************
;=
