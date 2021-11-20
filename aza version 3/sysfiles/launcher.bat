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
color %col1%
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
call notepad.bat

:: opens files
:files
cd..
cd ..
cd preinstalled
call files.bat

::settings apps
:settings
cls
echo ------------------------------------
echo Welcome to the settings application.
echo ------------------------------------
echo 1. Colour customization
echo 2. Change PC name
echo 3. Change wallpaper
echo 4. Go back to menu
set /p settings2=
if %settings2% == 1 goto colorcustom
if %settings2% == 2 goto changepcname
if %settings2% == 3 goto changewallpaper
if %settings2% == 4 goto menu1

:colorcustom
cls
cd ..
cd ..
cd temp
cls
echo --------------------
echo Colour Customization
echo --------------------
echo Please choose background colour
echo Red: 1
echo Blue: 2
echo White: 3
echo Purple: 4
echo Green: 5
echo Default (Black): 6
set /p customcolor
if %customcolor% == 1 echo 4>"colorconftemp.txt" && backgroundcolorcustom
if %customcolor% == 2 echo 1>"colorconftemp.txt" && backgroundcolorcustom
if %customcolor% == 3 echo 7>"colorconftemp.txt" && backgroundcolorcustom
if %customcolor% == 4 echo 5>"colorconftemp.txt" && backgroundcolorcustom
if %customcolor% == 5 echo 2>"colorconftemp.txt" && backgroundcolorcustom
if %customcolor% == 6 echo 0>"colorconftemp.txt" && backgroundcolorcustom

:backgroundcolorcustom
cls
<colorconftemp.txt (
set /p backgroundcustomcolor=
)
cd..
cd config
cls
echo --------------------
echo Colour Customization
echo --------------------
echo Please choose text colour
echo Red: 1
echo Blue: 2
echo White: 3
echo Purple: 4
echo Green: 5
echo Default: 6
set /p color4:
if %color4% == 1 echo 4%color4%>"colorconf.txt"
if %color4% == 2 echo 1%color4%>"colorconf.txt"
if %color4% == 3 echo 7%color4%>"colorconf.txt"
if %color4% == 4 echo 5%color4%>"colorconf.txt"
if %color4% == 5 echo 2%color4%>"colorconf.txt"
if %color4% == 6 echo 0%color4%>"colorcon.txt"
cls
goto menu1