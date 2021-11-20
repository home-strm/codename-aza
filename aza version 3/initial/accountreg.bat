@echo off
color 0a
cls
goto accountreg1

:: introductory thingy majig
:accountreg1
cls
echo Welcome to Codename AZA!
timeout /t 3 /nobreak >nul
cls
echo As this is your first time using Codename AZA, you must make an account before you continue
timeout /t 6 /nobreak >nul
cls
goto usernamecreate

:: username entry
:usernamecreate
cls
echo Lets get started!
echo Please enter your desired username.
set /p input=
goto accountreg2

:: double checking the username
:accountreg2
cls
echo %input%, is this the username you desire? If not, please type 'no' to go back and 'yes' to continue.
set /p doublecheck=
if %doublecheck% == yes goto accountreg3
if %doublecheck% == no goto usernamecreate

:: pasword entry
:accountreg3
cls
echo Great choice! Now lets move on to the password.
echo Please enter your desired password.
set /p pass1=
goto accountreg4

:: double checking the password
:accountreg4
cls
echo %pass1%, are you sure you want this to be your password? If not, please type 'no' to go back and 'yes' to continue.
set /p doublecheck2=
if %doublecheck2% == yes goto accountreg5
if %doublecheck2% == no goto accountreg3

:: alot of stuff like making some important folders and making the user folder and writing the loginconfig
:accountreg5
cls
echo Great! The setup is almost completed, please give us a moment to finish up.
cd ..
mkdir Users
cd config
echo .>"loginconfig.txt"
echo %input%> loginconfig.txt
echo %pass1%>> loginconfig.txt
echo 0a>"colorconf.txt"
echo default>"wallpaperconf.txt"
cd ..
cd Users
mkdir %input%
cd ..
timeout /t 10 /nobreak >nul
cls
echo Great! The setup is now finished. Enjoy your fresh install of Codename AZA.
:: nice
echo Rebooting to Codename AZA in 5 seconds.
timeout /t 5 /nobreak >nul
call start