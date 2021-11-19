@echo off
color 0a
mode con: cols=84 lines=25
cls
goto files

:files
cd Users
cls
cd %uname%
dir /w
echo 1.new folder
echo 2. read document
echo 3.exit
choice /c 123 /n
if %errorlevel% == 1 goto mdir
if %errorlevel% == 2 goto doccuread
if %errorlevel% == 3 goto useracc

:doccuread
dir
echo Choose a document.
set /p doccu=Doccument name:
goto doccu2

:doccu2
cls
type %doccu%
pause
goto useracc

:mdir
cd Users
cd %uname%
cls
cd Documents
set /p dname=Folder name:
cd Documents
md %dname%
pause >nul
goto useracc

:useracc
cd ..
call useracc