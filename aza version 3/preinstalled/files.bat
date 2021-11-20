@echo off
color 0a
cls
goto inital

:: sets username paramter
:inital
cd..
cd config
<loginconfig.txt (
set /p username=
)
cd ..
cd Users
cd %username%
goto files

:: main file reading thingy and menu thingy
:files
cls
dir /w
echo -----------------
echo 1.new folder
echo 2. read document
echo 3.exit
choice /c 123 /n
if %errorlevel% == 1 goto mdir
if %errorlevel% == 2 goto doccuread
if %errorlevel% == 3 goto useracc

:: prompt for the file you want to read the contents of
:doccuread
dir
echo Choose a document.
set /p doccu=Doccument name:
goto doccu2

:: displays content of chosen file
:doccu2
cls
type %doccu%
pause
goto useracc

:: makes directorys
:mdir
cd Users
cd %username%
cls
cd Documents
set /p dname=Folder name:
md %dname%
pause >nul
goto useracc

:: goes back to the main menu
:useracc
cd ..
cd ..
cd sysfiles
call launcher.bat