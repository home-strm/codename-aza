@echo off
color 0a
mode con: cols=84 lines=25
cls
goto notepad

:notepad
cd Users
cd %uname%
cd Documents
cls
set /p file=File name:
echo.>"%file%.txt"
set /p fileinput=.
echo %fileinput%> %file%.txt
goto useracc

:useracc
cd ..
call useracc.bat