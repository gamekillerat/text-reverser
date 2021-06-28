@echo off
color b
title Text Reverser
cls
set /p advanced=Type your Text to reverse here: 
if '%a%'=='1' goto injector


echo WScript.Echo StrReverse("%advanced%"^) >reverse.vbs

for /f "delims=" %%a in ('cscript //nologo reverse.vbs') do set "$reversed=%%a"
>nul del reverse.vbs
cls
echo Your reversed Text is:
echo %$reversed%
pause > nul