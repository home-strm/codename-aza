@echo off
color 0a
cls
goto inital

::sets username paramters
:inital
cd..
cd config
<loginconfig.txt (
set /p username=
)
cd ..
cd Users
cd %username%
goto notepad

:: main notepad process
:notepad
cd Documents
cls
set /p file=File name:
echo.>"%file%.txt"
set /p fileinput=Enter text here: 
echo %fileinput%> %file%.txt
goto useracc

:: goes back to the menu
:useracc
cd ..
cd ..
cd..
cd sysfiles
call launcher.bat