@echo off
color 0a
cls
goto verify

:: checks for the user login.
:verify
cd config
if exist loginconfig.txt goto verify2
if not exist loginconfig.txt goto accountreg

:accountreg
cd ..
cd initial
call accountreg.bat

:: boot sequence
:verify2
cd ..
echo Welcome back to Codename AZA!
echo Please wait for the system to finish booting..
timeout /t 2 /nobreak >nul
echo MEMCHECK.. GOOD!
timeout /t 1 /nobreak >nul
echo SYSTEMFILECHECK.. PASS!
timeout /t 2 /nobreak >nul
goto login1

:: username check sequence
:login1
cls
cd config
<loginconfig.txt (
set /p usercheck=
set /p passcheck=
)
echo Wellcome back to codename AZA! Please enter your username.
set /p user=Username: 
if %user% == %usercheck% goto login2
else goto userrecheck

:: incorrect username sequence
:userrecheck
cls
echo Username incorrect!
echo If you would like to try again please type 1, if you would like to reset your username type 2.
set /p recheck=
if %recheck% == 1 goto login1
if %recheck% == 2 goto usernameredo

:: second part of the login, password check sequence
:login2
cls
set /p pass=Password: 
if %pass% == %passcheck% goto gui
else goto incorrectpass

:: incorrect password sequence
:incorrectpass
cls
echo Password incorrect!
echo If you would like to try again please type 1, if you would like to reset your password type 2.
set /p rechec2k=
if %recheck2% == 1 goto login2
if %recheck2% == 2 goto passwordredo

:gui
cd..
cd sysfiles
call launcher.bat
:: nice