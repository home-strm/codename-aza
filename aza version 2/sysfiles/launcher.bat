@echo off
cls
goto setup

:: sets color values and goes onto second setup stage
:setup
cd ..
cd config
<colorconf.txt (
set /p col1=
)
color %col1%
cls
goto setup2

:: sets username values and opens the main desktop
:setup2
<loginconfig.txt (
set /p username=
)
cls
goto gui

:: wallpaper and menu open prompt
:gui
cls
cd ..
cd config
<wallpaperconf.txt (
set /p defaultwallpaper=
)
cd ..
cd sysfiles
cd Wallpapers
cls
echo --------------------------
echo Press enter to load menu. 
echo --------------------------
type %defaultwallpaper%.txt
cd ..
cd ..
cd Users
cd %username%
pause >nul
goto menu1

:: first menu
:menu1
cls
echo ------------------
echo        Menu
echo ------------------
echo 1. Notepad
echo 2. Files
echo 3. System info
echo 4. Settings
echo 5. Chat
echo 6. Games
echo 7. Log out
echo 8. Shutdown
echo 9. Close Menu
echo ------------------
set /p choice1=
if %choice1% == 1 goto notepad
if %choice1% == 2 goto files
if %choice1% == 3 goto sysinfo
if %choice1% == 4 goto settings
if %choice1% == 5 goto chat
:: nice
if %choice1% == 6 goto games
if %choice1% == 7 goto logout
if %choice1% == 8 goto shutdown
if %choice1% == 9 goto gui3

:: goes back to wallpaper
:gui3
cls
goto gui

:: opens notepad
:notepad
cd..
cd ..
cd preinstalled
call notepad

:: opens files
:files
cd..
cd ..
cd preinstalled
call files

